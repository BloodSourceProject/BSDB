-- Herald of Sunrise
SET @ENTRY := 78933;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,9000,9000,24000,24000,11,152893,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Solar Heal - 9s"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,14000,14000,24000,24000,11,152894,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Flash Heal - 14s"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,18500,18500,24000,24000,11,160281,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Solar Zone - Heal Effect - 18,5s"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,18000,18000,24000,24000,11,163330,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Solar Zone - 18s");