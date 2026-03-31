
const int	REV_Damage_1H_Sickle_01				=	7;
const int	REV_Condition_1H_Sickle_01			=	5;
const int	REV_Range_1H_Sickle_01				=	50;
const int	REV_Value_1H_Sickle_01				=	5;
//******************************************************************//
const int	REV_Damage_1H_Poker_01				=	5;
const int	REV_Condition_1H_Poker_01			=	5;
const int	REV_Range_1H_Poker_01				=	70;
const int	REV_Value_1H_Poker_01				=	5;
//******************************************************************//
const int	REV_Damage_1H_Scythe_01				=	7;
const int	REV_Condition_1H_Scythe_01			=	5;
const int	REV_Range_1H_Scythe_01				=	70;
const int	REV_Value_1H_Scythe_01				=	10;
//******************************************************************//
const int	REV_Damage_1H_Hatchet_01			=	10;
const int	REV_Condition_1H_Hatchet_01			=	10;
const int	REV_Range_1H_Hatchet_01				=	50;
const int	REV_Value_1H_Hatchet_01				=	10;
//******************************************************************//
const int	REV_Damage_1H_Sledgehammer_01		=	10;
const int	REV_Condition_1H_Sledgehammer_01	=	10;
const int	REV_Range_1H_Sledgehammer_01		=	50;
const int	REV_Value_1H_Sledgehammer_01		=	30;
//******************************************************************//
const int	REV_Damage_1H_Club_01				=	10;
const int	REV_Condition_1H_Club_01			=	10;
const int	REV_Range_1H_Club_01				=	70;
const int	REV_Value_1H_Club_01				=	10;
//******************************************************************//
const int	REV_Damage_1H_Club_02				=	8;
const int	REV_Condition_1H_Club_02			=	5;
const int	REV_Range_1H_Club_02				=	70;
const int	REV_Value_1H_Club_02				=	10;
//******************************************************************//
const int	REV_Damage_1H_Nailmace_01			=	15;
const int	REV_Condition_1H_Nailmace_01		=	10;
const int	REV_Range_1H_Nailmace_01			=	70;
const int	REV_Value_1H_Nailmace_01			=	20;
//******************************************************************//
const int	REV_Damage_1H_WalkingStick_01		=	8;
const int	REV_Condition_1H_WalkingStick_01	=	5;
const int	REV_Range_1H_WalkingStick_01		=	70;
const int	REV_Value_1H_WalkingStick_01		=	5;
//******************************************************************//
const int	REV_Damage_1H_Branch_01				=	5;
const int	REV_Condition_1H_Branch_01			=	5;
const int	REV_Range_1H_Branch_01				=	70;
const int	REV_Value_1H_Branch_01				=	5;
//******************************************************************//
const int	REV_Damage_1H_Knife_01				=	20;
const int	REV_Condition_1H_Knife_01			=	10;
const int	REV_Range_1H_Knife_01				=	50;
const int	REV_Value_1H_Knife_01				=	15;
//******************************************************************//
const int	REV_Damage_1H_Dagger_01				=	10;
const int	REV_Condition_1H_Dagger_01			=	5;
const int	REV_Range_1H_Dagger_01				=	50;
const int	REV_Value_1H_Dagger_01				=	15;
//******************************************************************//
const int	REV_Damage_1H_Dagger_02				=	10;
const int	REV_Condition_1H_Dagger_02			=	5;
const int	REV_Range_1H_Dagger_02				=	50;
const int	REV_Value_1H_Dagger_02				=	50;
//******************************************************************//
const int	REV_Damage_1H_Sword_07				=	30;
const int	REV_Condition_1H_Sword_07			=	20;
const int	REV_Range_1H_Sword_07				=	70;
const int	REV_Value_1H_Sword_07				=	75;


//****************************************************************************
//			ONE-HANDED OTHER
//****************************************************************************
INSTANCE ITMW_REVIVED_1H_SICKLE_01 (C_Item)
{	
	name 				=	"Sichel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Sickle_01;

	damageTotal			= 	REV_Damage_1H_Sickle_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Sickle_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Sickle_01;
	visual 				=	"ItMw_1H_Sickle_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_POKER_01 (C_Item)
{	
	name 				=	"Schürhaken";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Poker_01;

	damageTotal			= 	REV_Damage_1H_Poker_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Poker_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Poker_01;
	visual 				=	"ItMw_1H_Poker_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SCYTHE_01 (C_Item)
{	
	name 				=	"Sense";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Scythe_01;

	damageTotal			= 	REV_Damage_1H_Scythe_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Scythe_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Scythe_01;
	visual 				=	"ItMw_1H_Scythe_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_HATCHET_01 (C_Item)
{	
	name 				=	"Handaxt";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Hatchet_01;

	damageTotal			= 	REV_Damage_1H_Hatchet_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Hatchet_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Hatchet_01;
	visual 				=	"ItMw_1H_Hatchet_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SLEDGEHAMMER_01 (C_Item)
{	
	name 				=	"Schmiedehammer";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Sledgehammer_01;

	damageTotal			= 	REV_Damage_1H_Sledgehammer_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Sledgehammer_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Sledgehammer_01;
	visual 				=	"ItMw_1H_Sledgehammer_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_CLUB_01 (C_Item)
{	
	name 				=	"Knüppel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Club_01;

	damageTotal			= 	REV_Damage_1H_Club_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Club_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Club_01;
	visual 				=	"ItMw_1H_Club_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_CLUB_02 (C_Item)
{	
	name 				=	"Belegnagel";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Club_02;

	damageTotal			= 	REV_Damage_1H_Club_02;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Club_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Club_02;
	visual 				=	"ItMw_1H_Mace_Light_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_NAILMACE_01 (C_Item)
{	
	name 				=	"Nagelkeule";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Nailmace_01;

	damageTotal			= 	REV_Damage_1H_Nailmace_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Nailmace_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Nailmace_01;
	visual 				=	"ItMw_1H_Nailmace_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_WALKINGSTICK_01 (C_Item)
{	
	name 				=	"Gehstock";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_WalkingStick_01;

	damageTotal			= 	REV_Damage_1H_WalkingStick_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_WalkingStick_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_WalkingStick_01;
	visual 				=	"Itmw_008_1h_pole_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_BRANCH_01 (C_Item)
{	
	name 				=	"Schwerer Ast";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_1H_Branch_01;

	damageTotal			= 	REV_Damage_1H_Branch_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_1H_Branch_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Branch_01;
	visual 				=	"ItMw_010_1h_Club_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_KNIFE_01 (C_Item)
{	
	name 				=	"Wolfsmesser";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Knife_01;

	damageTotal			= 	REV_Damage_1H_Knife_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Knife_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Knife_01;
	visual 				=	"ItMw_012_1h_Knife_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_DAGGER_01 (C_Item)
{	
	name 				=	"Dolch";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Dagger_01;

	damageTotal			= 	REV_Damage_1H_Dagger_01;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Dagger_01;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Dagger_01;
	visual 				=	"Itmw_005_1h_dagger_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_DAGGER_02 (C_Item)
{	
	name 				=	"Golddolch";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Dagger_02;

	damageTotal			= 	REV_Damage_1H_Dagger_02;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Dagger_02;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_1H_Dagger_02;
	visual 				=	"REV_1H_DAGGER_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_1H_SWORD_07 (C_Item)
{	
	name 				=	"Schwert";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_1H_Sword_07;

	damageTotal			= 	REV_Damage_1H_Sword_07;
	damagetype 			=	DAM_EDGE;
	range    			=	REV_Range_1H_Sword_07;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_1H_Sword_07;
	visual 				=	"ItMw_018_1h_SwordCane_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Edge;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OneHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};