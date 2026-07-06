#include "Player.h"
#include "ScriptMgr.h"
#include "Log.h"
#include "Spell.h"
#include <algorithm>
#include <unordered_map>

namespace
{
    constexpr uint8 RACE_WORGEN_CUSTOM = 16;
    constexpr uint8 RACE_DRACTHYR_CUSTOM = 27;

    constexpr uint32 SPELL_WORGEN_TWO_FORMS_MALE = 97709;
    constexpr uint32 SPELL_WORGEN_TWO_FORMS_FEMALE = 97710;
    constexpr uint32 SPELL_DRACTHYR_DRAGON_FORM = 320555;
    constexpr uint32 SPELL_WARLOCK_METAMORPHOSIS = 47241;

    constexpr uint32 DISPLAY_DRACTHYR_VISAGE_MALE = 566212;
    constexpr uint32 DISPLAY_DRACTHYR_VISAGE_FEMALE = 566213;
    constexpr uint8 DRACTHYR_DRAGON_SKIN_VARIANTS = 15;
    constexpr uint8 DRACTHYR_VISAGE_SKINS_PER_COLOR_GROUP = 8;
    constexpr uint8 DRACTHYR_DRAGON_ARMOR_VARIANTS = 8;
    constexpr uint8 DRACTHYR_DRAGON_DEFAULT_ARMOR_VARIANT = 0;
    constexpr uint8 DRACTHYR_DRAGON_DISPLAY_VARIANTS = DRACTHYR_DRAGON_SKIN_VARIANTS * DRACTHYR_DRAGON_ARMOR_VARIANTS;
    constexpr uint32 DISPLAY_DRACTHYR_DRAGON_MALE_BASE = 1100000;
    constexpr uint32 DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE = 1101000;

    enum class DracthyrVisibleMode : uint8
    {
        Normal,
        Dragon
    };

    constexpr uint32 DRACTHYR_DRAGON_FORM_AURA_SYNC_MS = 1500;
    constexpr uint32 DRACTHYR_DRAGON_FORM_AURA_CANCEL_MS = 750;

    std::unordered_map<uint64, DracthyrVisibleMode> DracthyrVisibleModes;
    std::unordered_map<uint64, uint32> DracthyrDragonFormAuraSyncTimers;
    std::unordered_map<uint64, uint32> DracthyrDragonFormAuraCancelTimers;

    uint64 GetDracthyrStateKey(Player const* player)
    {
        return player->GetGUID().GetCounter();
    }

    void ClearDracthyrDragonFormAuraState(Player const* player)
    {
        uint64 key = GetDracthyrStateKey(player);
        DracthyrDragonFormAuraSyncTimers.erase(key);
        DracthyrDragonFormAuraCancelTimers.erase(key);
    }

    void StartDracthyrDragonFormAuraSync(Player const* player)
    {
        uint64 key = GetDracthyrStateKey(player);
        DracthyrDragonFormAuraSyncTimers[key] = DRACTHYR_DRAGON_FORM_AURA_SYNC_MS;
        DracthyrDragonFormAuraCancelTimers.erase(key);
    }

    void QueueDracthyrDragonFormAuraCancel(Player* player)
    {
        uint64 key = GetDracthyrStateKey(player);
        DracthyrDragonFormAuraCancelTimers[key] = DRACTHYR_DRAGON_FORM_AURA_CANCEL_MS;
        DracthyrDragonFormAuraSyncTimers.erase(key);
        player->RemoveAurasDueToSpell(SPELL_DRACTHYR_DRAGON_FORM);
    }

    bool TickDracthyrDragonFormAuraSync(Player* player, uint32 diff)
    {
        uint64 key = GetDracthyrStateKey(player);
        auto itr = DracthyrDragonFormAuraSyncTimers.find(key);
        if (itr == DracthyrDragonFormAuraSyncTimers.end())
            return false;

        if (player->HasAura(SPELL_DRACTHYR_DRAGON_FORM))
        {
            DracthyrDragonFormAuraSyncTimers.erase(itr);
            return false;
        }

        if (itr->second <= diff)
        {
            DracthyrDragonFormAuraSyncTimers.erase(itr);
            return false;
        }

        itr->second -= diff;
        return true;
    }

    bool TickDracthyrDragonFormAuraCancel(Player* player, uint32 diff)
    {
        uint64 key = GetDracthyrStateKey(player);
        auto itr = DracthyrDragonFormAuraCancelTimers.find(key);
        if (itr == DracthyrDragonFormAuraCancelTimers.end())
            return false;

        player->RemoveAurasDueToSpell(SPELL_DRACTHYR_DRAGON_FORM);

        if (itr->second <= diff)
        {
            DracthyrDragonFormAuraCancelTimers.erase(itr);
            return false;
        }

        itr->second -= diff;
        return true;
    }

    uint8 GetDracthyrOriginalGender(Player const* player)
    {
        return player->GetByteValue(PLAYER_BYTES_3, PLAYER_BYTES_3_OFFSET_GENDER);
    }

    uint32 GetDracthyrVisageDisplayId(Player const* player)
    {
        return GetDracthyrOriginalGender(player) == GENDER_FEMALE ? DISPLAY_DRACTHYR_VISAGE_FEMALE : DISPLAY_DRACTHYR_VISAGE_MALE;
    }

    uint8 GetDracthyrVisageSkinColorGroup(Player const* player)
    {
        uint8 skin = player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID);
        return skin / DRACTHYR_VISAGE_SKINS_PER_COLOR_GROUP;
    }

    uint8 GetDracthyrVisageSkinShade(Player const* player)
    {
        uint8 skin = player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID);
        return skin % DRACTHYR_VISAGE_SKINS_PER_COLOR_GROUP;
    }

    uint8 MapDracthyrVisageSkinGroupToDragonSkin(uint8 visageSkinGroup)
    {
        // Race27 CharSections are ordered as:
        // skin = visageColorGroup * 8 + shade.
        // Dragon textures are ordered as 15 color groups. Group 00 is the pale/no-scale
        // fallback, then groups 01-15 and 16-30 match dragon skins 00-14.
        if (visageSkinGroup == 0)
            return DRACTHYR_DRAGON_SKIN_VARIANTS - 1;

        return (visageSkinGroup - 1) % DRACTHYR_DRAGON_SKIN_VARIANTS;
    }

    uint8 GetDracthyrDragonSkinVariant(Player const* player)
    {
        return MapDracthyrVisageSkinGroupToDragonSkin(GetDracthyrVisageSkinColorGroup(player));
    }

    uint8 GetDracthyrDragonArmorVariant(Player const* player)
    {
        // Sirus dragon displays are arranged as 15 skin colors * 8 baked armor textures.
        // The normal WotLK item models do not fit the dragon body, so dragon form uses
        // these baked armor rows instead of showing chest/leg/helmet equipment directly.
        switch (player->getClass())
        {
            case CLASS_PRIEST:
            case CLASS_MAGE:
            case CLASS_WARLOCK:
                return 0;
            case CLASS_ROGUE:
            case CLASS_DRUID:
                return 1;
            case CLASS_HUNTER:
            case CLASS_SHAMAN:
                return 2;
            case CLASS_WARRIOR:
                return 3;
            case CLASS_PALADIN:
                return 4;
            case CLASS_DEATH_KNIGHT:
                return 5;
            default:
                return DRACTHYR_DRAGON_DEFAULT_ARMOR_VARIANT;
        }
    }

    uint32 GetDracthyrDragonDisplayId(Player const* player)
    {
        uint8 skinVariant = GetDracthyrDragonSkinVariant(player);
        uint8 armorVariant = std::min<uint8>(GetDracthyrDragonArmorVariant(player), DRACTHYR_DRAGON_ARMOR_VARIANTS - 1);
        uint32 displayIndex = skinVariant * DRACTHYR_DRAGON_ARMOR_VARIANTS + armorVariant;
        uint32 displayBase = GetDracthyrOriginalGender(player) == GENDER_FEMALE ? DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE : DISPLAY_DRACTHYR_DRAGON_MALE_BASE;
        return displayBase + displayIndex;
    }

    bool IsDracthyrDragonDisplay(uint32 displayId)
    {
        return (displayId >= DISPLAY_DRACTHYR_DRAGON_MALE_BASE && displayId < DISPLAY_DRACTHYR_DRAGON_MALE_BASE + DRACTHYR_DRAGON_DISPLAY_VARIANTS) ||
            (displayId >= DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE && displayId < DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE + DRACTHYR_DRAGON_DISPLAY_VARIANTS);
    }

    bool IsWeaponEquipmentSlot(uint8 slot)
    {
        return slot == EQUIPMENT_SLOT_MAINHAND || slot == EQUIPMENT_SLOT_OFFHAND || slot == EQUIPMENT_SLOT_RANGED;
    }

    void RefreshDracthyrVisibleItems(Player* player, bool showEquipment, bool showWeapons)
    {
        for (uint8 slot = EQUIPMENT_SLOT_START; slot < EQUIPMENT_SLOT_END; ++slot)
        {
            Item* item = (showEquipment || (showWeapons && IsWeaponEquipmentSlot(slot)))
                ? player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot)
                : nullptr;
            player->SetVisibleItemSlot(slot, item);
        }
    }

    void ApplyDracthyrVisibleMode(Player* player, DracthyrVisibleMode mode, bool force = false)
    {
        uint64 key = GetDracthyrStateKey(player);
        auto itr = DracthyrVisibleModes.find(key);
        if (!force && itr != DracthyrVisibleModes.end() && itr->second == mode)
            return;

        DracthyrVisibleModes[key] = mode;

        if (mode == DracthyrVisibleMode::Dragon)
            RefreshDracthyrVisibleItems(player, false, true);
        else
            RefreshDracthyrVisibleItems(player, true, true);
    }

    void SetDracthyrDisplay(Player* player, uint32 displayId)
    {
        bool dragonForm = IsDracthyrDragonDisplay(displayId);

        // Keep native display as visage. Only current display changes.
        // This avoids forcing normal equipment meshes onto the Sirus dragon body.
        player->SetNativeDisplayId(GetDracthyrVisageDisplayId(player));
        player->SetDisplayId(displayId);
        ApplyDracthyrVisibleMode(player, dragonForm ? DracthyrVisibleMode::Dragon : DracthyrVisibleMode::Normal, true);
        player->SetSheath(player->GetSheath());
    }

    void ResetDracthyrDragonForm(Player* player)
    {
        uint64 key = GetDracthyrStateKey(player);
        DracthyrVisibleModes.erase(key);
        ClearDracthyrDragonFormAuraState(player);
        player->RemoveAurasDueToSpell(SPELL_DRACTHYR_DRAGON_FORM);
        SetDracthyrDisplay(player, GetDracthyrVisageDisplayId(player));
    }

    void TeachDracthyrDragonForm(Player* player, char const* reason)
    {
        if (!player->HasSpell(SPELL_DRACTHYR_DRAGON_FORM))
        {
            player->learnSpell(SPELL_DRACTHYR_DRAGON_FORM, false);
            LOG_INFO("server", "TwoForms: Race27 Dracthyr learns Dragon Form ({}) on {}", SPELL_DRACTHYR_DRAGON_FORM, reason);
        }
    }
}

class TwoForms : public PlayerScript
{
public:
    TwoForms() : PlayerScript("TwoForms")
    {
        LOG_INFO("server", "TwoForms PlayerScript registered!");
    }

    void OnPlayerFirstLogin(Player* player) override
    {
        uint8 race = player->getRace();
        uint8 gender = player->GetByteValue(PLAYER_BYTES_3, PLAYER_BYTES_3_OFFSET_GENDER);

        LOG_INFO("server", "TwoForms: OnPlayerFirstLogin triggered for player {} (Race: {}, Gender: {})",
            player->GetName(), (uint32)race, (uint32)gender);

        if (race == RACE_WORGEN_CUSTOM)
        {
            uint32 spellId = (gender == GENDER_FEMALE) ? SPELL_WORGEN_TWO_FORMS_FEMALE : SPELL_WORGEN_TWO_FORMS_MALE;
            LOG_INFO("server", "TwoForms: Player is Worgen, teaching spell ID: {}", spellId);
            player->learnSpell(spellId, false);

            // Worgen extra racial spells are managed by the Heritage menu in this repack.
            // Keep only Two Forms here.
        }
        else if (race == RACE_DRACTHYR_CUSTOM)
        {
            TeachDracthyrDragonForm(player, "first login");
        }
        else
        {
            LOG_INFO("server", "TwoForms: Player is not Worgen or Dracthyr (Race is {}), skipping.", (uint32)race);
        }
    }

    void OnPlayerLogin(Player* player) override
    {
        if (player->getRace() != RACE_DRACTHYR_CUSTOM)
            return;

        player->LearnDefaultSkills();
        ResetDracthyrDragonForm(player);
        TeachDracthyrDragonForm(player, "login");
    }

    void OnPlayerSpellCast(Player* player, Spell* spell, bool /*skipCheck*/) override
    {
        if (!spell || player->getRace() != RACE_DRACTHYR_CUSTOM)
            return;

        SpellInfo const* spellInfo = spell->GetSpellInfo();
        if (!spellInfo || spellInfo->Id != SPELL_DRACTHYR_DRAGON_FORM)
            return;

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS))
        {
            QueueDracthyrDragonFormAuraCancel(player);
            LOG_INFO("server", "TwoForms: Race27 Dracthyr {} ignored Dragon Form while Metamorphosis is active", player->GetName());
            return;
        }

        bool currentlyDragon = IsDracthyrDragonDisplay(player->GetDisplayId());
        uint32 nextDisplayId = currentlyDragon ? GetDracthyrVisageDisplayId(player) : GetDracthyrDragonDisplayId(player);

        SetDracthyrDisplay(player, nextDisplayId);

        if (currentlyDragon)
            QueueDracthyrDragonFormAuraCancel(player);
        else
            StartDracthyrDragonFormAuraSync(player);

        LOG_INFO("server", "TwoForms: Race27 Dracthyr {} toggled Dragon Form to {} display {} (skin={}, visageSkinGroup={}, visageSkinShade={}, dragonSkin={}, armorVariant={}, gender={})",
            player->GetName(),
            currentlyDragon ? "visage" : "dragon",
            nextDisplayId,
            player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID),
            GetDracthyrVisageSkinColorGroup(player),
            GetDracthyrVisageSkinShade(player),
            GetDracthyrDragonSkinVariant(player),
            GetDracthyrDragonArmorVariant(player),
            (uint32)GetDracthyrOriginalGender(player));
    }

    void OnPlayerAfterSetVisibleItemSlot(Player* player, uint8 slot, Item* item) override
    {
        if (!item || player->getRace() != RACE_DRACTHYR_CUSTOM)
            return;

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS))
            return;

        if (!IsDracthyrDragonDisplay(player->GetDisplayId()) || IsWeaponEquipmentSlot(slot))
            return;

        // Sirus dragon form uses baked body/armor textures. Gear remains equipped
        // and keeps stats, but non-weapon visible item models are hidden.
        player->SetVisibleItemSlot(slot, nullptr);
    }

    void OnPlayerUpdate(Player* player, uint32 diff) override
    {
        if (player->getRace() != RACE_DRACTHYR_CUSTOM)
            return;

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS))
            return;

        bool cancelPending = TickDracthyrDragonFormAuraCancel(player, diff);
        bool waitingForAura = TickDracthyrDragonFormAuraSync(player, diff);
        bool dragonDisplay = IsDracthyrDragonDisplay(player->GetDisplayId());

        if (dragonDisplay)
        {
            if (!cancelPending && !waitingForAura && !player->HasAura(SPELL_DRACTHYR_DRAGON_FORM))
            {
                LOG_INFO("server", "TwoForms: Race27 Dracthyr {} returned to visage because Dragon Form aura was removed", player->GetName());
                SetDracthyrDisplay(player, GetDracthyrVisageDisplayId(player));
                return;
            }

            ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Dragon);
            return;
        }

        if (player->HasAura(SPELL_DRACTHYR_DRAGON_FORM))
            player->RemoveAurasDueToSpell(SPELL_DRACTHYR_DRAGON_FORM);

        ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Normal);
    }

    void OnPlayerBeforeLogout(Player* player) override
    {
        if (player->getRace() == RACE_DRACTHYR_CUSTOM)
            ResetDracthyrDragonForm(player);
    }

    void OnPlayerLogout(Player* player) override
    {
        if (player->getRace() == RACE_DRACTHYR_CUSTOM)
            ResetDracthyrDragonForm(player);
    }
};

void AddSC_TwoForms()
{
    new TwoForms();
}
