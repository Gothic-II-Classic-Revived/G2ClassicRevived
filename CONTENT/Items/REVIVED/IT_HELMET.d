CONST INT WEAR_ARMS = 64;
CONST INT WEAR_LEGS = 128;
CONST INT WEAR_HOOD = 256;
CONST INT WEAR_SHOULDER = 512;
CONST INT WEAR_CLOAK = 1024;

//****************************************************************************

PROTOTYPE REVIVED_HELMET (C_Item)
{
	name					=	"Helmet";
	
	mainflag				=	ITEM_KAT_ARMOR;
	flags					=	0;
	
	protection [PROT_EDGE]	=	0;
	protection [PROT_BLUNT] = 	0;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value					=	0;

	wear					=	WEAR_Head;

	visual					=	"REV_ITHE_01.3ds";
	material				=	MAT_METAL;

	description				=	"PROTOTYPE";
};

//****************************************************************************
//			SPECTACLES
//****************************************************************************

INSTANCE ITHE_REVIVED_SPECTACLES_01(REVIVED_HELMET)
{
	name					=	"Spectacles";
	visual					=	"REV_SPECTACLE_1.3ds";
	description				=	name;
};

INSTANCE ITHE_REVIVED_SPECTACLES_02(REVIVED_HELMET)
{
	name					=	"Spectacles";
	visual					=	"REV_SPECTACLE_2.3ds";
	description				=	name;
};

INSTANCE ITHE_REVIVED_SPECTACLES_03(REVIVED_HELMET)
{
	name					=	"Spectacles";
	visual					=	"REV_SPECTACLE_3.3ds";
	description				=	name;
};

INSTANCE ITHE_REVIVED_SPECTACLES_04(REVIVED_HELMET)
{
	name					=	"Spectacles";
	visual					=	"REV_SPECTACLE_4.3ds";
	description				=	name;
};

//****************************************************************************
//			GOTHIC II HELMETS
//****************************************************************************
INSTANCE ITHE_REVIVED_KNIGHT(REVIVED_HELMET)
{
	name					=	"Old Knight's Helmet";
	visual					=	"REV_HAT_RITTER_OLD.3ds";
	description				=	name;
};
// ******************************************************
INSTANCE ITHE_REVIVED_DJG_M(REVIVED_HELMET)
{
	name					=	"Dragonhunter's Helmet";
	visual					=	"REV_HAT_DJGM.3ds";
	description				=	name;
};

INSTANCE ITHE_REVIVED_DJG_H(REVIVED_HELMET)
{
	name					=	"Dragonhunter's Helmet";
	visual					=	"REV_HAT_DJGH.3ds";
	description				=	name;
};
// ******************************************************
INSTANCE ITHE_REVIVED_PIR(REVIVED_HELMET)
{
	name					=	"Captain's hat";
	visual					=	"REV_HAT_KAPITAEN.3ds";
	description				=	name;
};

//****************************************************************************
//			REVIVED HELMETS
//****************************************************************************
INSTANCE ITHE_REVIVED_PAL(REVIVED_HELMET)
{
	name					=	"Paladin's Helmet";
	visual					=	"REV_HAT_PALADIN.3ds";
	description				=	name;
};

INSTANCE ITHE_REVIVED_01 (REVIVED_HELMET)
{
	name					=	"Helmet";

	protection [PROT_EDGE]	=	2;
	protection [PROT_BLUNT] = 	2;
	protection [PROT_POINT] = 	2;

	value					=	10;

	visual					=	"REV_ITHE_01.3ds";

	description				=	name;
	TEXT[0]					=	NAME_Prot_Edge;			COUNT[0]				= 	protection	[PROT_EDGE];
	TEXT[1]					=	NAME_Prot_Blunt;		COUNT[1]				= 	protection	[PROT_BLUNT];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[5]					=	NAME_Prot_Point;		COUNT[5]				= 	value;
};
