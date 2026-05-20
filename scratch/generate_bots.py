import os

classic_templates = {
    1: 70005,   # Warrior
    2: 70051,   # Paladin
    3: 70101,   # Hunter
    4: 70151,   # Rogue
    5: 70201,   # Priest
    6: 70451,   # Death Knight
    7: 70251,   # Shaman
    8: 70301,   # Mage
    9: 70351,   # Warlock
    11: 70401   # Druid
}

class_names = {
    1: "Warrior",
    2: "Paladin",
    3: "Hunter",
    4: "Rogue",
    5: "Priest",
    6: "Death Knight",
    7: "Shaman",
    8: "Mage",
    9: "Warlock",
    11: "Druid"
}

# (Race ID, Race Name, Display IDs for {gender: display_id}, Start Entry ID)
custom_races = [
    (9, "Goblin", {0: 57674, 1: 57675}, 92000),
    (12, "VoidElf", {0: 57662, 1: 57663}, 92020),
    (13, "Vulpera", {0: 57664, 1: 57665}, 92040),
    (14, "HighElf", {0: 45001, 1: 45000}, 92060),
    (15, "Pandaren", {0: 57668, 1: 57669}, 92080),
    (16, "Worgen", {0: 57676, 1: 57677}, 92100),
    (17, "Eredar", {0: 36399, 1: 36400}, 92120),
    (18, "Zandalari", {0: 57658, 1: 57659}, 92140),
    (19, "Lightforged", {0: 57666, 1: 57667}, 92160),
    (20, "DH_Alliance", {0: 57672, 1: 57673}, 92180),
    (21, "DH_Horde", {0: 57670, 1: 57671}, 92200)
]

classes_order = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11]

sql_lines = []
sql_lines.append("-- Automatically generated SQL to add custom race NPC bots with standard classes")
sql_lines.append("USE `acore_world`;\n")

for race_id, race_name, display_ids, start_entry in custom_races:
    sql_lines.append(f"-- ========================================================")
    sql_lines.append(f"-- Race: {race_name} (ID: {race_id})")
    sql_lines.append(f"-- ========================================================")
    
    for gender in [0, 1]:
        gender_name = "Male" if gender == 0 else "Female"
        
        for c_id in classes_order:
            c_name = class_names[c_id]
            template_entry = classic_templates[c_id]
            
            # Calculate entry ID
            class_idx = classes_order.index(c_id)
            new_entry = start_entry + (gender * 10) + class_idx
            
            # Display ID
            display_id = display_ids.get(gender, 0)
            
            # Bot name
            bot_name = f"{race_name} {c_name}"
            subname = f"{c_name} Bot"
            
            # Generate statements
            sql_lines.append(f"-- {bot_name} {gender_name} (Entry: {new_entry})")
            sql_lines.append(f"DELETE FROM creature_template WHERE entry = {new_entry};")
            sql_lines.append(f"DELETE FROM creature_template_model WHERE CreatureID = {new_entry};")
            sql_lines.append(f"DELETE FROM creature_template_npcbot_extras WHERE entry = {new_entry};")
            sql_lines.append(f"DELETE FROM creature_template_npcbot_appearance WHERE entry = {new_entry};")
            sql_lines.append(f"DELETE FROM creature_equip_template WHERE CreatureID = {new_entry};")
            
            sql_lines.append(f"DROP TEMPORARY TABLE IF EXISTS temp_bot_create;")
            sql_lines.append(f"CREATE TEMPORARY TABLE temp_bot_create SELECT * FROM creature_template WHERE entry = {template_entry};")
            sql_lines.append(f"UPDATE temp_bot_create SET entry = {new_entry}, name = '{bot_name}', subname = '{subname}';")
            sql_lines.append(f"INSERT INTO creature_template SELECT * FROM temp_bot_create;")
            
            sql_lines.append(f"INSERT INTO creature_template_model (CreatureID, `Index`, CreatureDisplayID, Scale, Probability, VerifiedBuild) VALUES ({new_entry}, 0, {display_id}, 1, 1, 0);")
            sql_lines.append(f"REPLACE INTO creature_template_npcbot_extras VALUES ({new_entry}, {c_id}, {race_id});")
            sql_lines.append(f"REPLACE INTO creature_template_npcbot_appearance (entry, name, gender, skin, face, hair, haircolor, features) VALUES ({new_entry}, '{bot_name}', {gender}, 0, 0, 0, 0, 0);")
            sql_lines.append(f"REPLACE INTO creature_equip_template SELECT {new_entry}, 1, itemID1, itemID2, itemID3, VerifiedBuild FROM creature_equip_template WHERE CreatureID = {template_entry};")
            
            sql_lines.append(f"DROP TEMPORARY TABLE temp_bot_create;")
            sql_lines.append("")

output_dir = r"D:\berepack\AZtwobotSources\data\sql\updates\db_world"
os.makedirs(output_dir, exist_ok=True)
output_path = os.path.join(output_dir, "add_all_custom_npc_bots.sql")

with open(output_path, "w", encoding="utf-8") as f:
    f.write("\n".join(sql_lines))

print(f"Successfully generated SQL script at: {output_path}")
