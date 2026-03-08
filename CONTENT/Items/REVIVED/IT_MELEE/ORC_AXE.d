const int	REV_Damage_Orc_Axe_01				=	50;
const int	REV_Condition_Orc_Axe_01			=	70;
const int	REV_Range_Orc_Axe_01				=	100;
const int	REV_Value_Orc_Axe_01				=	30;
//******************************************************************//
const int	REV_Damage_Orc_Axe_02				=	60;
const int	REV_Condition_Orc_Axe_02			=	80;
const int	REV_Range_Orc_Axe_02				=	110;
const int	REV_Value_Orc_Axe_02				=	50;
//******************************************************************//
const int	REV_Damage_Orc_Axe_03				=	70;
const int	REV_Condition_Orc_Axe_03			=	90;
const int	REV_Range_Orc_Axe_03				=	110;
const int	REV_Value_Orc_Axe_03				=	70;
//******************************************************************//
const int	REV_Damage_Orc_Axe_04				=	80;
const int	REV_Condition_Orc_Axe_04			=	100;
const int	REV_Range_Orc_Axe_04				=	130;
const int	REV_Value_Orc_Axe_04				=	90;


//****************************************************************************
//			ORC WEAPONS - AXE
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_AXE_01 (C_Item)
{	
	name 				=	"Krush Pach";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_01;

	damageTotal			= 	REV_Damage_Orc_Axe_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_01;
	visual 				=	"ItMw_2H_OrcAxe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_02 (C_Item)
{	
	name 				=	"Krush UrRok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_02;

	damageTotal			= 	REV_Damage_Orc_Axe_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_02;
	visual 				=	"ItMw_2H_OrcAxe_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_03 (C_Item)
{	
	name 				=	"Krush Agash";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_03;

	damageTotal			= 	REV_Damage_Orc_Axe_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_03;
	visual 				=	"ItMw_2H_OrcAxe_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_04 (C_Item)
{	
	name 				=	"Krush BrokDar";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_04;

	damageTotal			= 	REV_Damage_Orc_Axe_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_04;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_04;
	visual 				=	"ItMw_2H_OrcAxe_04.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			ORC WEAPONS - AXE - REFORGED
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_AXE_01_R (C_Item)
{	
	name 				=	"Krush Pach";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_01;

	damageTotal			= 	REV_Damage_Orc_Axe_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_01 - 20;
	visual 				=	"ItMw_2H_OrcAxe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeaponFix;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_02_R (C_Item)
{	
	name 				=	"Krush UrRok";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_02;

	damageTotal			= 	REV_Damage_Orc_Axe_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_02 - 20;
	visual 				=	"ItMw_2H_OrcAxe_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeaponFix;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_03_R (C_Item)
{	
	name 				=	"Krush Agash";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_03;

	damageTotal			= 	REV_Damage_Orc_Axe_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_03 - 20;
	visual 				=	"ItMw_2H_OrcAxe_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeaponFix;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_AXE_04_R (C_Item)
{	
	name 				=	"Krush BrokDar";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_Orc_Axe_04;

	damageTotal			= 	REV_Damage_Orc_Axe_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_Orc_Axe_04;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_Axe_04 - 20;
	visual 				=	"ItMw_2H_OrcAxe_04.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeaponFix;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};