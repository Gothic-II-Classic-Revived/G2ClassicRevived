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
	TEXT[0]				= "Ein alter, rostiger Schlüssel zu einer Truhe";
	TEXT[1]				= "aus der alten Bergfestung";
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
	TEXT[5]				=   "Er ist etwas abgenutzt, er ist alt.";
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
	TEXT[0]				= "Ein alter, rostiger Schlüssel zu einer Truhe";
	TEXT[1]				= "aus der alten Bergfestung";
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
	TEXT[1]				= "mit den Initialen G.R.";
};