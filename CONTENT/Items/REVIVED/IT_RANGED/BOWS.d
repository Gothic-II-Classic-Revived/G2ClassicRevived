const int	REV_Damage_Bow_Small_01				=	15;
const int	REV_Condition_Bow_Small_01			=	10;
const int	REV_Value_Bow_Small_01				=	40;
//******************************************************************//
const int	REV_Damage_Bow_Small_02				=	25;
const int	REV_Condition_Bow_Small_02			=	20;
const int	REV_Value_Bow_Small_02				=	80;
//******************************************************************//
const int	REV_Damage_Bow_Small_03				=	35;
const int	REV_Condition_Bow_Small_03			=	30;
const int	REV_Value_Bow_Small_03				=	120;
//******************************************************************//
const int	REV_Damage_Bow_Small_04				=	40;
const int	REV_Condition_Bow_Small_04			=	35;
const int	REV_Value_Bow_Small_04				=	160;
//******************************************************************//
const int	REV_Damage_Bow_Small_05				=	45;
const int	REV_Condition_Bow_Small_05			=	40;
const int	REV_Value_Bow_Small_05				=	200;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Bow_Long_01				=	60;
const int	REV_Condition_Bow_Long_01			=	30;
const int	REV_Value_Bow_Long_01				=	240;
//******************************************************************//
const int	REV_Damage_Bow_Long_02				=	75;
const int	REV_Condition_Bow_Long_02			=	50;
const int	REV_Value_Bow_Long_02				=	280;
//******************************************************************//
const int	REV_Damage_Bow_Long_03				=	85;
const int	REV_Condition_Bow_Long_03			=	85;
const int	REV_Value_Bow_Long_03				=	320;
//******************************************************************//
const int	REV_Damage_Bow_Long_04				=	100;
const int	REV_Condition_Bow_Long_04			=	100;
const int	REV_Value_Bow_Long_04				=	360;
//******************************************************************//
const int	REV_Damage_Bow_Long_05				=	120;
const int	REV_Condition_Bow_Long_05			=	115;
const int	REV_Value_Bow_Long_05				=	440;
//******************************************************************//
const int	REV_Damage_Bow_Long_06				=	130;
const int	REV_Condition_Bow_Long_06			=	120;
const int	REV_Value_Bow_Long_06				=	480;
//******************************************************************//
const int	REV_Damage_Bow_Long_07				=	140;
const int	REV_Condition_Bow_Long_07			=	130;
const int	REV_Value_Bow_Long_07				=	520;
//******************************************************************//
const int	REV_Damage_Bow_Long_08				=	145;
const int	REV_Condition_Bow_Long_08			=	140;
const int	REV_Value_Bow_Long_08				=	560;
//******************************************************************//
const int	REV_Damage_Bow_Long_09				=	150;
const int	REV_Condition_Bow_Long_09			=	150;
const int	REV_Value_Bow_Long_09				=	600;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Bow_War_01				=	170;
const int	REV_Condition_Bow_War_01			=	160;
const int	REV_Value_Bow_War_01				=	640;
//******************************************************************//
const int	REV_Damage_Bow_War_02				=	175;
const int	REV_Condition_Bow_War_02			=	175;
const int	REV_Value_Bow_War_02				=	680;
//******************************************************************//
const int	REV_Damage_Bow_War_03				=	190;
const int	REV_Condition_Bow_War_03			=	190;
const int	REV_Value_Bow_War_03				=	720;
//******************************************************************//
const int	REV_Damage_Bow_War_04				=	200;
const int	REV_Condition_Bow_War_04			=	200;
const int	REV_Value_Bow_War_04				=	760;
//******************************************************************//
const int	REV_Damage_Bow_War_05				=	220;
const int	REV_Condition_Bow_War_05			=	210;
const int	REV_Value_Bow_War_05				=	1000;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Bow_Magic_01				=	200;
const int	REV_Condition_Bow_Magic_01			=	60;
const int	REV_Value_Bow_Magic_01				=	760;
//******************************************************************//
const int	REV_Damage_Bow_Fire_01				=	200;
const int	REV_Condition_Bow_Fire_01			=	60;
const int	REV_Value_Bow_Fire_01				=	1000;
//******************************************************************//
//******************************************************************//
const int	REV_Damage_Bow_Diego				=	70;
const int	REV_Condition_Bow_Diego				=	45;
const int	REV_Value_Bow_Diego					=	390;
//******************************************************************//
const int	REV_Damage_Bow_Wolf					=	35;
const int	REV_Condition_Bow_Wolf				=	35;
const int	REV_Value_Bow_Wolf					=	200;
//******************************************************************//
const int	REV_Damage_Bow_Cavalorn				=	35;
const int	REV_Condition_Bow_Cavalorn			=	35;
const int	REV_Value_Bow_Cavalorn				=	200;
//******************************************************************//
const int	REV_Damage_Bow_Bosper				=	35;
const int	REV_Condition_Bow_Bosper			=	35;
const int	REV_Value_Bow_Bosper				=	200;



//****************************************************************************
//			BOWS
//****************************************************************************
INSTANCE ITRW_REVIVED_BOW_SMALL_01 (C_Item)
{
	name 				=	"Kurzbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Small_01;

	damageTotal			= 	REV_Damage_Bow_Small_01;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Small_01;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Small_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_SMALL_02 (C_Item)
{
	name 				=	"Reiterbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Small_02;

	damageTotal			= 	REV_Damage_Bow_Small_02;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Small_02;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Small_02.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_SMALL_03 (C_Item)
{
	name 				=	"Feldbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Small_03;

	damageTotal			= 	REV_Damage_Bow_Small_03;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Small_03;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Small_03.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_SMALL_04 (C_Item)
{
	name 				=	"Jagdbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Small_04;

	damageTotal			= 	REV_Damage_Bow_Small_04;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Small_04;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Small_04.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_SMALL_05 (C_Item)
{
	name 				=	"Knochenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Small_05;

	damageTotal			= 	REV_Damage_Bow_Small_05;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Small_05;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Small_05.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_BOW_LONG_01 (C_Item)
{
	name 				=	"Longbow";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_01;

	damageTotal			= 	REV_Damage_Bow_Long_01;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_01;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_02 (C_Item)
{
	name 				=	"Heckenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_02;

	damageTotal			= 	REV_Damage_Bow_Long_02;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_02;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_02.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_03 (C_Item)
{
	name 				=	"Weidenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_03;

	damageTotal			= 	REV_Damage_Bow_Long_03;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_03;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_03.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_04 (C_Item)
{
	name 				=	"Eichenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_04;

	damageTotal			= 	REV_Damage_Bow_Long_04;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_04;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_04.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_05 (C_Item)
{
	name 				=	"Wolfsfetzer";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_05;

	damageTotal			= 	REV_Damage_Bow_Long_05;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_05;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_05.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_06 (C_Item)
{
	name 				=	"Windbrecher";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_06;

	damageTotal			= 	REV_Damage_Bow_Long_06;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_06;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_06.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
INSTANCE ITRW_REVIVED_BOW_LONG_07 (C_Item)
{
	name 				=	"Armeebogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_07;

	damageTotal			= 	REV_Damage_Bow_Long_07;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_07;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_07.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_08 (C_Item)
{
	name 				=	"Hornbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_08;

	damageTotal			= 	REV_Damage_Bow_Long_08;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_08;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_08.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_LONG_09 (C_Item)
{
	name 				=	"Nimroder";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Long_09;

	damageTotal			= 	REV_Damage_Bow_Long_09;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Long_09;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_Long_08.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_BOW_WAR_01 (C_Item)
{
	name 				=	"Kriegsbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_War_01;

	damageTotal			= 	REV_Damage_Bow_War_01;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_War_01;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_War_01.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WAR_02 (C_Item)
{
	name 				=	"Orkhetzer";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_War_02;

	damageTotal			= 	REV_Damage_Bow_War_02;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_War_02;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_War_02.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WAR_03 (C_Item)
{
	name 				=	"Sturmbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_War_03;

	damageTotal			= 	REV_Damage_Bow_War_03;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_War_03;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_War_03.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WAR_04 (C_Item)
{
	name 				=	"Dämonenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_War_04;

	damageTotal			= 	REV_Damage_Bow_War_04;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_War_04;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_War_04.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WAR_05 (C_Item)
{
	name 				=	"Todbringer";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_War_05;

	damageTotal			= 	REV_Damage_Bow_War_05;
	damagetype 			=	DAM_POINT;		

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_War_05;

	munition			=	ITRW_ARROW;
	visual 				=	"ItRw_Bow_War_04.mms";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			SPECIAL
//****************************************************************************
instance ITRW_REVIVED_MAGICARROW (C_Item)
{
	name 				=	"Magischer Pfeil";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW | ITEM_MULTI;

	value 				=	Value_Pfeil;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_BOLT";

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};
instance ITRW_REVIVED_FIREARROW (C_Item)
{
	name 				=	"Feuerpfeil";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW | ITEM_MULTI;

	value 				=	Value_Pfeil;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREARROW";

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};
//******************************************************************//
INSTANCE ITRW_REVIVED_BOW_MAGIC_01 (C_Item)
{
	name 				=	"Magischer Bogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Magic_01;

	damageTotal			= 	REV_Damage_Bow_Magic_01;
	damagetype 			=	DAM_POINT|DAM_MAGIC;	

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Magic_01;

	munition			=	ITRW_REVIVED_MAGICARROW;
	visual 				=	"ItRw_Bow_H_04.mms";

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_CROSSBOW";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_FIRE_01 (C_Item)
{
	name 				=	"Feuerbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Fire_01;

	damageTotal			= 	REV_Damage_Bow_Fire_01;
	damagetype 			=	DAM_POINT|DAM_FIRE;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Fire_01;

	munition			=	ITRW_REVIVED_FIREARROW;
	visual 				=	"ItRw_Bow_H_04.mms";
	
	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREBOW";

	description			= 	name;
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};




//****************************************************************************
//			OWNED
//****************************************************************************
INSTANCE ITRW_REVIVED_BOW_DIEGO (C_Item)
{
	name 				= "Diegos Bogen";

	mainflag 			= ITEM_KAT_FF;
	flags 				= ITEM_BOW;
	material 			= MAT_WOOD;

	value 				= REV_Value_Bow_Diego;

	damageTotal 		= REV_Damage_Bow_Diego;
	damagetype			= DAM_POINT;
	munition			= ITRW_ARROW;

	cond_atr[2]   		= ATR_DEXTERITY;
	cond_value[2]  		= REV_Condition_Bow_Diego;

	//owner 				= PC_THIEF;
	visual 				= "ItRwLongbow.mms";

	description			= 	name;
	TEXT[0]				=	"Es gehört Diego";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_WOLF (C_Item)
{
	name 				=	"Wolfs Bogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Wolf;

	damageTotal			=	REV_Damage_Bow_Wolf;
	damagetype			=	DAM_POINT;
	munition			=	ITRW_ARROW;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Wolf;

	//owner 				=   ORG_855_WOLF;
	visual 				=	"ItRwLongbow.mms";

	description			= 	name;
	TEXT[0]				=	"Es gehört Wolf";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_CAVALORN (C_Item)
{
	name 				=	"Cavalorns Bogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Cavalorn;

	damageTotal			=	REV_Damage_Bow_Cavalorn;
	damagetype			=	DAM_POINT;
	munition			=	ITRW_ARROW;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Cavalorn;

	//owner 				=   ORG_855_WOLF;
	visual 				=	"ItRw_Bow_Small_02.mms";

	description			= 	name;
	TEXT[0]				=	"Es gehört Cavalorn";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITRW_REVIVED_BOW_BOSPER (C_Item)
{
	name 				=	"Bosper's Bogen.";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	REV_Value_Bow_Bosper;

	damageTotal			=	REV_Damage_Bow_Bosper;
	damagetype			=	DAM_POINT;
	munition			=	ITRW_ARROW;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	REV_Condition_Bow_Bosper;

	//owner 				=   VLK_413_Bosper;
	visual 				=	"ItRw_Bow_Small_02.mms";

	description			= 	name;
	TEXT[0]				=	"Es gehört Bosper";
	TEXT[2]				= 	NAME_Damage_Point;				COUNT[2]	= damageTotal;
	TEXT[3] 			= 	NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};