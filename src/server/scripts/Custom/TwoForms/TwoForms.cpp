#include "Player.h"
#include "ScriptMgr.h"
#include "Log.h"

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
        uint8 gender = player->getGender();

        LOG_INFO("server", "TwoForms: OnPlayerFirstLogin triggered for player {} (Race: {}, Gender: {})",
            player->GetName(), (uint32)race, (uint32)gender);

        if (race == 16) // RACE_WOLGEN = 16
        {
            uint32 spellId = (gender == GENDER_FEMALE) ? 97710 : 97709;
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
        else
        {
            LOG_INFO("server", "TwoForms: Player is not Worgen (Race is {}), skipping.", (uint32)race);
        }
    }
};

void AddSC_TwoForms()
{
    new TwoForms();
}
