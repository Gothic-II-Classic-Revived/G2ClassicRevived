
const int	REV_Damage_2H_Pickaxe				=	30;
const int	REV_Condition_2H_Pickaxe			=	10;
const int	REV_Range_2H_Pickaxe				=	80;
const int	REV_Value_2H_Pickaxe				=	50;


//****************************************************************************
//			TWO-HANDED OTHER
//****************************************************************************
INSTANCE ITMW_REVIVED_2H_PICKAXE (C_Item)
{	
	name 				=	"Pickaxe";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	REV_Value_2H_Pickaxe;

	damageTotal			= 	REV_Damage_2H_Pickaxe;
	damagetype 			=	DAM_BLUNT;
	range    			=	REV_Range_2H_Pickaxe;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Pickaxe;
	visual 				=	"REV_2H_PICKAXE_01.3DS";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_TwoHanded;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};