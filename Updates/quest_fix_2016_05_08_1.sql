-- Hana'zua
DELETE FROM `creature_questender` WHERE (`id`='5887') AND (`quest`='25128');


-- Thazz'ril's Pick
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='178087');
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('178087', '16332', '0', '100', '0', '1', '0', '1', '1', NULL);
