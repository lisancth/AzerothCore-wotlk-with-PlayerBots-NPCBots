# 背包满自动卖货功能 (2026-05-30)

## 功能说明

Bot 背包使用率达到阈值时，自动寻路到地图最近的商人 NPC，按配置品质出售物品，
然后由 grind AI 自动继续找怪打。任务物品始终保留。

## 流程

1. `BagFullSellTrigger` — 背包 ≥ 阈值(默认90%) 且不在战斗
2. `TravelToVendorAction` — SQL 查同 map 最近商人坐标 → MoveTo 寻路
3. `BagFullSellAction` — 到达商人范围后按品质卖货

## 配置项 (playerbots.conf)

| 配置项 | 默认值 | 说明 |
|--------|--------|------|
| AiPlayerbot.BagFullSellThreshold | 90 | 触发阈值% |
| AiPlayerbot.SellGrayItems | 1 | 灰色（强制卖） |
| AiPlayerbot.SellWhiteItems | 1 | 白色 |
| AiPlayerbot.SellGreenItems | 0 | 绿色 |
| AiPlayerbot.SellBlueItems | 0 | 蓝色 |

## GM 命令

```
.playerbots sellmode status        查看当前设置
.playerbots sellmode gray          只卖灰色
.playerbots sellmode white         卖灰+白
.playerbots sellmode green         卖灰+白+绿
.playerbots sellmode blue          卖灰+白+绿+蓝
```

## 修改文件

- `src/PlayerbotAIConfig.h` — 新增4个 sell 配置字段 + bagFullSellThreshold
- `src/PlayerbotAIConfig.cpp` — 加载新配置项
- `src/Ai/Base/Actions/SellAction.h` — 新增 TravelToVendorAction 类
- `src/Ai/Base/Actions/SellAction.cpp` — 实现 TravelToVendorAction + BagFullSellItemsVisitor
- `src/Ai/Base/Trigger/GenericTriggers.cpp` — BagFullSellTrigger 去掉附近商人限制
- `src/Ai/Base/Strategy/MaintenanceStrategy.cpp` — 挂载两步 action
- `src/Ai/Base/ActionContext.h` — 注册 travel_to_vendor action
- `src/Script/PlayerbotCommandScript.cpp` — 新增 sellmode GM 命令
- `conf/playerbots.conf.dist` — 新增配置项说明
