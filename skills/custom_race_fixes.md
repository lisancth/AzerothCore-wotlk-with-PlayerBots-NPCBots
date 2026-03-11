---
name: "wow_custom_race_fixes"
description: "Fixes for WoW Custom Race shapeshifting visuals, totem rendering, server stability (overloading), UI Lua bugs, random bot custom race spawning, and server port conflicts"
---

# 魔兽世界：自定义种族核心问题修复总结 (Skills)

本 Skill 文档记录了针对 AzerothCore 3.3.5 带有 Custom Race 和 Playerbot、NPCbot 的服务端版本中，几个最致命和隐蔽的Bug及其修复方案。此文档可以保留作为后续排查此类问题的核心知识库。

## 问题 1：变鬼狼后模型扭曲出错、小德变豹子模型错误及解除变身头盔变成黑方块 (Shapeshift Visual & Gender Bug)

**问题表现：**
自定义种族在进行“变狼”、“变成猎豹”等改变模型的变身（Shapeshift）后，模型变得非常丑陋扭曲。不仅如此，当取消变身恢复人形时，头盔直接渲染失败，变成一个黑色的方块显示在头上！

**根本原因：**
服务端处理变身形态时，某些生物模型（例如狼、猎豹）的性别是默认的 `GENDER_NONE`。原生种族在 `SetDisplayId` 更新性别为 `GENDER_NONE` 时能够正确读取到自身的原始性别，但是对于**自定义种族（Custom Race）**，原生游戏逻辑并未做处理，导致自定义种族取消变形时，服务端错误地将其当前物理性别永久写成了 `GENDER_NONE`。这就导致原本的人形头盔无法找到对应性别的渲染路线，直接渲染黑块。

**修复方案：**
修复位于源码的 `src/server/game/Entities/Unit/Unit.cpp` 中的 `Unit::SetDisplayId(uint32 modelId)` 函数：
当模型 ID 试图恢复为当前角色的 `GetNativeDisplayId()` (即人类形态) 时，应该强制使用角色最真实的属性 `GetNativeGender()`，而不是依赖于变身残留下来的错误性别 `GENDER_NONE`。
```cpp
// 修复核心代码逻辑：在恢复原生模型时，强制恢复原生性别
if (modelId == GetNativeDisplayId()) {
    if (Player* player = ToPlayer()) {
        SetByteValue(UNIT_FIELD_BYTES_0, 2, player->GetNativeGender());
    } else {
        SetByteValue(UNIT_FIELD_BYTES_0, 2, GetNativeGender());
    }
}
```

---

## 问题 2：新种族图腾模型不显示/错误 (Totem Models Fix)

**问题表现：**
新添加的自定义种族（尤其是萨满）在插图腾时，图腾可能不显示，或者显示的种类、模型并非原汁原味的图腾（或者串模型了）。

**根本原因：**
AzerothCore 的数据库扩展（如 `playerbot_world.player_totem_model.sql` 等表）中，写死了旧有原生种族对应的图腾模型 ID (DisplayID)。自定义种族的 Race ID 缺少对应的数据插入。

**修复方案：**
在数据库中针对该自定义种族的 `race_id`，补全不同属性图腾（地、水、火、风）对应的 Model ID 条目，确保图腾的 display id 存在且合法。

---

## 问题 3：服务器假死崩溃卡主，循环刷新率 412 秒/帧 (Server Stability/Playerbot Overload)

**问题表现：**
游戏客户端无法登入停留在响应界面，服务器后台不崩溃，但是直接“卡死”。后台打印红字：`Update time diff: 412893ms`，意思是服务器跑了一帧竟然用了极其夸张的 7 分钟时间，将底层 CPU 或者 IO 直接全堵死了（即使有 128GB 的物理内存也会挂掉）。

**根本原因：**
配置了过量了后台真实 AI 电脑人：
`AiPlayerbot.MaxRandomBots = 1000`
虽然服务器内存完全够用，由于 Playerbot 是高度复杂的实体，它们需要计算寻路、施法判断且跟数据库极高频率的重读写交互。1000 个后台机器人直接吃瘪了单线程和数据库连接池，使得游戏引擎陷入假死等待状态。

**修复方案：**
修改 Playerbots 服务端独立配置文件：`configs/modules/playerbots.conf`
把并发运行机器人数值降到物理机单线程算力能顶得住的安全范围：
```ini
AiPlayerbot.MinRandomBots = 50
AiPlayerbot.MaxRandomBots = 150
```
大幅度缩减无意义的待命机器人，世界依旧保持热闹但服务器刷新率将回到正常的 <50ms 级别。

---

## 问题 4：ezCollections 幻化插件 lua 报错 "attempt to index field 'controlFrame' / 'settings' (a nil value)" 和 PortraitHelpBox

**问题表现：**
登录游戏打开幻化等功能时，频繁引发 Lua 红字报错：
- `ModelFrames.lua:57: attempt to index field 'settings'`
- `Blizzard_Wardrobe.lua:748: ... controlFrame ...`
- `[string "*:OnLoad"]:1: attempt to index field 'Glow' ...`

**根本原因：**
因为使用了自定义种族，旧版 `ezCollections` 在按原生性别查找镜头距离表（如 `ModelSettings["CustomRaceMale"]`）时找不到数据，导致 `settings` 为 `nil` 而全局崩溃。同时最新版本的 XML 缺失 `GlowBoxArrowTemplate` 以及部分由于 `controlFrame` 没初始化引发的链式崩溃。

**修复方案：**
1. **Fallback 保底处理：** 修改插件 `ModelFrames.lua` 下的 `SelectSettings(model)` 方法。如果查不到对应种族的视角参数，强行附一个 `"HumanMale"` 的安全值作为保底兜底。
2. **XML 添加兼容父级发光框：** 将报错的 `Blizzard_Collections.xml` 中无名箭头的框架 `<Frame parentKey="Arrow" inherits="GlowBoxArrowTemplate">` 显式声明 Name 避免 `index 'Glow'` 的 nil 异常。
3. **判空跳过操作：** 在 `Blizzard_Wardrobe.lua` 第 748 行和 755 行添加 `if (WardrobeTransmogFrame.Model.controlFrame) then ... end` 的防空崩溃检测。

---
## 问题 5：自定义种族 Playerbot 在出生点扎堆、不移动、不打怪、不传送 (Playerbot Custom Race Spawn Stacking)

**问题表现：**
配置了随机机器人（Random Bots）后，所有自定义种族（如狼人、狐人等）的机器人不论等级多少，全都扎堆在出生点（如北郡修道院）发呆，重合在一起，不会自动传送去主城或是练级区打怪。

**根本原因：**
因为使用了自定义种族扩展（Custom Races），而在 Playerbot 模块源码中的硬编码函数 `IsAlliance() ` 仅包含了魔兽世界最早最初的 5 个联盟种族（人类、矮人、暗夜、侏儒、德莱尼）。
当 Playerbot 根据自己阵营去选取出生练级点（HordeStarterCache 或 AllianceStarterCache）时，所有非最初 5 个联盟种族的机器人都会被 `IsAlliance()` 强制返回 `false` 从而被系统分配到了部落缓存区去寻找点位。紧接着这名带着联盟身份的机器人匹配到了部落领地时，安全检查触发，过滤掉了所有的传送合法目的地，导致最终 `可用目的地 = 0`，机器人就彻底在创建位置原地罚站。

**修复方案：**
在服务端 `modules/mod-playerbots/src/Bot/PlayerbotAI.cpp` 中的 `IsAlliance()` 方法里，将写死的种族比对改为基于动态掩码的判定：
```cpp
bool IsAlliance(uint8 race)
{
    return (1 << (race - 1)) & RACEMASK_ALLIANCE;
}
```
这样可以完美吃透 `SharedDefines.h` 中针对联盟种族掩码的配置扩展。所有自定义联盟种族都能获得合法缓存地点，上线瞬间就会自动飞到对应的等级区域打怪。**注意需要重新编译核心才能生效。**

---
## 问题 6：真实玩家在Playerbot旁边时所有机器人拒绝传送 (HasPlayerNearby Break Bug)

**问题表现：**
即使前面修复了 `IsAlliance()` 的问题，如果真实玩家站在出生点或者机器人附近（如观察它们的行为），**所有机器人仍然拒绝传送**，继续扎堆。

**根本原因：**
在 `RandomPlayerbotMgr::RandomTeleport()` 函数中，当机器人已经选好了合法传送目的地、准备执行最后一步传送时，会检测附近是否有真实玩家。如果有，程序使用了 `break`（**直接退出整个循环**），而不是 `continue`（**跳过当前目的地、尝试下一个**）。

```cpp
// 错误代码：
if (botAI->HasPlayerNearby(150.0f))
{
    break;  // 退出循环 = 放弃传送！
}
```

这意味着只要你打开游戏站在出生点旁边看机器人，**它们就永远不会传送走**。

**修复方案：**
将 `break` 改为 `continue`：
```cpp
if (botAI->HasPlayerNearby(150.0f))
{
    continue;  // 跳过这个目的地，尝试下一个
}
```

同时，在 `PrepareAddclassCache()` 中也有一处硬编码 `isAlliance` 判断（`race == 1 || race == 3 || ...`），需要同样改为掩码方式。

---
## 问题 7：机器人瞬间全部登录导致出生点瞬间扎堆 (Gradual Login Configuration)

**问题表现：**
服务器启动后，所有 150 个机器人会在几秒内同时登录、同时出现在出生点，造成扎堆和服务器压力。

**根本原因：**
默认配置 `RandomBotsPerInterval = 60` 代表每个周期最多处理 60 个机器人，而 `RandomBotUpdateInterval = 20` 每 20 秒一个周期。150 个机器人只需 3 个周期（60 秒）就全部涌入。

**修复方案（配置调整，无需编译）：**
修改 `configs/modules/playerbots.conf`：
```ini
# 每10秒只处理5个机器人（登录+更新），实现渐进式登录
AiPlayerbot.RandomBotUpdateInterval = 10
AiPlayerbot.RandomBotsPerInterval = 5

# 缩短最小传送间隔，让机器人登录后更快离开出生点
AiPlayerbot.MinRandomBotTeleportInterval = 300
AiPlayerbot.MaxRandomBotTeleportInterval = 7200
```

这样 150 个机器人会在约 5 分钟内缓慢登入（每 10 秒 1-5 个），登录后也能更快被传送到练级区域。

---

## 问题 8：自定义种族 18（娜迦/赞达拉巨魔）机器人持续自动生成并出现在暗夜精灵新手村 (Random Bot Custom Race Disable)

**问题表现：**
服务器自动在后台生成大量 Race 18（娜迦/赞达拉巨魔）1级机器人，这些机器人头顶显示的是联盟盾牌，却被派生到了暗夜精灵新手村（帝尔伦）或者其他联盟新手区 strolling，既不符合阵营设定，也破坏了游戏环境。手动删库只能治标，服务器下次重启后还会自动补满。

**根本原因：**
`RandomPlayerbotFactory.cpp` 中自动生成随机机器人的循环 `for (uint8 race = RACE_HUMAN; race < MAX_RACES; ++race)` 会遍历所有种族 ID（1 到 MAX_RACES = 22），包括自定义的种族 18。服务端没有对隐藏/异常的自定义种族作任何过滤，每次启动都会把空缺的随机机器人名额重新用 Race 18 填满。

**修复方案（需重新编译）：**
在 `modules/mod-playerbots/src/Bot/Factory/RandomPlayerbotFactory.cpp` 种族遍历循环内添加跳过条件：
```cpp
// Skip generating custom race 18 (Naga/Zandalari Troll) for random bots
if (race == RACE_FOREST_TROLL)
    continue;
```
配合数据库清理（一次性执行）：
```sql
-- 清理已生成的所有 Race 18 (随机机器人前缀为 rndbot%)
DELETE FROM acore_characters.characters WHERE race = 18;
```
之后重新编译服务端核心并替换 `worldserver.exe`，服务器将**永久不会**再自动生成种族 18 的随机机器人。

**已推送 Commit：**
- 子模块 `modules/mod-playerbots`：`newreborn` 分支，commit: `a2f6968e`
- 主仓库 `AZtwobotSources`：`newreborn` 分支，commit: `0c9122a8c`

---

## 问题 9：服务端无法启动，绑定端口失败 (StartNetwork failed to bind socket acceptor)

**问题表现：**
服务端完整加载完毕（日志显示 `WORLD: World Initialized`），但最后一刻直接崩溃退出，`Server.log` 最后几行为：
```
StartNetwork failed to bind socket acceptor
Failed to initialize network
```

**根本原因：**
WoW 服务端（`worldserver.exe`）启动时需要独占绑定本地 `8085` 端口，才能接收客户端连接。如果此时本机有其他程序（代理软件、VPN、加速器）先占用了 `8085` 端口，服务端就无法绑定，直接报错退出。

诊断命令（排查端口占用）：
```powershell
# 查看 8085 端口被哪个进程占用
netstat -ano | findstr 8085

# 根据 PID 找到程序名（将 xxxxx 替换为实际 PID）
Get-Process -Id xxxxx | Select-Object Name
```
常见占用软件：`verge-mihomo`（Clash Verge）、VPN 客户端、游戏加速器等。

**修复方案：**
1. **暂时关闭代理/VPN 软件**（右下角托盘右键完全退出）。
2. **重新启动 `worldserver.exe`**，等待服务端完全载入。
3. 听到提示音或看到绿字后，**再重新打开代理/加速器**即可。

> 如果需要永久解决，可在代理软件设置中将其本地端口改为其他端口（如 7890、10809 等），避开 WoW 服务端专用的 8085。

---
## End of Documentation
