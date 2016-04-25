-- Whirling Dervish
SET @ENTRY := 77605;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,4,0,0,0,100,0,13000,13000,22000,22000,11,160208,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Dispel All - 13s"),
(@ENTRY,@SOURCETYPE,11,0,0,0,100,0,10000,10000,22000,22000,11,156515,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Storm - 10s"),
(@ENTRY,@SOURCETYPE,12,0,0,0,100,0,16000,16000,22000,22000,11,153905,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Dervish - 16s");

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('-156840', '-156841', '0', NULL);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('156515', '156840', '1', NULL);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('156840', '156841', '0', NULL);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('153905', '153907', '0', NULL);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('-153905', '-153907', '0', NULL);

DELETE FROM `creature_text` WHERE `entry`=77605;