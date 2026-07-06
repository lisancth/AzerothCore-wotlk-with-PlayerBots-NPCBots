#include "Player.h"
#include "ScriptMgr.h"
#include "Log.h"
#include "Spell.h"
#include <algorithm>
#include <unordered_map>

namespace
{
    constexpr uint8 RACE_WORGEN_CUSTOM = 16;
    constexpr uint8 RACE_DRACTHYR_CUSTOM = 35;

    constexpr uint32 SPELL_WORGEN_TWO_FORMS_MALE = 97709;
    constexpr uint32 SPELL_WORGEN_TWO_FORMS_FEMALE = 97710;
    constexpr uint32 SPELL_DRACTHYR_DRAGON_FORM = 320555;
    constexpr uint32 SPELL_WARLOCK_METAMORPHOSIS = 47241;
    constexpr uint32 SPELL_WARLOCK_METAMORPHOSIS_BOOST = 54817;
    constexpr uint32 SPELL_WARLOCK_METAMORPHOSIS_TRIGGERED_SPELLS = 54879;
    constexpr uint32 SPELL_VISUAL_KIT_WARLOCK_METAMORPHOSIS_PRECAST = 6778;
    constexpr uint32 SPELL_VISUAL_KIT_WARLOCK_METAMORPHOSIS_IMPACT = 11228;
    constexpr uint32 DRACTHYR_METAMORPHOSIS_VISUAL_REFRESH_MS = 6000;
    constexpr uint32 DRACTHYR_METAMORPHOSIS_PENDING_MS = 100;

    constexpr uint32 DISPLAY_DRACTHYR_VISAGE_MALE = 566212;
    constexpr uint32 DISPLAY_DRACTHYR_VISAGE_FEMALE = 566213;
    constexpr uint32 DISPLAY_WARLOCK_METAMORPHOSIS = 25277;
    constexpr uint8 DRACTHYR_DRAGON_SKIN_VARIANTS = 15;
    constexpr uint8 DRACTHYR_VISAGE_SKINS_PER_DRAGON_SKIN = 16;
    constexpr uint8 DRACTHYR_DRAGON_ARMOR_VARIANTS = 8;
    constexpr uint8 DRACTHYR_DRAGON_DEFAULT_ARMOR_VARIANT = 0;
    constexpr uint8 DRACTHYR_DRAGON_DISPLAY_VARIANTS = DRACTHYR_DRAGON_SKIN_VARIANTS * DRACTHYR_DRAGON_ARMOR_VARIANTS;
    constexpr uint32 DISPLAY_DRACTHYR_DRAGON_MALE_BASE = 1100000;
    constexpr uint32 DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE = 1101000;

    enum class DracthyrVisibleMode : uint8
    {
        Normal,
        Dragon,
        Hidden
    };

    std::unordered_map<uint64, DracthyrVisibleMode> DracthyrVisibleModes;
    std::unordered_map<uint64, uint32> DracthyrMetamorphosisVisualTimers;
    std::unordered_map<uint64, uint32> DracthyrMetamorphosisPendingTimers;

    uint8 GetDracthyrOriginalGender(Player const* player)
    {
        return player->GetByteValue(PLAYER_BYTES_3, PLAYER_BYTES_3_OFFSET_GENDER);
    }

    uint32 GetDracthyrVisageDisplayId(Player const* player)
    {
        return GetDracthyrOriginalGender(player) == GENDER_FEMALE ? DISPLAY_DRACTHYR_VISAGE_FEMALE : DISPLAY_DRACTHYR_VISAGE_MALE;
    }

    uint32 GetDracthyrDragonDisplayId(Player const* player)
    {
        uint8 skin = player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID);
        uint8 skinVariant = skin / DRACTHYR_VISAGE_SKINS_PER_DRAGON_SKIN;
        if (skinVariant >= DRACTHYR_DRAGON_SKIN_VARIANTS)
            skinVariant = DRACTHYR_DRAGON_SKIN_VARIANTS - 1;

        uint32 displayIndex = skinVariant * DRACTHYR_DRAGON_ARMOR_VARIANTS + DRACTHYR_DRAGON_DEFAULT_ARMOR_VARIANT;
        uint32 displayBase = GetDracthyrOriginalGender(player) == GENDER_FEMALE ? DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE : DISPLAY_DRACTHYR_DRAGON_MALE_BASE;
        return displayBase + displayIndex;
    }

    bool IsDracthyrDragonDisplay(uint32 displayId)
    {
        return (displayId >= DISPLAY_DRACTHYR_DRAGON_MALE_BASE && displayId < DISPLAY_DRACTHYR_DRAGON_MALE_BASE + DRACTHYR_DRAGON_DISPLAY_VARIANTS) ||
            (displayId >= DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE && displayId < DISPLAY_DRACTHYR_DRAGON_FEMALE_BASE + DRACTHYR_DRAGON_DISPLAY_VARIANTS);
    }

    void SetDracthyrClientRace(Player* player, uint8 race)
    {
        if (player->GetByteValue(UNIT_FIELD_BYTES_0, 0) == race)
            return;

        player->SetByteValue(UNIT_FIELD_BYTES_0, 0, race);
    }

    void RestoreDracthyrClientRace(Player* player)
    {
        SetDracthyrClientRace(player, RACE_DRACTHYR_CUSTOM);
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

    void RefreshDracthyrVirtualWeapons(Player* player, bool showWeapons)
    {
        if (showWeapons)
        {
            player->SetSheath(player->GetSheath());
            return;
        }

        player->SetVirtualItemSlot(0, nullptr);
        player->SetVirtualItemSlot(1, nullptr);
        player->SetVirtualItemSlot(2, nullptr);
    }

    void ApplyDracthyrVisibleMode(Player* player, DracthyrVisibleMode mode, bool force = false)
    {
        uint64 key = player->GetGUID().GetCounter();
        auto itr = DracthyrVisibleModes.find(key);
        if (!force && itr != DracthyrVisibleModes.end() && itr->second == mode)
            return;

        DracthyrVisibleModes[key] = mode;

        switch (mode)
        {
            case DracthyrVisibleMode::Normal:
                RefreshDracthyrVisibleItems(player, true, true);
                RestoreDracthyrClientRace(player);
                break;
            case DracthyrVisibleMode::Dragon:
                RefreshDracthyrVisibleItems(player, false, true);
                RestoreDracthyrClientRace(player);
                break;
            case DracthyrVisibleMode::Hidden:
                RefreshDracthyrVisibleItems(player, false, false);
                RefreshDracthyrVirtualWeapons(player, false);
                break;
        }
    }

    void PlayDracthyrMetamorphosisVisual(Player* player)
    {
        // Spell 47241 uses SpellVisual 12118; these are its safe visual kits.
        player->SendPlaySpellVisual(SPELL_VISUAL_KIT_WARLOCK_METAMORPHOSIS_PRECAST);
        player->SendPlaySpellImpact(player->GetGUID(), SPELL_VISUAL_KIT_WARLOCK_METAMORPHOSIS_IMPACT);
    }

    void RefreshDracthyrMetamorphosisVisual(Player* player, uint32 diff, bool force = false)
    {
        uint64 key = player->GetGUID().GetCounter();
        uint32& timer = DracthyrMetamorphosisVisualTimers[key];

        if (!force && timer > diff)
        {
            timer -= diff;
            return;
        }

        PlayDracthyrMetamorphosisVisual(player);
        timer = DRACTHYR_METAMORPHOSIS_VISUAL_REFRESH_MS;
    }

    void ClearDracthyrMetamorphosisVisual(Player const* player)
    {
        DracthyrMetamorphosisVisualTimers.erase(player->GetGUID().GetCounter());
    }

    void MarkDracthyrMetamorphosisPending(Player const* player)
    {
        DracthyrMetamorphosisPendingTimers[player->GetGUID().GetCounter()] = DRACTHYR_METAMORPHOSIS_PENDING_MS;
    }

    bool IsDracthyrMetamorphosisPending(Player const* player, uint32 diff)
    {
        uint64 key = player->GetGUID().GetCounter();
        auto itr = DracthyrMetamorphosisPendingTimers.find(key);
        if (itr == DracthyrMetamorphosisPendingTimers.end())
            return false;

        if (itr->second > diff)
        {
            itr->second -= diff;
            return true;
        }

        DracthyrMetamorphosisPendingTimers.erase(itr);
        return false;
    }

    void ClearDracthyrMetamorphosisPending(Player const* player)
    {
        DracthyrMetamorphosisPendingTimers.erase(player->GetGUID().GetCounter());
    }

    void SetDracthyrVisageDisplayOnly(Player* player)
    {
        RestoreDracthyrClientRace(player);
        player->SetNativeDisplayId(GetDracthyrVisageDisplayId(player));
        player->SetDisplayId(GetDracthyrVisageDisplayId(player));
        player->SetSheath(player->GetSheath());
    }

    void SetDracthyrDisplay(Player* player, uint32 displayId)
    {
        bool dragonForm = IsDracthyrDragonDisplay(displayId);

        RestoreDracthyrClientRace(player);
        // Native 保持人形，只切当前 Display；这样客户端按变形处理，不把装备硬挂到龙模型上。
        player->SetNativeDisplayId(GetDracthyrVisageDisplayId(player));
        player->SetDisplayId(displayId);
        ApplyDracthyrVisibleMode(player, dragonForm ? DracthyrVisibleMode::Dragon : DracthyrVisibleMode::Normal, true);
        player->SetSheath(player->GetSheath());
    }

    void ApplyDracthyrMetamorphosis(Player* player, bool force = false)
    {
        // Race35 must not receive the real FORM_METAMORPHOSIS shapeshift aura.
        // The demon display itself is safer if all player item/weapon visuals
        // are cleared before the model swap packet reaches the client.
        bool const alreadyDemon = player->GetDisplayId() == DISPLAY_WARLOCK_METAMORPHOSIS;
        ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Hidden, force || !alreadyDemon);
        RefreshDracthyrVirtualWeapons(player, false);
        RestoreDracthyrClientRace(player);

        player->SetNativeDisplayId(GetDracthyrVisageDisplayId(player));
        if (force || !alreadyDemon)
            player->SetDisplayId(DISPLAY_WARLOCK_METAMORPHOSIS);

        ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Hidden, force);
        RefreshDracthyrVirtualWeapons(player, false);

        if (!player->HasAura(SPELL_WARLOCK_METAMORPHOSIS_BOOST))
            player->CastSpell(player, SPELL_WARLOCK_METAMORPHOSIS_BOOST, true);
        if (!player->HasAura(SPELL_WARLOCK_METAMORPHOSIS_TRIGGERED_SPELLS))
            player->CastSpell(player, SPELL_WARLOCK_METAMORPHOSIS_TRIGGERED_SPELLS, true);
    }

    void ClearDracthyrMetamorphosis(Player* player)
    {
        player->RemoveAurasDueToSpell(SPELL_WARLOCK_METAMORPHOSIS_BOOST);
        player->RemoveAurasDueToSpell(SPELL_WARLOCK_METAMORPHOSIS_TRIGGERED_SPELLS);
        ClearDracthyrMetamorphosisVisual(player);

        RestoreDracthyrClientRace(player);
        if (player->GetDisplayId() == DISPLAY_WARLOCK_METAMORPHOSIS)
            SetDracthyrDisplay(player, GetDracthyrVisageDisplayId(player));
    }

    void ResetDracthyrTemporaryForms(Player* player)
    {
        player->RemoveAurasDueToSpell(SPELL_WARLOCK_METAMORPHOSIS);
        ClearDracthyrMetamorphosis(player);
        ClearDracthyrMetamorphosisPending(player);
        DracthyrVisibleModes.erase(player->GetGUID().GetCounter());
        SetDracthyrDisplay(player, GetDracthyrVisageDisplayId(player));
    }

    void TeachDracthyrDragonForm(Player* player, char const* reason)
    {
        if (!player->HasSpell(SPELL_DRACTHYR_DRAGON_FORM))
        {
            player->learnSpell(SPELL_DRACTHYR_DRAGON_FORM, false);
            LOG_INFO("server", "TwoForms: Dracthyr learns Dragon Form ({}) on {}", SPELL_DRACTHYR_DRAGON_FORM, reason);
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

        if (race == RACE_WORGEN_CUSTOM) // RACE_WOLGEN = 16
        {
            uint32 spellId = (gender == GENDER_FEMALE) ? SPELL_WORGEN_TWO_FORMS_FEMALE : SPELL_WORGEN_TWO_FORMS_MALE;
            LOG_INFO("server", "TwoForms: Player is Worgen, teaching spell ID: {}", spellId);
            player->learnSpell(spellId, false);

            // ====== 以下4个种族技能改由【遗产菜单(Heritage Horizons)】管理 ======
            // 遗产菜单让玩家在UI里自选/重置这些技能。若源码也强制给,会导致
            // 菜单"重置"失效(源码给的技能菜单移除不了)。故注释掉,交给菜单。
            // 若以后不用遗产功能,取消注释即可恢复源码强制给。
            //
            // 疾步夜行 68992 (移速+40% 10秒)
            // player->learnSpell(68992, false);
            // 剥皮专家 68978 (被动,剥皮+15点)
            // player->learnSpell(68978, false);
            // 恶意 68975 (被动,全暴击+1%)
            // player->learnSpell(68975, false);
            // 畸变 68976 (被动,降低受暗影/自然命中1%)
            // player->learnSpell(68976, false);
            //
            // 注意：双形态(97709/97710)不在遗产菜单里,保留上面的源码强制给。
            // 注意：狂野奔跑(87840/87842)大灾变坐骑机制WotLK核心会崩,不做。
        }
        else if (race == RACE_DRACTHYR_CUSTOM)
        {
            TeachDracthyrDragonForm(player, "first login");
        }
        else
        {
            LOG_INFO("server", "TwoForms: Player is not Worgen (Race is {}), skipping.", (uint32)race);
        }
    }

    void OnPlayerLogin(Player* player) override
    {
        if (player->getRace() == RACE_DRACTHYR_CUSTOM)
        {
            player->LearnDefaultSkills();
            ResetDracthyrTemporaryForms(player);
            TeachDracthyrDragonForm(player, "login");
        }
    }

    void OnPlayerSpellCast(Player* player, Spell* spell, bool /*skipCheck*/) override
    {
        if (!spell || player->getRace() != RACE_DRACTHYR_CUSTOM)
        {
            return;
        }

        SpellInfo const* spellInfo = spell->GetSpellInfo();
        if (!spellInfo)
        {
            return;
        }

        if (spellInfo->Id == SPELL_WARLOCK_METAMORPHOSIS)
        {
            MarkDracthyrMetamorphosisPending(player);
            ClearDracthyrMetamorphosisVisual(player);
            LOG_INFO("server", "TwoForms: Dracthyr {} queued Metamorphosis ({}) for one-tick safe demon display", player->GetName(), SPELL_WARLOCK_METAMORPHOSIS);
            return;
        }

        if (spellInfo->Id != SPELL_DRACTHYR_DRAGON_FORM)
        {
            return;
        }

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS))
        {
            LOG_INFO("server", "TwoForms: Dracthyr {} ignored Dragon Form while Metamorphosis is active", player->GetName());
            return;
        }

        uint32 nextDisplayId = IsDracthyrDragonDisplay(player->GetDisplayId())
            ? GetDracthyrVisageDisplayId(player)
            : GetDracthyrDragonDisplayId(player);

        SetDracthyrDisplay(player, nextDisplayId);
        LOG_INFO("server", "TwoForms: Dracthyr {} toggled display to {} (skin={}, dragonSkin={}, hairColor={}, facial={})",
            player->GetName(),
            nextDisplayId,
            player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID),
            std::min<uint8>(player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_SKIN_ID) / DRACTHYR_VISAGE_SKINS_PER_DRAGON_SKIN, DRACTHYR_DRAGON_SKIN_VARIANTS - 1),
            player->GetByteValue(PLAYER_BYTES, PLAYER_BYTES_OFFSET_HAIR_COLOR_ID),
            player->GetByteValue(PLAYER_BYTES_2, PLAYER_BYTES_2_OFFSET_FACIAL_STYLE));
    }

    void OnPlayerAfterSetVisibleItemSlot(Player* player, uint8 slot, Item* item) override
    {
        if (!item || player->getRace() != RACE_DRACTHYR_CUSTOM)
        {
            return;
        }

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS) || player->GetDisplayId() == DISPLAY_WARLOCK_METAMORPHOSIS)
        {
            player->SetVisibleItemSlot(slot, nullptr);
            RefreshDracthyrVirtualWeapons(player, false);
            return;
        }

        if (!IsDracthyrDragonDisplay(player->GetDisplayId()) || IsWeaponEquipmentSlot(slot))
            return;

        // Sirus 的龙形态不显示普通装备。装备仍然穿着并提供属性，只清可见外观。
        player->SetVisibleItemSlot(slot, nullptr);
    }

    void OnPlayerUpdate(Player* player, uint32 p_time) override
    {
        if (player->getRace() != RACE_DRACTHYR_CUSTOM)
            return;

        if (IsDracthyrMetamorphosisPending(player, p_time))
            return;

        if (player->HasAura(SPELL_WARLOCK_METAMORPHOSIS))
        {
            ApplyDracthyrMetamorphosis(player);
            RefreshDracthyrMetamorphosisVisual(player, p_time);
            return;
        }

        ClearDracthyrMetamorphosis(player);

        if (IsDracthyrDragonDisplay(player->GetDisplayId()))
        {
            ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Dragon);
            return;
        }

        ApplyDracthyrVisibleMode(player, DracthyrVisibleMode::Normal);
    }

    void OnPlayerBeforeLogout(Player* player) override
    {
        if (player->getRace() == RACE_DRACTHYR_CUSTOM)
            ResetDracthyrTemporaryForms(player);
    }

    void OnPlayerLogout(Player* player) override
    {
        if (player->getRace() == RACE_DRACTHYR_CUSTOM)
            ResetDracthyrTemporaryForms(player);
    }
};

void AddSC_TwoForms()
{
    new TwoForms();
}

