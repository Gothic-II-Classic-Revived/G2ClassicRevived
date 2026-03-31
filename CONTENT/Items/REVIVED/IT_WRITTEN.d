const int	REV_VALUE_RECIPE	=	25;

//****************************************************************************
//			BOOKS
//****************************************************************************

INSTANCE ITWR_REVIVED_CIRCLE_KDF_01(C_Item)
{	
	name 					=	"Der erste Kreis";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	50;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description				=	"Der erste Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_01;
};
	
INSTANCE ITWR_REVIVED_CIRCLE_KDF_02(C_Item)
{	
	name 					=	"Der zweite Kreis";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description				=	"Der zweiter Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_02;
};
						
INSTANCE ITWR_REVIVED_CIRCLE_KDF_03 (C_Item)
{	
	name 					=	"Der dritte Kreis";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Der dritte Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_03;
};
	
INSTANCE ITWR_REVIVED_CIRCLE_KDF_04 (C_Item)
{	
	name 					=	"Der vierte Kreis";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	200;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Der vierte Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_04;
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_05(C_Item)
{	
	name 					=	"Der fünfte Kreis";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	250;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Der fünfte Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_05;
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_06(C_Item)
{	
	name 					=	"Der sechste Kreis";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	300;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Sechster Kreis der Magie";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Book_Circle_06;
};


/******************************************************************************************/

INSTANCE ITWR_REVIVED_GIFTFROMTHEGODS(C_Item)
{	
	name 					=	"Göttergabe";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description				=	"Göttergabe";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_MAGIC5_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_SECRETSOFMAGIC(C_Item)
{	
	name 					=	"Geheimnisse der Zauberei";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description				=	"Geheimnisse der Zauberei";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_MAGIC4_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_POWERFULART (C_Item)
{	
	name 					=	"Machtvolle Kunst";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Machtvolle Kunst";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_MAGIC7_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ELEMENTARYARCANUM (C_Item)
{	
	name 					=	"Elementare Arcanei";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Elementare Arcanei";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_MAGIC2_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_TRUEPOWER (C_Item)
{	
	name 					=	"Wahre Macht";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Wahre Macht";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_MAGIC3_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAGICORE (C_Item)
{	
	name 					=	"Das magische Erz";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Das magische Erz";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_HISTORY1_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ASTRONOMY (C_ITEM)
{	
	name 					=	"Astronomie";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Astronomie";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_BookstandRevived_ASTRONOMY1_S1;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_01 (C_Item)
{	
	name 					=	"Arkanum Golum - Band I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook1;
};

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_02(C_Item)
{	
	name 					=	"Arkanum Golum - Band II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook2;
};

/******************************************************************************************/
INSTANCE ITWR_REVIVED_WORDSOFGODS_01 (C_ITEM)
{	
	name 					=	"Lehren der Götter Band1";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Lehren der Götter";
	TEXT[0]				= "Band 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter1;
};

INSTANCE ITWR_REVIVED_WORDSOFGODS_02 (C_ITEM)
{	
	name 					=	"Lehren der Götter Band2";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Lehren der Götter";
	TEXT[0]				= "Band 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter2;
};

INSTANCE ITWR_REVIVED_WORDSOFGODS_03 (C_ITEM)
{	
	name 					=	"Lehren der Götter Band3";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Lehren der Götter";
	TEXT[0]					=	"Band 3";

	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseLehren_der_Goetter3;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_VARANT_01 (C_Item)
{	
	name 					=	"Schlacht um Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Schlacht um Varant";
	TEXT[0]				= "Band 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant1;
};

INSTANCE ITWR_REVIVED_VARANT_02(C_Item)
{	
	name 					=	"Schlacht um Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Schlacht um Varant";
	TEXT[0]				= "Band 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant2;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MYRTANAPOETRY (C_Item)
{	
	name 					=	"Myrtanas Lyrik";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Myrtanas Lyrik";

	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseMyrtanas_Lyrik;
};

	FUNC VOID UseMyrtanas_Lyrik()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"    The Song of");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"          Repentance");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
		
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"Am Anfang war die Macht, rein und pur,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"heute bleibt nur noch das Echo vom alten Schwur.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Die Zeiten der Einheit schon lang dahin,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"nach Hab und Gut steht uns nun der Sinn.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Geteilt ist nun, was einst zusammen.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Verflucht der Geist der uns genommen.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Voll Sehnsucht sind der unsren Lieder.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Die Einigkeit kommt niemals wieder.");				
					Doc_PrintLines	( nDocID,  1,"");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_HUNTANDPREY (C_ITEM)
{	
	name 					=	"Jagd und Beute";
	mainflag 				=	ITEM_KAT_DOCS;			
									
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Jagd und Beute";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseJagd_und_Beute;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BLOODFLIES (C_Item)
{	
	name 					=	"Die Blutfliegen";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description				=	"Die Blutfliegen";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseItWr_Bloodfly_01;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARTOFFIGHTING (C_ITEM)
{	
	name 					=	"Kampfkunst";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Kampfkunst";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseKampfkunst;
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPES_01 (C_ITEM)
{	
	name 					=	"Rezepturen";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Rezepturen";
	TEXT[0]					=	"Band 1";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseRezepturen;
};

	FUNC VOID UseRezepturen()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Das Balsam des Sehens:");
					Doc_PrintLine	( nDocID,  0,"----------------");
					Doc_PrintLine	( nDocID,  0,"");		
					Doc_PrintLines	( nDocID,  0,"Dazu wird ihm Galle auf die Augen gestrichen. Galle ist bitter im Geschmack. Wird dieses Bittere auf das Auge genommen, dh: schauen wir das Bittere an, so erwächst daraus Weisheit. Wir werden sehend! Bitterkeit und Weisheit schliessen einander aus. Sie sind Gegenpole!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Tränen, Leid und Enttäuschung sind bitter, die Weisheit aber ist die Trösterin in jedem seelischen Schmerz. Bitterkeit und Weisheit bilden eine Alternative. Wo Bitterkeit, da fehlt die Weisheit, und wo Weisheit, da gibt es keine Bitterkeit.");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_RECIPES_02 (C_ITEM)
{	
	name 					=	"Rezepturen";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	"Rezepturen";
	TEXT[0]					=	"Band 2";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	UseRezepturen2;
};

	FUNC VOID UseRezepturen2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Der Wein des Vergessens");
					Doc_PrintLine	( nDocID,  0,"--------------------");
						Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"Hoch oben an den Hängen des Archolos, gibt es die besten Trauben, die man für diesen Wein finden kann. Die Kunst diesen Wein zu seiner Vollendung reifen zu lassen, besteht darin, ihn unter keinen Umständen jeglicher Bewegung auszusetzen. Die Trauben werden vor der Kellerei mit dem gemeinen Syos-kraut versetzt.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Sehet und staunet, wenn der Magister klarstes Brunnenwasser zu vortrefflichen Wein verwandelt. Alle ihm huldigen und sich an seiner Gabe laben. Der Magister seine faulen Lehrlinge zur Strafe in Flaschen sperrt, Feuer sich auf wundersame Weise entzündet und schwarze Schlangen emporwachsen.");
					Doc_Show		( nDocID );
	};

//****************************************************************************

INSTANCE ITWR_REVIVED_KALOMSRECIPE (C_Item)
{
	name 					=	"Kalom's Rezept";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Scroll_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				=	name;
	TEXT[0]					=	"Das Rezept für einen Heiltrank";
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	on_state[0]				=	Use_KalomsRecipe;
};

func VOID Use_KalomsRecipe()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
				
				//1.Seite

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0, ""									);
				Doc_PrintLine	( nDocID,  0,"Lifrun ak Gharak"); 		
				Doc_PrintLine	( nDocID,  0, ""									); 			
				Doc_PrintLines	( nDocID,  0,"Gharak Or Nach bin thu. Lifrun mar Orag chtah. Shrunk esp Horinth.");
				
				//2.Seite

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1, ""					);					
				Doc_PrintLines	( nDocID,  1,"Wenn man es rückwärts liest, scheint es einen Sinn zu geben");
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1,"          - Kalom");	
				
				
				
				
				Doc_Show		( nDocID );
};

//****************************************************************************
//			NOTES
//****************************************************************************



//****************************************************************************
//			RECIPES
//****************************************************************************
INSTANCE ITWR_REVIVED_RECIPE_TURNIPBOOZE		(C_Item)
{
	name 				=	"Rezept für Rübenschnaps";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_TurnipBooze;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für Rübenschnaps";
};
func void UseRecipe_TurnipBooze ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Rübenlikör"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Herstellung von Alkohol auf Rübenbasis:");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Man nehme eine Wasserflasche, sowie 2 Rüben und 'ne ordentliche Portion Sumpfkraut.");	
					Doc_PrintLines	( nDocID,  0, "Dazu gemahlene Zähne von einem Sumpfhai."					);
					Doc_PrintLines	( nDocID,  0, "Alles in eine Flasche geben und mit einem Schuss Bier aufkochen."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_Show		( nDocID );

	if(KnowsRecipe_TurnipBooze == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_TURNIPBOOZE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_TurnipBooze = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_TurnipBooze] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_VINOSPECIAL		(C_Item)
{
	name 				=	"Rezept für 'Vinos Spezial'";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_VinoSpecial;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für 'Vinos Spezial'";
};
func void UseRecipe_VinoSpecial ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Vinos Spezialität" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Zutaten für die Herstellung von 'Vinos Spezial':" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Nimm zwei Handvoll Beeren und zerdrücke sie gut." );
					Doc_PrintLines	( nDocID,  0, "Füge zwei Äpfel und zwei Birnen hinzu, um die Mischung zu süßen." );
					Doc_PrintLines	( nDocID,  0, "Rühre die getrockneten Flügel einer Blutfliege unter." );
					Doc_PrintLines	( nDocID,  0, "Lass die Mischung in einer verschlossenen Flasche gären." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_VinoBooze == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_VINOBOOZE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_VinoBooze = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_VinoBooze] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MONSTERDRINK		(C_Item)
{
	name 				=	"Rezept für Monstergetränk";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MonsterDrink;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für 'Monster-Drink'";
};
func void UseRecipe_MonsterDrink ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Bestiengetränk" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Zutaten für die Herstellung von Monstergetränk:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Zerkleinere zwei Blätter des Kronstöckl zu einer Paste." );
					Doc_PrintLines	( nDocID,  0, "Füge gemahlenes Trollzahnpulver aus zwei Stücken hinzu." );
					Doc_PrintLines	( nDocID,  0, "Mische vier Zähne und vier Klauen von Bestien darunter." );
					Doc_PrintLines	( nDocID,  0, "Koche alles zusammen, bis das Getränk eindickt." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_MonsterDrink == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MONSTERDRINK);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MonsterDrink = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_MonsterDrink] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MAGEWINE		(C_Item)
{
	name 				=	"Rezept für Klosterwein";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MageWine;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für 'Klosterwein'";
};
func void UseRecipe_MageWine ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Klosterwein" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Klosterwein:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Presse vier reife Trauben zu Saft aus." );
					Doc_PrintLines	( nDocID,  0, "Füge den Stachel einer Blutfliege hinzu, um den Geschmack zu verstärken." );
					Doc_PrintLines	( nDocID,  0, "Verschließe die Mischung in einer Flasche und lass sie reifen." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_MageWine == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MAGEWINE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MageWine = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_MageWine] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_RICESCHNAPPS		(C_Item)
{
	name 				=	"Rezept für Reisschnaps";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RiceBooze;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für 'Reisschnaps'";
};
func void UseRecipe_RiceBooze ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Reisschnaps" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Zutaten für die Herstellung von Reisschnaps:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Nimm vier Reispflanzen und zerkleinere die Körner." );
					Doc_PrintLines	( nDocID,  0, "Füge fein gehackte Lurker-Krallen hinzu." );
					Doc_PrintLines	( nDocID,  0, "Koche die Mischung in einer Flasche auf und lass sie abkühlen." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_RiceSchnaps == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_RICESCHNAPS);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_RiceSchnaps = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_RiceSchnaps] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MEAD		(C_Item)
{
	name 				=	"Rezept für Met";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_Mead;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für 'Met'";
};
func void UseRecipe_Mead ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Met" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Zutaten für die Herstellung von Met:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Nimm zwei Honigwaben und löse sie in warmem Wasser auf." );
					Doc_PrintLines	( nDocID,  0, "Füge die Mandibeln eines Feldräubers hinzu." );
					Doc_PrintLines	( nDocID,  0, "Lass die Mischung gären, bis das Getränk stark wird." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_Mead == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MEAD);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Mead = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_Mead] = TRUE;
	};
};

/******************************************************************************************/
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MEATSTEW		(C_Item)
{
	name 				=	"Rezept für Fleischeintopf";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MeatStew;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für einen Fleischeintopf";
};
func void UseRecipe_MeatStew ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Fleisch-Eintopf" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Fleischeintopf:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm zwei Stücke Fleisch und zwei Portionen Muschelfleisch." );
					Doc_PrintLines	( nDocID,  0, "Füge eine Wurst und einen Streifen Speck hinzu." );
					Doc_PrintLines	( nDocID,  0, "Koche alles langsam, bis der Eintopf eindickt." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_MeatSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MEATSTEW);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MeatSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MeatStew] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_FISHSOUP		(C_Item)
{
	name 				=	"Rezept für Fischsuppe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_FishSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für eine Fischsuppe";
};
func void UseRecipe_FishSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Fischsuppe" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Fischsuppe:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm zwei Fische und säubere sie gründlich." );
					Doc_PrintLines	( nDocID,  0, "Gib sie in einen Topf mit Wasser." );
					Doc_PrintLines	( nDocID,  0, "Lass die Suppe kochen, bis der Fisch weich wird." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_FishSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_FISHSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_FishSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_FishSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_BUGSOUP		(C_Item)
{
	name 				=	"Rezept für Fleischkäfer-Ragout";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_BugSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für einen Fleischeintopf";
};
func void UseRecipe_BugSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Fleischwanzenragout" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Fleischkäfer-Ragout:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm fünf dunkle Pilze und drei Portionen Fleischkäferfleisch." );
					Doc_PrintLines	( nDocID,  0, "Füge zwei Reispflanzen hinzu, um dem Ragout etwas Konsistenz zu verleihen." );
					Doc_PrintLines	( nDocID,  0, "Lass es langsam köcheln, bis sich die Pilze in der Soße aufgelöst haben." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Lass dich vom hässlichen Aussehen der Fleischkäfer nicht täuschen. Einmal gekocht, schmecken sie köstlich." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_BugSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MEATBUGRAGOUT);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_BugSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MeatbugRagout] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_ROOTSOUP		(C_Item)
{
	name 				=	"Rezept für Wurzelsuppe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RootSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für eine Wurzelsuppe";
};
func void UseRecipe_RootSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Wurzelsuppe" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Wurzelsuppe:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm zwei Wiesenbeeren und zwei Waldbeeren." );
					Doc_PrintLines	( nDocID,  0, "Füge zwei Portionen Sumpfkraut hinzu." );
					Doc_PrintLines	( nDocID,  0, "Koche die Mischung vorsichtig zu einer seltsamen, aber sättigenden Suppe." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_RootSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_ROOTSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_RootSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_RootSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_CRAWLERSOUP		(C_Item)
{
	name 				=	"Rezept für Minecrawler-Suppe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_CrawlerSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für eine Minecrawler-Suppe";
};
func void UseRecipe_CrawlerSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Minecrawlersuppe" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Minecrawler-Suppe:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm zwei Minecrawlerzangen und zerkleinere sie." );
					Doc_PrintLines	( nDocID,  0, "Mische vier Portionen Sumpfkraut darunter." );
					Doc_PrintLines	( nDocID,  0, "Koche das Gebräu, bis die Brühe dunkel und bitter wird." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_CrawlerSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MINECRAWLERSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_CrawlerSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MinecrawlerSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_RICEBOWL		(C_Item)
{
	name 				=	"Rezept für Reisschüssel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RiceBowl;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für eine Schüssel Reis";
};
func void UseRecipe_RiceBowl ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Reisschüssel" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung einer Reisschüssel:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm drei Reispflanzen und trenne die Körner ab." );
					Doc_PrintLines	( nDocID,  0, "Koche sie in einem kleinen Topf, bis sie weich sind." );
					Doc_PrintLines	( nDocID,  0, "Serviere sie, solange sie noch warm sind." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_Rice == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_RICEBOWL);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Rice = TRUE;
		PLAYER_TALENT_COOKING[COOKING_RiceBowl] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MARMALADE		(C_Item)
{
	name 				=	"Rezept für Beerenmarmelade";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_Marmalade;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für eine Beerenmarmelade";
};
func void UseRecipe_Marmalade ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Beerenmarmelade" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Beerenmarmelade:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm zwei Trauben, zwei Beeren, zwei Wiesenbeeren und zwei Waldbeeren." );
					Doc_PrintLines	( nDocID,  0, "Zerkleinere alle Früchte zu einem dickflüssigen Brei." );
					Doc_PrintLines	( nDocID,  0, "Koche ihn ein, bis eine süße Marmelade entsteht." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_Marmalade == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_BERRYMARMALADE);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Marmalade = TRUE;
		PLAYER_TALENT_COOKING[COOKING_Marmalade] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_FRUITSALAD		(C_Item)
{
	name 				=	"Rezept für Obstsalat";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_FruitSalad;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für einen Obstsalat";
};
func void UseRecipe_FruitSalad ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Obstsalat" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Obstsalat:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm einen Apfel, eine Birne, eine Beere und eine Traube." );
					Doc_PrintLines	( nDocID,  0, "Schneide das Obst in Stücke, ohne es zu zerdrücken." );
					Doc_PrintLines	( nDocID,  0, "Gib alles in eine Schüssel und gieße eine Flasche Milch darüber." );
					Doc_PrintLines	( nDocID,  0, "Serviere das Gericht frisch." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_FruitSalad == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_FRUITSALAD);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_FruitSalad = TRUE;
		PLAYER_TALENT_COOKING[COOKING_FruitSalad] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_OLDSTEW		(C_Item)
{
	name 				=	"Rezept für 'Sträflings-Eintopf'";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	REV_VALUE_RECIPE;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_OldStew;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Rezept für einen Sträflings-Eintopf";
};
func void UseRecipe_OldStew ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Sträflings-Eintopf" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Zutaten für die Zubereitung von Sträflings-Eintopf:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Nimm ein hartes Brot und brich es in Stücke." );
					Doc_PrintLines	( nDocID,  0, "Füge einen stinkenden Käse, ein altes Bier und abgestandenes Wasser hinzu." );
					Doc_PrintLines	( nDocID,  0, "Koche die elende Mischung, bis selbst ein Paladin sie ertragen kann." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_OldStew == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_CONVICTSTEW);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_OldStew = TRUE;
		PLAYER_TALENT_COOKING[COOKING_ConvictStew] = TRUE;
	};
};


//****************************************************************************
//			MAPS
//****************************************************************************

INSTANCE ITWR_REVIVED_MAP_VALLEY (C_Item)
{
	name 		= "Karte des Minentals (ergänzt)";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY;

	description	= name;
	TEXT[0]		= "Ur-Shak der Ork-Schamane hat das";
	TEXT[1]		= "Orkgebiet eingezeichnet!";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};
INSTANCE ITWR_REVIVED_MAP_VALLEY_NOORC (C_Item)
{
	name 		= "Landkarte Minental";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_NOORC;

	description	= name;
	TEXT[0]		= "Leider fehlt darauf ein großes Gebiet";
	TEXT[1]		= "im Südwesten.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_NOORC()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_NOORC);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_NOORC.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_GAROND (C_Item)
{
	name 		= "Garond´s Minenkarte";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_GAROND;

	description	= name;
	TEXT[0]		= "Es ist nur ein Ausschnitt der vollständigen Karte";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_GAROND()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_GAROND);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_GAROND.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_DRAGONS (C_Item)
{
	name 		= "Drachenstandorte im Tal";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS;

	description	= name;
	TEXT[0]		= "Die Anordnung der Ork-Symbole";
	TEXT[1]		= "kommt mir seltsam bekannt vor";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_DRAGONS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_DRAGONS.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_CAVES (C_Item)
{
	name 		= "Höhlen des Tals der Minen";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_CAVES;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_CAVES()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_CAVES);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_CAVES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAP_FOCUS (C_Item)
{	
	name 					=	"Fokuskarte von Saturas";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	15;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseFocimap;

	description				= name;
	TEXT[0]					= "Die Spitzen des Pentagramms markieren die";
	TEXT[1]					= "Orte aller fünf Fokussteine, die damals bei";
	TEXT[2]					= "der Erschaffung der magischen Barriere";
	TEXT[3]					= "verwendet wurden. Die Karte ist alt und die";
	TEXT[4]					= "und zeigt nicht, wie das Tal";
	TEXT[5]					= "heute aussieht.";
};

FUNC VOID UseFocimap()
{
	var int nDocID;
	
	nDocID = 	Doc_CreateMap	()			  ; 
				Doc_SetLevel	( nDocID,	"WORLD.ZEN" );
				Doc_SetPages	( nDocID, 1 );                         
				Doc_SetPage 	( nDocID, 0, "Map_World_Foki.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITWR_REVIVED_ALMANAC (C_Item)
{	
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	value 					=	0;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				= 	UseItWrFokusbuch;
	description				=	name;
	TEXT[0]					=	"Dieses uralte Zauberbuch enthält eine Reihe";
	TEXT[1]					=	"magischer Formeln, die sich alle auf die";
	TEXT[2]					=	"Verwendung sogenannter Fokus-Steine beziehen.";
};

//****************************************************************************

INSTANCE ITWR_REVIVED_CRYPT (C_ITEM)
{	
	name 				=	"Die Gruft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	100;

	visual 				=	"ItWr_Book_02_03.3ds";
	material 			=	MAT_LEATHER;

	scemeName			=	"MAP";
	on_state[0]			= 	UseItWrCryptbuch;
	description			= "Die Gruft";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

//****************************************************************************
//****************************************************************************

INSTANCE ITWR_REVIVED_CERTIFICATE (C_Item)
{	
	name 			=	"Urkunde";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	0;

	value 			=	4;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;

	scemeName		=	"MAP";	
	on_state[0]		=	UseUrkunde;
	description		=	"Besitzurkunde";
	TEXT[0]			=	"Berechtigt den Besitzer, Anspruch auf das";
	TEXT[1]			=	"Gebiet der Bergfestung zu erheben.";
	TEXT[5]			=	"Wert                                      400 Pfund Gold";
};

FUNC VOID UseUrkunde()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;								 
				Doc_SetPages	(nDocID,  1 );                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA"  , 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0,"Urkunde");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0,"Ich, Bergmar Burggraf zu Westfeld und meines Herren zu Tymoris Landrichter über das Gut in dem Gebiet um Khorinis gelegen, ... tue kund, ... das ich ... dem Besitzer dieser Urkunde ... und dem Innoshaus daselbst das Lehen auf der Bergfeste (mitsamt weiteren Zehenten und allen dort befindlichen Minen) aufgegeben und verkauft habe um 400 Pfund Gold.");
				Doc_Show		(nDocID );
};