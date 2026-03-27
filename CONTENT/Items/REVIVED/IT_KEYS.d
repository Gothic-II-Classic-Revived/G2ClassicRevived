//****************************************************************************
//			KEYS
//****************************************************************************

INSTANCE ITKE_REVIVED_STONEFORTRESS (C_Item)
{
	name 				=	"Alter Schlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "An old rusty key to a chest";
	TEXT[1]				= "from the old mountain fort";
};

INSTANCE ITKE_REVIVED_XARDAS(C_Item)
{
	name 				=	"Xardas Schlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Ein Truhenschlüssel";
	TEXT[3]				=   "von Xardas";
	TEXT[5]				=   "A bit worn down, it's old.";
};

INSTANCE ITKE_REVIVED_GOMEZ (C_Item)
{
	name 				=	"Gomez' Schlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "An old rusty key to a chest";
	TEXT[1]				= "from the old mountain fort";
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITKE_REVIVED_GORDONRAMSAY (C_Item)
{
	name 				=	"Küchenschlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;
	description			= name;
	TEXT[0]				= "Alter Schlüssel";
	TEXT[1]				= "with the initials G.R.";
};