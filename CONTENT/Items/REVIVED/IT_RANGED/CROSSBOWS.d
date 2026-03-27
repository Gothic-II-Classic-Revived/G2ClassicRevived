const int	REV_Damage_Crossbow_Light_01		=	40;
const int	REV_Condition_Crossbow_Light_01		=	30;
const int	REV_Value_Crossbow_Light_01			=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_Light_02		=	55;
const int	REV_Condition_Crossbow_Light_02		=	50;
const int	REV_Value_Crossbow_Light_02			=	800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Crossbow_01				=	70;
const int	REV_Condition_Crossbow_01			=	65;
const int	REV_Value_Crossbow_01				=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_02				=	90;
const int	REV_Condition_Crossbow_02			=	85;
const int	REV_Value_Crossbow_02				=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_03				=	95;
const int	REV_Condition_Crossbow_03			=	85;
const int	REV_Value_Crossbow_03				=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_04				=	100;
const int	REV_Condition_Crossbow_04			=	90;
const int	REV_Value_Crossbow_04				=	800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Crossbow_Heavy_01		=	140;
const int	REV_Condition_Crossbow_Heavy_01		=	120;
const int	REV_Value_Crossbow_Heavy_01			=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_Heavy_02		=	160;
const int	REV_Condition_Crossbow_Heavy_02		=	140;
const int	REV_Value_Crossbow_Heavy_02			=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_Heavy_03		=	180;
const int	REV_Condition_Crossbow_Heavy_03		=	160;
const int	REV_Value_Crossbow_Heavy_03			=	800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Crossbow_Magic_01		=	200;
const int	REV_Condition_Crossbow_Magic_01		=	100;
const int	REV_Value_Crossbow_Magic_01			=	800;
//******************************************************************//
const int	REV_Damage_Crossbow_Fire_01			=	200;
const int	REV_Condition_Crossbow_Fire_01		=	100;
const int	REV_Value_Crossbow_Fire_01			=	800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Crossbow_Dragomir		=	60;
const int	REV_Condition_Crossbow_Dragomir		=	20;
const int	REV_Value_Crossbow_Dragomir			=	900;
//******************************************************************//
const int	REV_Damage_Crossbow_Sengrath		=	80;
const int	REV_Condition_Crossbow_Sengrath		=	40;
const int	REV_Value_Crossbow_Sengrath			=	900;



//****************************************************************************
//			CROSSBOWS
//****************************************************************************
INSTANCE ITRW_REVIVED_CROSSBOW_LIGHT_01 (C_Item)
{
	name 				=	"Leichte Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Light_01;

	damageTotal			= 	REV_Damage_Crossbow_Light_01;
	damagetype 			=	DAM_POINT;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Light_01;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_L_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_LIGHT_02 (C_Item)
{
	name 				=	"Jagdarmbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Light_02;

	damageTotal			= 	REV_Damage_Crossbow_Light_02;
	damagetype 			=	DAM_POINT;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Light_02;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_L_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_CROSSBOW_01 (C_Item)
{
	name 				=	"Kriegsarmbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_01;

	damageTotal			= 	REV_Damage_Crossbow_01;
	damagetype 			=	DAM_POINT;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_01;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_M_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_02 (C_Item)
{
	name 				=	"Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_02;

	damageTotal			= 	REV_Damage_Crossbow_02;
	damagetype 			=	DAM_POINT;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_02;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_M_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_03 (C_Item)
{
	name 				=	"Schwere Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_03;

	damageTotal			= 	REV_Damage_Crossbow_03;
	damagetype 			=	DAM_POINT;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_03;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_M_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_04 (C_Item)
{
	name 				=	"Goldene Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_04;

	damageTotal			= 	REV_Damage_Crossbow_04;
	damagetype 			=	DAM_POINT;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_04;

	munition			=	ITRW_BOLT;
	visual 				=	"REV_CROSSBOW_M_04.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_CROSSBOW_HEAVY_01 (C_Item)
{
	name 				=	"Armbrust des Todes";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Heavy_01;

	damageTotal			= 	REV_Damage_Crossbow_Heavy_01;
	damagetype 			=	DAM_POINT;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Heavy_01;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRwCrossbow4.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_HEAVY_02 (C_Item)
{
	name 				=	"Trolltöter-Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Heavy_02;

	damageTotal			= 	REV_Damage_Crossbow_Heavy_02;
	damagetype 			=	DAM_POINT;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Heavy_02;

	munition			=	ITRW_BOLT;
	visual 				=	"REV_CROSSBOW_HEAVY_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_HEAVY_03 (C_Item)
{
	name 				=	"Drachenjägerarmbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Heavy_03;

	damageTotal			= 	REV_Damage_Crossbow_Heavy_03;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Heavy_03;

	munition			=	ITRW_BOLT;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			SPECIAL
//****************************************************************************
instance ITRW_REVIVED_MAGICBOLT (C_Item)
{
	name 				=	"Magischer Bolzen";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;

	value 				=	Value_Bolzen;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_BOLT";

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};
instance ITRW_REVIVED_FIREBOLT (C_Item)
{
	name 				=	"Feuerpfeil";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;

	value 				=	Value_Bolzen;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREARROW";

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_CROSSBOW_MAGIC_01 (C_Item)
{
	name 				=	"Magische Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Magic_01;

	damageTotal			= 	REV_Damage_Crossbow_Magic_01;
	damagetype 			=	DAM_POINT|DAM_MAGIC;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Magic_01;

	munition			=	ITRW_REVIVED_MAGICBOLT;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_CROSSBOW";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_FIRE_01 (C_Item)
{
	name 				=	"Feuerarmbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Fire_01;

	damageTotal			= 	REV_Damage_Crossbow_Fire_01;
	damagetype 			=	DAM_POINT|DAM_FIRE;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Fire_01;

	munition			=	ITRW_REVIVED_FIREBOLT;
	visual 				=	"ItRw_Crossbow_H_01.mms";
	
	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREBOW";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			OWNED
//****************************************************************************
INSTANCE ITRW_REVIVED_CROSSBOW_DRAGOMIR (C_Item)
{
	name 				=	"Dragomir´s Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Dragomir;

	damageTotal			= 	REV_Damage_Crossbow_Dragomir;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Dragomir;

	munition			=	ITRW_BOLT;	
	//owner 				= OUT_983_DRAGOMIR;
	visual 				=	"ItRw_Crossbow_L_02.mms";

	description			= 	name;
	TEXT[0]				=	"It belongs to Dragomir";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_CROSSBOW_SENGRATH (C_Item)
{
	name 				=	"Sengraths Armbrust";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Crossbow_Sengrath;

	damageTotal			= 	REV_Damage_Crossbow_Sengrath;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Crossbow_Sengrath;

	munition			=	ITRW_BOLT;	
	//owner 				= PC_THIEF;
	visual 				=	"ItRw_Crossbow_L_02.mms";

	description			= 	name;
	TEXT[0]				=	"It belongs to Sengrath";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};