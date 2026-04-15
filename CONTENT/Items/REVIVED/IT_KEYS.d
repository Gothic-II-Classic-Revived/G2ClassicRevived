
PROTOTYPE REVIVED_KEY (C_Item)
{
	name 				=	"Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;	

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			=	"PROTOTYPE";
};

//****************************************************************************
//			KEYS
//****************************************************************************

INSTANCE ITKE_REVIVED_STONEFORTRESS (REVIVED_KEY)
{
	name 				=	"Old Key";

	description			= 	name;

	TEXT[0]				=	"An old rusty key to a chest";
	TEXT[1]				=	"from the old mountain fort";
};

INSTANCE ITKE_REVIVED_XARDAS(REVIVED_KEY)
{
	name 				=	"Xardas' Key";

	description			= 	name;

	TEXT[0]				=	"A key to a chest";
	TEXT[1]				=   "belonging to Xardas.";
	TEXT[5]				=   "A bit worn down, it's old.";
};

INSTANCE ITKE_REVIVED_GOMEZ (REVIVED_KEY)
{
	name 				=	"Gomez's Key";

	description			= 	name;

	TEXT[0]				=	"An old rusty key to a chest";
	TEXT[1]				=	"from the old mountain fort";
	TEXT[5]				=   "I took it from Gomez. Again.";
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITKE_REVIVED_GORDONRAMSAY (REVIVED_KEY)
{
	name 				=	"Kitchen Key";

	description			= 	name;

	TEXT[0]				=	"Old key";
	TEXT[1]				=	"with the initials G.R.";
};