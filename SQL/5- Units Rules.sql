/*

	R.E.D. Xtende
	Units Rules
	by Gedemon (2013)


*/


-----------------------------------------------
-- Unit Re-Class
-----------------------------------------------


/* Battering Ram */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_HUN_BATTERING_RAM';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_BATTERING_RAM','TXT_KEY_UNIT_HUN_BATTERING_RAM','UNIT_HUN_BATTERING_RAM');
UPDATE Units SET Class ='UNITCLASS_BATTERING_RAM' WHERE Type = 'UNIT_HUN_BATTERING_RAM';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_BATTERING_RAM',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_BATTERING_RAM',NULL);

/* Ship of the Line */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_ENGLISH_SHIPOFTHELINE';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_SHIPOFTHELINE','TXT_KEY_UNIT_ENGLISH_SHIPOFTHELINE','UNIT_ENGLISH_SHIPOFTHELINE');
UPDATE Units SET Class ='UNITCLASS_SHIPOFTHELINE', PrereqTech = 'TECH_MILITARY_SCIENCE', Cost = 200 WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_SHIPOFTHELINE',NULL);

/* Privateer & Sea Beggar (only for barbarians) */
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_CARAVEL','UNIT_PRIVATEER');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_FRIGATE','UNIT_DUTCH_SEA_BEGGAR');
UPDATE Units SET Class ='UNITCLASS_CARAVEL', Combat = 20 WHERE Type = 'UNIT_PRIVATEER';
UPDATE Units SET Class ='UNITCLASS_FRIGATE' WHERE Type = 'UNIT_DUTCH_SEA_BEGGAR';
DELETE FROM UnitClasses WHERE Type ='UNITCLASS_PRIVATEER';

/* Ballista */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_ROMAN_BALLISTA';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_ROMAN_BALLISTA','TXT_KEY_UNIT_ROMAN_BALLISTA','UNIT_ROMAN_BALLISTA');
UPDATE Units SET Class ='UNITCLASS_ROMAN_BALLISTA' WHERE Type = 'UNIT_ROMAN_BALLISTA';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_ROMAN_BALLISTA',NULL);
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_ROMAN_BALLISTA','PROMOTION_CITY_PENALTY');

/* Siege Tower */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_ASSYRIAN_SIEGE_TOWER';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_SIEGE_TOWER','TXT_KEY_UNIT_ASSYRIAN_SIEGE_TOWER','UNIT_ASSYRIAN_SIEGE_TOWER');
UPDATE Units SET Class ='UNITCLASS_SIEGE_TOWER' WHERE Type = 'UNIT_ASSYRIAN_SIEGE_TOWER';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_SIEGE_TOWER',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_SIEGE_TOWER',NULL); 

/* HWACHA */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_KOREAN_HWACHA';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_HWACHA','TXT_KEY_UNIT_KOREAN_HWACHA','UNIT_KOREAN_HWACHA');
UPDATE Units SET Class ='UNITCLASS_HWACHA' WHERE Type = 'UNIT_KOREAN_HWACHA';
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_KOREAN_HWACHA','PROMOTION_CITY_PENALTY');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_HWACHA',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_HWACHA',NULL); 

/* Quinquereme */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_CARTHAGINIAN_QUINQUEREME';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_QUINQUEREME','TXT_KEY_UNIT_CARTHAGINIAN_QUINQUEREME','UNIT_CARTHAGINIAN_QUINQUEREME');
UPDATE Units SET Class ='UNITCLASS_QUINQUEREME', PrereqTech = 'TECH_OPTICS', Cost = 65, Combat = 14, Moves = 3 WHERE Type = 'UNIT_CARTHAGINIAN_QUINQUEREME';

/* Dromon */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_BYZANTINE_DROMON';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_DROMON','TXT_KEY_UNIT_BYZANTINE_DROMON','UNIT_BYZANTINE_DROMON');
UPDATE Units SET Class ='UNITCLASS_DROMON', PrereqTech ='TECH_COMPASS', CombatClass ='UNITCOMBAT_NAVALMELEE', Cost = 80, Combat = 18, RangedCombat = 0, Range = 0, Moves = 3 WHERE Type = 'UNIT_BYZANTINE_DROMON';
DELETE FROM Unit_FreePromotions WHERE PromotionType ='PROMOTION_ONLY_DEFENSIVE' AND UnitType = 'UNIT_BYZANTINE_DROMON';

/* Galleon (Carrack) */
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType ='UNIT_PORTUGUESE_NAU';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_NAU','TXT_KEY_UNIT_PORTUGUESE_NAU','UNIT_PORTUGUESE_NAU');
UPDATE Units SET Class ='UNITCLASS_NAU', PrereqTech ='TECH_ASTRONOMY', CombatClass ='UNITCOMBAT_NAVALRANGED', Cost = 175, Combat = 18, RangedCombat = 16, Range = 1, Moves = 3 WHERE Type = 'UNIT_PORTUGUESE_NAU';
DELETE FROM Unit_FreePromotions WHERE (PromotionType ='PROMOTION_SELL_EXOTIC_GOODS' OR PromotionType ='PROMOTION_EXTRA_SIGHT_I' OR PromotionType ='PROMOTION_WITHDRAW_BEFORE_MELEE') AND UnitType = 'UNIT_PORTUGUESE_NAU';
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('PROMOTION_ONLY_DEFENSIVE','UNIT_PORTUGUESE_NAU');


/* Add Great General model from the Civil War scenario for Industrial and Modern Era */
UPDATE ArtDefine_UnitInfos SET Type ='ART_DEF_UNIT_GENERAL_POSTMODERN' WHERE Type = 'ART_DEF_UNIT_GENERAL_LATE';
UPDATE ArtDefine_UnitInfos SET Type ='ART_DEF_UNIT_GENERAL_INDUSTRIAL' WHERE Type = 'ART_DEF_UNIT_UNION_GENERAL';
UPDATE ArtDefine_UnitInfoMemberInfos SET UnitInfoType ='ART_DEF_UNIT_GENERAL_POSTMODERN' WHERE UnitInfoType = 'ART_DEF_UNIT_GENERAL_LATE';
UPDATE ArtDefine_UnitInfoMemberInfos SET UnitInfoType ='ART_DEF_UNIT_GENERAL_INDUSTRIAL' WHERE UnitInfoType = 'ART_DEF_UNIT_UNION_GENERAL';


-----------------------------------------------
-- Specific Promotions
-----------------------------------------------

INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_EXPLORER','PROMOTION_IGNORE_TERRAIN_COST');
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_CHARIOT','PROMOTION_ROUGH_TERRAIN_ENDS_TURN');

-----------------------------------------------
-- Upgrade Path
-----------------------------------------------

/* Recon */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_SCOUT','UNITCLASS_EXPLORER');

/* Mounted Melee */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CHARIOT','UNITCLASS_HORSEMAN');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_KNIGHT','UNITCLASS_LANCER');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_LANCER','UNITCLASS_CAVALRY');

/* Siege */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_HUN_BATTERING_RAM','UNITCLASS_SIEGE_TOWER');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ASSYRIAN_SIEGE_TOWER','UNITCLASS_CANNON');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ROMAN_BALLISTA','UNITCLASS_HWACHA');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_KOREAN_HWACHA','UNITCLASS_RIFLED_CANNON');

/* Guns */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MUSKETMAN','UNITCLASS_LINE_INFANTRY');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_LINE_INFANTRY','UNITCLASS_RIFLEMAN');

/* Ranged Warships */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_GALLEASS','UNITCLASS_SHIPOFTHELINE');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_PORTUGUESE_NAU','UNITCLASS_SHIPOFTHELINE');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ENGLISH_SHIPOFTHELINE','UNITCLASS_DREADNOUGHT');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_DREADNOUGHT','UNITCLASS_BATTLESHIP');

/* Recon ships */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_WAR_GALLEY','UNITCLASS_CARAVEL');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CARAVEL','UNITCLASS_ARMORED_CRUISER');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ARMORED_CRUISER','UNITCLASS_DESTROYER');

/* Melee ships */
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_TRIREME','UNITCLASS_QUINQUEREME');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CARTHAGINIAN_QUINQUEREME','UNITCLASS_DROMON');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_BYZANTINE_DROMON','UNITCLASS_IRONCLAD');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_IRONCLAD','UNITCLASS_DESTROYER');