-- Ranjit
SET @ENTRY := 75964;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on AGGRO"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,13000,13000,22000,22000,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on FOUR WIND"),
(@ENTRY,@SOURCETYPE,2,0,5,0,100,0,0,0,1,0,1,2,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on KILL PLAYER"),
(@ENTRY,@SOURCETYPE,3,0,6,0,100,1,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on DEATH"),
(@ENTRY,@SOURCETYPE,4,0,7,0,100,1,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say on WIPE"),
(@ENTRY,@SOURCETYPE,5,0,0,0,100,0,8000,8000,22000,22000,11,153757,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Fan of Blades - 8s"),
(@ENTRY,@SOURCETYPE,6,0,0,0,100,0,13000,13000,22000,22000,11,156793,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Four Winds - 13s"),
(@ENTRY,@SOURCETYPE,8,0,0,0,100,0,15000,15000,22000,22000,11,153314,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Windwall on Four Wind - 13s"),
(@ENTRY,@SOURCETYPE,9,0,0,0,100,0,17000,17000,22000,22000,11,165731,4,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Piercing Rush - 17s"),
(@ENTRY,@SOURCETYPE,10,0,6,0,100,1,0,0,0,0,9,0,0,0,0,0,0,15,234311,1000,0,0.0,0.0,0.0,0.0,"On Death remove GO"),
(@ENTRY,@SOURCETYPE,11,0,4,0,100,1,0,0,0,0,50,234311,80,0,0,0,0,8,0,0,0,1195.36,1719.98,190.277,6.03143,"On Aggro summ GO"),
(@ENTRY,@SOURCETYPE,12,0,7,0,100,1,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Evade");


DELETE FROM `creature_text` WHERE `entry`=75964;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,0,0,'I will slice the flesh from your bones!',14,0,100,0,0,43887,'');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,1,0,'You cannot outrun the wind!',14,0,100,0,0,43892,'Four Winds 1');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,1,1,'Your doom is coming.',0,0,100,0,0,43891,'Four Winds 2');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,2,0,'We will feed your corpse to the Kaliri!',14,0,100,0,0,43889,'Kill player 1');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,2,1,'Move faster ground dweller!',14,0,100,0,0,43890,'Killed a player 2');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,3,0,'I... perish...',14,0,100,0,0,43888,'Death');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (75964,4,0,'As long as we rule the skies, none shall oppose us!',14,0,100,0,0,43893,'Wipe');
