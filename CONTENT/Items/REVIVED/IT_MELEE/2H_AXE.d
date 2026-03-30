
const int	REV_Damage_2H_Axe_Old_01			=	40;
const int	REV_Condition_2H_Axe_Old_01			=	40;
const int	REV_Range_2H_Axe_Old_01				=	80;
const int	REV_Value_2H_Axe_Old_01				=	50;
//******************************************************************//
const int	REV_Damage_2H_Axe_Old_02			=	55;
const int	REV_Condition_2H_Axe_Old_02			=	55;
const int	REV_Range_2H_Axe_Old_02				=	80;
const int	REV_Value_2H_Axe_Old_02				=	70;
//******************************************************************//
const int	REV_Damage_2H_Axe_Old_03			=	125;
const int	REV_Condition_2H_Axe_Old_03			=	125;
const int	REV_Range_2H_Axe_Old_03				=	80;
const int	REV_Value_2H_Axe_Old_03				=	1000;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_2H_Axe_Light_01			=	60;
const int	REV_Condition_2H_Axe_Light_01		=	60;
const int	REV_Range_2H_Axe_Light_01			=	70;
const int	REV_Value_2H_Axe_Light_01			=	800;
//******************************************************************//
const int	REV_Damage_2H_Axe_Light_02			=	90;
const int	REV_Condition_2H_Axe_Light_02		=	85;
const int	REV_Range_2H_Axe_Light_02			=	70;
const int	REV_Value_2H_Axe_Light_02			=	800;
//******************************************************************//
const int	REV_Damage_2H_Axe_Light_03			=	80;
const int	REV_Condition_2H_Axe_Light_03		=	80;
const int	REV_Range_2H_Axe_Light_03			=	70;
const int	REV_Value_2H_Axe_Light_03			=	1000;
//******************************************************************//
const int	REV_Damage_2H_Axe_Heavy_01			=	110;
const int	REV_Condition_2H_Axe_Heavy_01		=	110;
const int	REV_Range_2H_Axe_Heavy_01			=	100;
const int	REV_Value_2H_Axe_Heavy_01			=	3500;
//******************************************************************//
const int	REV_Damage_2H_Axe_Heavy_02			=	200;
const int	REV_Condition_2H_Axe_Heavy_02		=	170;
const int	REV_Range_2H_Axe_Heavy_02			=	100;
const int	REV_Value_2H_Axe_Heavy_02			=	3000;
//******************************************************************//
const int	REV_Damage_2H_Axe_Heavy_03			=	140;
const int	REV_Condition_2H_Axe_Heavy_03		=	130;
const int	REV_Range_2H_Axe_Heavy_03			=	100;
const int	REV_Value_2H_Axe_Heavy_03			=	2800;
//******************************************************************//
const int	REV_Damage_2H_Axe_Heavy_04			=	150;
const int	REV_Condition_2H_Axe_Heavy_04		=	150;
const int	REV_Range_2H_Axe_Heavy_04			=	100;
const int	REV_Value_2H_Axe_Heavy_04			=	3800;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_2H_Axe_Ore_01			=	110;
const int	REV_Condition_2H_Axe_Ore_01			=	110;
const int	REV_Range_2H_Axe_Ore_01				=	80;
const int	REV_Value_2H_Axe_Ore_01				=	1250;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_2H_Axe_Lee				=	105;
const int	REV_Condition_2H_Axe_Lee			=	95;
const int	REV_Range_2H_Axe_Lee				=	130;
const int	REV_Value_2H_Axe_Lee				=	560;
//******************************************************************//
const int	REV_Damage_2H_Axe_Sylvio			=	95;
const int	REV_Condition_2H_Axe_Sylvio			=	90;
const int	REV_Range_2H_Axe_Sylvio				=	130;
const int	REV_Value_2H_Axe_Sylvio				=	540;
//******************************************************************//
const int	REV_Damage_2H_Axe_Torlof			=	99;
const int	REV_Condition_2H_Axe_Torlof			=	85;
const int	REV_Range_2H_Axe_Torlof				=	130;
const int	REV_Value_2H_Axe_Torlof				=	550;
//******************************************************************//
const int	REV_Damage_2H_Axe_Gorn				=	100;
const int	REV_Condition_2H_Axe_Gorn			=	80;
const int	REV_Range_2H_Axe_Gorn				=	130;
const int	REV_Value_2H_Axe_Gorn				=	560;



//****************************************************************************
//			TWO-HANDED AXE
//****************************************************************************
INSTANCE ITMW_REVIVED_2H_AXE_OLD_01 (C_Item)
{	
	name 				=	"Old Battle Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Old_01;

	damageTotal			= 	REV_Damage_2H_Axe_Old_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Old_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Old_01;
	visual 				=	"ItMw_2H_Axe_Old_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_OLD_02 (C_Item)
{	
	name 				=	"Blood Harvester";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Old_02;

	damageTotal			= 	REV_Damage_2H_Axe_Old_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Old_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Old_02;
	visual 				=	"ItMw_2H_Axe_Old_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_OLD_03 (C_Item)
{	
	name 				=	"Old Judge";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Old_03;

	damageTotal			= 	REV_Damage_2H_Axe_Old_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Old_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Old_03;
	visual 				=	"ItMw_2H_Axe_Old_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_2H_AXE_LIGHT_01 (C_Item)
{	
	name 				=	"Light Battle Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Light_01;

	damageTotal			= 	REV_Damage_2H_Axe_Light_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Light_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Light_01;
	visual 				=	"ItMw_2H_Axe_Light_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_LIGHT_02 (C_Item)
{	
	name 				=	"Thunderstrike";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Light_02;

	damageTotal			= 	REV_Damage_2H_Axe_Light_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Light_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Light_02;
	visual 				=	"ItMw_2H_Axe_Light_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_LIGHT_03 (C_Item)
{	
	name 				=	"Smash";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Light_03;

	damageTotal			= 	REV_Damage_2H_Axe_Light_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Light_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Light_03;
	visual 				=	"ItMw_2H_Axe_Light_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_2H_AXE_HEAVY_01 (C_Item)
{	
	name 				=	"War Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Heavy_01;

	damageTotal			= 	REV_Damage_2H_Axe_Heavy_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Heavy_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Heavy_01;
	visual 				=	"ItMw_2H_Axe_Heavy_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_HEAVY_02 (C_Item)
{	
	name 				=	"Warrior's Voice";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Heavy_02;

	damageTotal			= 	REV_Damage_2H_Axe_Heavy_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Heavy_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Heavy_02;
	visual 				=	"ItMw_2H_Axe_Heavy_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_HEAVY_03 (C_Item)
{	
	name 				=	"Barbarian's Fist";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Heavy_03;

	damageTotal			= 	REV_Damage_2H_Axe_Heavy_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Heavy_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Heavy_03;
	visual 				=	"ItMw_2H_Axe_Heavy_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_HEAVY_04 (C_Item)
{	
	name 				=	"Troll Fist";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Heavy_04;

	damageTotal			= 	REV_Damage_2H_Axe_Heavy_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Heavy_04;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Heavy_04;
	visual 				=	"ItMw_2H_Axe_Heavy_04.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			MAGICLESS ORE
//****************************************************************************

INSTANCE ITMW_REVIVED_2H_AXE_ORE_01 (C_Item)
{	
	name 				=	"Ore Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Axe_Ore_01;

	damageTotal			= 	REV_Damage_2H_Axe_Ore_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_2H_Axe_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Ore_01;
	visual 				=	"REV_2H_AXE_ORE_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			OWNED
//****************************************************************************
INSTANCE ITMW_REVIVED_2H_AXE_LEE (C_Item)
{
	name 				=	"Lee's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_2H_Axe_Lee;

	damageTotal			= 	REV_Damage_2H_Axe_Lee;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_2H_Axe_Lee;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Lee;

	owner 				= 	SLD_800_Lee; //SLD_700_LEE;
	visual 				=	"REV_2H_AXE_HEAVY_01.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Lee";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_SYLVIO (C_Item)
{
	name 				=	"Sylvio's Axe"; //"Orik's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_2H_Axe_Sylvio;

	damageTotal			= 	REV_Damage_2H_Axe_Sylvio;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_2H_Axe_Sylvio;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Sylvio;

	owner 				=   SLD_806_Sylvio; //SLD_701_ORIK;
	visual 				=	"REV_2H_AXE_HEAVY_04.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Sylvio";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_TORLOF (C_Item)
{
	name 				=	"Torlof's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_2H_Axe_Torlof;

	damageTotal			= 	REV_Damage_2H_Axe_Torlof;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_2H_Axe_Torlof;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Torlof;

	owner 				= 	SLD_801_Torlof; //SLD_737_TORLOF;
	visual 				=	"REV_2H_AXE_HEAVY_02.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Torlof";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_2H_AXE_GORN (C_Item)
{
	name 				=	"Gorn's Revenge";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_2H_Axe_Gorn;

	damageTotal			= 	REV_Damage_2H_Axe_Gorn;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_2H_Axe_Gorn;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Axe_Gorn;

	//owner 				=   PC_FIGHTER_OW|PC_Fighter_DJG|PC_Fighter_NW_vor_DJG|PC_Fighter_NW_nach_DJG|PC_Fighter_DI; //PC_FIGHTER;
	visual 				=	"REV_2H_AXE_HEAVY_03.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Gorn";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};