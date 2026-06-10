
const int	REV_Value_TELEPORT_SCROLL				=	100;

//******************************************************************//
const int	REV_Value_PSI_SCROLL					=	500;
const int	REV_Cost_PSI_SCROLL						=	10;

//******************************************************************//
const int	REV_Value_TRANSFORM_SCROLL_WEAK				=	500;
const int	REV_Cost_TRANSFORM_SCROLL_WEAK				=	10;

const int	REV_Value_TRANSFORM_SCROLL_MID				=	1000;
const int	REV_Cost_TRANSFORM_SCROLL_MID				=	25;

const int	REV_Value_TRANSFORM_SCROLL_STRONG			=	2000;
const int	REV_Cost_TRANSFORM_SCROLL_STRONG			=	50;


//****************************************************************************
//			TELEPORT
//****************************************************************************

INSTANCE ITSC_REVIVED_TELEPORT_CITY (C_Item) 
{
	name 				=	NAME_SPL_TeleportSeaport;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_CITY.3ds";
	spell				= 	SPL_TeleportSeaport;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_MONASTERY (C_Item) 
{
	name 				=	NAME_SPL_TeleportMonastery;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_MONASTERY.3ds";	
	spell				= 	SPL_TeleportMonastery;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_BIGFARM (C_Item) 
{
	name 				=	NAME_SPL_TeleportFarm;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_BIGFARM.3ds";	
	spell				= 	SPL_TeleportFarm;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_XARDAS (C_Item) 
{
	name 				=	NAME_SPL_TeleportXardas;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_XARDAS.3ds";	
	spell				= 	SPL_TeleportXardas;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_TAVERNE (C_Item) 
{
	name 				=	NAME_SPL_TeleportTaverne;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_EMPTY.3ds";	
	spell				= 	SPL_TeleportTaverne;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TELEPORT_ORC (C_Item) 
{
	name 				=	NAME_SPL_TeleportOrc;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;
	
	value 				=	REV_Value_TELEPORT_SCROLL;
	
	visual				=	"ITSC_REV_TELEPORT_EMPTY.3ds";	
	spell				= 	SPL_TeleportOrc;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= SPL_COST_TELEPORT;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			PSI SPELLS
//****************************************************************************

INSTANCE ITSC_REVIVED_TELEKINESIS (C_Item)
{
	name 				=	NAME_SPL_Telekinesis;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_PSI_SCROLL;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_Telekinesis;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_PSI_SCROLL;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_CONTROL (C_Item)
{
	name 				=	NAME_SPL_Control;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_PSI_SCROLL;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_Control;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_PSI_SCROLL;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_PYROKINESIS (C_Item)
{
	name 				= 	NAME_SPL_Pyrokinesis;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	ITEM_MULTI;
	material			= 	MAT_LEATHER;

	value 				= 	REV_Value_PSI_SCROLL;

	visual				= 	"ItSc_Pyrokinesis.3DS";

	spell			    = 	SPL_Pyrokinesis;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_PSI_SCROLL;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[1]				= 	NAME_DamagePerSec;				COUNT[1]	= SPL_PYRO_DAMAGE_PER_SEC;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[3]				= 	NAME_ManaPerSec;				COUNT[3]	= SPL_PYRO_MANA_PER_SEC;
	TEXT[4]				= 	NAME_Spell_Invest;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			TRANSFORM (From G2)
//****************************************************************************

INSTANCE ItSc_TrfSheep (C_Item)
{
	name 				=	NAME_SPL_TrfSheep;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ItSc_TrfSheep.3DS";

	spell			    = 	SPL_TrfSheep;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfScavenger (C_Item)
{
	name 				=	NAME_SPL_TrfScavenger;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ItSc_TrfScavenger.3DS";

	spell				= 	SPL_TrfScavenger;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfGiantRat (C_Item)
{
	name 				=	NAME_SPL_TrfGiantRat;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ItSc_TrfGiantRat.3DS";

	spell				= 	SPL_TrfGiantRat;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfGiantBug (C_Item)
{
	name 				=	NAME_SPL_TrfGiantBug;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ItSc_TrfGiantBug.3DS";

	spell				= 	SPL_TrfGiantBug;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;

};
/*******************************************************************************************/
INSTANCE ItSc_TrfWolf (C_Item)
{
	name 				=	NAME_SPL_TrfWolf;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ItSc_TrfWolf.3DS";

	spell				= 	SPL_TrfWolf;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfWaran (C_Item)
{
	name 				=	NAME_SPL_TrfWaran;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ItSc_TrfWaran.3DS";

	spell				= 	SPL_TrfWaran;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfSnapper (C_Item)
{
	name 				=	NAME_SPL_TrfSnapper;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ItSc_TrfSnapper.3DS";

	spell				= 	SPL_TrfSnapper;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfWarg (C_Item)
{
	name 				=	NAME_SPL_TrfWarg;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ItSc_TrfWarg.3DS";

	spell				= 	SPL_TrfWarg;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfFireWaran (C_Item)
{
	name 				=	NAME_SPL_TrfFireWaran;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ItSc_TrfFireWaran.3DS";

	spell				= 	SPL_TrfFireWaran;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfLurker (C_Item)
{
	name 				=	NAME_SPL_TrfLurker;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ItSc_TrfLurker.3DS";

	spell				= 	SPL_TrfLurker;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfShadowbeast (C_Item)
{
	name 				=	NAME_SPL_TrfShadowbeast;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ItSc_TrfShadowbeast.3DS";

	spell				= 	SPL_TrfShadowbeast;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
/*******************************************************************************************/
INSTANCE ItSc_TrfDragonSnapper (C_Item)
{
	name 				=	NAME_SPL_TrfDragonSnapper;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ItSc_TrfDragonSnapper.3DS";

	spell				= 	SPL_TrfDragonSnapper;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			TRANSFORM (From G1)
//****************************************************************************

INSTANCE ITSC_REVIVED_TRANSFORM_MEATBUG (C_Item)
{
	name 				=	NAME_SPL_TrfMeatbug;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfMeatbug;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_MOLERAT (C_Item)
{
	name 				=	NAME_SPL_TrfMolerat;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfMolerat;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_BLOODFLY (C_Item)
{
	name 				=	NAME_SPL_TrfBloodfly;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfBloodfly;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_MINECRAWLER (C_Item)
{
	name 				=	NAME_SPL_TrfMinecrawler;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfMinecrawler;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_ORCDOG (C_Item)
{
	name 				=	NAME_SPL_TrfOrcDog;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfOrcDog;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			TRANSFORM (From REVIVED)
//****************************************************************************

INSTANCE ITSC_REVIVED_TRANSFORM_SWAMPDRONE (C_Item)
{
	name 				=	NAME_SPL_TrfSwampDrone;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_WEAK;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfSwampDrone;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_WEAK;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_MANTIS (C_Item)
{
	name 				=	NAME_SPL_TrfMantis;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfMantis;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_BOAR (C_Item)
{
	name 				=	NAME_SPL_TrfBoar;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfBoar;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_RAZOR (C_Item)
{
	name 				=	NAME_SPL_TrfRazor;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfRazor;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_CHOMPER (C_Item)
{
	name 				=	NAME_SPL_TrfChomper;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_MID;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfChomper;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_MID;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_BLOODHOUND (C_Item)
{
	name 				=	NAME_SPL_TrfBloodhound;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfBloodhound;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_HELLHOUND (C_Item)
{
	name 				=	NAME_SPL_TrfHellhound;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfHellhound;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_PANTHER (C_Item)
{
	name 				=	NAME_SPL_TrfPanther;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfPanther;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_ALLIGATOR (C_Item)
{
	name 				=	NAME_SPL_TrfAlligator;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfAlligator;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_SWAMPSHARK (C_Item)
{
	name 				=	NAME_SPL_TrfSwampshark;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfSwampshark;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_HARPY (C_Item)
{
	name 				=	NAME_SPL_TrfHarpy;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfHarpy;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_TROLL (C_Item)
{
	name 				=	NAME_SPL_TrfTroll;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfTroll;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITSC_REVIVED_TRANSFORM_GOBLIN (C_Item)
{
	name 				=	NAME_SPL_TrfGoblin;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;
	material			=	MAT_LEATHER;

	value 				=	REV_Value_TRANSFORM_SCROLL_STRONG;

	visual				=	"ITSC_TRANSFORM_MEATBUG.3DS";

	spell			    = 	SPL_TrfGoblin;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Cost_TRANSFORM_SCROLL_STRONG;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	name;
	TEXT[2]				= 	NAME_Manakosten;				COUNT[2]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
