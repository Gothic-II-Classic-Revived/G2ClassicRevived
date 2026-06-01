
//****************************************************************************
//				PACKAGES
//****************************************************************************
INSTANCE ITMS_REVIVED_BALTRAMPACKAGE_PIRATES (C_Item)
{
	name 				=	"Package from Baltram";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	material 			=	 MAT_LEATHER;
	scemename			=	"MAPSEALED";	
	on_state[0]			=   Use_BaltramPackageRevived;
	
	description			= 	name;
	TEXT[2]				= 	"This heavy package";
	TEXT[3]				=	"of good things";
	TEXT[4]				=	"was found with the pirates.";
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


//****************************************************************************
//			BOUNTIES
//****************************************************************************

INSTANCE ITWR_REVIVED_BOUNTY_Q (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter0;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for a person titled 'Q'.";
};

FUNC VOID UseBountyLetter0()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "'Q'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty0)
	{
		Wld_InsertNpc(BOUNT_5000_QUALSHY, "NW_TROLLAREA_RUINS_042");
		Bounty0 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_RELIOPS (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter1;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Reliops 'Eight Fingers'.";
};

FUNC VOID UseBountyLetter1()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Reliops 'Eight Fingers'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty1)
	{
		Wld_InsertNpc(BOUNT_5001_Reliops, "NW_TROLLAREA_TROLLLAKECAVE_03A");
		Bounty1 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_DREXAR (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter2;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Drexar 'The Duelist'.";
};

FUNC VOID UseBountyLetter2()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Drexar 'The Duelist'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty2)
	{
		Wld_InsertNpc(BOUNT_5002_Drexar, "NW_XARDAS_GOBBO_01");
		Bounty2 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_MIST (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter3;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Mist 'The Executioner'.";
};

FUNC VOID UseBountyLetter3()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Mist 'The Executioner'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty3)
	{
		Wld_InsertNpc(BOUNT_5003_Mist, "NW_FARM3_VALLEY_019");
		Bounty3 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_ZERRIT (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter4;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Zerrit 'The Beastmaster'.";
};

FUNC VOID UseBountyLetter4()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Zerrit 'The Beastmaster'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty4)
	{
		Wld_InsertNpc(BOUNT_5004_Zerrit, "NW_CASTLEMINE_HUT_01_MONSTER");
		Bounty4 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_FARRIC (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter5;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Farric 'The Twisted Blade'.";
};

FUNC VOID UseBountyLetter5()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Farric 'The Twisted Blade'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty5)
	{
		Wld_InsertNpc(BOUNT_5005_Farric, "FP_ROAM_NW_BIGFARM_PEPES_WOLFS_02");
		Bounty5 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_6 (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter6;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for a Salazar 'The Sailor'.";
};

FUNC VOID UseBountyLetter6()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Salazar 'The Sailor'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty6)
	{
		Wld_InsertNpc(BOUNT_5006_Salazar, "NW_CITY_TO_LIGHTHOUSE_15");
		Bounty6 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_7 (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter7;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Delta 'The Warlock'.";
};

FUNC VOID UseBountyLetter7()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Delta 'The Warlock'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty7)
	{
		Wld_InsertNpc(BOUNT_5007_Delta, "NW_TROLLAREA_TO_MONASTERY");
		Bounty7 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_8 (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter8;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Reko 'The Joker'.";
};

FUNC VOID UseBountyLetter8()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Reko 'The Joker'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty8)
	{
		Wld_InsertNpc(BOUNT_5008_Reko, "NW_FOREST_VINOSKELLEREI_04");
		Bounty8 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_9 (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter9;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Tygren 'The Traitor'.";
};

FUNC VOID UseBountyLetter9()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Tygren 'The Traitor'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty9)
	{
		Wld_InsertNpc(BOUNT_5009_Tygren, "FP_ROAM_CITY_TO_FOREST_32");
		Bounty9 = TRUE;
	};
};
/******************************************************************************************/
INSTANCE ITWR_REVIVED_BOUNTY_10 (C_Item)
{	
	name 			=	"Bounty letter";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	0;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;
	scemeName		=	"MAP";	
	on_state[0]		=	UseBountyLetter10;

	description		=	name;
	TEXT[2]			= 	"It's a bounty letter";
	TEXT[3]			= 	"for Regan 'The Barbarian'.";
};

FUNC VOID UseBountyLetter10()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		();								 
				Doc_SetPages	(nDocID,  1);                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA", 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0, "Regan 'The Barbarian'");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "TODO: Add bounty letter text here.");
				Doc_Show		(nDocID);
	
	if(!Bounty10)
	{
		Wld_InsertNpc(BOUNT_5010_Regan, "NW_TROLLAREA_NOVCHASE_01");
		Bounty10 = TRUE;
	};
};
