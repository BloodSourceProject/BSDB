-- High Sage Viryx
SET @ENTRY := 76266;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,37000,37000,37000,37000,11,154044,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Lens Flare 37s "),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,10000,10000,10000,10000,11,154396,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Solar Burst"),
(@ENTRY,@SOURCETYPE,2,0,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on AGGRO"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,37000,37000,37000,37000,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on LENS FLARE"),
(@ENTRY,@SOURCETYPE,4,0,5,0,100,0,0,0,1,0,1,2,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"say on KILL PLAYER"),
(@ENTRY,@SOURCETYPE,5,0,7,0,100,1,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on WIPE"),
(@ENTRY,@SOURCETYPE,6,0,6,0,100,1,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"say on DEATH");

DELETE FROM `creature_text` WHERE `entry`=76266;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (76266,0,0,'We will cast you down like the mongrels you are!',0,0,100,0,0,45176,'Aggro');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (76266,1,0,'Behold the might of the Arakkoa!',0,0,100,0,0,45182,'Lens Flare');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (76266,2,0,'You are unfit to rise to this height, return to your filth below!',0,0,100,0,0,45178,'Killer a player');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (76266,3,0,'As long as we rule the skies you will always be beneath us!',0,0,100,0,0,45183,'Wipe');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (76266,4,0,'We will always... soar...',0,0,100,0,0,45177,'Death');
