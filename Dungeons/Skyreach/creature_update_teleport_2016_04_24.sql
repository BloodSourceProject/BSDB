SET @ENTRY_NPC := 9999901;
SET @MAPID := 1116;
SET @GOSSIP_MENU := 45435;
SET @GOSSIP_MENU_TEXT := 'Teleport out of Skyreach.';
SET @posX = 52.525164;
SET @posY = 2526.521973;
SET @posZ = 79.731476;
SET @posO = 3.783033;

DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP_MENU ;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP_MENU, 12370);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_NPC AND `id` IN (0, 1);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_MENU ;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`,`box_coded`, `box_money`, `box_text`) 
VALUES (@GOSSIP_MENU, 0, 0, @GOSSIP_MENU_TEXT, 1, 1, 0, 0, 0, 0, NULL);

UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU,`npcflag` = '3',`AIName` = 'SmartAI' WHERE `entry`=@ENTRY_NPC;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@ENTRY_NPC, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_MENU, 0, 0, 0, 62, @MAPID, 0, 0, 0, 0, 0, 7, 0, 0, 0, @posX, @posY, @posZ, @posO, 'On Gossip Select - TELEPORT'),
(@ENTRY_NPC, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select - TELEPORT');

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`, `npcflag2`, `speed_fly`, `dmg_multiplier`, `unit_flags3`, `WorldEffectID`, `trainer_spell`, `PetSpellDataId`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `TrackingQuestID`, `VignetteID`, `equipment_id`, `BuildVerified`, `WDBVerified`, `faction_A`, `faction_h`, `mindmg`, `maxdmg`, `attackpower`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `difficulty_entry_4`, `difficulty_entry_5`, `difficulty_entry_6`, `difficulty_entry_7`, `difficulty_entry_8`, `difficulty_entry_9`, `difficulty_entry_10`, `difficulty_entry_11`, `difficulty_entry_12`, `difficulty_entry_13`, `difficulty_entry_14`, `difficulty_entry_15`)  VALUES (@ENTRY_NPC, '0', '0', '0', '0', '79050', '55992', '0', '0', '0', 'Shadow-Sage Iskar', NULL, NULL, NULL, '0', '101', '101', '0', '0', '35', '0', '1', '1.14286', '1', '1', '0', '2000', '2000', '1', '1', '0', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '7611601', '0', '0', '0', '0', '0', '0', '0', '0', '153544', '153123', '0', '0', '0', '0', '0', '0', '0', '17747', '17747', 'SmartAI', '0', '3', '1', '31.1', '1', '1', '1', '1', '120', '1', '0', '0', '1', '0', '0', '', '20886', '0', '0', '1', '0', '0', '0', '0', '5', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '76116', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
