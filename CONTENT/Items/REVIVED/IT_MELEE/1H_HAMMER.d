const int	REV_Damage_1H_Warhammer_01			=	55;
const int	REV_Condition_1H_Warhammer_01		=	55;
const int	REV_Range_1H_Warhammer_01			=	90;
const int	REV_Value_1H_Warhammer_01			=	800;
//******************************************************************//
const int	REV_Damage_1H_Warhammer_02			=	110;
const int	REV_Condition_1H_Warhammer_02		=	100;
const int	REV_Range_1H_Warhammer_02			=	90;
const int	REV_Value_1H_Warhammer_02			=	1500;
//******************************************************************//
const int	REV_Damage_1H_Warhammer_03			=	120;
const int	REV_Condition_1H_Warhammer_03		=	100;
const int	REV_Range_1H_Warhammer_03			=	90;
const int	REV_Value_1H_Warhammer_03			=	3800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Hammer_01				=	60;
const int	REV_Condition_1H_Hammer_01			=	40;
const int	REV_Range_1H_Hammer_01				=	70;
const int	REV_Value_1H_Hammer_01				=	1200;
//******************************************************************//
const int	REV_Damage_1H_Hammer_02				=	80;
const int	REV_Condition_1H_Hammer_02			=	70;
const int	REV_Range_1H_Hammer_02				=	100;
const int	REV_Value_1H_Hammer_02				=	1900;
//******************************************************************//
const int	REV_Damage_1H_Hammer_03				=	100;
const int	REV_Condition_1H_Hammer_03			=	85;
const int	REV_Range_1H_Hammer_03				=	120;
const int	REV_Value_1H_Hammer_03				=	2500;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Hammer_Ore_01			=	120;
const int	REV_Condition_1H_Hammer_Ore_01		=	120;
const int	REV_Range_1H_Hammer_Ore_01			=	90;
const int	REV_Value_1H_Hammer_Ore_01			=	3800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Hammer_Holy			=	100;
const int	REV_Condition_1H_Hammer_Holy		=	50;
const int	REV_Range_1H_Hammer_Holy			=	120;
const int	REV_Value_1H_Hammer_Holy			=	3000;


//****************************************************************************
//			ONE-HANDED HAMMER
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_WARHAMMER_01 (C_Item)
{	
	name 				=	"Orc Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_01;

	damageTotal			= 	REV_Damage_1H_Warhammer_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Warhammer_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_01;
	visual 				=	"ItMw_1H_Warhammer_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WARHAMMER_02 (C_Item)
{	
	name 				=	"War Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_02;

	damageTotal			= 	REV_Damage_1H_Warhammer_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Warhammer_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_02;
	visual 				=	"ItMw_1H_Warhammer_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WARHAMMER_03 (C_Item)
{	
	name 				=	"God's Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Warhammer_03;

	damageTotal			= 	REV_Damage_1H_Warhammer_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Warhammer_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Warhammer_03;
	visual 				=	"ItMw_1H_Warhammer_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			NEW HAMMERS
//****************************************************************************

INSTANCE ITMW_REVIVED_1H_HAMMER_01 (C_Item)
{	
	name 				=	"Legbreaker";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hammer_Ore_01;

	damageTotal			= 	REV_Damage_1H_Hammer_Ore_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hammer_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hammer_Ore_01;
	visual 				=	"REV_1H_HAMMER_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_HAMMER_02 (C_Item)
{	
	name 				=	"Short Aristocrat";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hammer_Ore_01;

	damageTotal			= 	REV_Damage_1H_Hammer_Ore_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hammer_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hammer_Ore_01;
	visual 				=	"REV_1H_HAMMER_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_HAMMER_03 (C_Item)
{	
	name 				=	"Bloody Pillager"; //KRWAWY ?UPIGNAT

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hammer_Ore_01;

	damageTotal			= 	REV_Damage_1H_Hammer_Ore_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hammer_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hammer_Ore_01;
	visual 				=	"REV_1H_HAMMER_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			MAGICLESS ORE
//****************************************************************************

INSTANCE ITMW_REVIVED_1H_HAMMER_ORE_01 (C_Item)
{	
	name 				=	"Ore Hammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hammer_Ore_01;

	damageTotal			= 	REV_Damage_1H_Hammer_Ore_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hammer_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hammer_Ore_01;
	visual 				=	"ItMw_1H_Warhammer_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			SPECIAL
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_HAMMER_HOLY (C_Item)
{	
	name 				=	"Sacred Hammer";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION|ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Hammer_Holy;

	damageTotal			= 	REV_Damage_1H_Hammer_Holy;
	damagetype 			=	DAM_BLUNT|DAM_MAGIC;
	range    			=	REV_Range_1H_Hammer_Holy;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hammer_Holy;

	owner 				= 	Nov_608_Garwig;
	visual 				=	"REV_1H_HAMMER_HOLY.3DS";

	description			= 	name;
	TEXT[0]				=	"";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_HolyWeapon1H;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};