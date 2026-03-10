---
name: Playerbot_Organic_Leveling_Optimization
description: Comprehensive fix and optimization for AzerothCore Random Playerbots organic leveling and custom race compatibility.
---

# Playerbot Organic Leveling & Custom Race Optimization

This document outlines the problems identified and the solutions implemented to achieve a robust organic leveling experience for Random Playerbots, including full compatibility with custom races (e.g., Zandalari Trolls, Broken) on an AzerothCore 3.3.5 server.

## 1. Issue: Visual Stacking and Permanent Spawning Errors

### Symptom
When bots were generated (especially at level 1), they would spawn exactly at the XYZ coordinates of their racial starting zones, resulting in extreme visual stacking ("human totem poles"). Additionally, custom races (like Race 14 "Broken") were sometimes spawning in Outland (e.g., Netherstorm level 67-70 zones) due to invalid baseline data, rendering them permanently unable to take on quests.

### Solution
- **Scatter Logic:** Implemented dynamic scatter logic inside `RandomPlayerbotMgr::ProcessBot`. Upon initialization, bots now automatically calculating a dynamic trigonometric offset (5-30 yards) around their spawn point.
  - *Fix Details:* Used `GetMap()->GetHeight()` correctly using `player->GetPhaseMask()`, preventing infinite-falling loops or terrain collision errors.
- **Custom Race Origin Reset:** Identified that custom races had inappropriate coordinate baselines in the `playercreateinfo` database table. These were reset via SQL to align with standard Level 1-10 safe zones.

## 2. Issue: Bots Teleported to High-Level Zones Breaking Organic Leveling

### Symptom
Immediately after spawn, level 1 bots were being randomly thrown into 10-15+ level zones (e.g., Westfall, Elwynn deep zones) because the teleportation candidate system found valid "Level 1" target critters there. Stranded with no available starter quests and surrounded by aggressive mobs, the bots became completely dormant/stuck.

### Solution
- **Removed Random Teleport For New Bots:** Modified the initialization flow in `RandomPlayerbotMgr::ProcessBot` to entirely bypass `RandomTeleportForLevel(player)` and `ScheduleTeleport` for newly randomized bots. This ensures bots genuinely start in their designated safe racial starting enclave where Level 1 quests exist.

## 3. Issue: Worsening Inactivity and "Idle/Rest" Loops

### Symptom
Even when successfully acquiring starter quests, bots stood motionless for excessive periods (in 10-20 second intervals).

### Solution
- **Action Interval Optimization:** In `playerbots.conf`, radically decreased `AiPlayerbot.RpgDelay` from `10000` down to `3000` ms.
- **Removed Intentional Loafing:** Modified `AiPlayerbot.RpgStatusProbWeight.Rest` from `5` to `0`. Bots are now prohibited from rolling a "Rest" action dynamically, causing them to constantly grind, migrate, or quest.

## 4. Issue: Fatal ACCESS_VIOLATION Crash on Custom Race Generation

### Symptom
When the `RandomPlayerbotFactory::CreateRandomBot` and `InitMounts` logic parsed Custom Races, it attempted to fetch `facialHairTypes` or `mounts` vectors that did not exist (or lacked data populated from the customized `CharSections` DBC/DB). Accessing `urand(0, size() - 1)` on an empty vector triggered integer underflow (`-1` → `4294967295`), trying to read unmapped memory and resulting in a hard server crash.

### Solution
- **Safety Checks Added:** Introduced `.empty()` checks within both `CreateRandomBot` and `InitMounts` functions (e.g., `if (mounts[bot->getRace()][type].empty()) continue;`). If the race lacks explicit hair models or mount definitions, it skips naturally rather than crashing the thread.

## Summary Checklist for Deployment & Reset
1. Configured DB: `DELETE FROM acore_characters.characters WHERE account IN (SELECT id FROM acore_auth.account WHERE username LIKE 'rndbot%')`
2. Configured DB: `TRUNCATE TABLE acore_playerbots.playerbots_random_bots`
3. Restart server to spawn the updated bots that scatter beautifully, embrace quests organically, and handle missing custom data flawlessly.
