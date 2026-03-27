//##########################################################################
//##
//##	Alchemy Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandALCHEMY1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Tränke magischer Kraft");
					Doc_PrintLine	( nDocID,  0, "und ihre Zutaten"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Essenz"						);
					Doc_PrintLine	( nDocID,  0, "2 Feuernesseln"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Extrakt"						);
					Doc_PrintLine	( nDocID,  0, "2 Feuerkräuter"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Elixier"						);
					Doc_PrintLine	( nDocID,  0, "2 Feuerwurzeln"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Jegliche Arbeit am Alchemietisch  erfordert eine Laborwasserflasche, die während des Prozesses verbraucht wird."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Für das Brauen von Tränken der Heilung oder der Stärkung der magischen Kraft, benötigt der Anwender neben der speziellen Zutat immer eine Pflanze:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Für das Brauen von Tränken die permanente Veränderungen des Körpers oder Geistes bewirken, benötigt der Anwender immer eine Pflanze:"						);
					Doc_PrintLines	( nDocID,  1, "Kronstöckl"		);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy1 == FALSE)
					{
						REV_ReadBook(BookType_Alchemy);
						RevivedBookstandRead_Alchemy1 = TRUE;
					};	  

	};
};

FUNC VOID Use_BookstandALCHEMY2_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Heiltränke");
					Doc_PrintLine	( nDocID,  0, "und ihre Zutaten"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Essenz heilender Kraft"						);
					Doc_PrintLine	( nDocID,  0, "2 Heilpflanzen"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Extrakt heilender Kraft"						);
					Doc_PrintLine	( nDocID,  0, "2 Heilkräuter"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Elixier heilender Kraft"						);
					Doc_PrintLine	( nDocID,  0, "2 Heilwurzeln"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Jegliche Arbeit am Alchemietisch  erfordert eine Laborwasserflasche, die während des Prozesses verbraucht wird."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Für das Brauen von Tränken der Heilung oder der Stärkung der magischen Kraft, benötigt der Anwender neben der speziellen Zutat immer eine Pflanze:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Für das Brauen von Tränken die permanente Veränderungen des Körpers oder Geistes bewirken, benötigt der Anwender immer eine Pflanze:"						);
					Doc_PrintLines	( nDocID,  1, "Kronstöckl"		);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy2 == FALSE)
					{
						REV_ReadBook(BookType_Alchemy);
						RevivedBookstandRead_Alchemy2 = TRUE;
					};	

	};
};

FUNC VOID Use_BookstandALCHEMY3_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Tränke permanenter Veränderungen");
					Doc_PrintLine	( nDocID,  0, "und ihre Zutaten"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					Doc_PrintLine	( nDocID,  0, "Elixier der Geschicklichkeit"						);
					Doc_PrintLine	( nDocID,  0, "1 Goblin Beere"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Trank der Geschwindigkeit"						);
					Doc_PrintLines	( nDocID,  0, "1 Snapperkraut - dieser Trank benötigt keinen Kronstöckl, sondern Feldknöterich"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Elixier der Stärke"						);
					Doc_PrintLine	( nDocID,  0, "1 Drachenwurzel"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Elixier des Lebens"						);
					Doc_PrintLine	( nDocID,  0, "1 Heilwurzel"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Elixier des Geistes"						);
					Doc_PrintLine	( nDocID,  0, "1 Feuerwurzel"						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Das Brauen dieser Rezepturen ist die hohe Kunst der Alchemie. Ihnen allen ist zu eigen, dass sie einen Kronstöckl als Zutat verlangen."); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Der Trank der Geschwindigkeit ist viel einfacher herzustellen, was auch daran liegt, das man keinen Kronstöckl benötigt."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy3 == FALSE)
					{
						REV_ReadBook(BookType_Alchemy);
						RevivedBookstandRead_Alchemy3 = TRUE;
					};	

	};
};

//##########################################################################
//##
//##	Alchemy Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_ALCHEMY1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Der Wein des Vergessens");
					Doc_PrintLine	( nDocID,  0,"--------------------");
					Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"Hoch oben an den Hängen des Archolos, gibt es die besten Trauben, die man für diesen Wein finden kann. Die Kunst diesen Wein zu seiner Vollendung reifen zu lassen, besteht darin, ihn unter keinen Umständen jeglicher Bewegung auszusetzen. Die Trauben werden vor der Kellerei mit dem gemeinen Syos-kraut versetzt.");


					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		); 
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Sehet und staunet, wenn der Magister klarstes Brunnenwasser zu vortrefflichen Wein verwandelt. Alle ihm huldigen und sich an seiner Gabe laben. Der Magister seine faulen Lehrlinge zur Strafe in Flaschen sperrt, Feuer sich auf wundersame Weise entzündet und schwarze Schlangen emporwachsen.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy4 == FALSE)
					{
						REV_ReadBook(BookType_Alchemy);
						RevivedBookstandRead_Alchemy4 = TRUE;
					};	  

	};
};

FUNC VOID Use_BookstandRevived_ALCHEMY2_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Das Balsam des Sehens:");
					Doc_PrintLine	( nDocID,  0,"----------------");
					Doc_PrintLine	( nDocID,  0,"");		
					Doc_PrintLines	( nDocID,  0,"Dazu wird ihm Galle auf die Augen gestrichen. Galle ist bitter im Geschmack. Wird dieses Bittere auf das Auge genommen, dh: schauen wir das Bittere an, so erwächst daraus Weisheit. Wir werden sehend! Bitterkeit und Weisheit schliessen einander aus. Sie sind Gegenpole!");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Tränen, Leid und Enttäuschung sind bitter, die Weisheit aber ist die Trösterin in jedem seelischen Schmerz. Bitterkeit und Weisheit bilden eine Alternative. Wo Bitterkeit, da fehlt die Weisheit, und wo Weisheit, da gibt es keine Bitterkeit.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Alchemy5 == FALSE)
					{
						REV_ReadBook(BookType_Alchemy);
						RevivedBookstandRead_Alchemy5 = TRUE;
					};	  

	};
};