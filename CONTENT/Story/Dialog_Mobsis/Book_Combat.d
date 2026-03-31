//##########################################################################
//##
//##	Combat Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandHistory1_S1()		//Geschichtsbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Der Weg des Kampfes"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
				
					Doc_PrintLines	( nDocID,  0, "Angriff ist die beste Verteidigung, bei allem was nicht Mensch ist. Eine Parade gegen Tiere oder Monster auszuführen ist sinnlos."						);
					Doc_PrintLines	( nDocID,  0, "Da ist es besser den Gegner mit gezielten Seitenschlägen auf Distanz zu halten um überraschend eine Kombination aus mehreren Schlägen durchzuführen."						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Kombinationen mehrerer Schläge sind natürlich einem erfahrenen Kämpfer vorbehalten. Und wer sogar die Meisterschaft im Kampf erreicht, kann weitere Kombinationen ausführen."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Combat1 == FALSE)
					{
						REV_ReadBook(BookType_Combat);
						RevivedBookstandRead_Combat1 = TRUE;
					};
	};
};

var int Lerne_Einhand;
var int Lerne_Zweihand;
FUNC VOID UseZweihandBuch()
{
		if (Lerne_Zweihand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_2H, 2);
			Print (PRINT_Learn2H);
			Lerne_Zweihand = TRUE;
			Snd_Play("Levelup");
		};

	var int nDocID;
	nDocID = 	Doc_Create		()			  ;								// DocManager
			Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

			Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
			Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

 			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Der Doppelblock"	);
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Blocking the enemy's blade with a two-handed weapon is a method used by strong fighters to stop the impetus of attacks and force their assailants to abruptly end their assault combinations. "					);
					
			Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_PrintLines	( nDocID,  1, ""	);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_PrintLines	( nDocID,  1, "The usually resulting halt of the opponent's movement is an opportunity to take the initiative and defeat the enemy with skilled strokes.    "	);
					
			Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Combat2 == FALSE)
					{
						REV_ReadBook(BookType_Combat);
						RevivedBookstandRead_Combat2 = TRUE;
					};
};

FUNC VOID UseEinhandBuch()
{
		if (Lerne_Einhand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_1H, 2);
			Print (PRINT_Learn1H);
			Lerne_Einhand = TRUE;
			Snd_Play("Levelup");
		};
		
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;								
			Doc_SetPages	( nDocID,  2 );                        

			Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
			Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Die südländische Verteidigung"	);
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "A southerner uses less physical strength than a northerner, instead relying on agility. In the hot climate of his home he prefers light armor which permits him to move more freely. The southerner has therefore developed a style of fighting that is fundamentally different from what we are used to. "					);
					
			Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_PrintLines	( nDocID,  1, "Das wohl bekannnteste Manöver des Südländers ist wohl der einarmige Block mit rückwärtigen Ausfallschritt. Durch den Ausfallschritt gelingt es ihm, die Kraft des gegnerischen Angriffes zu mildern und so eine hervorragende Ausgangsposition zu erlangen, die zum direkten Gegenangriff genutzt werden kann."	);
			Doc_PrintLine	( nDocID,  1, ""					);
								
			Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Combat3 == FALSE)
					{
						REV_ReadBook(BookType_Combat);
						RevivedBookstandRead_Combat3 = TRUE;
					};
};

//##########################################################################
//##
//##	Combat Books - Revived
//##
//##########################################################################

FUNC VOID UseKampfkunst()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLines	( nDocID,  0,"2000 Jahre lang bildeten diese Lehren des Meisters die Pfeiler bei der Entwicklung der Kampfkunst.");
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLines	( nDocID,  0,"Geschult werden dabei die Beweglichkeit des Körpers, Ruhe und Schnelligkeit, Beobachtung und Reaktion. Die Bewegungen müssen gut koordiniert und die Körperhaltung korrekt sein, um die beste Entfaltung deiner Kraft zu erreichen.");			
				
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"Der Kern der geistigen und körperlichen Lehren des Meisters hat viele Jahre überlebt.");
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"Sein einzigartiger Erfolg hat Generationen beeinflußt. Jahrtausende, in denen zwar die Welt ihr Äußeres schon oft verändert hat, in der aber eines für immer Bestand haben wird: Die Harmonie der inneren Kräfte mit der gezielten äußeren Bewegung des Körpers.");					

				Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Combat4 == FALSE)
					{
						REV_ReadBook(BookType_Combat);
						RevivedBookstandRead_Combat4 = TRUE;
					};
};