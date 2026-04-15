const int	REV_Value_Joint				= 60;
const int	REV_Value_Nugget			= 100;
const int	REV_Value_Stuff				= 10;

const int	REV_Value_Salt					=	50;
const int	REV_Value_Sugar					=	60;
const int	REV_Value_SyrianOil				=	50;
const int	REV_Value_StoneOil				=	50;
const int	REV_Value_PureAlcohol			=	80;
const int	REV_Value_Vinegar				=	80;
const int	REV_Value_MagicWater			=	200;

//****************************************************************************

PROTOTYPE REVIVED_MISC (C_Item)
{
	name 				=	"Miscellaneous";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Stuff;

	visual 				=	"ItMi_Stuff_OldCoin_01.3ds";
	material 			=	MAT_STONE;

	description			=	"PROTOTYPE";
};


//****************************************************************************
//			SWAMPWEED
//****************************************************************************

INSTANCE ITMI_REVIVED_JOINT_GREENNOVICE (C_Item)
{
	name 				=	"Green Novice";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Joint;

	visual 				=	"ItMi_Joint_Ger.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_GREENNOVICE;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};
func void Use_ITMI_REVIVED_JOINT_GREENNOVICE()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_01 == FALSE)
		{
			B_GivePlayerXP (15);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
			PrintScreen	("Mana +2", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_01 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_NORTHDARK (C_Item)
{
	name 				=	"Northern Dark";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Joint;

	visual 				=	"ItMi_Joint_Ger.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_NORTHDARK;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};
func void Use_ITMI_REVIVED_JOINT_NORTHDARK()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_02 == FALSE)
		{
			B_GivePlayerXP (15);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
			PrintScreen	("Mana +2", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_02 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_DREAMCALL (C_Item)
{
	name 				=	"Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Joint;

	visual 				=	"ItMi_Joint_Ger.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_DREAMCALL;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};
func void Use_ITMI_REVIVED_JOINT_DREAMCALL()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_03 == FALSE)
		{
			B_GivePlayerXP (15);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
			PrintScreen	("Mana +2", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_03 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_DREAMCALL_02 (C_Item)
{
	name 				=	"Prepared Dreamcall";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Joint;

	visual 				=	"ItMi_Joint_Ger.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			=	Use_ITMI_REVIVED_JOINT_DREAMCALL_02;

	TEXT[0]		    	= "Swampweed with a stronger";
	TEXT[1]             = "effect than normal weed.";
	//TEXT[3]             = "For the Guru Baal-Tyon!";
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};

func void Use_ITMI_REVIVED_JOINT_DREAMCALL_02()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_04 == FALSE)
		{
			B_GivePlayerXP (25);
			Npc_ChangeAttribute(self, ATR_MANA_MAX, 5);
			PrintScreen	("Mana +5", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
			FirstJoint_04 = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, FALSE);
		AI_StartState	(self,ZS_MagicSleep,1,"");
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_REGULAR (C_Item)
{
	name 				=	"Joint";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_LEATHER;

	scemeName			=	"JOINT";
	on_state[0]			= 	Use_ITMI_REVIVED_JOINT_REGULAR;
	description			= 	name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};
func void Use_ITMI_REVIVED_JOINT_REGULAR()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_REGULAR == FALSE)
		{
			B_GivePlayerXP (25);
			FirstJoint_REGULAR = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME_SHORT", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_APPLE (C_Item)
{
	name 				=	"Apple Joint";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint;

	visual 				=	"ItMi_Joint_US.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_APPLE;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Joint;
};
func void Use_ITMI_REVIVED_JOINT_APPLE()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_APPLE == FALSE)
		{
			B_GivePlayerXP (25);
			FirstJoint_APPLE = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME_SHORT", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_APPLEDOUBLE (C_Item)
{
	name 				=	"Stronger apple Joint";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint;

	visual 				=	"ItMi_Joint_US.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_APPLEDOUBLE;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Use_ITMI_REVIVED_JOINT_APPLEDOUBLE()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_APPLEDOUBLE == FALSE)
		{
			B_GivePlayerXP (50);
			FirstJoint_APPLEDOUBLE = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME_SHORT", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_HONEY (C_Item)
{
	name 				=	"Honey Joint";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint;

	visual 				=	"ItMi_Joint_US.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_HONEY;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Use_ITMI_REVIVED_JOINT_HONEY()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_HONEY == FALSE)
		{
			B_GivePlayerXP (30);
			FirstJoint_HONEY = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME_SHORT", self, self, 0, 0, 0, FALSE);
	};
};

/******************************************************************************************/
INSTANCE ITMI_REVIVED_JOINT_MUSHROOM (C_Item)
{
	name 				=	"Mushroom Joint";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint;

	visual 				=	"ItMi_Joint_US.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= Use_ITMI_REVIVED_JOINT_MUSHROOM;
	description			= name;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Use_ITMI_REVIVED_JOINT_MUSHROOM()
{
	if (Npc_IsPlayer (self))
	{
		if (FirstJoint_MUSHROOM == FALSE)
		{
			B_GivePlayerXP (25);
			FirstJoint_MUSHROOM = TRUE;
		};
		Wld_PlayEffect ("SLOW_TIME_SHORT", self, self, 0, 0, 0, FALSE);
	};
};

//****************************************************************************
//			COMPONENTS
//****************************************************************************

INSTANCE ITMI_REVIVED_SALT (REVIVED_MISC)
{
	name 				=	"Salt";
	value 				=	REV_Value_Salt;

	visual 				=	"REV_ITMI_SALT.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_SUGAR (REVIVED_MISC)
{
	name 				=	"Sugar";
	value 				=	REV_Value_Sugar;

	visual 				=	"REV_ITMI_SUGAR.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_SYRIANOIL (REVIVED_MISC)
{
	name 				=	"Syrianic Oil";
	value 				=	REV_Value_SyrianOil;

	visual 				=	"REV_ITMI_SYRIANOIL.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STONEOIL (REVIVED_MISC)
{
	name 				=	"Stone Oil";
	value 				=	REV_Value_StoneOil;

	visual 				=	"REV_ITMI_STONEOIL.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_PUREALCOHOL (REVIVED_MISC)
{
	name 				=	"Pure Alcohol";
	value 				=	REV_Value_PureAlcohol;

	visual 				=	"REV_ITMI_ALCOHOL.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_VINEGAR (REVIVED_MISC)
{
	name 				=	"Vinegar";
	value 				=	REV_Value_Vinegar;

	visual 				=	"REV_ITMI_ALCOHOL.3DS";
	material 			=	MAT_GLAS;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_MAGICWATER (REVIVED_MISC)
{
	name 				=	"Magic Water";
	value 				=	REV_Value_MagicWater;

	visual 				=	"REV_ITMI_MAGICWATER.3ds";
	material 			=	MAT_GLAS;

	description			= 	name;
};

//****************************************************************************
//			STUFF
//****************************************************************************

INSTANCE ITMI_REVIVED_WARHORN (REVIVED_MISC)
{
	name 				=	"Horn";

	visual 				=	"ItMi_Alarmhorn_01.3DS";
	material 			=	MAT_WOOD;
	scemeName			=	"HORN";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_OLDCOIN (REVIVED_MISC)
{
	name 				=	"Old Coin";
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	value 				=	0;

	visual 				=	"ItMi_Stuff_OldCoin_01.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_MAGICORE (REVIVED_MISC)
{
	name 				=	"Lump of Ore";

	visual 				=	"REV_ItMi_Nugget_NoMagic.3ds";

	TEXT[0]				=	"The ore is faded and does not shine.";
	INV_ZBIAS			=	INVCAM_ENTF_MISC2_STANDARD;

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_AMPHORE (REVIVED_MISC)
{
	name 				=	"Amphore";
	visual 				=	"ItMi_Stuff_Amphore_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_CUP_01 (REVIVED_MISC)
{
	name 				=	"Cup";
	visual 				=	"ItMi_Stuff_Cup_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_CUP_02 (REVIVED_MISC)
{
	name 				=	"Cup";
	visual 				=	"ItMi_Stuff_Cup_02.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_MUG (REVIVED_MISC)
{
	name 				=	"Mug";
	visual 				=	"ItMi_Stuff_Mug_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_PLATE (REVIVED_MISC)
{
	name 				=	"Metal plate";
	visual 				=	"ItMi_Stuff_Plate_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_SILVERWARE (REVIVED_MISC)
{
	name 				=	"Silverware";
	visual 				=	"ItMi_Stuff_Silverware_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_PIPE (REVIVED_MISC)
{
	name 				=	"Pipe";
	visual 				=	"ItMi_Stuff_Pipe_01.3ds";

	description			= 	name;
};

INSTANCE ITMI_REVIVED_STUFF_IDOL_01 (REVIVED_MISC)
{
	name 				=	"Figurine";

	visual 				=	"ItMi_Stuff_Idol_Sleeper_01.3DS";
	material 			=	MAT_CLAY;

	description			= 	name;

	TEXT[0]				=	"This figure is a misshapen";
	TEXT[1]				=	"being with a mask.";
	TEXT[2]				=	"The mask is surrounded by six big stings.";
};

INSTANCE ITMI_REVIVED_STUFF_IDOL_02 (REVIVED_MISC)
{
	name 				=	"Figurine";

	visual 				=	"REV_ITMI_STUFF_IDOL_OGRONT_01.3DS";
	material 			=	MAT_CLAY;

	description			= 	name;

	TEXT[0]				=	"This figure is a misshapen";
	TEXT[1]				=	"being with a mask.";
	TEXT[2]				=	"The mask is decorated with two big stings.";
};