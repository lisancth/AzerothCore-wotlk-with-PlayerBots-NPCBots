# PlayerBot 三项功能修复记录 (2026-05-30)

## 修改文件清单

### 【1】背包满自动卖货

**效果：** bot 背包占用 ≥90% 且附近有商人时，自动卖掉灰色垃圾装备。

修改文件：
- `src/Ai/Base/Trigger/GenericTriggers.h` — 新增 `BagFullSellTrigger` 类声明
- `src/Ai/Base/Trigger/GenericTriggers.cpp` — 实现 `BagFullSellTrigger::IsActive()`
- `src/Ai/Base/TriggerContext.h` — 注册 `"bag full sell"` trigger
- `src/Ai/Base/Actions/SellAction.h` — 新增 `BagFullSellAction` 类
- `src/Ai/Base/Actions/SellAction.cpp` — 实现 `BagFullSellAction::Execute/isUseful`
- `src/Ai/Base/ActionContext.h` — include SellAction.h，注册 `"bag full sell"` action
- `src/Ai/Base/Strategy/MaintenanceStrategy.cpp` — 挂载 trigger → action

---

### 【2】风筝AI（远程职业保持距离）

**效果：** 法师/术士/猎人/暗牧等远程职业，敌人进入近战范围时无论是否被攻击都会自动后退，实现真正的风筝效果。

修改文件：
- `src/Ai/Base/Trigger/RangeTriggers.cpp`
  - `EnemyTooCloseForSpellTrigger::IsActive()` — 去掉 `GetVictim() != bot` 限制
  - `EnemyTooCloseForAutoShotTrigger::IsActive()` — 同上（猎人专用）

---

### 【3】喝水模式GM切换

**效果：** GM 可在游戏内用命令切换 bot 的喝水/回血模式，无需重启服务器。

新增 GM 命令：
```
.playerbots drinkmode          — 查看当前状态
.playerbots drinkmode on       — 真实模式：bot 需要背包里有食物/水才能回血回蓝
.playerbots drinkmode off      — 自动模式（默认）：bot 无需物品自动回血回蓝
```

修改文件：
- `src/Script/PlayerbotCommandScript.cpp` — 新增 `HandleDrinkModeCommand` 及命令注册

---

## 配置文件说明

`playerbots.conf` 中 `AiPlayerbot.BotCheats = "food,taxi,raid"` 控制默认状态：
- 包含 `"food"` = 自动模式（默认）
- 去掉 `"food"` = 真实喝水模式

GM 命令修改的是运行时内存值，重启服务器后恢复配置文件设置。
