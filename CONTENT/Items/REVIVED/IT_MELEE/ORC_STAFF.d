const int	REV_Damage_Orc_Staff_01				=	75;
const int	REV_Condition_Orc_Staff_01			=	200;
const int	REV_Range_Orc_Staff_01				=	140;
const int	REV_Value_Orc_Staff_01				=	200;
//******************************************************************//
const int	REV_Damage_Orc_Staff_02				=	95;
const int	REV_Condition_Orc_Staff_02			=	250;
const int	REV_Range_Orc_Staff_02				=	140;
const int	REV_Value_Orc_Staff_02				=	250;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Orc_Ulumulu				=	35;
const int	REV_Condition_Orc_Ulumulu			=	30;
const int	REV_Range_Orc_Ulumulu				=	130;
const int	REV_Value_Orc_Ulumulu				=	130;



//****************************************************************************
//			ORC WEAPONS - STAFF
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_STAFF_01 (C_Item)
{	
	name 				=	"Grachtnakk";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_Staff_01;

	damageTotal			= 	REV_Damage_Orc_Staff_01;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_Staff_01;		

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Staff_01;
	visual 				=	"ItRw_2H_Orcstaff_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITMW_REVIVED_ORC_STAFF_02 (C_Item)
{	
	name 				=	"ShaBaNakk";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_Staff_02;

	damageTotal			= 	REV_Damage_Orc_Staff_02;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_Staff_02;		

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_Condition_Orc_Staff_02;
	visual 				=	"REV_2H_ORC_STAFF_02.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

//****************************************************************************
//			SPECIAL
//****************************************************************************
INSTANCE ITMW_REVIVED_ORC_ULUMULU (C_Item)
{	
	name 				=	"Ulu-Mulu";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE|ITEM_MISSION;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Orc_UluMulu;

	damageTotal			= 	REV_Damage_Orc_UluMulu;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_Orc_UluMulu;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_Orc_UluMulu;
	visual 				=	"ItMi_Amulet_Ulumulu_02.3ds";
	visual_skin 		=	0;
	
	description			=	name;
	TEXT[0]				=	"Ulu-Mulu is a sign of great respect.";
	TEXT[2]				=	NAME_Damage_Blunt;				COUNT[3]	= damageTotal;
	TEXT[3] 			=	NAME_Str_needed;				COUNT[4]	= cond_value[2];
	TEXT[4] 			= 	NAME_OrcWeapon;
	TEXT[5]				=	NAME_Value; 					COUNT[5]	= value;
};