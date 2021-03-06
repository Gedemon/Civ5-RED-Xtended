/*

	R.E.D. WWII Edition
	Table for new units configuration
	by Gedemon (2013)
	
	The info stocked in this table (from each unit type SQL file) are used in FinalizeTable.sql to make all the entries on the various art defines tables.
	When a model is used multiple times, it will be added once in tables with unique ID, and only the required table will be updated with multiple entries.
	
*/

-----------------------------------------------
-- Create UnitConfiguration table
-----------------------------------------------

DROP TABLE IF EXISTS UnitConfiguration;

CREATE TABLE UnitConfiguration (		id INTEGER PRIMARY KEY AUTOINCREMENT,
										UnitKey TEXT,
										TechKey TEXT default NULL,
										Var TEXT default '', -- Default = '' to allow empty string concatenation
										Name TEXT,
										fxsxml TEXT,
										Template TEXT,
										ArtTemplate TEXT,
										Nb INT default NULL,
										Form TEXT default NULL,
										Scl FLOAT default NULL,
										CbtCl TEXT default NULL,
										Cbt INT default NULL,
										Rgcbt INT default NULL,
										Cst INT default NULL,
										Mvt INT default NULL,
										Imb INT default NULL,
										Rng INT default NULL,
										Flag INT default NULL,
										Icon INT default NULL,
										IcAtl TEXT default NULL,
										FlagAtl TEXT default NULL,
										Sv TEXT default NULL,
										Embark BOOLEAN default NULL
								);

/*
	UnitKey		= Name of the unit (ex: "PANZER_IV")
	TechKey		= Name of the requested technology, NULL means default unit.
	Var			= prefix in case of multiple figure unit, Unit Member will be concatenate ike this ART_DEF_UNIT_MEMBER_[Key]_[var]. NULL means first (or single) figure unit.
	Name		= Name of the unit. MUST NOT be filled for line defining a model variation and MUST be filled for the line defining the unit's statistic.
	fxsxml		= Name of the fxsxml file of the new model (without the extension)
	Template	= UNIT_[Template], ART_DEF_UNIT_[Template]: template used for the new unit's definition.
	ArtTemplate	= ART_DEF_UNIT_MEMBER_[Template]: template used for the new unit's art definition.
	Nb			= Number of figures in the unit for that models. Use multiple lines with different model to "interleave" them. 0 means use value from template unit.
	Form		= Formation to use for the model. NULL means use value from template unit.
	Scl			= New scale to use for the model. 0 means use value from template unit.
	CbtCl		= Combat Class UNITCOMBAT_[CbtCl]
	Cbt			= Combat value
	Rgcbt		= Ranged Combat
	Cst			= Cost
	Mvt			= moves
	Imb			= immobile
	Rng			= range
	Flag		= flag index
	Icon		= icon idex
	IcAtl		= icon atlas
	FlagAtl		= flag atlas
	Sv			= strategic view icon
	Embark		= unit can embark on aircraft carrier
*/

