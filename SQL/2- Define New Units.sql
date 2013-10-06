/*

	R.E.D. WWII Edition
	Class template units configuration file
	by Gedemon (2013)

	
	Text are searched in corresponding tables based on UnitKey.
	So those unit initialization files should be loaded after all other tables are filled.
*/


-----------------------------------------------
-- Fill the initialization table
-----------------------------------------------

INSERT INTO UnitConfiguration
	(		UnitKey,			TechKey,			Var,	fxsxml,							Template,				ArtTemplate,			Nb,		Form,				Scl,	CbtCl,			Cbt,	Rgcbt,	Cst,	Mvt,	Imb,	Rng,	Flag,	Icon,	IcAtl,					FlagAtl,							Sv,				Embark  	)
--								Technology					Model file																		Figures						Scale							RangedCombat	Move			Range			IconIndex						FlagAtlas											Embarked 
--		Key Name									Variation								Template Unit			Art Template					Formation					Combat Class	Combat			Cost			Immobile		FlagIndex		IconAtlas													SV Icon

SELECT	'WAR_GALLEY',			'POTTERY',			'',		'battle_galley',				'GALLEY',				'GALLEY',				3,		'Flotilla',			0.06,	NULL,			7,		NULL,	 30,	4,		NULL,	NULL,	NULL,	0,		'WAR_GALLEY_ATLAS',		NULL,								NULL,			NULL	UNION ALL

SELECT	'CHARIOT',				'THE_WHEEL',		'',		'Chariot_France',				'HORSEMAN',				'HORSEMAN',				3,		'ChariotElephant',	0.075,	NULL,			10,		NULL,	 28,	4,		NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL

SELECT	'EXPLORER',				'COMPASS',			'',		'conquistador_musket_1',		'MUSKETMAN',			'U_AMERICAN_MINUTEMAN',	1,		'Scout',			NULL,	'RECON',		12,		NULL,	175,	NULL,	NULL,	NULL,	1,		NULL,	NULL,					'DLC02_UNIT_FLAG_ATLAS',			NULL,			NULL	UNION ALL
SELECT	'EXPLORER',				NULL,				'_V2',	'conquistador_musket_2',		'MUSKETMAN',			'U_AMERICAN_MINUTEMAN',	2,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'EXPLORER',				NULL,				'_V3',	'conquistador_musket_3',		'MUSKETMAN',			'U_AMERICAN_MINUTEMAN',	2,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'EXPLORER',				NULL,				'_V4',	'conquistador_musket_4',		'MUSKETMAN',			'U_AMERICAN_MINUTEMAN',	1,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL

--SELECT	'GALLEON',				'ASTRONOMY',		'',		'U_Spanish_Galleon',			'ENGLISH_SHIPOFTHELINE','U_SPANISH_GALLEON',	NULL,	NULL,				0.10,	NULL,			18,		17,		175,	3,		NULL,	NULL,	NULL,	0,		'WAR_GALLEY_ATLAS',		NULL,								NULL,			NULL	UNION ALL

SELECT	'LINE_INFANTRY',		'CHEMISTRY',		'',		'civ5_genmm1',					'RIFLEMAN',				'RIFLEMAN',				3,		NULL,				NULL,	NULL,			28,		NULL,	185,	NULL,	NULL,	NULL,	8,		1,		'HARALD_UNIT_ATLAS',	'EXPANSION_UNIT_FLAG_ATLAS',		NULL,			NULL	UNION ALL
SELECT	'LINE_INFANTRY',		NULL,				'_V2',	'civ5_genmm2',					'RIFLEMAN',				'RIFLEMAN',				4,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'LINE_INFANTRY',		NULL,				'_V3',	'civ5_genmm3',					'RIFLEMAN',				'RIFLEMAN',				3,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'LINE_INFANTRY',		NULL,				'_V1',	'civ5_genmm1',					'RIFLEMAN',				'RIFLEMAN',				3,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'LINE_INFANTRY',		NULL,				'_V2',	'civ5_genmm2',					'RIFLEMAN',				'RIFLEMAN',				3,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'LINE_INFANTRY',		NULL,				'_V3',	'civ5_genmm3',					'RIFLEMAN',				'RIFLEMAN',				3,		NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL

SELECT	'RIFLED_CANNON',		'RIFLING',			'',		'Confederate_Artillery_Parrott','CANNON',				'CANNON',				NULL,	NULL,				NULL,	NULL,			17,		24,		210,	NULL,	NULL,	NULL,	2,		4,		'CIVIL_WAR_UNIT_ATLAS',	'CIVIL_WAR_UNIT_FLAG_ATLAS',		NULL,			NULL	UNION ALL
SELECT	'ARMORED_CRUISER',		'STEAM_POWER',		'',		'Ironclad',						'FRIGATE',				'IRONCLAD',				NULL,	NULL,				NULL,	NULL,			40,		35,		300,	5,		NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL

/* need to change stats below ! */
SELECT	'SPECIAL_FORCES',		'SATELLITES',		'',		'Paratrooper',					'PARATROOPER',			'PARATROOPER',			6,		'Scout',			NULL,	NULL,			32,		NULL,	340,	3,		NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'MOTORIZED_INFANTRY',	'COMBINED_ARMS',	'',		'M3A1HTGreenTC',				'MECHANIZED_INFANTRY',	'MECHANIZEDINFANTRY',	NULL,	NULL,				0.12,	NULL,			40,		NULL,	300,	4,		NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'LIGHT_TANK',			'COMBINED_ARMS',	'',		'LightTank_Generic',			'TANK',					'TANK',					NULL,	NULL,				NULL,	NULL,			40,		NULL,	300,	5,		NULL,	NULL,	NULL,	9,		'RED_UNIT_ICONS',		NULL,								NULL,			NULL	UNION ALL
SELECT	'MAIN_BATTLE_TANK',		'MOBILE_TACTICS',	'',		'T55GreenTC',					'TANK',					'TANK',					NULL,	NULL,				0.10,	NULL,			85,		NULL,	420,	6,		NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'EARLY_JET_FIGHTER',	'ROCKETRY',			'',		'MiG-15tc',						'FIGHTER',				'FIGHTER',				NULL,	NULL,				NULL,	NULL,			NULL,	70,		450,	NULL,	NULL,	12,		NULL,	NULL,	NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'ATTACK_AIRCRAFT',		'RADAR',			'',		'AttackAircraft_Generic',		'BOMBER',				'BOMBER',				6,		'FighterDiamond',	0.07,	NULL,			NULL,	30,		350,	NULL,	NULL,	8,		NULL,	5,		'RED_UNIT_ICONS',		NULL,								NULL,			NULL	UNION ALL
SELECT	'HEAVY_BOMBER',			'RADAR',			'',		'Bomber_Generic',				'BOMBER',				'BOMBER',				NULL,	NULL,				NULL,	NULL,			NULL,	70,		500,	NULL,	NULL,	16,		NULL,	42,		NULL,					NULL,								NULL,			NULL	UNION ALL
SELECT	'CRUISER',				'ELECTRONICS',		'',		'Cruiser_Generic',				'BATTLESHIP',			'BATTLESHIP',			NULL,	NULL,				0.11,	NULL,			45,		30,		435,	6,		NULL,	NULL,	NULL,	10,		'RED_UNIT_ICONS',		NULL,								NULL,			NULL	UNION ALL
SELECT	'DREADNOUGHT',			'BALLISTICS',		'',		'Dreadnought_Generic',			'BATTLESHIP',			'BATTLESHIP',			NULL,	NULL,				0.10,	NULL,			50,		36,		525,	4,		NULL,	NULL,	NULL,	10,		NULL,					NULL,								NULL,			NULL	UNION ALL

SELECT	'END_OF_INSERT',		NULL,				'',		NULL,							NULL,					NULL,					NULL,	NULL,				NULL,	NULL,			NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,					NULL,								NULL,			NULL;


-----------------------------------------------
-- Remove "END_OF_INSERT" entry 
-----------------------------------------------

DELETE from UnitConfiguration WHERE UnitKey ='END_OF_INSERT';


-----------------------------------------------
-- Make ArtDefine_UnitMemberCombats 
-----------------------------------------------

-- Works for single or multiple figures, with Var being '' in case of single (or first) figure
INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT	'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, 
			MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats JOIN UnitConfiguration ON  (UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || UnitConfiguration.ArtTemplate);
	

-----------------------------------------------
-- Make ArtDefine_UnitMemberCombatWeapons 
-----------------------------------------------

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag, MissTargetSlopRadius)
	SELECT 'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, "Index", SubIndex, ArtDefine_UnitMemberCombatWeapons.ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag, MissTargetSlopRadius
	FROM ArtDefine_UnitMemberCombatWeapons JOIN UnitConfiguration ON (UnitMemberType = 'ART_DEF_UNIT_MEMBER_' || UnitConfiguration.ArtTemplate);
		
	
-----------------------------------------------
-- Make ArtDefine_UnitMemberInfos 
-----------------------------------------------

-- Use default scale
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, Scale, ZOffset, Domain, 
			UnitConfiguration.fxsxml || '.fxsxml', MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos JOIN UnitConfiguration ON (Type = 'ART_DEF_UNIT_MEMBER_' || UnitConfiguration.ArtTemplate AND UnitConfiguration.Scl ISNULL AND UnitConfiguration.fxsxml NOT NULL);

-- Use custom scale
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, Scl, ZOffset, Domain, 
			UnitConfiguration.fxsxml || '.fxsxml', MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos JOIN UnitConfiguration ON (Type = 'ART_DEF_UNIT_MEMBER_' || UnitConfiguration.ArtTemplate AND UnitConfiguration.Scl NOT NULL AND UnitConfiguration.fxsxml NOT NULL);
	
-- Use template fsxml
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, Scale, ZOffset, Domain, 
			Model, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos JOIN UnitConfiguration ON (Type = 'ART_DEF_UNIT_MEMBER_' || UnitConfiguration.ArtTemplate AND UnitConfiguration.fxsxml ISNULL);



-----------------------------------------------
-- Make ArtDefine_UnitInfoMemberInfos 
-----------------------------------------------

-- Remove previous entries, if any
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType IN (SELECT 'ART_DEF_UNIT_' || UnitKey FROM UnitConfiguration);

-- Use default number of member
INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	'ART_DEF_UNIT_' || UnitKey, 'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, NumMembers
	FROM ArtDefine_UnitInfoMemberInfos JOIN UnitConfiguration ON (UnitConfiguration.Nb ISNULL AND UnitInfoType = 'ART_DEF_UNIT_' || UnitConfiguration.Template);

-- Use custom number of member
INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	'ART_DEF_UNIT_' || UnitKey, 'ART_DEF_UNIT_MEMBER_' || UnitKey || Var, Nb
	FROM UnitConfiguration WHERE (UnitConfiguration.Nb NOT NULL);
	


---------------------------------------------------------
-- Keep only the Statistic entry in config table for each unit type
---------------------------------------------------------

DELETE FROM UnitConfiguration
	WHERE   Var <> '';
	

---------------------------------------------------------
-- Make ArtDefine_UnitInfos from remaining unique entries
---------------------------------------------------------

-- Use default formation
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type,DamageStates,Formation)
	SELECT	'ART_DEF_UNIT_' || UnitKey, DamageStates, Formation
	FROM ArtDefine_UnitInfos JOIN UnitConfiguration
		ON 'ART_DEF_UNIT_' || UnitConfiguration.Template = Type AND UnitConfiguration.Form ISNULL;

-- Use custom formation
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type,DamageStates,Formation)
	SELECT	'ART_DEF_UNIT_' || UnitKey, DamageStates, Form
	FROM ArtDefine_UnitInfos JOIN UnitConfiguration 
		ON 'ART_DEF_UNIT_' || UnitConfiguration.Template = Type AND UnitConfiguration.Form NOT NULL;


---------------------------------------------------------
-- Unit statistics: First copy all value from base template
---------------------------------------------------------

INSERT INTO Units (Type, Description, Civilopedia, Strategy, Help, Requirements,
					 Combat, RangedCombat, Cost, Moves, Immobile, Range, BaseSightRange, Class, Special, Capture, CombatClass, Domain, CivilianAttackPriority, DefaultUnitAI, Food, NoBadGoodies, RivalTerritory, MilitarySupport, MilitaryProduction, Pillage, Found, FoundAbroad, CultureBombRadius, GoldenAgeTurns, IgnoreBuildingDefense, PrereqResources, Mechanized, Suicide, CaptureWhileEmbarked, PrereqTech, ObsoleteTech, GoodyHutUpgradeUnitClass, HurryCostModifier, AdvancedStartCost, MinAreaSize, AirUnitCap, NukeDamageLevel, WorkRate, NumFreeTechs, RushBuilding, BaseHurry, HurryMultiplier, BaseGold, NumGoldPerEra, SpreadReligion, CombatLimit, RangeAttackOnlyInDomain, RangeAttackIgnoreLOS, RangedCombatLimit, XPValueAttack, XPValueDefense, SpecialCargo, DomainCargo, Conscription, ExtraMaintenanceCost, NoMaintenance, Unhappiness,
					 UnitArtInfo, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation, ProjectPrereq, SpaceshipProject, LeaderPromotion, LeaderExperience, DontShowYields, ShowInPedia, MoveRate, 
					 UnitFlagIconOffset, PortraitIndex, IconAtlas, UnitFlagAtlas)
	SELECT	'UNIT_' || UnitKey, 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey, Civilopedia, Strategy, Help, Requirements,
					 Combat, RangedCombat, Cost, Moves, Immobile, Range, BaseSightRange, Class, Special, Capture, CombatClass, Domain, CivilianAttackPriority, DefaultUnitAI, Food, NoBadGoodies, RivalTerritory, MilitarySupport, MilitaryProduction, Pillage, Found, FoundAbroad, CultureBombRadius, GoldenAgeTurns, IgnoreBuildingDefense, PrereqResources, Mechanized, Suicide, CaptureWhileEmbarked, PrereqTech, ObsoleteTech, GoodyHutUpgradeUnitClass, HurryCostModifier, AdvancedStartCost, MinAreaSize, AirUnitCap, NukeDamageLevel, WorkRate, NumFreeTechs, RushBuilding, BaseHurry, HurryMultiplier, BaseGold, NumGoldPerEra, SpreadReligion, CombatLimit, RangeAttackOnlyInDomain, RangeAttackIgnoreLOS, RangedCombatLimit, XPValueAttack, XPValueDefense, SpecialCargo, DomainCargo, Conscription, ExtraMaintenanceCost, NoMaintenance, Unhappiness,
			'ART_DEF_UNIT_' || UnitKey, UnitArtInfoCulturalVariation, UnitArtInfoEraVariation, ProjectPrereq, SpaceshipProject, LeaderPromotion, LeaderExperience, DontShowYields, ShowInPedia, MoveRate, 
					 UnitFlagIconOffset, PortraitIndex, IconAtlas, UnitFlagAtlas
	FROM Units JOIN UnitConfiguration ON  (Type = 'UNIT_' || UnitConfiguration.Template);


---------------------------------------------------------
-- Then update each value that is specific to the new template
---------------------------------------------------------

-- Template units define their own classes...
INSERT INTO UnitClasses (Type, Description, MaxGlobalInstances, MaxTeamInstances, MaxPlayerInstances, InstanceCostModifier, DefaultUnit)
	SELECT 'UNITCLASS_' || UnitKey, Description, MaxGlobalInstances, MaxTeamInstances, MaxPlayerInstances, InstanceCostModifier, 'UNIT_' || UnitKey
	FROM UnitClasses JOIN UnitConfiguration ON (Type = 'UNITCLASS_' || UnitConfiguration.Template);
			
UPDATE UnitClasses SET Description = (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_' || UnitClasses.DefaultUnit = Tag)
			WHERE EXISTS	   (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_' || UnitClasses.DefaultUnit = Tag);
			
UPDATE UnitClasses SET Description = (SELECT Name FROM UnitConfiguration WHERE 'UNITCLASS_' || UnitConfiguration.UnitKey = UnitClasses.Type)
			WHERE NOT EXISTS   (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_' || UnitClasses.DefaultUnit = Tag)
			AND EXISTS (SELECT Name FROM UnitConfiguration WHERE 'UNITCLASS_' || UnitConfiguration.UnitKey = UnitClasses.Type AND Name NOT NULL);
	
-- Class
UPDATE Units SET Class = (SELECT 'UNITCLASS_' || UnitKey FROM UnitConfiguration WHERE 'UNIT_' || UnitKey = Type)
			WHERE EXISTS (SELECT 'UNITCLASS_' || UnitKey FROM UnitConfiguration WHERE 'UNIT_' || UnitKey = Type) ;
			
-- Technology
UPDATE Units SET PrereqTech = (SELECT 'TECH_' || TechKey FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.TechKey NOT NULL)
			WHERE EXISTS  (SELECT TechKey FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.TechKey NOT NULL);

-- Combat Class
UPDATE Units SET CombatClass = (SELECT 'UNITCOMBAT_' || CbtCl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.CbtCl NOT NULL)
			WHERE EXISTS  (SELECT 'UNITCOMBAT_' || CbtCl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.CbtCl NOT NULL);

-- Combat
UPDATE Units SET Combat = (SELECT Cbt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Cbt NOT NULL)
			WHERE EXISTS  (SELECT Cbt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Cbt NOT NULL);

-- Ranged Combat
UPDATE Units SET RangedCombat = (SELECT Rgcbt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Rgcbt NOT NULL)
			WHERE EXISTS        (SELECT Rgcbt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Rgcbt NOT NULL);

-- Cost
UPDATE Units SET Cost =  (SELECT Cst FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Cst NOT NULL)
			WHERE EXISTS (SELECT Cst FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Cst NOT NULL);

-- Moves
UPDATE Units SET Moves = (SELECT Mvt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Mvt NOT NULL)
			WHERE EXISTS (SELECT Mvt FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Mvt NOT NULL);

-- Immobile
UPDATE Units SET Immobile = (SELECT Imb FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Imb NOT NULL)
			WHERE EXISTS    (SELECT Imb FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Imb NOT NULL);
				
-- Range
UPDATE Units SET Range = (SELECT Rng FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Rng NOT NULL)
			WHERE EXISTS (SELECT Rng FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Rng NOT NULL);
					
-- UnitFlagIconOffset
UPDATE Units SET UnitFlagIconOffset = (SELECT Flag FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Flag NOT NULL)
			WHERE EXISTS			  (SELECT Flag FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Flag NOT NULL);
					
-- PortraitIndex
UPDATE Units SET PortraitIndex = (SELECT Icon FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Icon NOT NULL)
			WHERE EXISTS		 (SELECT Icon FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.Icon NOT NULL);
					
-- IconAtlas
UPDATE Units SET IconAtlas = (SELECT IcAtl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.IcAtl NOT NULL)
			WHERE EXISTS	 (SELECT IcAtl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.IcAtl NOT NULL);
					
-- UnitFlagAtlas
UPDATE Units SET UnitFlagAtlas = (SELECT FlagAtl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.FlagAtl NOT NULL)
			WHERE EXISTS		 (SELECT FlagAtl FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND UnitConfiguration.FlagAtl NOT NULL);

-- Description
/*
UPDATE Units SET Description = (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			WHERE EXISTS	   (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type);
			
UPDATE Units SET Description = (SELECT Name FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			WHERE NOT EXISTS   (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			AND EXISTS (SELECT Name FROM UnitConfiguration WHERE 'UNIT_' || UnitConfiguration.UnitKey = Units.Type AND Name NOT NULL);
			

-- Civilopedia
UPDATE Units SET Civilopedia = (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_PEDIA_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			WHERE EXISTS	   (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_PEDIA_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type);

-- Strategy
UPDATE Units SET Strategy = (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey || '_STRATEGY'  = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			WHERE EXISTS	(SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_' || UnitConfiguration.UnitKey || '_STRATEGY'  = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type);

-- Help
UPDATE Units SET Help =  (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_HELP_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type)
			WHERE EXISTS (SELECT Tag FROM Language_en_US WHERE 'TXT_KEY_UNIT_HELP_' || UnitConfiguration.UnitKey = Tag AND 'UNIT_' || UnitConfiguration.UnitKey = Units.Type);
*/

---------------------------------------------------------
-- Fill secondary tables
---------------------------------------------------------
	
INSERT INTO Unit_AITypes (UnitType, UnitAIType)
	SELECT 'UNIT_' || UnitKey, UnitAIType
	FROM Unit_AITypes JOIN UnitConfiguration ON  (UnitType= 'UNIT_' || UnitConfiguration.Template);
	
INSERT INTO Unit_Flavors (UnitType, FlavorType, Flavor)
	SELECT 'UNIT_' || UnitKey, FlavorType, Flavor
	FROM Unit_Flavors JOIN UnitConfiguration ON  (UnitType= 'UNIT_' || UnitConfiguration.Template);
	
-- first set the free promotion from master template...
INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
	SELECT 'UNIT_' || UnitKey, PromotionType
	FROM Unit_FreePromotions JOIN UnitConfiguration ON (UnitType= 'UNIT_' || UnitConfiguration.Template);

-- then replace the master template FreePromotion if there is one specific to the class
REPLACE INTO Unit_FreePromotions (UnitType, PromotionType)
	SELECT 'UNIT_' || UnitKey, 'PROMOTION_' || UnitKey
	FROM UnitPromotions JOIN UnitConfiguration ON (UnitPromotions.Type = 'PROMOTION_' || UnitConfiguration.UnitKey);

INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost)
	SELECT 'UNIT_' || UnitKey, ResourceType, Cost
	FROM Unit_ResourceQuantityRequirements JOIN UnitConfiguration ON  (UnitType= 'UNIT_' || UnitConfiguration.Template);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset)
	SELECT 'ART_DEF_UNIT_' || UnitKey, TileType, Asset
	FROM ArtDefine_StrategicView JOIN UnitConfiguration ON  (StrategicViewType = 'ART_DEF_UNIT_' || UnitConfiguration.Template);	
	

-----------------------------------------------
-- Delete UnitConfiguration table
-----------------------------------------------

DROP TABLE UnitConfiguration;
