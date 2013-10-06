/*
	R.E.D. Extended
	Default units modifications
	by Gedemon (2013)
		
*/

/* Artillery (Field Gun) */
UPDATE Units SET CombatClass = 'UNITCOMBAT_SIEGE', Range = '2', Combat = '16', RangedCombat = '60' WHERE Type = 'UNIT_ANTI_TANK_GUN';

/* Ironclad (Coastal) */
UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_UNION_IRONCLAD', Moves = '4' WHERE Type = 'UNIT_IRONCLAD';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_IRONCLAD' AND PromotionType = 'PROMOTION_STEAM_POWERED';
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES ('UNIT_IRONCLAD', 'PROMOTION_OCEAN_IMPASSABLE');

/* Trireme */
UPDATE Units SET Moves = '3' WHERE Type = 'UNIT_TRIREME';

/* Caravel */
UPDATE Units SET Combat = 16 WHERE Type = 'UNIT_CARAVEL';

/* Frigate (become Naval Melee) */
UPDATE Units SET CombatClass ='UNITCOMBAT_NAVALMELEE', Combat = 28, RangedCombat = 0, Range = 0 WHERE Type = 'UNIT_FRIGATE';
DELETE FROM Unit_FreePromotions WHERE PromotionType ='PROMOTION_ONLY_DEFENSIVE' AND UnitType = 'UNIT_FRIGATE';