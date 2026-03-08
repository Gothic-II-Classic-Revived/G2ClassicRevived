
const int	REV_Damage_2H_Hammer_Holy				=	100;
const int	REV_Condition_2H_Hammer_Holy			=	50;
const int	REV_Range_2H_Hammer_Holy				=	120;
const int	REV_Value_2H_Hammer_Holy				=	3000;
//******************************************************************//


//****************************************************************************
//			TWO-HANDED HAMMER
//****************************************************************************
INSTANCE ITMW_REVIVED_2H_HAMMER_HOLY (C_Item)
{	
	name 				=	"Sacred Hammer";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION|ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_2H_Hammer_Holy;

	damageTotal			= 	REV_Damage_2H_Hammer_Holy;
	damagetype 			=	DAM_BLUNT|DAM_MAGIC;
	range    			=	REV_Range_2H_Hammer_Holy;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	REV_Condition_2H_Hammer_Holy;

	owner 				= 	Nov_608_Garwig;
	visual 				=	"REV_2H_HAMMER_HOLY.3DS";

	description			= 	name;
	TEXT[0]				=	"";
	TEXT[2]				= 	NAME_Damage_Blunt;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= 	NAME_HolyWeapon2H;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};