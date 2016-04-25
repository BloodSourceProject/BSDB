INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) 
VALUES 
('26', '182', '0', '0', '0', '27', '0', '90', '3', '0', '0', '0', '0', '', 'Phase 182 Blasted Land above lvl90');

-- Full

SET @ENTRY_NPC := 78423;
SET @KIll_Credit := 78419;
SET @GOSSIP_MENU := 58419;
SET @GOSSIP_MENU_TEXT := 'Tell me everything about, Dark Portal!';
SET @QUESTID := 34398;

-- Condition
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) 
VALUES ('15', @GOSSIP_MENU, '0', '0', '0', '9', '0', @QUESTID, '0', '0', '0', '0', '0', '', 'Condition for Gossip Kill Credit');



DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_NPC AND `id` IN (0, 1);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_MENU ;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`,`box_coded`, `box_money`, `box_text`) 
VALUES (@GOSSIP_MENU, 0, 0, @GOSSIP_MENU_TEXT, 1, 1, 0, 0, 0, 0, NULL);
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU,`npcflag` = `npcflag`|3,`AIName` = 'SmartAI' WHERE `entry`=@ENTRY_NPC;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@ENTRY_NPC, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_MENU, 0, 0, 0, 33, @KIll_Credit, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select - Give Kill Credit'),
(@ENTRY_NPC, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select - Close Gossip');