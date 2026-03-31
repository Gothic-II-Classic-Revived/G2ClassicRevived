
//****************************************************************************
//				PACKAGES
//****************************************************************************
INSTANCE ITMS_REVIVED_BALTRAMPACKAGE_PIRATES (C_Item)
{
	name 				=	"Paket von Baltram";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	scemename			=	"MAPSEALED";	
	on_state[0]			=   Use_BaltramPackageRevived;
	
	description			= 	name;
	TEXT[2]				= 	"Dieses schwere Paket";
	TEXT[3]				=	"guter Dinge";
	TEXT[4]				=	"wurde bei den Piraten gefunden.";
};

FUNC VOID Use_BaltramPackageRevived ()
{
		CreateInvItems (hero, ITFO_REVIVED_HAM_01_RAW, 4);
		CreateInvItems (hero, ITFO_REVIVED_APPLE_01, 4);
		CreateInvItems (hero, ITFO_REVIVED_PEAR, 6);
		CreateInvItems (hero, ITFO_REVIVED_RICE, 4);
		CreateInvItems (hero, ITPL_REVIVED_GRAPES, 2);
		CreateInvItems (hero, ITPL_REVIVED_BERRIES, 2);
		Print (PRINT_GotFood);
};