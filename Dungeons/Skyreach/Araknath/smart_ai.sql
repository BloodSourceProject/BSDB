-- Araknath
SET @ENTRY := 76141;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,20000,20000,25000,25000,11,154135,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Burst - 20s"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,14000,14000,25000,25000,11,154110,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Smash - 14s"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,16700,16700,25000,25000,11,154132,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Smash trigger 16,7s"),
(@ENTRY,@SOURCETYPE,3,0,7,0,100,1,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Evade --> Evade"),
(@ENTRY,@SOURCETYPE,4,0,7,0,100,0,0,0,0,0,28,154135,0,0,0,0,0,16,0,0,0,0.0,0.0,0.0,0.0,"On wipe -> remove aura Burst"),
(@ENTRY,@SOURCETYPE,5,0,6,0,100,0,0,0,0,0,28,154135,0,0,0,0,0,16,0,0,0,0.0,0.0,0.0,0.0,"On kill -> remove aura Burst");