//##########################################################################
//##
//##	Runemaking Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_Bookstand_Kreise_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER ERSTE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "Die Runen des ersten Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Licht");
					Doc_PrintLine	( nDocID,  0, "Goldmünze");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Feuerpfeil");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Blitz");
					Doc_PrintLine	( nDocID,  0, "Bergkristall");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Goblin Skelett");
					Doc_PrintLine	( nDocID,  0, "Knochen eines Goblins");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "leichte Wunden heilen");
					Doc_PrintLine	( nDocID,  0, "Heilpflanze");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking1 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking1 = TRUE;
					};
	};
};

FUNC VOID Use_Bookstand_Kreise_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER ZWEITE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "Die Runen des zweiten Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Feuerball");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Eispfeil");
					Doc_PrintLine	( nDocID,  0, "Gletscher Quartz");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Wolf rufen");
					Doc_PrintLine	( nDocID,  0, "Wolfsfell");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Windfaust");
					Doc_PrintLine	( nDocID,  0, "Kohle");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Schlaf.");
					Doc_PrintLine	( nDocID,  0, "Sumpfkraut");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking2 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking2 = TRUE;
					};
	
	};
};  

FUNC VOID Use_Bookstand_Kreise_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER DRITTE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "Die Runen des dritten Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					
					
					Doc_PrintLine	( nDocID,  0, "mittlere Wunden heilen");
					Doc_PrintLine	( nDocID,  0, "Heilkraut");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Kleiner Feuersturm");
					Doc_PrintLine	( nDocID,  0, "Pech, Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Skelett erschaffen");
					Doc_PrintLine	( nDocID,  0, "Knochen eines Skeletts");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Angst");
					Doc_PrintLine	( nDocID,  0, "Schwarze Perle");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Eisblock");
					Doc_PrintLine	( nDocID,  0, "Gletscher Quartz");
					Doc_PrintLine	( nDocID,  0, "Aquamarin");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Kugelblitz");
					Doc_PrintLine	( nDocID,  0, "Bergkristall");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Feuerball");
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "Pech, Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking3 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking3 = TRUE;
					};
		
	};
};  	

FUNC VOID Use_Bookstand_Kreise_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER VIERTE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "Die Runen des vierten Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Grosser Feuerball");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Blitzschlag");
					Doc_PrintLine	( nDocID,  0, "Bergkristall");
					Doc_PrintLine	( nDocID,  0, "Gletscher Quartz");
					Doc_PrintLine	( nDocID,  0, "");				
					
					Doc_PrintLine	( nDocID,  0, "Golem erwecken");
					Doc_PrintLine	( nDocID,  0, "Herz eines Steingolems");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Untote vernichten");
					Doc_PrintLine	( nDocID,  0, "Geweihtes Wasser");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking4 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking4 = TRUE;
					};
		
	};
};  					

FUNC VOID Use_Bookstand_Kreise_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER FÜNFTE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "Die Runen des fünften Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Eiswelle");
					Doc_PrintLine	( nDocID,  0, "Gletscher Quartz");
					Doc_PrintLine	( nDocID,  0, "Aquamarin");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Grosser Feuersturm");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Flammenzunge");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Dämon beschwören");
					Doc_PrintLine	( nDocID,  0, "Herz eines Dämonen");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Schwere Wunden heilen");
					Doc_PrintLine	( nDocID,  0, "Heilwurzel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking5 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking5 = TRUE;
					};
		
	};
};  			

FUNC VOID Use_Bookstand_Kreise_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "DER SECHSTE KREIS"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "Die Runen des sechsten Kreises und die zu deren Herstellung benötigten Ingredenzien");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Feuerregen");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Flammenzunge");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Todeshauch");
					Doc_PrintLine	( nDocID,  0, "Kohle");
					Doc_PrintLine	( nDocID,  0, "Schwarze Perle");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Todeswelle");
					Doc_PrintLine	( nDocID,  0, "Knochen eines Skeletts");
					Doc_PrintLine	( nDocID,  0, "Schwarze Perle");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Armee der Finsternis");
					Doc_PrintLine	( nDocID,  0, "Knochen eines Skeletts");
					Doc_PrintLine	( nDocID,  0, "Schwarze Perle");
					Doc_PrintLine	( nDocID,  0, "Herz eines Steingolems");
					Doc_PrintLine	( nDocID,  0,  "Herz eines Dämonen");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLine	( nDocID,  1, "Monster Schrumpfen");
					Doc_PrintLine	( nDocID,  1, "Knochen eines Goblins");
					Doc_PrintLine	( nDocID,  1, "Trollhauer");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
			
					Doc_PrintLines	( nDocID,  1, "Für die Herstellung einer Rune ist jeweils EINE der aufgeführten Ingredenzien erforderlich."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Dem Anwender muss die Formel für den Zauber bekannt sein und er muss einen blanken Runenstein, sowie eine Spruchrolle des jeweiligen Zaubers besitzen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Erst wenn diese Vorraussetzungen erfüllt sind, kann er am Runentisch zu Werke gehen."					);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Runemaking6 == FALSE)
					{
						REV_ReadBook(BookType_Runemaking);
						RevivedBookstandRead_Runemaking6 = TRUE;
					};
		
	};
};

//##########################################################################
//##
//##	Runemaking Books - Revived
//##
//##########################################################################


FUNC VOID UseItWr_Book_Circle_01()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der erste Kreis");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Als die Götter den Menschen die Fähigkeit zur Magie schenkten, schenkten sie ihnen auch das Wissen magische Runen herzustellen. Die Diener der Götter haben die ehrenvolle Aufgabe übernommen, diese Artefakte göttlicher Macht zu erschaffen und zu benutzen, wobei der Kreis des Magiers bestimmt, welche Zauber er in der Lage ist zu verstehen und anzuwenden.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Licht");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Das erste Geschenk Innos an die Menschen.Eine hell strahlende Kugel wird über dem Magier erzeugt.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1,  "" );
				Doc_PrintLine	( nDocID,  1,"Eispfeil");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Ein Geschoss aus magischer Energie.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Feuerpfeil");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Ein Geschoss aus magischem Feuer.");
				Doc_PrintLine	( nDocID,  1,  "");

				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Runes1 == FALSE)
				{
					REV_ReadBook(BookType_Runes);
					RevivedBookstandRead_Runes1 = TRUE;
				};	  
};

FUNC VOID UseItWr_Book_Circle_02()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der zweite Kreis");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Alle Zauber werden durch die magische Energie des Anwenders ausgelöst.Der Anwender wird als Magier bezeichnet.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Jede Aktivierung eines Zaubers kostet den Magier einen Teil seiner Kraft. diese Kraft wird als Mana bezeichnet.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
					
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Heilung");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Adanos sah, das die Menschen starben und das es der Wille Beliars war.Und er sprach:Stelle ich mich auch nicht gegen den Willen Beliars,gebe ich den Menschen jedoch die Macht der Heilung."); 
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLines	( nDocID,  1,"Dieser Zauber birgt die Macht, den Magier zu heilen.");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				
				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes2 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes2 = TRUE;
			};	  
};

FUNC VOID UseItWr_Book_Circle_03()
{	
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der dritte Kreis");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Manche Zauber können mit einer bestimmten größeren Anzahl von magischer Energie gespeist werden, diese werden auch Aufladungszauber genannt.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Andere Zauber werden aufrechterhalten, solange der Magier sein Mana in dieses Spruch einfliessen lässt. Solche Zauber heissen Investierungszauber.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Feuerball");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Das zweite Geschenk Innos an die Kinder des Feuers. Ein Ball aus Feuer, der sein Opfer verbrennt");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Eisblock");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Das Opfer wird in einen Eisblock eingefroren. Ein Zauber aus dem Tempel der Wassermagier");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Kugelblitz");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Eine Kugel, geschaffen aus magischer Energie.");
				Doc_PrintLine	( nDocID,  1,  "");

				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes3 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes3 = TRUE;
			};	  
};

FUNC VOID UseItWr_Book_Circle_04()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der vierte Kreis");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"Die Magie");
				Doc_PrintLine	( nDocID,  0,"der Teleportation");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Das besondere an diesen magischen Formeln ist, das sie, obwohl als Runen geschaffen,von jedem der magische Energie in sich trägt gesprochen werden können.Die Magie die diese Formeln umgibt, kann sofort aktiviert werden. Es gibt keine Einschränkungen für Teleportationszauber.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);

				Doc_PrintLine	( nDocID,  1,"Feuersturm");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Ähnlich dem Feuerball wirkt dieser Zauber auf einen Gegner, springt von dort aus jedoch auf weitere Gegner über.");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Blitz");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Je länger der Zauber wirkt, desto mehr Ziele erfasst er. Die Kraft des Blitzes ist schwer zu kontrollieren. Daher kann der Zaubernde selbst zum Ziel werden.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1, "");	
				Doc_PrintLine	( nDocID,  1,"Untote vernichten");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Die Geschöpfe der Finsternis werden mit diesem Zauber verbannt.");	
				Doc_PrintLine	( nDocID,  1, "");
					
				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes4 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes4 = TRUE;
			};	  
};

FUNC VOID UseItWr_Book_Circle_05()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der fünfte Kreis");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"Feuerregen");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLines	( nDocID,  0,"Die Macht des göttlichen Feuers trifft jedes Lebewesen im Wirkungsbreich des Magiers.");
				Doc_PrintLine	( nDocID,  0, "");					

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Eiswelle");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Ein Feld aus magischem Eis erstreckt sich über alle Gegner und friert diese für einen kurzen Zeitraum ein. Während dieser Zeit sind die Opfer bewegungsunfähig und erleiden Schaden.");
				Doc_PrintLines	( nDocID,  1,"Ein Zauber aus dem Tempel der Wassermagier.");
				Doc_PrintLine	( nDocID,  1, "");

				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes5 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes5 = TRUE;
			};	  
};

FUNC VOID UseItWr_Book_Circle_06()
{   
	var int nDocID;		
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

  				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_PrintLine	( nDocID,  0,"Der sechste Kreis");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"Todeshauch");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLines	( nDocID,  0,"Der Atem Beliars. Eine Wolke aus Lebenverschlingendem Nichts, die jedes Wesen augenblicklich töten kann.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");					

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Todesring");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Nicht viel ist überliefert über die Rune mit der Macht von URIZIEL");	
				Doc_PrintLines	( nDocID,  1,"Es ist nur soviel bekannt, als das sie Beliars Mächte in sich birgt.");
				Doc_PrintLine	( nDocID,  1, "");
			
				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes6 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes6 = TRUE;
			};	  
};