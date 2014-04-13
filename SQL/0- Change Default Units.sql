/*
	R.E.D. Extended
	Default units modifications
	by Gedemon (2013)
		
*/

INSERT INTO Defines (Name, Value) VALUES ('RED_XTENDED', '1'); -- Allow other mods to know that R.E.D. Xtended has been loaded (if the Xtended mod is set as reference for the mod who want to check...)


/* Remove chariot archer (no valid upgrade tree) */
DELETE FROM UnitClasses WHERE Type = 'UNITCLASS_CHARIOT_ARCHER';
DELETE FROM Units WHERE Class = 'UNITCLASS_CHARIOT_ARCHER';


/* Make submarines invisible to all units... */
DELETE FROM Unit_FreePromotions WHERE PromotionType = 'PROMOTION_SEE_INVISIBLE_SUBMARINE';


/* Ironclad (Coastal) */
UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_UNION_IRONCLAD', PortraitIndex = '23', IconAtlas = 'RED_UNIT_ICONS', Combat = '40', Moves = '4' WHERE Type = 'UNIT_IRONCLAD';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_IRONCLAD';
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_IRONCLAD', 'PROMOTION_IRONCLAD');
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_IRONCLAD', 'PROMOTION_OCEAN_IMPASSABLE');
-- add promotion "ramming" against wooden ships (+100%)


/* Trireme */
UPDATE Units SET Moves = '3' WHERE Type = 'UNIT_TRIREME';


/* Galleas */
UPDATE Units SET Combat = 16, RangedCombat = 18  WHERE Type = 'UNIT_GALLEAS';


/* Caravel */
UPDATE Units SET Moves = '5', Combat = 16 WHERE Type = 'UNIT_CARAVEL';


/* Frigate (become Naval Melee) */
UPDATE Units SET CombatClass ='UNITCOMBAT_NAVALMELEE', Moves = '4', Combat = 28, RangedCombat = 0, Range = 0 WHERE Type = 'UNIT_FRIGATE';
DELETE FROM Unit_FreePromotions WHERE PromotionType ='PROMOTION_ONLY_DEFENSIVE' AND UnitType = 'UNIT_FRIGATE';


/* Submarine */
UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_SUBMARINE';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_SUBMARINE'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_SUBMARINE', 'PROMOTION_SUBMARINE');


/* Destroyer */
UPDATE Units SET Combat = 50 WHERE Type = 'UNIT_DESTROYER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_DESTROYER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_DESTROYER', 'PROMOTION_DESTROYER');


/* Battleship */
UPDATE Units SET Cost = 550 WHERE Type = 'UNIT_BATTLESHIP';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_BATTLESHIP'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_BATTLESHIP', 'PROMOTION_BATTLESHIP');


/* Carrier */
UPDATE Units SET Cost = 500 WHERE Type = 'UNIT_CARRIER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_CARRIER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_CARRIER', 'PROMOTION_CARRIER');


/* Missile Cruiser */
--UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER'; -- nop, just give vanilla model to missile destroyer and change default missile cruiser to russian battlecruiser
UPDATE ArtDefine_UnitMemberInfos SET Model = 'kirov.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';
UPDATE Units SET Cost = 650 WHERE Type = 'UNIT_MISSILE_CRUISER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MISSILE_CRUISER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_MISSILE_CRUISER', 'PROMOTION_MISSILE_CRUISER');


/* Nuclear Submarine */
UPDATE Units SET RangedCombat = 0, Cost = 700, Moves = '5' WHERE Type = 'UNIT_NUCLEAR_SUBMARINE';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_NUCLEAR_SUBMARINE'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_NUCLEAR_SUBMARINE', 'PROMOTION_NUCLEAR_SUBMARINE');


/* Landship - WWI Tank */
UPDATE Units SET Moves = '2' WHERE Type = 'UNIT_WWI_TANK';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_WWI_TANK'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_WWI_TANK', 'PROMOTION_WW1_TANK');


/* Infantry */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_INFANTRY'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_INFANTRY', 'PROMOTION_INFANTRY');


/* Howitzer */
UPDATE Units SET Cost = 300 WHERE Type = 'UNIT_ARTILLERY';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_ARTILLERY'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_ARTILLERY', 'PROMOTION_ARTILLERY');


/* AA Gun */
UPDATE Units SET Cost = 300 WHERE Type = 'UNIT_ANTI_AIRCRAFT_GUN';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_ANTI_AIRCRAFT_GUN'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_ANTI_AIRCRAFT_GUN', 'PROMOTION_ANTI_AIRCRAFT_GUN');
UPDATE Unit_Flavors SET Flavor = 10 WHERE UnitType = 'UNIT_ANTI_AIRCRAFT_GUN' AND FlavorType = 'FLAVOR_ANTIAIR';

/* Mobile SAM */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MOBILE_SAM'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_MOBILE_SAM', 'PROMOTION_MOBILE_SAM');
UPDATE Unit_Flavors SET Flavor = 15 WHERE UnitType = 'UNIT_MOBILE_SAM' AND FlavorType = 'FLAVOR_ANTIAIR';

/* Field Gun */
UPDATE Units SET CombatClass = 'UNITCOMBAT_SIEGE', Range = '2', Combat = '20', RangedCombat = '60' WHERE Type = 'UNIT_ANTI_TANK_GUN';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_ANTI_TANK_GUN'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_ANTI_TANK_GUN', 'PROMOTION_FIELD_GUN');


/* Tank */
UPDATE Units SET Combat = '80' WHERE Type = 'UNIT_TANK';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_TANK'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_TANK', 'PROMOTION_TANK');


/* Paratrooper */
UPDATE Units SET PortraitIndex = '26', IconAtlas = 'RED_UNIT_ICONS' WHERE Type = 'UNIT_PARATROOPER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_PARATROOPER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_PARATROOPER', 'PROMOTION_PARATROOPER');


/* Marines */
UPDATE Units SET Combat = '85' WHERE Type = 'UNIT_MARINE';

/* Gunship */
UPDATE Units SET Combat = '80' WHERE Type = 'UNIT_HELICOPTER_GUNSHIP';


/* Main Battle Tank */
--DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK'; -- own promotion class
--INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_MAIN_BATTLE_TANK', 'PROMOTION_TANK');


/* Modern Armor */
UPDATE Units SET Cost = '475', Combat = '125' WHERE Type = 'UNIT_MODERN_ARMOR';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MODERN_ARMOR'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_MODERN_ARMOR', 'PROMOTION_TANK');


/* Bomber */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_BOMBER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_BOMBER', 'PROMOTION_BOMBER');


/* WW1 Fighter */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_TRIPLANE'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_TRIPLANE', 'PROMOTION_WW1_FIGHTER');

/* Fighter */
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FIGHTER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_FIGHTER', 'PROMOTION_FIGHTER');


/* Jet Fighter */
UPDATE Units SET Range = '12', PortraitIndex = '19', IconAtlas = 'RED_UNIT_ICONS' WHERE Type = 'UNIT_JET_FIGHTER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_JET_FIGHTER'; -- own promotion class
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_JET_FIGHTER', 'PROMOTION_JET_FIGHTER');


/* Stealth Bomber */
UPDATE Units SET Range = '22', RangedCombat = '90', Cost = '800' WHERE Type = 'UNIT_STEALTH_BOMBER';