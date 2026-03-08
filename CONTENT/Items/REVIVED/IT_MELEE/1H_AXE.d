const int	REV_Damage_1H_Axe_Old_01			=	25;
const int	REV_Condition_1H_Axe_Old_01			=	20;
const int	REV_Range_1H_Axe_Old_01				=	70;
const int	REV_Value_1H_Axe_Old_01				=	50;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Axe_01				=	50;
const int	REV_Condition_1H_Axe_01				=	40;
const int	REV_Range_1H_Axe_01					=	70;
const int	REV_Value_1H_Axe_01					=	100;
//******************************************************************//
const int	REV_Damage_1H_Axe_02				=	60;
const int	REV_Condition_1H_Axe_02				=	60;
const int	REV_Range_1H_Axe_02					=	70;
const int	REV_Value_1H_Axe_02					=	700;
//******************************************************************//
const int	REV_Damage_1H_Axe_03				=	90;
const int	REV_Condition_1H_Axe_03				=	90;
const int	REV_Range_1H_Axe_03					=	70;
const int	REV_Value_1H_Axe_03					=	500;
//******************************************************************//
const int	REV_Damage_1H_Axe_Great_01			=	110;
const int	REV_Condition_1H_Axe_Great_01		=	110;
const int	REV_Range_1H_Axe_Great_01			=	80;
const int	REV_Value_1H_Axe_Great_01			=	1250;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Axe_Heavy_01			=	110;
const int	REV_Condition_1H_Axe_Heavy_01		=	110;
const int	REV_Range_1H_Axe_Heavy_01			=	90;
const int	REV_Value_1H_Axe_Heavy_01			=	1250;
//******************************************************************//
const int	REV_Damage_1H_Axe_Heavy_02			=	110;
const int	REV_Condition_1H_Axe_Heavy_02		=	110;
const int	REV_Range_1H_Axe_Heavy_02			=	90;
const int	REV_Value_1H_Axe_Heavy_02			=	1250;
//******************************************************************//
const int	REV_Damage_1H_Axe_Heavy_03			=	110;
const int	REV_Condition_1H_Axe_Heavy_03		=	110;
const int	REV_Range_1H_Axe_Heavy_03			=	90;
const int	REV_Value_1H_Axe_Heavy_03			=	1250;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Axe_Ore_01			=	110;
const int	REV_Condition_1H_Axe_Ore_01			=	110;
const int	REV_Range_1H_Axe_Ore_01				=	80;
const int	REV_Value_1H_Axe_Ore_01				=	1250;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Axe_Cord				=	60;
const int	REV_Condition_1H_Axe_Cord			=	50;
const int	REV_Range_1H_Axe_Cord				=	100;
const int	REV_Value_1H_Axe_Cord				=	310;
//******************************************************************//
const int	REV_Damage_1H_Axe_Lares				=	65;
const int	REV_Condition_1H_Axe_Lares			=	45;
const int	REV_Range_1H_Axe_Lares				=	100;
const int	REV_Value_1H_Axe_Lares				=	340;
//******************************************************************//
const int	REV_Damage_1H_Axe_Biff				=	55;
const int	REV_Condition_1H_Axe_Biff			=	40;
const int	REV_Range_1H_Axe_Biff				=	100;
const int	REV_Value_1H_Axe_Biff				=	290;


//****************************************************************************
//			ONE-HANDED AXE
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_AXE_OLD_01 (C_Item)
{	
	name 				=	"Withered Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Old_01;

	damageTotal			= 	REV_Damage_1H_Axe_Old_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Old_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Old_01;
	visual 				=	"ItMw_1H_Axe_Old_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_1H_AXE_01 (C_Item)
{	
	name 				=	"Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_01;

	damageTotal			= 	REV_Damage_1H_Axe_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_01;
	visual 				=	"ItMw_1H_Axe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_AXE_02 (C_Item)
{	
	name 				=	"Scullclefter";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_02;

	damageTotal			= 	REV_Damage_1H_Axe_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_02;
	visual 				=	"ItMw_1H_Axe_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_AXE_03 (C_Item)
{	
	name 				=	"Bonebreaker";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_03;

	damageTotal			= 	REV_Damage_1H_Axe_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_03;
	visual 				=	"ItMw_1H_Axe_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_1H_AXE_GREAT_01 (C_Item)
{	
	name 				=	"Torturer's Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Great_01;

	damageTotal			= 	REV_Damage_1H_Axe_Great_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Great_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Great_01;
	visual 				=	"ItMw_065_2h_greataxe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			HEAVY
//****************************************************************************

INSTANCE ITMW_REVIVED_1H_AXE_HEAVY_01 (C_Item)
{	
	name 				=	"Twinclaw";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Heavy_01;

	damageTotal			= 	REV_Damage_1H_Axe_Heavy_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Heavy_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Heavy_01;
	visual 				=	"REV_1H_AXE_HEAVY_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_1H_AXE_HEAVY_02 (C_Item)
{	
	name 				=	"Bloodfly Wing";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Heavy_02;

	damageTotal			= 	REV_Damage_1H_Axe_Heavy_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Heavy_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Heavy_02;
	visual 				=	"REV_1H_AXE_HEAVY_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_1H_AXE_HEAVY_03 (C_Item)
{	
	name 				=	"Heavy Hacker";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Heavy_03;

	damageTotal			= 	REV_Damage_1H_Axe_Heavy_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Heavy_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Heavy_03;
	visual 				=	"REV_1H_AXE_HEAVY_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			MAGICLESS ORE
//****************************************************************************

INSTANCE ITMW_REVIVED_1H_AXE_ORE_01 (C_Item)
{	
	name 				=	"Ore Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Axe_Ore_01;

	damageTotal			= 	REV_Damage_1H_Axe_Ore_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Axe_Ore_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Ore_01;
	visual 				=	"REV_1H_AXE_ORE_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};



//****************************************************************************
//			OWNED
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_AXE_CORD (C_Item)
{
	name 				=	"Cord's Clefter";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Axe_Cord;

	damageTotal			=   REV_Damage_1H_Axe_Cord;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_1H_Axe_Cord;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Cord;

	owner 				= 	SLD_805_Cord; //SLD_709_CORD;
	visual 				=	"REV_1H_AXE_02.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Cord";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_AXE_LARES (C_Item)
{
	name 				=	"Lares' Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Axe_Lares;

	damageTotal			=   REV_Damage_1H_Axe_Lares;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_1H_Axe_Lares;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Lares;

	owner 				= 	SLD_449_Lares; //ORG_801_LARES;
	visual 				=	"REV_1H_AXE_03.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Lares";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_AXE_BIFF (C_Item)
{
	name 				=	"Biff's Axe"; //"Silas' Axe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Axe_Biff;

	damageTotal			=   REV_Damage_1H_Axe_Biff;
	damagetype			=	DAM_EDGE;
	range    			=  	REV_Range_1H_Axe_Biff;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Axe_Biff;

	owner 				=   DJG_713_Biff; //ORG_841_SILAS;
	visual 				=	"REV_1H_AXE_01.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Biff";
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};