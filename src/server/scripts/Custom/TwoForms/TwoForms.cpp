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

            // 狼人种族技能：疾步夜行 (Darkflight 68992) - 移动速度+40%持续10秒
            player->learnSpell(68992, false);
            LOG_INFO("server", "TwoForms: Worgen learns Darkflight (68992)");

            // 注意：狂野奔跑(87840/87842)是大灾变坐骑机制，WotLK核心HandleAuraModShapeshift
            // 处理它会崩溃，暂不添加。待用核心支持的方式(纯Aura31加速)重做。
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
