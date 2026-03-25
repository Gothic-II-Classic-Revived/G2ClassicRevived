const int	REV_Damage_1H_Mace_01				=	45;
const int	REV_Condition_1H_Mace_01			=	45;
const int	REV_Range_1H_Mace_01				=	90;
const int	REV_Value_1H_Mace_01				=	400;
//******************************************************************//
const int	REV_Damage_1H_Mace_02				=	75;
const int	REV_Condition_1H_Mace_02			=	75;
const int	REV_Range_1H_Mace_02				=	90;
const int	REV_Value_1H_Mace_02				=	400;
//******************************************************************//
const int	REV_Damage_1H_Mace_03				=	40;
const int	REV_Condition_1H_Mace_03			=	40;
const int	REV_Range_1H_Mace_03				=	90;
const int	REV_Value_1H_Mace_03				=	600;
//******************************************************************//
const int	REV_Damage_1H_Mace_04				=	60;
const int	REV_Condition_1H_Mace_04			=	50;
const int	REV_Range_1H_Mace_04				=	90;
const int	REV_Value_1H_Mace_04				=	700;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Mace_War_01			=	50;
const int	REV_Condition_1H_Mace_War_01		=	45;
const int	REV_Range_1H_Mace_War_01			=	90;
const int	REV_Value_1H_Mace_War_01			=	350;
//******************************************************************//
const int	REV_Damage_1H_Mace_War_02			=	80;
const int	REV_Condition_1H_Mace_War_02		=	80;
const int	REV_Range_1H_Mace_War_02			=	90;
const int	REV_Value_1H_Mace_War_02			=	800;
//******************************************************************//
const int	REV_Damage_1H_Mace_War_03			=	110;
const int	REV_Condition_1H_Mace_War_03		=	110;
const int	REV_Range_1H_Mace_War_03			=	90;
const int	REV_Value_1H_Mace_War_03			=	1600;
//******************************************************************//
const int	REV_Damage_1H_Mace_War_04			=	125;
const int	REV_Condition_1H_Mace_War_04		=	110;
const int	REV_Range_1H_Mace_War_04			=	90;
const int	REV_Value_1H_Mace_War_04			=	2000;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_1H_Mace_Lester			=	60;
const int	REV_Condition_1H_Mace_Lester		=	40;
const int	REV_Range_1H_Mace_Lester			=	90;
const int	REV_Value_1H_Mace_Lester			=	340;
//******************************************************************//
const int	REV_Damage_1H_Mace_Namib			=	55;
const int	REV_Condition_1H_Mace_Namib			=	40;
const int	REV_Range_1H_Mace_Namib				=	90;
const int	REV_Value_1H_Mace_Namib				=	300;
//******************************************************************//
const int	REV_Damage_1H_Mace_Moe				=	60;
const int	REV_Condition_1H_Mace_Moe			=	50;
const int	REV_Range_1H_Mace_Moe				=	90;
const int	REV_Value_1H_Mace_Moe				=	330;
//******************************************************************//
const int	REV_Damage_1H_Mace_Fortuno			=	20;
const int	REV_Condition_1H_Mace_Fortuno		=	15;
const int	REV_Range_1H_Mace_Fortuno			=	90;
const int	REV_Value_1H_Mace_Fortuno			=	110;


//****************************************************************************
//			ONE-HANDED MACE
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_MACE_01 (C_Item)
{	
	name 				=	"Mace";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_01;

	damageTotal			= 	REV_Damage_1H_Mace_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Mace_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_01;
	visual 				=	"ItMw_1H_Mace_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_02 (C_Item)
{	
	name 				=	"Sting Mace";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_02;

	damageTotal			= 	REV_Damage_1H_Mace_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_02;
	visual 				=	"ItMw_1H_Mace_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_03 (C_Item)
{	
	name 				=	"Bloodfly Sting";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_03;

	damageTotal			= 	REV_Damage_1H_Mace_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_03;
	visual 				=	"ItMw_1H_Mace_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_04 (C_Item)
{	
	name 				=	"Steel Tongue";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_04;

	damageTotal			= 	REV_Damage_1H_Mace_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_04;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_04;
	visual 				=	"ItMw_1H_Mace_04.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITMW_REVIVED_1H_MACE_WAR_01 (C_Item)
{	
	name 				=	"Morning Star";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_War_01;

	damageTotal			= 	REV_Damage_1H_Mace_War_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Mace_War_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_War_01;
	visual 				=	"ItMw_1H_Mace_War_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_WAR_02 (C_Item)
{	
	name 				=	"Steel Mace";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_War_02;

	damageTotal			= 	REV_Damage_1H_Mace_War_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_War_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_War_02;
	visual 				=	"ItMw_1H_Mace_War_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_WAR_03 (C_Item)
{	
	name 				=	"Stone Crusher";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_War_03;

	damageTotal			= 	REV_Damage_1H_Mace_War_03;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_War_03;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_War_03;
	visual 				=	"ItMw_1H_Mace_War_03.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_WAR_04 (C_Item)
{	
	name 				=	"Heartbreaker";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Mace_War_04;

	damageTotal			= 	REV_Damage_1H_Mace_War_04;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Mace_War_04;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_War_04;
	visual 				=	"ItMw_1H_Mace_War_04.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};



//****************************************************************************
//			OWNED
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_MACE_LESTER (C_Item)
{
	name 				=	"Lester's Mediator";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Mace_Lester;

	damageTotal			=   REV_Damage_1H_Mace_Lester;
	damagetype			=	DAM_BLUNT;
	range    			=  	REV_Range_1H_Mace_Lester;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_Lester;

	//owner 				= 	PC_PSIONIC;
	visual 				=	"REV_1H_MACE_WAR_02.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Lester";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_NAMIB (C_Item)
{
	name 				=	"Namib's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Mace_Namib;

	damageTotal			=   REV_Damage_1H_Mace_Namib;
	damagetype			=	DAM_BLUNT;
	range    			=  	REV_Range_1H_Mace_Namib;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_Namib;

	//owner 				= 	GUR_1204_BAALNAMIB;
	visual 				=	"ItMw_1H_Mace_01.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Baal Namib";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_MOE (C_Item)
{
	name 				=	"Moe's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Mace_Moe;

	damageTotal  		=   REV_Damage_1H_Mace_Moe;
	damagetype			=	DAM_BLUNT;
	range    			=  	REV_Range_1H_Mace_Moe;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_Moe;

	//owner 				= 	GUR_1209_BAALORUN;
	visual 				=	"ItMw_1H_Mace_02.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Moe";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_MACE_FORTUNO (C_Item)
{
	name 				=	"Fortuno's Club";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Mace_Fortuno;

	damageTotal			=   REV_Damage_1H_Mace_Fortuno;
	damagetype			=	DAM_BLUNT;
	range    			=  	REV_Range_1H_Mace_Fortuno;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Mace_Fortuno;

	//owner 				= 	NOV_1357_FORTUNO;
	visual 				=	"ItMw_1H_Mace_03.3DS";

	description			= 	name;
	TEXT[0]				=	"It belongs to Fortuno";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};