//****************************************************************************
//			TELEPORT
//****************************************************************************

INSTANCE ITRU_REVIVED_TELEPORT_OC (C_Item) 
{
	name 				=	NAME_SPL_TeleportOC;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_OC.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOC;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOC;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_NC (C_Item) 
{
	name 				=	NAME_SPL_TeleportNC;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_NC.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportNC;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportNC;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_PSI (C_Item) 
{
	name 				=	NAME_SPL_TeleportPsi;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_PSI.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportPSI;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportPsi;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_DT (C_Item) 
{
	name 				=	NAME_SPL_TeleportOWDemonTower;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_DT.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOWDemonTower;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOWDemonTower;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

//****************************************************************************
//			PSI SPELLS
//****************************************************************************

const int REV_Value_PSI_RUNE = 700;

INSTANCE ITRU_REVIVED_PYROKINESIS (C_Item)
{
	name 				= 	NAME_SPL_Pyrokinesis;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_PSI_RUNE;

	visual				= 	"ItRu_Pyrokinesis.3ds";
	material			= 	MAT_STONE;

	spell				= 	SPL_Pyrokinesis;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_Pyrokinesis;

	TEXT	[1]			= 	NAME_DamagePerSec;
	COUNT	[1]			= 	SPL_PYRO_DAMAGE_PER_SEC;
	TEXT	[2]			= 	NAME_ManaPerSec;
	COUNT	[2]			= 	SPL_PYRO_MANA_PER_SEC;
	TEXT	[4]			= 	NAME_Spell_Invest;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

//****************************************************************************
//			MUDFREAK SPELLS
//****************************************************************************

const int REV_Value_ZP_RUNE = 1500;

INSTANCE ITRU_REVIVED_HEALOTHER (C_Item)
{
	name 				= 	NAME_Rune;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_ZP_RUNE;

	visual				= 	"ItRu_HealOther.3DS";
	material			= 	MAT_STONE;

	spell				= 	SPL_HealOther;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_HealOther;
	TEXT	[0]			= 	NAME_Mag_Circle;
	COUNT	[0]			= 	mag_circle;
	TEXT	[1]			= 	NAME_HealingPerCast;
	COUNT	[1]			= 	SPL_Heal_HealOther;
	TEXT	[2]			= 	NAME_Manakosten;
	COUNT	[2]			= 	SPL_Cost_HealOther;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

INSTANCE ITRU_REVIVED_EXPLODE (C_Item)
{
	name 				= 	NAME_Rune;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_ZP_RUNE;

	visual				= 	"ItRu_Explosion.3DS";
	material			= 	MAT_STONE;

	spell				= 	SPL_Explode;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_Explode;
	TEXT	[0]			= 	NAME_Mag_Circle;
	COUNT	[0]			= 	mag_circle;
	TEXT	[1]			= 	NAME_Damage;
	COUNT	[1]			= 	SPL_Damage_Explode;
	TEXT	[2]			= 	NAME_Manakosten;
	COUNT	[2]			= 	SPL_Cost_Explode;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

INSTANCE ITRU_REVIVED_EXTRICATE (C_Item)
{
	name 				= 	NAME_Rune;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_ZP_RUNE;

	visual				= 	"ItRu_Firestorm.3DS";
	material			= 	MAT_STONE;

	spell				= 	SPL_Extricate;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER_RED";

	description			= 	NAME_SPL_Extricate;
	TEXT	[0]			= 	NAME_Mag_Circle;
	COUNT	[0]			= 	mag_circle;
	TEXT	[1]			= 	NAME_Damage;
	COUNT	[1]			= 	SPL_Damage_Extricate;
	TEXT	[2]			= 	NAME_Manakosten;
	COUNT	[2]			= 	SPL_Cost_Extricate;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

INSTANCE ITRU_REVIVED_EARTHQUAKE (C_Item)
{
	name 				= 	NAME_Rune;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_ZP_RUNE;

	visual				= 	"ItRu_Quake.3DS";
	material			= 	MAT_STONE;

	spell				= 	SPL_Earthquake;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_Earthquake;
	TEXT	[0]			= 	NAME_Mag_Circle;
	COUNT	[0]			= 	mag_circle;
	TEXT	[1]			= 	NAME_Damage;
	COUNT	[1]			= 	SPL_Damage_Earthquake;
	TEXT	[2]			= 	NAME_Manakosten;
	COUNT	[2]			= 	SPL_Cost_Earthquake;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

INSTANCE ITRU_REVIVED_MANARECOVERY (C_Item)
{
	name 				= 	NAME_Rune;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_ZP_RUNE;

	visual				= 	"ItRu_ManaForLife.3DS";
	material			= 	MAT_STONE;

	spell				= 	SPL_ManaRecovery;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER_RED";

	description			= 	NAME_SPL_ManaRecovery;
	TEXT	[0]			= 	NAME_Mag_Circle;
	COUNT	[0]			= 	mag_circle;
	TEXT	[1]			= 	NAME_Spell_Invest;
	TEXT	[2]			= 	ConcatStrings(PRINT_Beliarshitpoints_MAX, "1");
	TEXT	[3]			= 	ConcatStrings(PRINT_LearnMANA_MAX, IntToString(SPL_ManaRecovery_RELATION));
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};

//****************************************************************************
//          REVIVED SPELLS
//****************************************************************************

const int REV_Value_FIREFIST_RUNE = 1500;
const int REV_Value_FIREWAVE_RUNE = 2500;
const int REV_Value_CONCUSSIONBOLT_RUNE = 1500;

INSTANCE ITRU_REVIVED_FIREFIST (C_Item)
{
    name                =   NAME_SPL_FireFist;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   REV_Value_FIREFIST_RUNE;

    visual              =   "ItRu_Firestorm.3ds";
    material            =   MAT_STONE;

    spell               =   SPL_FireFist;
    mag_circle          =   3;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_YELLOW";

    description         =   NAME_SPL_FireFist;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;
    TEXT    [1]         =   NAME_MinManakosten;
    COUNT   [1]         =   STEP_FireFist;
    TEXT    [2]         =   NAME_ManakostenMax;
    COUNT   [2]         =   SPL_Cost_FireFist;
    TEXT    [3]         =   NAME_Addon_Damage_Min;
    COUNT   [3]         =   SPL_Damage_FireFist;
    TEXT    [4]         =   NAME_Damage_Max;
    COUNT   [4]         =   (SPL_Damage_FireFist*4);
    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};

INSTANCE ITRU_REVIVED_FIREWAVE (C_Item)
{
    name                =   NAME_SPL_FireWave;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   REV_Value_FIREWAVE_RUNE;

    visual              =   "ItRu_Firestorm.3ds";
    material            =   MAT_STONE;

    spell               =   SPL_FireWave;
    mag_circle          =   5;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_YELLOW";

    description         =   NAME_SPL_FireWave;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;
    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_FireWave;
    TEXT    [2]         =   NAME_Dam_Magic;
    COUNT   [2]         =   SPL_Damage_FireWave;
    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
INSTANCE ITRU_REVIVED_CONCUSSIONBOLT (C_Item)
{
    name                =   NAME_SPL_ConcussionBolt;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   REV_Value_CONCUSSIONBOLT_RUNE;

    visual              =   "ItRu_PalRepelEvil.3DS";
    material            =   MAT_STONE;

    spell               =   SPL_Concussionbolt;
    mag_circle          =   3;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER";

    description         =   NAME_SPL_ConcussionBolt;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;
    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_Concussionbolt;
    TEXT    [2]         =   NAME_Dam_Magic;
    COUNT   [2]         =   SPL_Damage_Concussionbolt;
    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
