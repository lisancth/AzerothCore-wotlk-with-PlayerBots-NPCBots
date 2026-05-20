-- Automatically generated SQL to add custom race NPC bots with standard classes
USE `acore_world`;

-- ========================================================
-- Race: Goblin (ID: 9)
-- ========================================================
-- Goblin Warrior Male (Entry: 92000)
DELETE FROM creature_template WHERE entry = 92000;
DELETE FROM creature_template_model WHERE CreatureID = 92000;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92000;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92000;
DELETE FROM creature_equip_template WHERE CreatureID = 92000;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92000, name = 'Goblin Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92000, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92000, 1, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92000, 'Goblin Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92000, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Paladin Male (Entry: 92001)
DELETE FROM creature_template WHERE entry = 92001;
DELETE FROM creature_template_model WHERE CreatureID = 92001;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92001;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92001;
DELETE FROM creature_equip_template WHERE CreatureID = 92001;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92001, name = 'Goblin Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92001, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92001, 2, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92001, 'Goblin Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92001, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Hunter Male (Entry: 92002)
DELETE FROM creature_template WHERE entry = 92002;
DELETE FROM creature_template_model WHERE CreatureID = 92002;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92002;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92002;
DELETE FROM creature_equip_template WHERE CreatureID = 92002;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92002, name = 'Goblin Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92002, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92002, 3, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92002, 'Goblin Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92002, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Rogue Male (Entry: 92003)
DELETE FROM creature_template WHERE entry = 92003;
DELETE FROM creature_template_model WHERE CreatureID = 92003;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92003;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92003;
DELETE FROM creature_equip_template WHERE CreatureID = 92003;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92003, name = 'Goblin Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92003, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92003, 4, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92003, 'Goblin Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92003, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Priest Male (Entry: 92004)
DELETE FROM creature_template WHERE entry = 92004;
DELETE FROM creature_template_model WHERE CreatureID = 92004;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92004;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92004;
DELETE FROM creature_equip_template WHERE CreatureID = 92004;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92004, name = 'Goblin Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92004, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92004, 5, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92004, 'Goblin Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92004, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Death Knight Male (Entry: 92005)
DELETE FROM creature_template WHERE entry = 92005;
DELETE FROM creature_template_model WHERE CreatureID = 92005;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92005;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92005;
DELETE FROM creature_equip_template WHERE CreatureID = 92005;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92005, name = 'Goblin Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92005, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92005, 6, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92005, 'Goblin Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92005, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Shaman Male (Entry: 92006)
DELETE FROM creature_template WHERE entry = 92006;
DELETE FROM creature_template_model WHERE CreatureID = 92006;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92006;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92006;
DELETE FROM creature_equip_template WHERE CreatureID = 92006;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92006, name = 'Goblin Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92006, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92006, 7, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92006, 'Goblin Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92006, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Mage Male (Entry: 92007)
DELETE FROM creature_template WHERE entry = 92007;
DELETE FROM creature_template_model WHERE CreatureID = 92007;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92007;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92007;
DELETE FROM creature_equip_template WHERE CreatureID = 92007;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92007, name = 'Goblin Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92007, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92007, 8, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92007, 'Goblin Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92007, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Warlock Male (Entry: 92008)
DELETE FROM creature_template WHERE entry = 92008;
DELETE FROM creature_template_model WHERE CreatureID = 92008;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92008;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92008;
DELETE FROM creature_equip_template WHERE CreatureID = 92008;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92008, name = 'Goblin Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92008, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92008, 9, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92008, 'Goblin Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92008, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Druid Male (Entry: 92009)
DELETE FROM creature_template WHERE entry = 92009;
DELETE FROM creature_template_model WHERE CreatureID = 92009;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92009;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92009;
DELETE FROM creature_equip_template WHERE CreatureID = 92009;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92009, name = 'Goblin Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92009, 0, 57674, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92009, 11, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92009, 'Goblin Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92009, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Warrior Female (Entry: 92010)
DELETE FROM creature_template WHERE entry = 92010;
DELETE FROM creature_template_model WHERE CreatureID = 92010;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92010;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92010;
DELETE FROM creature_equip_template WHERE CreatureID = 92010;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92010, name = 'Goblin Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92010, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92010, 1, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92010, 'Goblin Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92010, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Paladin Female (Entry: 92011)
DELETE FROM creature_template WHERE entry = 92011;
DELETE FROM creature_template_model WHERE CreatureID = 92011;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92011;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92011;
DELETE FROM creature_equip_template WHERE CreatureID = 92011;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92011, name = 'Goblin Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92011, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92011, 2, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92011, 'Goblin Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92011, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Hunter Female (Entry: 92012)
DELETE FROM creature_template WHERE entry = 92012;
DELETE FROM creature_template_model WHERE CreatureID = 92012;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92012;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92012;
DELETE FROM creature_equip_template WHERE CreatureID = 92012;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92012, name = 'Goblin Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92012, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92012, 3, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92012, 'Goblin Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92012, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Rogue Female (Entry: 92013)
DELETE FROM creature_template WHERE entry = 92013;
DELETE FROM creature_template_model WHERE CreatureID = 92013;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92013;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92013;
DELETE FROM creature_equip_template WHERE CreatureID = 92013;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92013, name = 'Goblin Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92013, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92013, 4, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92013, 'Goblin Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92013, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Priest Female (Entry: 92014)
DELETE FROM creature_template WHERE entry = 92014;
DELETE FROM creature_template_model WHERE CreatureID = 92014;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92014;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92014;
DELETE FROM creature_equip_template WHERE CreatureID = 92014;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92014, name = 'Goblin Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92014, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92014, 5, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92014, 'Goblin Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92014, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Death Knight Female (Entry: 92015)
DELETE FROM creature_template WHERE entry = 92015;
DELETE FROM creature_template_model WHERE CreatureID = 92015;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92015;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92015;
DELETE FROM creature_equip_template WHERE CreatureID = 92015;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92015, name = 'Goblin Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92015, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92015, 6, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92015, 'Goblin Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92015, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Shaman Female (Entry: 92016)
DELETE FROM creature_template WHERE entry = 92016;
DELETE FROM creature_template_model WHERE CreatureID = 92016;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92016;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92016;
DELETE FROM creature_equip_template WHERE CreatureID = 92016;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92016, name = 'Goblin Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92016, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92016, 7, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92016, 'Goblin Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92016, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Mage Female (Entry: 92017)
DELETE FROM creature_template WHERE entry = 92017;
DELETE FROM creature_template_model WHERE CreatureID = 92017;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92017;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92017;
DELETE FROM creature_equip_template WHERE CreatureID = 92017;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92017, name = 'Goblin Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92017, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92017, 8, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92017, 'Goblin Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92017, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Warlock Female (Entry: 92018)
DELETE FROM creature_template WHERE entry = 92018;
DELETE FROM creature_template_model WHERE CreatureID = 92018;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92018;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92018;
DELETE FROM creature_equip_template WHERE CreatureID = 92018;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92018, name = 'Goblin Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92018, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92018, 9, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92018, 'Goblin Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92018, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Goblin Druid Female (Entry: 92019)
DELETE FROM creature_template WHERE entry = 92019;
DELETE FROM creature_template_model WHERE CreatureID = 92019;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92019;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92019;
DELETE FROM creature_equip_template WHERE CreatureID = 92019;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92019, name = 'Goblin Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92019, 0, 57675, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92019, 11, 9);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92019, 'Goblin Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92019, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: VoidElf (ID: 12)
-- ========================================================
-- VoidElf Warrior Male (Entry: 92020)
DELETE FROM creature_template WHERE entry = 92020;
DELETE FROM creature_template_model WHERE CreatureID = 92020;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92020;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92020;
DELETE FROM creature_equip_template WHERE CreatureID = 92020;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92020, name = 'VoidElf Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92020, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92020, 1, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92020, 'VoidElf Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92020, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Paladin Male (Entry: 92021)
DELETE FROM creature_template WHERE entry = 92021;
DELETE FROM creature_template_model WHERE CreatureID = 92021;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92021;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92021;
DELETE FROM creature_equip_template WHERE CreatureID = 92021;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92021, name = 'VoidElf Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92021, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92021, 2, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92021, 'VoidElf Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92021, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Hunter Male (Entry: 92022)
DELETE FROM creature_template WHERE entry = 92022;
DELETE FROM creature_template_model WHERE CreatureID = 92022;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92022;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92022;
DELETE FROM creature_equip_template WHERE CreatureID = 92022;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92022, name = 'VoidElf Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92022, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92022, 3, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92022, 'VoidElf Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92022, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Rogue Male (Entry: 92023)
DELETE FROM creature_template WHERE entry = 92023;
DELETE FROM creature_template_model WHERE CreatureID = 92023;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92023;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92023;
DELETE FROM creature_equip_template WHERE CreatureID = 92023;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92023, name = 'VoidElf Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92023, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92023, 4, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92023, 'VoidElf Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92023, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Priest Male (Entry: 92024)
DELETE FROM creature_template WHERE entry = 92024;
DELETE FROM creature_template_model WHERE CreatureID = 92024;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92024;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92024;
DELETE FROM creature_equip_template WHERE CreatureID = 92024;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92024, name = 'VoidElf Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92024, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92024, 5, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92024, 'VoidElf Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92024, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Death Knight Male (Entry: 92025)
DELETE FROM creature_template WHERE entry = 92025;
DELETE FROM creature_template_model WHERE CreatureID = 92025;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92025;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92025;
DELETE FROM creature_equip_template WHERE CreatureID = 92025;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92025, name = 'VoidElf Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92025, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92025, 6, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92025, 'VoidElf Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92025, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Shaman Male (Entry: 92026)
DELETE FROM creature_template WHERE entry = 92026;
DELETE FROM creature_template_model WHERE CreatureID = 92026;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92026;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92026;
DELETE FROM creature_equip_template WHERE CreatureID = 92026;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92026, name = 'VoidElf Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92026, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92026, 7, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92026, 'VoidElf Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92026, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Mage Male (Entry: 92027)
DELETE FROM creature_template WHERE entry = 92027;
DELETE FROM creature_template_model WHERE CreatureID = 92027;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92027;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92027;
DELETE FROM creature_equip_template WHERE CreatureID = 92027;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92027, name = 'VoidElf Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92027, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92027, 8, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92027, 'VoidElf Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92027, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Warlock Male (Entry: 92028)
DELETE FROM creature_template WHERE entry = 92028;
DELETE FROM creature_template_model WHERE CreatureID = 92028;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92028;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92028;
DELETE FROM creature_equip_template WHERE CreatureID = 92028;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92028, name = 'VoidElf Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92028, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92028, 9, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92028, 'VoidElf Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92028, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Druid Male (Entry: 92029)
DELETE FROM creature_template WHERE entry = 92029;
DELETE FROM creature_template_model WHERE CreatureID = 92029;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92029;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92029;
DELETE FROM creature_equip_template WHERE CreatureID = 92029;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92029, name = 'VoidElf Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92029, 0, 57662, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92029, 11, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92029, 'VoidElf Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92029, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Warrior Female (Entry: 92030)
DELETE FROM creature_template WHERE entry = 92030;
DELETE FROM creature_template_model WHERE CreatureID = 92030;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92030;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92030;
DELETE FROM creature_equip_template WHERE CreatureID = 92030;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92030, name = 'VoidElf Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92030, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92030, 1, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92030, 'VoidElf Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92030, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Paladin Female (Entry: 92031)
DELETE FROM creature_template WHERE entry = 92031;
DELETE FROM creature_template_model WHERE CreatureID = 92031;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92031;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92031;
DELETE FROM creature_equip_template WHERE CreatureID = 92031;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92031, name = 'VoidElf Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92031, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92031, 2, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92031, 'VoidElf Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92031, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Hunter Female (Entry: 92032)
DELETE FROM creature_template WHERE entry = 92032;
DELETE FROM creature_template_model WHERE CreatureID = 92032;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92032;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92032;
DELETE FROM creature_equip_template WHERE CreatureID = 92032;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92032, name = 'VoidElf Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92032, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92032, 3, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92032, 'VoidElf Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92032, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Rogue Female (Entry: 92033)
DELETE FROM creature_template WHERE entry = 92033;
DELETE FROM creature_template_model WHERE CreatureID = 92033;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92033;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92033;
DELETE FROM creature_equip_template WHERE CreatureID = 92033;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92033, name = 'VoidElf Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92033, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92033, 4, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92033, 'VoidElf Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92033, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Priest Female (Entry: 92034)
DELETE FROM creature_template WHERE entry = 92034;
DELETE FROM creature_template_model WHERE CreatureID = 92034;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92034;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92034;
DELETE FROM creature_equip_template WHERE CreatureID = 92034;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92034, name = 'VoidElf Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92034, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92034, 5, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92034, 'VoidElf Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92034, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Death Knight Female (Entry: 92035)
DELETE FROM creature_template WHERE entry = 92035;
DELETE FROM creature_template_model WHERE CreatureID = 92035;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92035;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92035;
DELETE FROM creature_equip_template WHERE CreatureID = 92035;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92035, name = 'VoidElf Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92035, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92035, 6, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92035, 'VoidElf Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92035, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Shaman Female (Entry: 92036)
DELETE FROM creature_template WHERE entry = 92036;
DELETE FROM creature_template_model WHERE CreatureID = 92036;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92036;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92036;
DELETE FROM creature_equip_template WHERE CreatureID = 92036;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92036, name = 'VoidElf Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92036, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92036, 7, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92036, 'VoidElf Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92036, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Mage Female (Entry: 92037)
DELETE FROM creature_template WHERE entry = 92037;
DELETE FROM creature_template_model WHERE CreatureID = 92037;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92037;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92037;
DELETE FROM creature_equip_template WHERE CreatureID = 92037;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92037, name = 'VoidElf Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92037, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92037, 8, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92037, 'VoidElf Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92037, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Warlock Female (Entry: 92038)
DELETE FROM creature_template WHERE entry = 92038;
DELETE FROM creature_template_model WHERE CreatureID = 92038;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92038;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92038;
DELETE FROM creature_equip_template WHERE CreatureID = 92038;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92038, name = 'VoidElf Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92038, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92038, 9, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92038, 'VoidElf Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92038, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- VoidElf Druid Female (Entry: 92039)
DELETE FROM creature_template WHERE entry = 92039;
DELETE FROM creature_template_model WHERE CreatureID = 92039;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92039;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92039;
DELETE FROM creature_equip_template WHERE CreatureID = 92039;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92039, name = 'VoidElf Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92039, 0, 57663, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92039, 11, 12);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92039, 'VoidElf Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92039, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Vulpera (ID: 13)
-- ========================================================
-- Vulpera Warrior Male (Entry: 92040)
DELETE FROM creature_template WHERE entry = 92040;
DELETE FROM creature_template_model WHERE CreatureID = 92040;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92040;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92040;
DELETE FROM creature_equip_template WHERE CreatureID = 92040;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92040, name = 'Vulpera Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92040, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92040, 1, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92040, 'Vulpera Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92040, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Paladin Male (Entry: 92041)
DELETE FROM creature_template WHERE entry = 92041;
DELETE FROM creature_template_model WHERE CreatureID = 92041;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92041;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92041;
DELETE FROM creature_equip_template WHERE CreatureID = 92041;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92041, name = 'Vulpera Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92041, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92041, 2, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92041, 'Vulpera Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92041, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Hunter Male (Entry: 92042)
DELETE FROM creature_template WHERE entry = 92042;
DELETE FROM creature_template_model WHERE CreatureID = 92042;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92042;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92042;
DELETE FROM creature_equip_template WHERE CreatureID = 92042;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92042, name = 'Vulpera Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92042, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92042, 3, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92042, 'Vulpera Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92042, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Rogue Male (Entry: 92043)
DELETE FROM creature_template WHERE entry = 92043;
DELETE FROM creature_template_model WHERE CreatureID = 92043;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92043;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92043;
DELETE FROM creature_equip_template WHERE CreatureID = 92043;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92043, name = 'Vulpera Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92043, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92043, 4, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92043, 'Vulpera Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92043, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Priest Male (Entry: 92044)
DELETE FROM creature_template WHERE entry = 92044;
DELETE FROM creature_template_model WHERE CreatureID = 92044;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92044;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92044;
DELETE FROM creature_equip_template WHERE CreatureID = 92044;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92044, name = 'Vulpera Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92044, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92044, 5, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92044, 'Vulpera Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92044, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Death Knight Male (Entry: 92045)
DELETE FROM creature_template WHERE entry = 92045;
DELETE FROM creature_template_model WHERE CreatureID = 92045;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92045;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92045;
DELETE FROM creature_equip_template WHERE CreatureID = 92045;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92045, name = 'Vulpera Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92045, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92045, 6, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92045, 'Vulpera Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92045, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Shaman Male (Entry: 92046)
DELETE FROM creature_template WHERE entry = 92046;
DELETE FROM creature_template_model WHERE CreatureID = 92046;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92046;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92046;
DELETE FROM creature_equip_template WHERE CreatureID = 92046;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92046, name = 'Vulpera Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92046, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92046, 7, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92046, 'Vulpera Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92046, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Mage Male (Entry: 92047)
DELETE FROM creature_template WHERE entry = 92047;
DELETE FROM creature_template_model WHERE CreatureID = 92047;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92047;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92047;
DELETE FROM creature_equip_template WHERE CreatureID = 92047;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92047, name = 'Vulpera Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92047, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92047, 8, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92047, 'Vulpera Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92047, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Warlock Male (Entry: 92048)
DELETE FROM creature_template WHERE entry = 92048;
DELETE FROM creature_template_model WHERE CreatureID = 92048;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92048;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92048;
DELETE FROM creature_equip_template WHERE CreatureID = 92048;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92048, name = 'Vulpera Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92048, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92048, 9, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92048, 'Vulpera Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92048, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Druid Male (Entry: 92049)
DELETE FROM creature_template WHERE entry = 92049;
DELETE FROM creature_template_model WHERE CreatureID = 92049;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92049;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92049;
DELETE FROM creature_equip_template WHERE CreatureID = 92049;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92049, name = 'Vulpera Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92049, 0, 57664, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92049, 11, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92049, 'Vulpera Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92049, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Warrior Female (Entry: 92050)
DELETE FROM creature_template WHERE entry = 92050;
DELETE FROM creature_template_model WHERE CreatureID = 92050;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92050;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92050;
DELETE FROM creature_equip_template WHERE CreatureID = 92050;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92050, name = 'Vulpera Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92050, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92050, 1, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92050, 'Vulpera Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92050, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Paladin Female (Entry: 92051)
DELETE FROM creature_template WHERE entry = 92051;
DELETE FROM creature_template_model WHERE CreatureID = 92051;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92051;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92051;
DELETE FROM creature_equip_template WHERE CreatureID = 92051;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92051, name = 'Vulpera Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92051, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92051, 2, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92051, 'Vulpera Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92051, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Hunter Female (Entry: 92052)
DELETE FROM creature_template WHERE entry = 92052;
DELETE FROM creature_template_model WHERE CreatureID = 92052;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92052;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92052;
DELETE FROM creature_equip_template WHERE CreatureID = 92052;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92052, name = 'Vulpera Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92052, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92052, 3, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92052, 'Vulpera Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92052, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Rogue Female (Entry: 92053)
DELETE FROM creature_template WHERE entry = 92053;
DELETE FROM creature_template_model WHERE CreatureID = 92053;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92053;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92053;
DELETE FROM creature_equip_template WHERE CreatureID = 92053;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92053, name = 'Vulpera Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92053, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92053, 4, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92053, 'Vulpera Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92053, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Priest Female (Entry: 92054)
DELETE FROM creature_template WHERE entry = 92054;
DELETE FROM creature_template_model WHERE CreatureID = 92054;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92054;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92054;
DELETE FROM creature_equip_template WHERE CreatureID = 92054;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92054, name = 'Vulpera Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92054, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92054, 5, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92054, 'Vulpera Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92054, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Death Knight Female (Entry: 92055)
DELETE FROM creature_template WHERE entry = 92055;
DELETE FROM creature_template_model WHERE CreatureID = 92055;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92055;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92055;
DELETE FROM creature_equip_template WHERE CreatureID = 92055;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92055, name = 'Vulpera Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92055, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92055, 6, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92055, 'Vulpera Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92055, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Shaman Female (Entry: 92056)
DELETE FROM creature_template WHERE entry = 92056;
DELETE FROM creature_template_model WHERE CreatureID = 92056;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92056;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92056;
DELETE FROM creature_equip_template WHERE CreatureID = 92056;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92056, name = 'Vulpera Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92056, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92056, 7, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92056, 'Vulpera Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92056, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Mage Female (Entry: 92057)
DELETE FROM creature_template WHERE entry = 92057;
DELETE FROM creature_template_model WHERE CreatureID = 92057;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92057;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92057;
DELETE FROM creature_equip_template WHERE CreatureID = 92057;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92057, name = 'Vulpera Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92057, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92057, 8, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92057, 'Vulpera Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92057, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Warlock Female (Entry: 92058)
DELETE FROM creature_template WHERE entry = 92058;
DELETE FROM creature_template_model WHERE CreatureID = 92058;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92058;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92058;
DELETE FROM creature_equip_template WHERE CreatureID = 92058;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92058, name = 'Vulpera Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92058, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92058, 9, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92058, 'Vulpera Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92058, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Vulpera Druid Female (Entry: 92059)
DELETE FROM creature_template WHERE entry = 92059;
DELETE FROM creature_template_model WHERE CreatureID = 92059;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92059;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92059;
DELETE FROM creature_equip_template WHERE CreatureID = 92059;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92059, name = 'Vulpera Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92059, 0, 57665, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92059, 11, 13);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92059, 'Vulpera Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92059, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: HighElf (ID: 14)
-- ========================================================
-- HighElf Warrior Male (Entry: 92060)
DELETE FROM creature_template WHERE entry = 92060;
DELETE FROM creature_template_model WHERE CreatureID = 92060;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92060;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92060;
DELETE FROM creature_equip_template WHERE CreatureID = 92060;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92060, name = 'HighElf Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92060, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92060, 1, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92060, 'HighElf Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92060, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Paladin Male (Entry: 92061)
DELETE FROM creature_template WHERE entry = 92061;
DELETE FROM creature_template_model WHERE CreatureID = 92061;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92061;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92061;
DELETE FROM creature_equip_template WHERE CreatureID = 92061;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92061, name = 'HighElf Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92061, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92061, 2, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92061, 'HighElf Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92061, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Hunter Male (Entry: 92062)
DELETE FROM creature_template WHERE entry = 92062;
DELETE FROM creature_template_model WHERE CreatureID = 92062;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92062;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92062;
DELETE FROM creature_equip_template WHERE CreatureID = 92062;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92062, name = 'HighElf Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92062, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92062, 3, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92062, 'HighElf Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92062, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Rogue Male (Entry: 92063)
DELETE FROM creature_template WHERE entry = 92063;
DELETE FROM creature_template_model WHERE CreatureID = 92063;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92063;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92063;
DELETE FROM creature_equip_template WHERE CreatureID = 92063;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92063, name = 'HighElf Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92063, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92063, 4, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92063, 'HighElf Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92063, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Priest Male (Entry: 92064)
DELETE FROM creature_template WHERE entry = 92064;
DELETE FROM creature_template_model WHERE CreatureID = 92064;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92064;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92064;
DELETE FROM creature_equip_template WHERE CreatureID = 92064;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92064, name = 'HighElf Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92064, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92064, 5, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92064, 'HighElf Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92064, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Death Knight Male (Entry: 92065)
DELETE FROM creature_template WHERE entry = 92065;
DELETE FROM creature_template_model WHERE CreatureID = 92065;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92065;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92065;
DELETE FROM creature_equip_template WHERE CreatureID = 92065;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92065, name = 'HighElf Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92065, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92065, 6, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92065, 'HighElf Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92065, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Shaman Male (Entry: 92066)
DELETE FROM creature_template WHERE entry = 92066;
DELETE FROM creature_template_model WHERE CreatureID = 92066;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92066;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92066;
DELETE FROM creature_equip_template WHERE CreatureID = 92066;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92066, name = 'HighElf Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92066, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92066, 7, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92066, 'HighElf Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92066, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Mage Male (Entry: 92067)
DELETE FROM creature_template WHERE entry = 92067;
DELETE FROM creature_template_model WHERE CreatureID = 92067;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92067;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92067;
DELETE FROM creature_equip_template WHERE CreatureID = 92067;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92067, name = 'HighElf Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92067, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92067, 8, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92067, 'HighElf Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92067, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Warlock Male (Entry: 92068)
DELETE FROM creature_template WHERE entry = 92068;
DELETE FROM creature_template_model WHERE CreatureID = 92068;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92068;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92068;
DELETE FROM creature_equip_template WHERE CreatureID = 92068;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92068, name = 'HighElf Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92068, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92068, 9, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92068, 'HighElf Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92068, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Druid Male (Entry: 92069)
DELETE FROM creature_template WHERE entry = 92069;
DELETE FROM creature_template_model WHERE CreatureID = 92069;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92069;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92069;
DELETE FROM creature_equip_template WHERE CreatureID = 92069;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92069, name = 'HighElf Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92069, 0, 45001, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92069, 11, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92069, 'HighElf Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92069, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Warrior Female (Entry: 92070)
DELETE FROM creature_template WHERE entry = 92070;
DELETE FROM creature_template_model WHERE CreatureID = 92070;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92070;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92070;
DELETE FROM creature_equip_template WHERE CreatureID = 92070;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92070, name = 'HighElf Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92070, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92070, 1, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92070, 'HighElf Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92070, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Paladin Female (Entry: 92071)
DELETE FROM creature_template WHERE entry = 92071;
DELETE FROM creature_template_model WHERE CreatureID = 92071;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92071;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92071;
DELETE FROM creature_equip_template WHERE CreatureID = 92071;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92071, name = 'HighElf Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92071, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92071, 2, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92071, 'HighElf Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92071, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Hunter Female (Entry: 92072)
DELETE FROM creature_template WHERE entry = 92072;
DELETE FROM creature_template_model WHERE CreatureID = 92072;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92072;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92072;
DELETE FROM creature_equip_template WHERE CreatureID = 92072;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92072, name = 'HighElf Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92072, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92072, 3, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92072, 'HighElf Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92072, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Rogue Female (Entry: 92073)
DELETE FROM creature_template WHERE entry = 92073;
DELETE FROM creature_template_model WHERE CreatureID = 92073;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92073;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92073;
DELETE FROM creature_equip_template WHERE CreatureID = 92073;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92073, name = 'HighElf Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92073, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92073, 4, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92073, 'HighElf Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92073, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Priest Female (Entry: 92074)
DELETE FROM creature_template WHERE entry = 92074;
DELETE FROM creature_template_model WHERE CreatureID = 92074;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92074;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92074;
DELETE FROM creature_equip_template WHERE CreatureID = 92074;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92074, name = 'HighElf Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92074, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92074, 5, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92074, 'HighElf Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92074, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Death Knight Female (Entry: 92075)
DELETE FROM creature_template WHERE entry = 92075;
DELETE FROM creature_template_model WHERE CreatureID = 92075;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92075;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92075;
DELETE FROM creature_equip_template WHERE CreatureID = 92075;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92075, name = 'HighElf Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92075, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92075, 6, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92075, 'HighElf Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92075, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Shaman Female (Entry: 92076)
DELETE FROM creature_template WHERE entry = 92076;
DELETE FROM creature_template_model WHERE CreatureID = 92076;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92076;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92076;
DELETE FROM creature_equip_template WHERE CreatureID = 92076;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92076, name = 'HighElf Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92076, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92076, 7, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92076, 'HighElf Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92076, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Mage Female (Entry: 92077)
DELETE FROM creature_template WHERE entry = 92077;
DELETE FROM creature_template_model WHERE CreatureID = 92077;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92077;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92077;
DELETE FROM creature_equip_template WHERE CreatureID = 92077;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92077, name = 'HighElf Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92077, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92077, 8, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92077, 'HighElf Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92077, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Warlock Female (Entry: 92078)
DELETE FROM creature_template WHERE entry = 92078;
DELETE FROM creature_template_model WHERE CreatureID = 92078;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92078;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92078;
DELETE FROM creature_equip_template WHERE CreatureID = 92078;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92078, name = 'HighElf Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92078, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92078, 9, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92078, 'HighElf Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92078, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- HighElf Druid Female (Entry: 92079)
DELETE FROM creature_template WHERE entry = 92079;
DELETE FROM creature_template_model WHERE CreatureID = 92079;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92079;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92079;
DELETE FROM creature_equip_template WHERE CreatureID = 92079;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92079, name = 'HighElf Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92079, 0, 45000, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92079, 11, 14);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92079, 'HighElf Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92079, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Pandaren (ID: 15)
-- ========================================================
-- Pandaren Warrior Male (Entry: 92080)
DELETE FROM creature_template WHERE entry = 92080;
DELETE FROM creature_template_model WHERE CreatureID = 92080;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92080;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92080;
DELETE FROM creature_equip_template WHERE CreatureID = 92080;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92080, name = 'Pandaren Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92080, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92080, 1, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92080, 'Pandaren Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92080, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Paladin Male (Entry: 92081)
DELETE FROM creature_template WHERE entry = 92081;
DELETE FROM creature_template_model WHERE CreatureID = 92081;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92081;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92081;
DELETE FROM creature_equip_template WHERE CreatureID = 92081;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92081, name = 'Pandaren Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92081, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92081, 2, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92081, 'Pandaren Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92081, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Hunter Male (Entry: 92082)
DELETE FROM creature_template WHERE entry = 92082;
DELETE FROM creature_template_model WHERE CreatureID = 92082;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92082;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92082;
DELETE FROM creature_equip_template WHERE CreatureID = 92082;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92082, name = 'Pandaren Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92082, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92082, 3, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92082, 'Pandaren Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92082, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Rogue Male (Entry: 92083)
DELETE FROM creature_template WHERE entry = 92083;
DELETE FROM creature_template_model WHERE CreatureID = 92083;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92083;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92083;
DELETE FROM creature_equip_template WHERE CreatureID = 92083;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92083, name = 'Pandaren Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92083, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92083, 4, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92083, 'Pandaren Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92083, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Priest Male (Entry: 92084)
DELETE FROM creature_template WHERE entry = 92084;
DELETE FROM creature_template_model WHERE CreatureID = 92084;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92084;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92084;
DELETE FROM creature_equip_template WHERE CreatureID = 92084;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92084, name = 'Pandaren Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92084, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92084, 5, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92084, 'Pandaren Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92084, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Death Knight Male (Entry: 92085)
DELETE FROM creature_template WHERE entry = 92085;
DELETE FROM creature_template_model WHERE CreatureID = 92085;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92085;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92085;
DELETE FROM creature_equip_template WHERE CreatureID = 92085;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92085, name = 'Pandaren Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92085, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92085, 6, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92085, 'Pandaren Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92085, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Shaman Male (Entry: 92086)
DELETE FROM creature_template WHERE entry = 92086;
DELETE FROM creature_template_model WHERE CreatureID = 92086;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92086;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92086;
DELETE FROM creature_equip_template WHERE CreatureID = 92086;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92086, name = 'Pandaren Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92086, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92086, 7, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92086, 'Pandaren Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92086, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Mage Male (Entry: 92087)
DELETE FROM creature_template WHERE entry = 92087;
DELETE FROM creature_template_model WHERE CreatureID = 92087;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92087;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92087;
DELETE FROM creature_equip_template WHERE CreatureID = 92087;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92087, name = 'Pandaren Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92087, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92087, 8, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92087, 'Pandaren Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92087, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Warlock Male (Entry: 92088)
DELETE FROM creature_template WHERE entry = 92088;
DELETE FROM creature_template_model WHERE CreatureID = 92088;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92088;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92088;
DELETE FROM creature_equip_template WHERE CreatureID = 92088;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92088, name = 'Pandaren Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92088, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92088, 9, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92088, 'Pandaren Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92088, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Druid Male (Entry: 92089)
DELETE FROM creature_template WHERE entry = 92089;
DELETE FROM creature_template_model WHERE CreatureID = 92089;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92089;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92089;
DELETE FROM creature_equip_template WHERE CreatureID = 92089;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92089, name = 'Pandaren Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92089, 0, 57668, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92089, 11, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92089, 'Pandaren Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92089, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Warrior Female (Entry: 92090)
DELETE FROM creature_template WHERE entry = 92090;
DELETE FROM creature_template_model WHERE CreatureID = 92090;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92090;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92090;
DELETE FROM creature_equip_template WHERE CreatureID = 92090;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92090, name = 'Pandaren Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92090, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92090, 1, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92090, 'Pandaren Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92090, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Paladin Female (Entry: 92091)
DELETE FROM creature_template WHERE entry = 92091;
DELETE FROM creature_template_model WHERE CreatureID = 92091;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92091;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92091;
DELETE FROM creature_equip_template WHERE CreatureID = 92091;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92091, name = 'Pandaren Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92091, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92091, 2, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92091, 'Pandaren Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92091, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Hunter Female (Entry: 92092)
DELETE FROM creature_template WHERE entry = 92092;
DELETE FROM creature_template_model WHERE CreatureID = 92092;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92092;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92092;
DELETE FROM creature_equip_template WHERE CreatureID = 92092;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92092, name = 'Pandaren Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92092, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92092, 3, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92092, 'Pandaren Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92092, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Rogue Female (Entry: 92093)
DELETE FROM creature_template WHERE entry = 92093;
DELETE FROM creature_template_model WHERE CreatureID = 92093;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92093;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92093;
DELETE FROM creature_equip_template WHERE CreatureID = 92093;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92093, name = 'Pandaren Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92093, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92093, 4, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92093, 'Pandaren Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92093, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Priest Female (Entry: 92094)
DELETE FROM creature_template WHERE entry = 92094;
DELETE FROM creature_template_model WHERE CreatureID = 92094;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92094;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92094;
DELETE FROM creature_equip_template WHERE CreatureID = 92094;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92094, name = 'Pandaren Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92094, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92094, 5, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92094, 'Pandaren Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92094, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Death Knight Female (Entry: 92095)
DELETE FROM creature_template WHERE entry = 92095;
DELETE FROM creature_template_model WHERE CreatureID = 92095;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92095;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92095;
DELETE FROM creature_equip_template WHERE CreatureID = 92095;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92095, name = 'Pandaren Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92095, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92095, 6, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92095, 'Pandaren Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92095, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Shaman Female (Entry: 92096)
DELETE FROM creature_template WHERE entry = 92096;
DELETE FROM creature_template_model WHERE CreatureID = 92096;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92096;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92096;
DELETE FROM creature_equip_template WHERE CreatureID = 92096;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92096, name = 'Pandaren Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92096, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92096, 7, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92096, 'Pandaren Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92096, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Mage Female (Entry: 92097)
DELETE FROM creature_template WHERE entry = 92097;
DELETE FROM creature_template_model WHERE CreatureID = 92097;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92097;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92097;
DELETE FROM creature_equip_template WHERE CreatureID = 92097;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92097, name = 'Pandaren Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92097, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92097, 8, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92097, 'Pandaren Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92097, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Warlock Female (Entry: 92098)
DELETE FROM creature_template WHERE entry = 92098;
DELETE FROM creature_template_model WHERE CreatureID = 92098;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92098;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92098;
DELETE FROM creature_equip_template WHERE CreatureID = 92098;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92098, name = 'Pandaren Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92098, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92098, 9, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92098, 'Pandaren Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92098, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Pandaren Druid Female (Entry: 92099)
DELETE FROM creature_template WHERE entry = 92099;
DELETE FROM creature_template_model WHERE CreatureID = 92099;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92099;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92099;
DELETE FROM creature_equip_template WHERE CreatureID = 92099;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92099, name = 'Pandaren Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92099, 0, 57669, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92099, 11, 15);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92099, 'Pandaren Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92099, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Worgen (ID: 16)
-- ========================================================
-- Worgen Warrior Male (Entry: 92100)
DELETE FROM creature_template WHERE entry = 92100;
DELETE FROM creature_template_model WHERE CreatureID = 92100;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92100;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92100;
DELETE FROM creature_equip_template WHERE CreatureID = 92100;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92100, name = 'Worgen Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92100, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92100, 1, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92100, 'Worgen Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92100, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Paladin Male (Entry: 92101)
DELETE FROM creature_template WHERE entry = 92101;
DELETE FROM creature_template_model WHERE CreatureID = 92101;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92101;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92101;
DELETE FROM creature_equip_template WHERE CreatureID = 92101;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92101, name = 'Worgen Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92101, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92101, 2, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92101, 'Worgen Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92101, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Hunter Male (Entry: 92102)
DELETE FROM creature_template WHERE entry = 92102;
DELETE FROM creature_template_model WHERE CreatureID = 92102;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92102;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92102;
DELETE FROM creature_equip_template WHERE CreatureID = 92102;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92102, name = 'Worgen Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92102, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92102, 3, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92102, 'Worgen Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92102, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Rogue Male (Entry: 92103)
DELETE FROM creature_template WHERE entry = 92103;
DELETE FROM creature_template_model WHERE CreatureID = 92103;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92103;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92103;
DELETE FROM creature_equip_template WHERE CreatureID = 92103;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92103, name = 'Worgen Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92103, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92103, 4, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92103, 'Worgen Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92103, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Priest Male (Entry: 92104)
DELETE FROM creature_template WHERE entry = 92104;
DELETE FROM creature_template_model WHERE CreatureID = 92104;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92104;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92104;
DELETE FROM creature_equip_template WHERE CreatureID = 92104;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92104, name = 'Worgen Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92104, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92104, 5, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92104, 'Worgen Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92104, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Death Knight Male (Entry: 92105)
DELETE FROM creature_template WHERE entry = 92105;
DELETE FROM creature_template_model WHERE CreatureID = 92105;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92105;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92105;
DELETE FROM creature_equip_template WHERE CreatureID = 92105;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92105, name = 'Worgen Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92105, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92105, 6, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92105, 'Worgen Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92105, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Shaman Male (Entry: 92106)
DELETE FROM creature_template WHERE entry = 92106;
DELETE FROM creature_template_model WHERE CreatureID = 92106;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92106;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92106;
DELETE FROM creature_equip_template WHERE CreatureID = 92106;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92106, name = 'Worgen Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92106, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92106, 7, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92106, 'Worgen Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92106, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Mage Male (Entry: 92107)
DELETE FROM creature_template WHERE entry = 92107;
DELETE FROM creature_template_model WHERE CreatureID = 92107;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92107;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92107;
DELETE FROM creature_equip_template WHERE CreatureID = 92107;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92107, name = 'Worgen Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92107, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92107, 8, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92107, 'Worgen Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92107, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Warlock Male (Entry: 92108)
DELETE FROM creature_template WHERE entry = 92108;
DELETE FROM creature_template_model WHERE CreatureID = 92108;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92108;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92108;
DELETE FROM creature_equip_template WHERE CreatureID = 92108;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92108, name = 'Worgen Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92108, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92108, 9, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92108, 'Worgen Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92108, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Druid Male (Entry: 92109)
DELETE FROM creature_template WHERE entry = 92109;
DELETE FROM creature_template_model WHERE CreatureID = 92109;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92109;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92109;
DELETE FROM creature_equip_template WHERE CreatureID = 92109;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92109, name = 'Worgen Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92109, 0, 57676, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92109, 11, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92109, 'Worgen Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92109, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Warrior Female (Entry: 92110)
DELETE FROM creature_template WHERE entry = 92110;
DELETE FROM creature_template_model WHERE CreatureID = 92110;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92110;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92110;
DELETE FROM creature_equip_template WHERE CreatureID = 92110;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92110, name = 'Worgen Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92110, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92110, 1, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92110, 'Worgen Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92110, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Paladin Female (Entry: 92111)
DELETE FROM creature_template WHERE entry = 92111;
DELETE FROM creature_template_model WHERE CreatureID = 92111;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92111;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92111;
DELETE FROM creature_equip_template WHERE CreatureID = 92111;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92111, name = 'Worgen Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92111, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92111, 2, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92111, 'Worgen Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92111, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Hunter Female (Entry: 92112)
DELETE FROM creature_template WHERE entry = 92112;
DELETE FROM creature_template_model WHERE CreatureID = 92112;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92112;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92112;
DELETE FROM creature_equip_template WHERE CreatureID = 92112;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92112, name = 'Worgen Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92112, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92112, 3, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92112, 'Worgen Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92112, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Rogue Female (Entry: 92113)
DELETE FROM creature_template WHERE entry = 92113;
DELETE FROM creature_template_model WHERE CreatureID = 92113;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92113;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92113;
DELETE FROM creature_equip_template WHERE CreatureID = 92113;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92113, name = 'Worgen Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92113, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92113, 4, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92113, 'Worgen Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92113, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Priest Female (Entry: 92114)
DELETE FROM creature_template WHERE entry = 92114;
DELETE FROM creature_template_model WHERE CreatureID = 92114;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92114;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92114;
DELETE FROM creature_equip_template WHERE CreatureID = 92114;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92114, name = 'Worgen Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92114, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92114, 5, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92114, 'Worgen Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92114, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Death Knight Female (Entry: 92115)
DELETE FROM creature_template WHERE entry = 92115;
DELETE FROM creature_template_model WHERE CreatureID = 92115;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92115;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92115;
DELETE FROM creature_equip_template WHERE CreatureID = 92115;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92115, name = 'Worgen Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92115, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92115, 6, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92115, 'Worgen Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92115, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Shaman Female (Entry: 92116)
DELETE FROM creature_template WHERE entry = 92116;
DELETE FROM creature_template_model WHERE CreatureID = 92116;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92116;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92116;
DELETE FROM creature_equip_template WHERE CreatureID = 92116;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92116, name = 'Worgen Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92116, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92116, 7, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92116, 'Worgen Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92116, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Mage Female (Entry: 92117)
DELETE FROM creature_template WHERE entry = 92117;
DELETE FROM creature_template_model WHERE CreatureID = 92117;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92117;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92117;
DELETE FROM creature_equip_template WHERE CreatureID = 92117;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92117, name = 'Worgen Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92117, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92117, 8, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92117, 'Worgen Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92117, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Warlock Female (Entry: 92118)
DELETE FROM creature_template WHERE entry = 92118;
DELETE FROM creature_template_model WHERE CreatureID = 92118;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92118;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92118;
DELETE FROM creature_equip_template WHERE CreatureID = 92118;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92118, name = 'Worgen Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92118, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92118, 9, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92118, 'Worgen Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92118, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Worgen Druid Female (Entry: 92119)
DELETE FROM creature_template WHERE entry = 92119;
DELETE FROM creature_template_model WHERE CreatureID = 92119;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92119;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92119;
DELETE FROM creature_equip_template WHERE CreatureID = 92119;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92119, name = 'Worgen Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92119, 0, 57677, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92119, 11, 16);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92119, 'Worgen Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92119, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Eredar (ID: 17)
-- ========================================================
-- Eredar Warrior Male (Entry: 92120)
DELETE FROM creature_template WHERE entry = 92120;
DELETE FROM creature_template_model WHERE CreatureID = 92120;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92120;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92120;
DELETE FROM creature_equip_template WHERE CreatureID = 92120;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92120, name = 'Eredar Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92120, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92120, 1, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92120, 'Eredar Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92120, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Paladin Male (Entry: 92121)
DELETE FROM creature_template WHERE entry = 92121;
DELETE FROM creature_template_model WHERE CreatureID = 92121;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92121;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92121;
DELETE FROM creature_equip_template WHERE CreatureID = 92121;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92121, name = 'Eredar Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92121, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92121, 2, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92121, 'Eredar Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92121, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Hunter Male (Entry: 92122)
DELETE FROM creature_template WHERE entry = 92122;
DELETE FROM creature_template_model WHERE CreatureID = 92122;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92122;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92122;
DELETE FROM creature_equip_template WHERE CreatureID = 92122;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92122, name = 'Eredar Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92122, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92122, 3, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92122, 'Eredar Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92122, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Rogue Male (Entry: 92123)
DELETE FROM creature_template WHERE entry = 92123;
DELETE FROM creature_template_model WHERE CreatureID = 92123;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92123;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92123;
DELETE FROM creature_equip_template WHERE CreatureID = 92123;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92123, name = 'Eredar Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92123, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92123, 4, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92123, 'Eredar Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92123, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Priest Male (Entry: 92124)
DELETE FROM creature_template WHERE entry = 92124;
DELETE FROM creature_template_model WHERE CreatureID = 92124;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92124;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92124;
DELETE FROM creature_equip_template WHERE CreatureID = 92124;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92124, name = 'Eredar Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92124, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92124, 5, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92124, 'Eredar Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92124, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Death Knight Male (Entry: 92125)
DELETE FROM creature_template WHERE entry = 92125;
DELETE FROM creature_template_model WHERE CreatureID = 92125;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92125;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92125;
DELETE FROM creature_equip_template WHERE CreatureID = 92125;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92125, name = 'Eredar Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92125, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92125, 6, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92125, 'Eredar Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92125, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Shaman Male (Entry: 92126)
DELETE FROM creature_template WHERE entry = 92126;
DELETE FROM creature_template_model WHERE CreatureID = 92126;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92126;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92126;
DELETE FROM creature_equip_template WHERE CreatureID = 92126;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92126, name = 'Eredar Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92126, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92126, 7, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92126, 'Eredar Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92126, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Mage Male (Entry: 92127)
DELETE FROM creature_template WHERE entry = 92127;
DELETE FROM creature_template_model WHERE CreatureID = 92127;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92127;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92127;
DELETE FROM creature_equip_template WHERE CreatureID = 92127;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92127, name = 'Eredar Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92127, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92127, 8, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92127, 'Eredar Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92127, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Warlock Male (Entry: 92128)
DELETE FROM creature_template WHERE entry = 92128;
DELETE FROM creature_template_model WHERE CreatureID = 92128;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92128;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92128;
DELETE FROM creature_equip_template WHERE CreatureID = 92128;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92128, name = 'Eredar Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92128, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92128, 9, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92128, 'Eredar Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92128, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Druid Male (Entry: 92129)
DELETE FROM creature_template WHERE entry = 92129;
DELETE FROM creature_template_model WHERE CreatureID = 92129;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92129;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92129;
DELETE FROM creature_equip_template WHERE CreatureID = 92129;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92129, name = 'Eredar Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92129, 0, 36399, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92129, 11, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92129, 'Eredar Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92129, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Warrior Female (Entry: 92130)
DELETE FROM creature_template WHERE entry = 92130;
DELETE FROM creature_template_model WHERE CreatureID = 92130;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92130;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92130;
DELETE FROM creature_equip_template WHERE CreatureID = 92130;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92130, name = 'Eredar Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92130, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92130, 1, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92130, 'Eredar Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92130, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Paladin Female (Entry: 92131)
DELETE FROM creature_template WHERE entry = 92131;
DELETE FROM creature_template_model WHERE CreatureID = 92131;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92131;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92131;
DELETE FROM creature_equip_template WHERE CreatureID = 92131;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92131, name = 'Eredar Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92131, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92131, 2, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92131, 'Eredar Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92131, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Hunter Female (Entry: 92132)
DELETE FROM creature_template WHERE entry = 92132;
DELETE FROM creature_template_model WHERE CreatureID = 92132;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92132;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92132;
DELETE FROM creature_equip_template WHERE CreatureID = 92132;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92132, name = 'Eredar Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92132, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92132, 3, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92132, 'Eredar Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92132, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Rogue Female (Entry: 92133)
DELETE FROM creature_template WHERE entry = 92133;
DELETE FROM creature_template_model WHERE CreatureID = 92133;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92133;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92133;
DELETE FROM creature_equip_template WHERE CreatureID = 92133;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92133, name = 'Eredar Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92133, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92133, 4, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92133, 'Eredar Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92133, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Priest Female (Entry: 92134)
DELETE FROM creature_template WHERE entry = 92134;
DELETE FROM creature_template_model WHERE CreatureID = 92134;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92134;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92134;
DELETE FROM creature_equip_template WHERE CreatureID = 92134;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92134, name = 'Eredar Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92134, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92134, 5, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92134, 'Eredar Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92134, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Death Knight Female (Entry: 92135)
DELETE FROM creature_template WHERE entry = 92135;
DELETE FROM creature_template_model WHERE CreatureID = 92135;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92135;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92135;
DELETE FROM creature_equip_template WHERE CreatureID = 92135;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92135, name = 'Eredar Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92135, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92135, 6, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92135, 'Eredar Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92135, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Shaman Female (Entry: 92136)
DELETE FROM creature_template WHERE entry = 92136;
DELETE FROM creature_template_model WHERE CreatureID = 92136;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92136;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92136;
DELETE FROM creature_equip_template WHERE CreatureID = 92136;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92136, name = 'Eredar Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92136, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92136, 7, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92136, 'Eredar Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92136, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Mage Female (Entry: 92137)
DELETE FROM creature_template WHERE entry = 92137;
DELETE FROM creature_template_model WHERE CreatureID = 92137;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92137;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92137;
DELETE FROM creature_equip_template WHERE CreatureID = 92137;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92137, name = 'Eredar Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92137, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92137, 8, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92137, 'Eredar Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92137, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Warlock Female (Entry: 92138)
DELETE FROM creature_template WHERE entry = 92138;
DELETE FROM creature_template_model WHERE CreatureID = 92138;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92138;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92138;
DELETE FROM creature_equip_template WHERE CreatureID = 92138;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92138, name = 'Eredar Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92138, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92138, 9, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92138, 'Eredar Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92138, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Eredar Druid Female (Entry: 92139)
DELETE FROM creature_template WHERE entry = 92139;
DELETE FROM creature_template_model WHERE CreatureID = 92139;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92139;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92139;
DELETE FROM creature_equip_template WHERE CreatureID = 92139;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92139, name = 'Eredar Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92139, 0, 36400, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92139, 11, 17);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92139, 'Eredar Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92139, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Zandalari (ID: 18)
-- ========================================================
-- Zandalari Warrior Male (Entry: 92140)
DELETE FROM creature_template WHERE entry = 92140;
DELETE FROM creature_template_model WHERE CreatureID = 92140;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92140;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92140;
DELETE FROM creature_equip_template WHERE CreatureID = 92140;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92140, name = 'Zandalari Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92140, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92140, 1, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92140, 'Zandalari Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92140, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Paladin Male (Entry: 92141)
DELETE FROM creature_template WHERE entry = 92141;
DELETE FROM creature_template_model WHERE CreatureID = 92141;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92141;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92141;
DELETE FROM creature_equip_template WHERE CreatureID = 92141;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92141, name = 'Zandalari Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92141, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92141, 2, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92141, 'Zandalari Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92141, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Hunter Male (Entry: 92142)
DELETE FROM creature_template WHERE entry = 92142;
DELETE FROM creature_template_model WHERE CreatureID = 92142;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92142;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92142;
DELETE FROM creature_equip_template WHERE CreatureID = 92142;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92142, name = 'Zandalari Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92142, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92142, 3, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92142, 'Zandalari Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92142, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Rogue Male (Entry: 92143)
DELETE FROM creature_template WHERE entry = 92143;
DELETE FROM creature_template_model WHERE CreatureID = 92143;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92143;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92143;
DELETE FROM creature_equip_template WHERE CreatureID = 92143;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92143, name = 'Zandalari Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92143, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92143, 4, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92143, 'Zandalari Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92143, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Priest Male (Entry: 92144)
DELETE FROM creature_template WHERE entry = 92144;
DELETE FROM creature_template_model WHERE CreatureID = 92144;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92144;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92144;
DELETE FROM creature_equip_template WHERE CreatureID = 92144;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92144, name = 'Zandalari Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92144, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92144, 5, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92144, 'Zandalari Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92144, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Death Knight Male (Entry: 92145)
DELETE FROM creature_template WHERE entry = 92145;
DELETE FROM creature_template_model WHERE CreatureID = 92145;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92145;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92145;
DELETE FROM creature_equip_template WHERE CreatureID = 92145;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92145, name = 'Zandalari Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92145, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92145, 6, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92145, 'Zandalari Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92145, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Shaman Male (Entry: 92146)
DELETE FROM creature_template WHERE entry = 92146;
DELETE FROM creature_template_model WHERE CreatureID = 92146;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92146;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92146;
DELETE FROM creature_equip_template WHERE CreatureID = 92146;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92146, name = 'Zandalari Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92146, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92146, 7, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92146, 'Zandalari Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92146, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Mage Male (Entry: 92147)
DELETE FROM creature_template WHERE entry = 92147;
DELETE FROM creature_template_model WHERE CreatureID = 92147;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92147;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92147;
DELETE FROM creature_equip_template WHERE CreatureID = 92147;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92147, name = 'Zandalari Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92147, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92147, 8, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92147, 'Zandalari Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92147, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Warlock Male (Entry: 92148)
DELETE FROM creature_template WHERE entry = 92148;
DELETE FROM creature_template_model WHERE CreatureID = 92148;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92148;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92148;
DELETE FROM creature_equip_template WHERE CreatureID = 92148;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92148, name = 'Zandalari Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92148, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92148, 9, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92148, 'Zandalari Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92148, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Druid Male (Entry: 92149)
DELETE FROM creature_template WHERE entry = 92149;
DELETE FROM creature_template_model WHERE CreatureID = 92149;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92149;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92149;
DELETE FROM creature_equip_template WHERE CreatureID = 92149;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92149, name = 'Zandalari Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92149, 0, 57658, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92149, 11, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92149, 'Zandalari Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92149, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Warrior Female (Entry: 92150)
DELETE FROM creature_template WHERE entry = 92150;
DELETE FROM creature_template_model WHERE CreatureID = 92150;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92150;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92150;
DELETE FROM creature_equip_template WHERE CreatureID = 92150;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92150, name = 'Zandalari Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92150, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92150, 1, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92150, 'Zandalari Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92150, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Paladin Female (Entry: 92151)
DELETE FROM creature_template WHERE entry = 92151;
DELETE FROM creature_template_model WHERE CreatureID = 92151;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92151;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92151;
DELETE FROM creature_equip_template WHERE CreatureID = 92151;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92151, name = 'Zandalari Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92151, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92151, 2, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92151, 'Zandalari Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92151, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Hunter Female (Entry: 92152)
DELETE FROM creature_template WHERE entry = 92152;
DELETE FROM creature_template_model WHERE CreatureID = 92152;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92152;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92152;
DELETE FROM creature_equip_template WHERE CreatureID = 92152;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92152, name = 'Zandalari Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92152, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92152, 3, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92152, 'Zandalari Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92152, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Rogue Female (Entry: 92153)
DELETE FROM creature_template WHERE entry = 92153;
DELETE FROM creature_template_model WHERE CreatureID = 92153;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92153;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92153;
DELETE FROM creature_equip_template WHERE CreatureID = 92153;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92153, name = 'Zandalari Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92153, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92153, 4, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92153, 'Zandalari Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92153, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Priest Female (Entry: 92154)
DELETE FROM creature_template WHERE entry = 92154;
DELETE FROM creature_template_model WHERE CreatureID = 92154;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92154;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92154;
DELETE FROM creature_equip_template WHERE CreatureID = 92154;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92154, name = 'Zandalari Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92154, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92154, 5, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92154, 'Zandalari Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92154, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Death Knight Female (Entry: 92155)
DELETE FROM creature_template WHERE entry = 92155;
DELETE FROM creature_template_model WHERE CreatureID = 92155;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92155;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92155;
DELETE FROM creature_equip_template WHERE CreatureID = 92155;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92155, name = 'Zandalari Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92155, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92155, 6, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92155, 'Zandalari Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92155, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Shaman Female (Entry: 92156)
DELETE FROM creature_template WHERE entry = 92156;
DELETE FROM creature_template_model WHERE CreatureID = 92156;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92156;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92156;
DELETE FROM creature_equip_template WHERE CreatureID = 92156;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92156, name = 'Zandalari Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92156, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92156, 7, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92156, 'Zandalari Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92156, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Mage Female (Entry: 92157)
DELETE FROM creature_template WHERE entry = 92157;
DELETE FROM creature_template_model WHERE CreatureID = 92157;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92157;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92157;
DELETE FROM creature_equip_template WHERE CreatureID = 92157;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92157, name = 'Zandalari Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92157, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92157, 8, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92157, 'Zandalari Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92157, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Warlock Female (Entry: 92158)
DELETE FROM creature_template WHERE entry = 92158;
DELETE FROM creature_template_model WHERE CreatureID = 92158;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92158;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92158;
DELETE FROM creature_equip_template WHERE CreatureID = 92158;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92158, name = 'Zandalari Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92158, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92158, 9, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92158, 'Zandalari Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92158, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Zandalari Druid Female (Entry: 92159)
DELETE FROM creature_template WHERE entry = 92159;
DELETE FROM creature_template_model WHERE CreatureID = 92159;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92159;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92159;
DELETE FROM creature_equip_template WHERE CreatureID = 92159;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92159, name = 'Zandalari Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92159, 0, 57659, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92159, 11, 18);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92159, 'Zandalari Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92159, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: Lightforged (ID: 19)
-- ========================================================
-- Lightforged Warrior Male (Entry: 92160)
DELETE FROM creature_template WHERE entry = 92160;
DELETE FROM creature_template_model WHERE CreatureID = 92160;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92160;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92160;
DELETE FROM creature_equip_template WHERE CreatureID = 92160;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92160, name = 'Lightforged Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92160, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92160, 1, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92160, 'Lightforged Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92160, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Paladin Male (Entry: 92161)
DELETE FROM creature_template WHERE entry = 92161;
DELETE FROM creature_template_model WHERE CreatureID = 92161;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92161;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92161;
DELETE FROM creature_equip_template WHERE CreatureID = 92161;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92161, name = 'Lightforged Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92161, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92161, 2, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92161, 'Lightforged Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92161, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Hunter Male (Entry: 92162)
DELETE FROM creature_template WHERE entry = 92162;
DELETE FROM creature_template_model WHERE CreatureID = 92162;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92162;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92162;
DELETE FROM creature_equip_template WHERE CreatureID = 92162;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92162, name = 'Lightforged Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92162, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92162, 3, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92162, 'Lightforged Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92162, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Rogue Male (Entry: 92163)
DELETE FROM creature_template WHERE entry = 92163;
DELETE FROM creature_template_model WHERE CreatureID = 92163;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92163;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92163;
DELETE FROM creature_equip_template WHERE CreatureID = 92163;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92163, name = 'Lightforged Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92163, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92163, 4, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92163, 'Lightforged Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92163, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Priest Male (Entry: 92164)
DELETE FROM creature_template WHERE entry = 92164;
DELETE FROM creature_template_model WHERE CreatureID = 92164;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92164;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92164;
DELETE FROM creature_equip_template WHERE CreatureID = 92164;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92164, name = 'Lightforged Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92164, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92164, 5, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92164, 'Lightforged Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92164, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Death Knight Male (Entry: 92165)
DELETE FROM creature_template WHERE entry = 92165;
DELETE FROM creature_template_model WHERE CreatureID = 92165;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92165;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92165;
DELETE FROM creature_equip_template WHERE CreatureID = 92165;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92165, name = 'Lightforged Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92165, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92165, 6, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92165, 'Lightforged Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92165, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Shaman Male (Entry: 92166)
DELETE FROM creature_template WHERE entry = 92166;
DELETE FROM creature_template_model WHERE CreatureID = 92166;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92166;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92166;
DELETE FROM creature_equip_template WHERE CreatureID = 92166;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92166, name = 'Lightforged Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92166, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92166, 7, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92166, 'Lightforged Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92166, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Mage Male (Entry: 92167)
DELETE FROM creature_template WHERE entry = 92167;
DELETE FROM creature_template_model WHERE CreatureID = 92167;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92167;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92167;
DELETE FROM creature_equip_template WHERE CreatureID = 92167;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92167, name = 'Lightforged Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92167, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92167, 8, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92167, 'Lightforged Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92167, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Warlock Male (Entry: 92168)
DELETE FROM creature_template WHERE entry = 92168;
DELETE FROM creature_template_model WHERE CreatureID = 92168;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92168;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92168;
DELETE FROM creature_equip_template WHERE CreatureID = 92168;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92168, name = 'Lightforged Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92168, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92168, 9, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92168, 'Lightforged Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92168, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Druid Male (Entry: 92169)
DELETE FROM creature_template WHERE entry = 92169;
DELETE FROM creature_template_model WHERE CreatureID = 92169;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92169;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92169;
DELETE FROM creature_equip_template WHERE CreatureID = 92169;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92169, name = 'Lightforged Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92169, 0, 57666, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92169, 11, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92169, 'Lightforged Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92169, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Warrior Female (Entry: 92170)
DELETE FROM creature_template WHERE entry = 92170;
DELETE FROM creature_template_model WHERE CreatureID = 92170;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92170;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92170;
DELETE FROM creature_equip_template WHERE CreatureID = 92170;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92170, name = 'Lightforged Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92170, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92170, 1, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92170, 'Lightforged Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92170, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Paladin Female (Entry: 92171)
DELETE FROM creature_template WHERE entry = 92171;
DELETE FROM creature_template_model WHERE CreatureID = 92171;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92171;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92171;
DELETE FROM creature_equip_template WHERE CreatureID = 92171;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92171, name = 'Lightforged Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92171, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92171, 2, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92171, 'Lightforged Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92171, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Hunter Female (Entry: 92172)
DELETE FROM creature_template WHERE entry = 92172;
DELETE FROM creature_template_model WHERE CreatureID = 92172;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92172;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92172;
DELETE FROM creature_equip_template WHERE CreatureID = 92172;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92172, name = 'Lightforged Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92172, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92172, 3, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92172, 'Lightforged Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92172, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Rogue Female (Entry: 92173)
DELETE FROM creature_template WHERE entry = 92173;
DELETE FROM creature_template_model WHERE CreatureID = 92173;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92173;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92173;
DELETE FROM creature_equip_template WHERE CreatureID = 92173;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92173, name = 'Lightforged Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92173, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92173, 4, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92173, 'Lightforged Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92173, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Priest Female (Entry: 92174)
DELETE FROM creature_template WHERE entry = 92174;
DELETE FROM creature_template_model WHERE CreatureID = 92174;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92174;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92174;
DELETE FROM creature_equip_template WHERE CreatureID = 92174;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92174, name = 'Lightforged Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92174, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92174, 5, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92174, 'Lightforged Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92174, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Death Knight Female (Entry: 92175)
DELETE FROM creature_template WHERE entry = 92175;
DELETE FROM creature_template_model WHERE CreatureID = 92175;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92175;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92175;
DELETE FROM creature_equip_template WHERE CreatureID = 92175;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92175, name = 'Lightforged Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92175, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92175, 6, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92175, 'Lightforged Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92175, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Shaman Female (Entry: 92176)
DELETE FROM creature_template WHERE entry = 92176;
DELETE FROM creature_template_model WHERE CreatureID = 92176;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92176;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92176;
DELETE FROM creature_equip_template WHERE CreatureID = 92176;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92176, name = 'Lightforged Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92176, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92176, 7, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92176, 'Lightforged Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92176, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Mage Female (Entry: 92177)
DELETE FROM creature_template WHERE entry = 92177;
DELETE FROM creature_template_model WHERE CreatureID = 92177;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92177;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92177;
DELETE FROM creature_equip_template WHERE CreatureID = 92177;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92177, name = 'Lightforged Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92177, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92177, 8, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92177, 'Lightforged Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92177, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Warlock Female (Entry: 92178)
DELETE FROM creature_template WHERE entry = 92178;
DELETE FROM creature_template_model WHERE CreatureID = 92178;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92178;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92178;
DELETE FROM creature_equip_template WHERE CreatureID = 92178;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92178, name = 'Lightforged Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92178, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92178, 9, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92178, 'Lightforged Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92178, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- Lightforged Druid Female (Entry: 92179)
DELETE FROM creature_template WHERE entry = 92179;
DELETE FROM creature_template_model WHERE CreatureID = 92179;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92179;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92179;
DELETE FROM creature_equip_template WHERE CreatureID = 92179;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92179, name = 'Lightforged Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92179, 0, 57667, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92179, 11, 19);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92179, 'Lightforged Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92179, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: DH_Alliance (ID: 20)
-- ========================================================
-- DH_Alliance Warrior Male (Entry: 92180)
DELETE FROM creature_template WHERE entry = 92180;
DELETE FROM creature_template_model WHERE CreatureID = 92180;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92180;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92180;
DELETE FROM creature_equip_template WHERE CreatureID = 92180;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92180, name = 'DH_Alliance Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92180, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92180, 1, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92180, 'DH_Alliance Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92180, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Paladin Male (Entry: 92181)
DELETE FROM creature_template WHERE entry = 92181;
DELETE FROM creature_template_model WHERE CreatureID = 92181;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92181;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92181;
DELETE FROM creature_equip_template WHERE CreatureID = 92181;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92181, name = 'DH_Alliance Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92181, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92181, 2, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92181, 'DH_Alliance Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92181, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Hunter Male (Entry: 92182)
DELETE FROM creature_template WHERE entry = 92182;
DELETE FROM creature_template_model WHERE CreatureID = 92182;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92182;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92182;
DELETE FROM creature_equip_template WHERE CreatureID = 92182;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92182, name = 'DH_Alliance Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92182, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92182, 3, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92182, 'DH_Alliance Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92182, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Rogue Male (Entry: 92183)
DELETE FROM creature_template WHERE entry = 92183;
DELETE FROM creature_template_model WHERE CreatureID = 92183;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92183;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92183;
DELETE FROM creature_equip_template WHERE CreatureID = 92183;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92183, name = 'DH_Alliance Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92183, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92183, 4, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92183, 'DH_Alliance Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92183, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Priest Male (Entry: 92184)
DELETE FROM creature_template WHERE entry = 92184;
DELETE FROM creature_template_model WHERE CreatureID = 92184;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92184;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92184;
DELETE FROM creature_equip_template WHERE CreatureID = 92184;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92184, name = 'DH_Alliance Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92184, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92184, 5, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92184, 'DH_Alliance Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92184, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Death Knight Male (Entry: 92185)
DELETE FROM creature_template WHERE entry = 92185;
DELETE FROM creature_template_model WHERE CreatureID = 92185;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92185;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92185;
DELETE FROM creature_equip_template WHERE CreatureID = 92185;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92185, name = 'DH_Alliance Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92185, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92185, 6, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92185, 'DH_Alliance Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92185, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Shaman Male (Entry: 92186)
DELETE FROM creature_template WHERE entry = 92186;
DELETE FROM creature_template_model WHERE CreatureID = 92186;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92186;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92186;
DELETE FROM creature_equip_template WHERE CreatureID = 92186;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92186, name = 'DH_Alliance Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92186, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92186, 7, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92186, 'DH_Alliance Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92186, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Mage Male (Entry: 92187)
DELETE FROM creature_template WHERE entry = 92187;
DELETE FROM creature_template_model WHERE CreatureID = 92187;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92187;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92187;
DELETE FROM creature_equip_template WHERE CreatureID = 92187;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92187, name = 'DH_Alliance Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92187, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92187, 8, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92187, 'DH_Alliance Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92187, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Warlock Male (Entry: 92188)
DELETE FROM creature_template WHERE entry = 92188;
DELETE FROM creature_template_model WHERE CreatureID = 92188;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92188;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92188;
DELETE FROM creature_equip_template WHERE CreatureID = 92188;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92188, name = 'DH_Alliance Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92188, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92188, 9, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92188, 'DH_Alliance Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92188, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Druid Male (Entry: 92189)
DELETE FROM creature_template WHERE entry = 92189;
DELETE FROM creature_template_model WHERE CreatureID = 92189;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92189;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92189;
DELETE FROM creature_equip_template WHERE CreatureID = 92189;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92189, name = 'DH_Alliance Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92189, 0, 57672, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92189, 11, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92189, 'DH_Alliance Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92189, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Warrior Female (Entry: 92190)
DELETE FROM creature_template WHERE entry = 92190;
DELETE FROM creature_template_model WHERE CreatureID = 92190;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92190;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92190;
DELETE FROM creature_equip_template WHERE CreatureID = 92190;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92190, name = 'DH_Alliance Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92190, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92190, 1, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92190, 'DH_Alliance Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92190, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Paladin Female (Entry: 92191)
DELETE FROM creature_template WHERE entry = 92191;
DELETE FROM creature_template_model WHERE CreatureID = 92191;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92191;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92191;
DELETE FROM creature_equip_template WHERE CreatureID = 92191;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92191, name = 'DH_Alliance Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92191, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92191, 2, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92191, 'DH_Alliance Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92191, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Hunter Female (Entry: 92192)
DELETE FROM creature_template WHERE entry = 92192;
DELETE FROM creature_template_model WHERE CreatureID = 92192;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92192;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92192;
DELETE FROM creature_equip_template WHERE CreatureID = 92192;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92192, name = 'DH_Alliance Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92192, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92192, 3, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92192, 'DH_Alliance Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92192, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Rogue Female (Entry: 92193)
DELETE FROM creature_template WHERE entry = 92193;
DELETE FROM creature_template_model WHERE CreatureID = 92193;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92193;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92193;
DELETE FROM creature_equip_template WHERE CreatureID = 92193;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92193, name = 'DH_Alliance Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92193, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92193, 4, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92193, 'DH_Alliance Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92193, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Priest Female (Entry: 92194)
DELETE FROM creature_template WHERE entry = 92194;
DELETE FROM creature_template_model WHERE CreatureID = 92194;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92194;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92194;
DELETE FROM creature_equip_template WHERE CreatureID = 92194;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92194, name = 'DH_Alliance Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92194, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92194, 5, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92194, 'DH_Alliance Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92194, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Death Knight Female (Entry: 92195)
DELETE FROM creature_template WHERE entry = 92195;
DELETE FROM creature_template_model WHERE CreatureID = 92195;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92195;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92195;
DELETE FROM creature_equip_template WHERE CreatureID = 92195;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92195, name = 'DH_Alliance Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92195, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92195, 6, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92195, 'DH_Alliance Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92195, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Shaman Female (Entry: 92196)
DELETE FROM creature_template WHERE entry = 92196;
DELETE FROM creature_template_model WHERE CreatureID = 92196;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92196;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92196;
DELETE FROM creature_equip_template WHERE CreatureID = 92196;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92196, name = 'DH_Alliance Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92196, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92196, 7, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92196, 'DH_Alliance Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92196, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Mage Female (Entry: 92197)
DELETE FROM creature_template WHERE entry = 92197;
DELETE FROM creature_template_model WHERE CreatureID = 92197;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92197;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92197;
DELETE FROM creature_equip_template WHERE CreatureID = 92197;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92197, name = 'DH_Alliance Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92197, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92197, 8, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92197, 'DH_Alliance Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92197, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Warlock Female (Entry: 92198)
DELETE FROM creature_template WHERE entry = 92198;
DELETE FROM creature_template_model WHERE CreatureID = 92198;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92198;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92198;
DELETE FROM creature_equip_template WHERE CreatureID = 92198;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92198, name = 'DH_Alliance Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92198, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92198, 9, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92198, 'DH_Alliance Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92198, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Alliance Druid Female (Entry: 92199)
DELETE FROM creature_template WHERE entry = 92199;
DELETE FROM creature_template_model WHERE CreatureID = 92199;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92199;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92199;
DELETE FROM creature_equip_template WHERE CreatureID = 92199;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92199, name = 'DH_Alliance Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92199, 0, 57673, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92199, 11, 20);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92199, 'DH_Alliance Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92199, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- ========================================================
-- Race: DH_Horde (ID: 21)
-- ========================================================
-- DH_Horde Warrior Male (Entry: 92200)
DELETE FROM creature_template WHERE entry = 92200;
DELETE FROM creature_template_model WHERE CreatureID = 92200;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92200;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92200;
DELETE FROM creature_equip_template WHERE CreatureID = 92200;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92200, name = 'DH_Horde Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92200, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92200, 1, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92200, 'DH_Horde Warrior', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92200, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Paladin Male (Entry: 92201)
DELETE FROM creature_template WHERE entry = 92201;
DELETE FROM creature_template_model WHERE CreatureID = 92201;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92201;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92201;
DELETE FROM creature_equip_template WHERE CreatureID = 92201;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92201, name = 'DH_Horde Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92201, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92201, 2, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92201, 'DH_Horde Paladin', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92201, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Hunter Male (Entry: 92202)
DELETE FROM creature_template WHERE entry = 92202;
DELETE FROM creature_template_model WHERE CreatureID = 92202;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92202;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92202;
DELETE FROM creature_equip_template WHERE CreatureID = 92202;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92202, name = 'DH_Horde Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92202, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92202, 3, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92202, 'DH_Horde Hunter', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92202, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Rogue Male (Entry: 92203)
DELETE FROM creature_template WHERE entry = 92203;
DELETE FROM creature_template_model WHERE CreatureID = 92203;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92203;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92203;
DELETE FROM creature_equip_template WHERE CreatureID = 92203;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92203, name = 'DH_Horde Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92203, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92203, 4, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92203, 'DH_Horde Rogue', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92203, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Priest Male (Entry: 92204)
DELETE FROM creature_template WHERE entry = 92204;
DELETE FROM creature_template_model WHERE CreatureID = 92204;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92204;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92204;
DELETE FROM creature_equip_template WHERE CreatureID = 92204;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92204, name = 'DH_Horde Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92204, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92204, 5, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92204, 'DH_Horde Priest', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92204, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Death Knight Male (Entry: 92205)
DELETE FROM creature_template WHERE entry = 92205;
DELETE FROM creature_template_model WHERE CreatureID = 92205;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92205;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92205;
DELETE FROM creature_equip_template WHERE CreatureID = 92205;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92205, name = 'DH_Horde Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92205, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92205, 6, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92205, 'DH_Horde Death Knight', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92205, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Shaman Male (Entry: 92206)
DELETE FROM creature_template WHERE entry = 92206;
DELETE FROM creature_template_model WHERE CreatureID = 92206;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92206;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92206;
DELETE FROM creature_equip_template WHERE CreatureID = 92206;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92206, name = 'DH_Horde Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92206, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92206, 7, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92206, 'DH_Horde Shaman', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92206, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Mage Male (Entry: 92207)
DELETE FROM creature_template WHERE entry = 92207;
DELETE FROM creature_template_model WHERE CreatureID = 92207;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92207;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92207;
DELETE FROM creature_equip_template WHERE CreatureID = 92207;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92207, name = 'DH_Horde Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92207, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92207, 8, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92207, 'DH_Horde Mage', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92207, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Warlock Male (Entry: 92208)
DELETE FROM creature_template WHERE entry = 92208;
DELETE FROM creature_template_model WHERE CreatureID = 92208;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92208;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92208;
DELETE FROM creature_equip_template WHERE CreatureID = 92208;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92208, name = 'DH_Horde Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92208, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92208, 9, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92208, 'DH_Horde Warlock', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92208, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Druid Male (Entry: 92209)
DELETE FROM creature_template WHERE entry = 92209;
DELETE FROM creature_template_model WHERE CreatureID = 92209;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92209;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92209;
DELETE FROM creature_equip_template WHERE CreatureID = 92209;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92209, name = 'DH_Horde Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92209, 0, 57670, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92209, 11, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92209, 'DH_Horde Druid', 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92209, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Warrior Female (Entry: 92210)
DELETE FROM creature_template WHERE entry = 92210;
DELETE FROM creature_template_model WHERE CreatureID = 92210;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92210;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92210;
DELETE FROM creature_equip_template WHERE CreatureID = 92210;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70005;
UPDATE temp_bot_create SET entry = 92210, name = 'DH_Horde Warrior', subname = 'Warrior Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92210, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92210, 1, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92210, 'DH_Horde Warrior', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92210, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70005;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Paladin Female (Entry: 92211)
DELETE FROM creature_template WHERE entry = 92211;
DELETE FROM creature_template_model WHERE CreatureID = 92211;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92211;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92211;
DELETE FROM creature_equip_template WHERE CreatureID = 92211;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70051;
UPDATE temp_bot_create SET entry = 92211, name = 'DH_Horde Paladin', subname = 'Paladin Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92211, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92211, 2, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92211, 'DH_Horde Paladin', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92211, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70051;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Hunter Female (Entry: 92212)
DELETE FROM creature_template WHERE entry = 92212;
DELETE FROM creature_template_model WHERE CreatureID = 92212;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92212;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92212;
DELETE FROM creature_equip_template WHERE CreatureID = 92212;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70101;
UPDATE temp_bot_create SET entry = 92212, name = 'DH_Horde Hunter', subname = 'Hunter Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92212, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92212, 3, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92212, 'DH_Horde Hunter', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92212, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70101;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Rogue Female (Entry: 92213)
DELETE FROM creature_template WHERE entry = 92213;
DELETE FROM creature_template_model WHERE CreatureID = 92213;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92213;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92213;
DELETE FROM creature_equip_template WHERE CreatureID = 92213;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70151;
UPDATE temp_bot_create SET entry = 92213, name = 'DH_Horde Rogue', subname = 'Rogue Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92213, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92213, 4, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92213, 'DH_Horde Rogue', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92213, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70151;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Priest Female (Entry: 92214)
DELETE FROM creature_template WHERE entry = 92214;
DELETE FROM creature_template_model WHERE CreatureID = 92214;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92214;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92214;
DELETE FROM creature_equip_template WHERE CreatureID = 92214;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70201;
UPDATE temp_bot_create SET entry = 92214, name = 'DH_Horde Priest', subname = 'Priest Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92214, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92214, 5, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92214, 'DH_Horde Priest', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92214, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70201;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Death Knight Female (Entry: 92215)
DELETE FROM creature_template WHERE entry = 92215;
DELETE FROM creature_template_model WHERE CreatureID = 92215;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92215;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92215;
DELETE FROM creature_equip_template WHERE CreatureID = 92215;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70451;
UPDATE temp_bot_create SET entry = 92215, name = 'DH_Horde Death Knight', subname = 'Death Knight Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92215, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92215, 6, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92215, 'DH_Horde Death Knight', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92215, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70451;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Shaman Female (Entry: 92216)
DELETE FROM creature_template WHERE entry = 92216;
DELETE FROM creature_template_model WHERE CreatureID = 92216;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92216;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92216;
DELETE FROM creature_equip_template WHERE CreatureID = 92216;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70251;
UPDATE temp_bot_create SET entry = 92216, name = 'DH_Horde Shaman', subname = 'Shaman Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92216, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92216, 7, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92216, 'DH_Horde Shaman', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92216, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70251;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Mage Female (Entry: 92217)
DELETE FROM creature_template WHERE entry = 92217;
DELETE FROM creature_template_model WHERE CreatureID = 92217;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92217;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92217;
DELETE FROM creature_equip_template WHERE CreatureID = 92217;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70301;
UPDATE temp_bot_create SET entry = 92217, name = 'DH_Horde Mage', subname = 'Mage Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92217, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92217, 8, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92217, 'DH_Horde Mage', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92217, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70301;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Warlock Female (Entry: 92218)
DELETE FROM creature_template WHERE entry = 92218;
DELETE FROM creature_template_model WHERE CreatureID = 92218;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92218;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92218;
DELETE FROM creature_equip_template WHERE CreatureID = 92218;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70351;
UPDATE temp_bot_create SET entry = 92218, name = 'DH_Horde Warlock', subname = 'Warlock Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92218, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92218, 9, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92218, 'DH_Horde Warlock', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92218, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70351;
DROP TEMPORARY TABLE temp_bot_create;

-- DH_Horde Druid Female (Entry: 92219)
DELETE FROM creature_template WHERE entry = 92219;
DELETE FROM creature_template_model WHERE CreatureID = 92219;
DELETE FROM creature_template_npcbot_extras WHERE entry = 92219;
DELETE FROM creature_template_npcbot_appearance WHERE entry = 92219;
DELETE FROM creature_equip_template WHERE CreatureID = 92219;
DROP TEMPORARY TABLE IF EXISTS temp_bot_create;
CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = 70401;
UPDATE temp_bot_create SET entry = 92219, name = 'DH_Horde Druid', subname = 'Druid Bot';
INSERT INTO creature_template SELECT * FROM temp_bot_create;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES (92219, 0, 57671, 1, 1, 0);
REPLACE INTO creature_template_npcbot_extras VALUES (92219, 11, 21);
REPLACE INTO creature_template_npcbot_appearance (entry, `name*`, gender, skin, face, hair, haircolor, features) VALUES (92219, 'DH_Horde Druid', 1, 0, 0, 0, 0, 0);
REPLACE INTO creature_equip_template SELECT 92219, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = 70401;
DROP TEMPORARY TABLE temp_bot_create;

