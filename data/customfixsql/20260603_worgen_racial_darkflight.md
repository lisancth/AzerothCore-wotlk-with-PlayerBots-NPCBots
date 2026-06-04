# 狼人种族技能：疾步夜行 (Darkflight 68992)

日期: 2026-06-03

## 功能
给狼人种族(race=16)添加种族技能"疾步夜行"：
- 移动速度 +40%，持续10秒
- 瞬发，自身
- CD: dbc原版45秒（可后续用spell_cooldown_overrides改）
- 狼人首次登录自动学会

## 实现方式：纯源码（PlayerScript 钩子）

技能数据来源：客户端 Spell.dbc 文件里已有的官方68992（无需改数据库spell_dbc）

修改文件：`src/server/scripts/Custom/TwoForms/TwoForms.cpp`
在 OnPlayerFirstLogin 的狼人分支里加：
```cpp
// 狼人种族技能：疾步夜行 (Darkflight 68992)
player->learnSpell(68992, false);
```

这复用了已有的 TwoForms 自定义脚本（原本给狼人加双形态97709的那个）。

## 为什么不用数据库方式
- 数据库 playercreateinfo_spell_custom 方式试过，新建角色没稳定学会
- 数据库整条覆盖 spell_dbc 会破坏技能（导致"被打断"，因为改坏了施法/时长索引）
- 源码 learnSpell + dbc文件原版技能数据 = 最稳，跟双形态97709同机制

## 注意
- 只对【新建角色首次登录】生效，老角色用 `.learn 68992` 手动学
- 改了源码需要【重新编译 worldserver】才生效
- 68992 的技能数据(名字/效果/数值)在客户端 Spell.dbc 和服务器 data/dbc/Spell.dbc 里都有

## 相关
- 双形态技能也在同一个脚本: 97709(雄)/97710(雌)
- 数据库spell_dbc里没有68992(纯靠dbc文件)
