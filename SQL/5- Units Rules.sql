/*

	R.E.D. Xtended
	Units Rules
	by Gedemon (2013)

*/


-----------------------------------------------
-- Set non-embarked aircraft
-----------------------------------------------

INSERT INTO SpecialUnits (Type, Description, Valid, CityLoad)	VALUES ('SPECIALUNIT_LANDBASED', 'TXT_KEY_SPECIALUNIT_FIGHTER', 1, 1);

UPDATE Units SET Special ='SPECIALUNIT_LANDBASED' WHERE	Class = 'UNITCLASS_BOMBER'
												OR		Class = 'UNITCLASS_ATOMIC_BOMB'
												OR		Class = 'UNITCLASS_HEAVY_BOMBER'
												OR		Class = 'UNITCLASS_JET_BOMBER'
												OR		Class = 'UNITCLASS_WWI_BOMBER';

-----------------------------------------------
-- Unit Re-Class
-----------------------------------------------


/* Remove all Unique Units */
DELETE FROM Civilization_UnitClassOverrides WHERE CivilizationType <>'CIVILIZATION_MINOR' AND CivilizationType <>'CIVILIZATION_BARBARIAN' ;

/* Battering Ram */
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_BATTERING_RAM','TXT_KEY_UNIT_HUN_BATTERING_RAM','UNIT_HUN_BATTERING_RAM');
UPDATE Units SET Class ='UNITCLASS_BATTERING_RAM' WHERE Type = 'UNIT_HUN_BATTERING_RAM';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_BATTERING_RAM',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_BATTERING_RAM',NULL);

/* Ship of the Line */
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_SHIPOFTHELINE','TXT_KEY_UNIT_ENGLISH_SHIPOFTHELINE','UNIT_ENGLISH_SHIPOFTHELINE');
UPDATE Units SET Class ='UNITCLASS_SHIPOFTHELINE', PrereqTech = 'TECH_MILITARY_SCIENCE', Moves = '4', Cost = 250 WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_SHIPOFTHELINE',NULL);

/* Privateer & Sea Beggar (only for barbarians) */
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_CARAVEL','UNIT_PRIVATEER');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_FRIGATE','UNIT_DUTCH_SEA_BEGGAR');
UPDATE Units SET Class ='UNITCLASS_CARAVEL', Combat = 20 WHERE Type = 'UNIT_PRIVATEER';
UPDATE Units SET Class ='UNITCLASS_FRIGATE' WHERE Type = 'UNIT_DUTCH_SEA_BEGGAR';
DELETE FROM UnitClasses WHERE Type ='UNITCLASS_PRIVATEER';

/* Ballista */
DELETE FROM Unit_FreePromotions WHERE UnitType ='UNIT_ROMAN_BALLISTA' AND PromotionType ='PROMOTION_CITY_SIEGE';
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_ROMAN_BALLISTA','TXT_KEY_UNIT_ROMAN_BALLISTA','UNIT_ROMAN_BALLISTA');
UPDATE Units SET Class ='UNITCLASS_ROMAN_BALLISTA', CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_ROMAN_BALLISTA';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_ROMAN_BALLISTA',NULL);
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_ROMAN_BALLISTA','PROMOTION_CITY_PENALTY');

/* Siege Tower */
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_SIEGE_TOWER','TXT_KEY_UNIT_ASSYRIAN_SIEGE_TOWER','UNIT_ASSYRIAN_SIEGE_TOWER');
UPDATE Units SET Class ='UNITCLASS_SIEGE_TOWER', Cost = 95 WHERE Type = 'UNIT_ASSYRIAN_SIEGE_TOWER';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_SIEGE_TOWER',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_SIEGE_TOWER',NULL); 

/* HWACHA */
/*
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_HWACHA','TXT_KEY_UNIT_KOREAN_HWACHA','UNIT_KOREAN_HWACHA');
UPDATE Units SET Class ='UNITCLASS_HWACHA' WHERE Type = 'UNIT_KOREAN_HWACHA';
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_KOREAN_HWACHA','PROMOTION_CITY_PENALTY');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_HWACHA',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_HWACHA',NULL); 
*/

/* Quinquereme */
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_QUINQUEREME','TXT_KEY_UNIT_CARTHAGINIAN_QUINQUEREME','UNIT_CARTHAGINIAN_QUINQUEREME');
UPDATE Units SET Class ='UNITCLASS_QUINQUEREME', PrereqTech = 'TECH_OPTICS', Cost = 80, Combat = 15, Moves = 2 WHERE Type = 'UNIT_CARTHAGINIAN_QUINQUEREME';
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_BARBARIAN','UNITCLASS_QUINQUEREME',NULL);
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType) VALUES ('CIVILIZATION_MINOR','UNITCLASS_QUINQUEREME',NULL); 

/* Dromon *//*
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_DROMON','TXT_KEY_UNIT_BYZANTINE_DROMON','UNIT_BYZANTINE_DROMON');
UPDATE Units SET Class ='UNITCLASS_DROMON', PrereqTech ='TECH_COMPASS', CombatClass ='UNITCOMBAT_NAVALMELEE', Cost = 80, Combat = 18, RangedCombat = 0, Range = 0, Moves = 3 WHERE Type = 'UNIT_BYZANTINE_DROMON';
DELETE FROM Unit_FreePromotions WHERE PromotionType ='PROMOTION_ONLY_DEFENSIVE' AND UnitType = 'UNIT_BYZANTINE_DROMON';*/

/* Galleon (Carrack) */
INSERT INTO UnitClasses (Type, Description, DefaultUnit) VALUES ('UNITCLASS_NAU','TXT_KEY_UNIT_PORTUGUESE_NAU','UNIT_PORTUGUESE_NAU');
UPDATE Units SET Class ='UNITCLASS_NAU', PrereqTech ='TECH_ASTRONOMY', CombatClass ='UNITCOMBAT_NAVALRANGED', Cost = 175, Combat = 16, RangedCombat = 16, Range = 1, Moves = 3 WHERE Type = 'UNIT_PORTUGUESE_NAU';
DELETE FROM Unit_FreePromotions WHERE (PromotionType ='PROMOTION_SELL_EXOTIC_GOODS' OR PromotionType ='PROMOTION_EXTRA_SIGHT_I' OR PromotionType ='PROMOTION_WITHDRAW_BEFORE_MELEE') AND UnitType = 'UNIT_PORTUGUESE_NAU';
INSERT OR REPLACE INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_PORTUGUESE_NAU','PROMOTION_ONLY_DEFENSIVE');


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

/* Attack promotion against all units from domains Land (when embarked) or Sea for Submarines */
INSERT INTO UnitPromotions_UnitClasses (PromotionType, UnitClassType, Attack) SELECT 'PROMOTION_SUBMARINE', Class, 33 FROM Units WHERE Domain = 'DOMAIN_SEA' OR Domain = 'DOMAIN_LAND';
INSERT INTO UnitPromotions_UnitClasses (PromotionType, UnitClassType, Attack) SELECT 'PROMOTION_ATTACK_SUBMARINE', Class, 66 FROM Units WHERE Domain = 'DOMAIN_SEA' OR Domain = 'DOMAIN_LAND';

/* Attack promotion against Submarines for Destroyers and Missile Destroyers */
INSERT INTO UnitPromotions_UnitClasses (PromotionType, UnitClassType, Attack) SELECT 'PROMOTION_DESTROYER', Class, 100 FROM Units WHERE Class LIKE '%SUBMARINE%';
INSERT INTO UnitPromotions_UnitClasses (PromotionType, UnitClassType, Attack) SELECT 'PROMOTION_MISSILE_DESTROYER', Class, 100 FROM Units WHERE Class LIKE '%SUBMARINE%';

/* "Ramming" attack promotion for Ironclad against all wooden ships */
INSERT INTO UnitPromotions_UnitClasses (PromotionType, UnitClassType, Attack) SELECT 'PROMOTION_IRONCLAD', Class, 100 FROM Units WHERE Class = 'UNITCLASS_FRIGATE' OR Class = 'UNITCLASS_SHIPOFTHELINE' OR Class = 'UNITCLASS_CARAVEL' OR Class = 'UNITCLASS_TRIREME' OR Class = 'UNITCLASS_GALLEY' OR Class = 'UNITCLASS_QUINQUEREME' OR Class = 'UNITCLASS_GALLEASS' OR Class = 'UNITCLASS_NAU' OR Class = 'UNITCLASS_WAR_GALLEY';

/* Culverin are anti-personnel, not anti-city */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_CULVERIN' AND PromotionType = 'PROMOTION_CITY_SIEGE';


-----------------------------------------------
-- Resources
-----------------------------------------------

UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_COAL' WHERE UnitType = 'UNIT_ARMORED_CRUISER';
UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_COAL' WHERE UnitType = 'UNIT_DREADNOUGHT';
--INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) VALUES ('UNIT_NUCLEAR_CARRIER' ,'RESOURCE_URANIUM', 1); -- Wait... What about the nuclear submarine ?


-----------------------------------------------
-- Upgrade Path & Obsolete Techs
-----------------------------------------------

/* Recon */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_SCOUT'
	OR	UnitType = 'UNIT_EXPLORER'
	OR	UnitType = 'UNIT_CAVALRY_SCOUT'
	OR	UnitType = 'UNIT_LIGHT_TANK'
	OR	UnitType = 'UNIT_SPECIAL_FORCES';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_SCOUT','UNITCLASS_EXPLORER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_EXPLORER','UNITCLASS_CAVALRY_SCOUT');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CAVALRY_SCOUT','UNITCLASS_LIGHT_TANK');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_LIGHT_TANK','UNITCLASS_SPECIAL_FORCES');

UPDATE Units SET ObsoleteTech =
(SELECT PrereqTech FROM Units WHERE (Units.Type==(SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type==(SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType== 'UNIT_SCOUT')))) WHERE Type == 'UNIT_SCOUT';
UPDATE Units SET ObsoleteTech =
(SELECT PrereqTech FROM Units WHERE (Units.Type==(SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type==(SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType== 'UNIT_EXPLORER')))) WHERE Type == 'UNIT_EXPLORER';
UPDATE Units SET ObsoleteTech =
(SELECT PrereqTech FROM Units WHERE (Units.Type==(SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type==(SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType== 'UNIT_CAVALRY_SCOUT')))) WHERE Type == 'UNIT_CAVALRY_SCOUT';
UPDATE Units SET ObsoleteTech =
(SELECT PrereqTech FROM Units WHERE (Units.Type==(SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type==(SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType== 'UNIT_LIGHT_TANK')))) WHERE Type == 'UNIT_LIGHT_TANK';


/* Mounted Melee */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_CHARIOT'
	OR	UnitType = 'UNIT_KNIGHT'
	OR	UnitType = 'UNIT_LANCER'
	OR	UnitType = 'UNIT_CAVALRY';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CHARIOT','UNITCLASS_HORSEMAN');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_KNIGHT','UNITCLASS_LANCER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_LANCER','UNITCLASS_CAVALRY');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CAVALRY','UNITCLASS_TANK');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CHARIOT') ))) WHERE Type == 'UNIT_CHARIOT';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_KNIGHT') ))) WHERE Type == 'UNIT_KNIGHT';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_LANCER') ))) WHERE Type == 'UNIT_LANCER';


/* Ranged */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_CROSSBOWMAN'
	OR	UnitType = 'UNIT_CULVERIN'
	OR	UnitType = 'UNIT_VOLLEY_GUN';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CROSSBOWMAN','UNITCLASS_CULVERIN');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CULVERIN','UNITCLASS_VOLLEY_GUN');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_VOLLEY_GUN','UNITCLASS_GATLINGGUN');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CROSSBOWMAN') ))) WHERE Type == 'UNIT_CROSSBOWMAN';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CULVERIN') ))) WHERE Type == 'UNIT_CULVERIN';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_VOLLEY_GUN') ))) WHERE Type == 'UNIT_VOLLEY_GUN';


/* Siege */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_HUN_BATTERING_RAM'
	OR	UnitType = 'UNIT_ASSYRIAN_SIEGE_TOWER'
	OR	UnitType = 'UNIT_ROMAN_BALLISTA'
	OR	UnitType = 'UNIT_KOREAN_HWACHA'
	OR	UnitType = 'UNIT_TREBUCHET'
	OR	UnitType = 'UNIT_BOMBARD'
	OR	UnitType = 'UNIT_ANTI_TANK_GUN'
	OR	UnitType = 'UNIT_RIFLED_CANNON'
	OR	UnitType = 'UNIT_CANNON';


/* make HWACHA conditional with KOREA DLC ?
--INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ROMAN_BALLISTA','UNITCLASS_HWACHA');
--INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_KOREAN_HWACHA','UNITCLASS_RIFLED_CANNON');
*/
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_HUN_BATTERING_RAM','UNITCLASS_SIEGE_TOWER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ASSYRIAN_SIEGE_TOWER','UNITCLASS_BOMBARD');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_BOMBARD','UNITCLASS_CANNON');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ROMAN_BALLISTA','UNITCLASS_BOMBARD');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CANNON','UNITCLASS_RIFLED_CANNON');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_RIFLED_CANNON','UNITCLASS_ARTILLERY');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ANTI_TANK_GUN','UNITCLASS_ROCKET_ARTILLERY');
INSERT OR REPLACE INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_TREBUCHET','UNITCLASS_BOMBARD');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_HUN_BATTERING_RAM') ))) WHERE Type == 'UNIT_HUN_BATTERING_RAM';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ASSYRIAN_SIEGE_TOWER') ))) WHERE Type == 'UNIT_ASSYRIAN_SIEGE_TOWER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ROMAN_BALLISTA') ))) WHERE Type ==	'UNIT_ROMAN_BALLISTA';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_KOREAN_HWACHA') ))) WHERE Type == 'UNIT_KOREAN_HWACHA';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ANTI_TANK_GUN') ))) WHERE Type == 'UNIT_ANTI_TANK_GUN';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_BOMBARD') ))) WHERE Type == 'UNIT_BOMBARD';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CANNON') ))) WHERE Type == 'UNIT_CANNON';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_RIFLED_CANNON') ))) WHERE Type == 'UNIT_RIFLED_CANNON';
UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_TREBUCHET') ))) WHERE Type == 'UNIT_TREBUCHET';


/* Guns/Melee */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_MUSKETMAN'
	OR	UnitType = 'UNIT_LINE_INFANTRY'
	OR	UnitType = 'UNIT_INFANTRY'
	OR	UnitType = 'UNIT_GERMAN_LANDSKNECHT'
	OR	UnitType = 'UNIT_PIKEMAN'
	OR	UnitType = 'UNIT_MOTORIZED_INFANTRY'
	OR	UnitType = 'UNIT_MECHANIZED_INFANTRY';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MUSKETMAN','UNITCLASS_LINE_INFANTRY');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_LINE_INFANTRY','UNITCLASS_RIFLEMAN');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_INFANTRY','UNITCLASS_MARINE');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_PIKEMAN','UNITCLASS_LINE_INFANTRY');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_GERMAN_LANDSKNECHT','UNITCLASS_LINE_INFANTRY');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MOTORIZED_INFANTRY','UNITCLASS_MECHANIZED_INFANTRY');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MECHANIZED_INFANTRY','UNITCLASS_MECH');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MARINE','UNITCLASS_XCOM_SQUAD');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_MUSKETMAN') ))) WHERE Type == 'UNIT_MUSKETMAN';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_LINE_INFANTRY') ))) WHERE Type == 'UNIT_LINE_INFANTRY';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_INFANTRY') ))) WHERE Type == 'UNIT_INFANTRY';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_PIKEMAN') ))) WHERE Type == 'UNIT_PIKEMAN';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_MOTORIZED_INFANTRY') ))) WHERE Type == 'UNIT_MOTORIZED_INFANTRY';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_MECHANIZED_INFANTRY') ))) WHERE Type == 'UNIT_MECHANIZED_INFANTRY';

 
/* Armor */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_TANK'
	OR	UnitType = 'MAIN_BATTLE_TANK';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_TANK','UNITCLASS_MAIN_BATTLE_TANK');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_MAIN_BATTLE_TANK','UNITCLASS_MODERN_ARMOR');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_TANK') ))) WHERE Type == 'UNIT_TANK';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_MAIN_BATTLE_TANK') ))) WHERE Type == 'UNIT_MAIN_BATTLE_TANK';


/* Ranged Warships */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_GALLEASS'
	OR	UnitType = 'UNIT_PORTUGUESE_NAU'
	OR	UnitType = 'UNIT_ENGLISH_SHIPOFTHELINE'
	OR	UnitType = 'UNIT_DREADNOUGHT';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_GALLEASS','UNITCLASS_SHIPOFTHELINE');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_PORTUGUESE_NAU','UNITCLASS_SHIPOFTHELINE');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ENGLISH_SHIPOFTHELINE','UNITCLASS_DREADNOUGHT');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_DREADNOUGHT','UNITCLASS_BATTLESHIP');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_BATTLESHIP','UNITCLASS_MISSILE_CRUISER');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_GALLEASS') ))) WHERE Type == 'UNIT_GALLEASS';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_PORTUGUESE_NAU') ))) WHERE Type == 'UNIT_PORTUGUESE_NAU';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ENGLISH_SHIPOFTHELINE') ))) WHERE Type == 'UNIT_ENGLISH_SHIPOFTHELINE';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_DREADNOUGHT') ))) WHERE Type == 'UNIT_DREADNOUGHT';


/* Recon ships */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_WAR_GALLEY'
	OR	UnitType = 'UNIT_CARAVEL'
	OR	UnitType = 'UNIT_ARMORED_CRUISER';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_WAR_GALLEY','UNITCLASS_CARAVEL');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CARAVEL','UNITCLASS_ARMORED_CRUISER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ARMORED_CRUISER','UNITCLASS_DESTROYER');

UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_WAR_GALLEY') ))) WHERE Type == 'UNIT_WAR_GALLEY';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CARAVEL') ))) WHERE Type == 'UNIT_CARAVEL';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ARMORED_CRUISER') ))) WHERE Type == 'UNIT_ARMORED_CRUISER';
 

/* Submarines */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_SUBMARINE';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_SUBMARINE','UNITCLASS_ATTACK_SUBMARINE');

UPDATE Units SET ObsoleteTech = 
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_SUBMARINE') ))) WHERE Type == 'UNIT_SUBMARINE';


/* Melee ships */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_TRIREME'
	OR	UnitType = 'UNIT_CARTHAGINIAN_QUINQUEREME'
	OR	UnitType = 'UNIT_FRIGATE'
	OR	UnitType = 'UNIT_IRONCLAD'
	OR	UnitType = 'UNIT_CARRIER'
	OR	UnitType = 'UNIT_DESTROYER';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_TRIREME','UNITCLASS_QUINQUEREME');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CARTHAGINIAN_QUINQUEREME','UNITCLASS_FRIGATE');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_FRIGATE','UNIT_ARMORED_CRUISER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_IRONCLAD','UNITCLASS_DESTROYER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_CARRIER','UNITCLASS_NUCLEAR_CARRIER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_DESTROYER','UNITCLASS_MISSILE_DESTROYER');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CARTHAGINIAN_QUINQUEREME') ))) WHERE Type == 'UNIT_TRIREME'; -- trireme obsolete at the same tech as quinquereme
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CARTHAGINIAN_QUINQUEREME') ))) WHERE Type == 'UNIT_CARTHAGINIAN_QUINQUEREME';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_BYZANTINE_DROMON') ))) WHERE Type == 'UNIT_BYZANTINE_DROMON';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_IRONCLAD') ))) WHERE Type == 'UNIT_IRONCLAD';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_CARRIER') ))) WHERE Type == 'UNIT_CARRIER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_DESTROYER') ))) WHERE Type == 'UNIT_DESTROYER';
 

/* Aircraft */
DELETE FROM Unit_ClassUpgrades WHERE
		UnitType = 'UNIT_BOMBER'
	OR	UnitType = 'UNIT_HEAVY_BOMBER'
	OR	UnitType = 'UNIT_JET_BOMBER'
	OR	UnitType = 'UNIT_FIGHTER'
	OR	UnitType = 'UNIT_EARLY_JET_FIGHTER'
	OR	UnitType = 'UNIT_JET_FIGHTER'
	OR	UnitType = 'UNIT_ATTACK_AIRCRAFT'
	OR	UnitType = 'UNIT_STRIKE_FIGHTER';

INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_BOMBER','UNITCLASS_JET_BOMBER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_HEAVY_BOMBER','UNITCLASS_JET_BOMBER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_JET_BOMBER','UNITCLASS_STEALTH_BOMBER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_FIGHTER','UNITCLASS_EARLY_JET_FIGHTER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_EARLY_JET_FIGHTER','UNITCLASS_JET_FIGHTER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_JET_FIGHTER','UNITCLASS_STEALTH_FIGHTER');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_ATTACK_AIRCRAFT','UNITCLASS_JET_ATTACK_AIRCRAFT');
INSERT INTO Unit_ClassUpgrades (UnitType, UnitClassType) VALUES ('UNIT_STRIKE_FIGHTER','UNITCLASS_STEALTH_FIGHTER');

UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_BOMBER') ))) WHERE Type == 'UNIT_BOMBER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_HEAVY_BOMBER') ))) WHERE Type == 'UNIT_HEAVY_BOMBER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_JET_BOMBER') ))) WHERE Type == 'UNIT_JET_BOMBER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_FIGHTER') ))) WHERE Type == 'UNIT_FIGHTER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_EARLY_JET_FIGHTER') ))) WHERE Type == 'UNIT_EARLY_JET_FIGHTER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_JET_FIGHTER') ))) WHERE Type == 'UNIT_JET_FIGHTER';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_ATTACK_AIRCRAFT') ))) WHERE Type == 'UNIT_ATTACK_AIRCRAFT';
UPDATE Units SET ObsoleteTech =
 (SELECT PrereqTech FROM Units WHERE (Units.Type == (SELECT DefaultUnit FROM UnitClasses WHERE UnitClasses.Type == (SELECT UnitClassType FROM Unit_ClassUpgrades WHERE UnitType == 'UNIT_STRIKE_FIGHTER') ))) WHERE Type == 'UNIT_STRIKE_FIGHTER';
