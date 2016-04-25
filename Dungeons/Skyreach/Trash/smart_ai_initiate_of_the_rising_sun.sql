-- Initiate of the Rising Sun
SET @ENTRY := 79466;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,70,0,6000,6000,20000,20000,11,152894,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Flash Heal"),
(@ENTRY,@SOURCETYPE,1,0,0,0,50,0,14000,14000,20000,20000,11,160274,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Solar Shower");