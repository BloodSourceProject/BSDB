-- Rukhran
SET @ENTRY := 76143;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,13000,13000,26000,26000,11,153794,4,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Perce Armor - 13s"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,14200,14200,26000,26000,11,153795,4,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Perce Armor trigger 14,2s"),
(@ENTRY,@SOURCETYPE,2,0,7,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Evade --> Evade"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,10000,10000,26000,26000,11,153810,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Summon Solar Flare - 10s"),
(@ENTRY,@SOURCETYPE,4,0,0,0,100,0,20000,20000,26000,26000,11,159382,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Quills");