-- 关联御空术（音爆 100210）与 C++ 脚本限制拦截逻辑
DELETE FROM `spell_script_names` WHERE `spell_id` = 100210;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (100210, 'spell_dracthyr_skyburst_gate');
