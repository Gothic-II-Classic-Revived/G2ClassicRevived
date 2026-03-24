//##########################################################################
//##
//##	Personal Books - Gothic II
//##
//##########################################################################

FUNC VOID Bookstand_Milten_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "It's late."					);
					Doc_PrintLines	( nDocID,  0, "The collapse of the old mine brought about the downfall of the ore barons' mood."	);
					Doc_PrintLines	( nDocID,  0, "Gomez is like a powder keg about to explode."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Corristo");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "He thinks the new guy's to blame for the collapse of the mine. That man sure is strange. But he'd better not show his face round here again.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Corristo");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Gomez' temper is hotter than ever, and I think I can guess what he's planning. We must warn the Water Mages, before it's too late."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Corristo"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Maybe we can ward off a disaster. It doesn't bear thinking about what would happen if the free mine ..."					);
					Doc_Show		( nDocID );

		if (RevivedBookstandRead_Personal1 == FALSE)
			{
				REV_ReadBook(BookType_Personal);
				RevivedBookstandRead_Personal1 = TRUE;
			};
	};
};

FUNC VOID Bookstand_Milten_02_S1()		
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
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "I've taken the liberty of making myself more comfortable. Who'd have thought I would someday be the only mage in the camp?"					);
					Doc_PrintLines	( nDocID,  0, "Well, I can't really say I'm glad to be back. In fact, I should be seeing about clearing out of here."	);
					Doc_PrintLines	( nDocID,  0, "This expedition just isn't having any success."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The scrapers left yesterday. They took Diego with them - wouldn't surprise me if he did a runner."					);
					Doc_PrintLines	( nDocID,  1, "He's not likely to swing a pickaxe anyhow."					);
					Doc_PrintLines	( nDocID,  1, "Well, I'll use the time to learn a bit about the art of alchemy."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Milten"					);
					Doc_Show		( nDocID );

		if (RevivedBookstandRead_Personal2 == FALSE)
			{
				REV_ReadBook(BookType_Personal);
				RevivedBookstandRead_Personal2 = TRUE;
			};
	};
};
FUNC VOID Bookstand_Milten_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		//	if (Npc_IsPlayer(self))
		//	{
		//		B_SetPlayerMap(ItWr_Map_OldWorld);
		//	};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "OldWorld\OldWorld.zen");
					Doc_SetLevelCoords	(Document, -78500, 47500, 54000, -53000);
					Doc_Show			(Document);

	};
};

FUNC VOID Bookstand_Engor_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Stock");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "We found some stuff - nothing much useable. Remainder as follows:"					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "3 crates of old rags"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "8 crates of rusty iron"					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "4 crates of broken armor");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "5 crates of (stinking) leather and pelts");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "2 crates of pickaxes"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "3 crates of tools"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "16 crates of rocks (ore virtually nil)"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "1 crate of rusty razor blades"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "4 crates of broken crockery"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "56 water barrels"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "1 crate of something swampy (whatever it was, it's rotted)"					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Engor"					);
					Doc_Show		( nDocID );

		if (RevivedBookstandRead_Personal3 == FALSE)
			{
				REV_ReadBook(BookType_Personal);
				RevivedBookstandRead_Personal3 = TRUE;
			};
	};
};

//##########################################################################
//##
//##	Personal Books - Revived
//##
//##########################################################################

var int RevivedBookstandRead_Specific1;
FUNC VOID Use_BookstandRevived_SPECIFIC1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero);
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_BookHeadline	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "Prisoners"					);
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_PrintLine	( nDocID,  0, ""					);
				if(Rengaru_Ausgeliefert == TRUE)
				{
					Doc_PrintLines	( nDocID,  0, "Rengaru: Stole from merchant Jora"					);
				};
					Doc_PrintLine	( nDocID,  0, ""					);
				if(Halvor_Ausgeliefert == TRUE)
				{
					Doc_PrintLines	( nDocID,  0, "Halvor: Supports bandits outside the city"					);
				};
					Doc_PrintLine	( nDocID,  0, ""					);
				if(Nagur_Ausgeliefert == TRUE)
				{
					Doc_PrintLines	( nDocID,  0, "Nagur: Murdered Baltram's errand-boy"					);
				};
					Doc_PrintLine	( nDocID,  0, ""					);
				if(MIS_Andre_REDLIGHT == LOG_SUCCESS)
				{
					Doc_PrintLines	( nDocID,  0, "Borka: Swampweed dealer"					);
				};
					Doc_PrintLine	( nDocID,  0, ""					);
				if(BaltramInJail == LOG_SUCCESS)
				{
					Doc_PrintLines	( nDocID,  0, "Baltram: Trade with pirates"					);
				};
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
				if(Fernando_ImKnast == TRUE)
				{
					Doc_PrintLines	( nDocID,  1, "Fernando: Sells weapons to bandits"					);
				};
					Doc_PrintLine	( nDocID,  1, ""					);
				/* if(Rengaru_InKnast == TRUE)
				&& (!Npc_IsDead(Cassia))
				&& (!Npc_IsDead(Jesper))
				&& (!Npc_IsDead(Ramirez))
				{
					Doc_PrintLines	( nDocID,  1, "Cassia: Leader of Thieves' Guild"					);
					Doc_PrintLines	( nDocID,  1, "Jesper: Member of Thieves' Guild"); 
					Doc_PrintLines	( nDocID,  1, "Ramirez: Member of Thieves' Guild"					);
				};
					Doc_PrintLine	( nDocID,  1, ""					); */
				if(Sarah_Ausgeliefert == TRUE)
				{
					Doc_PrintLines	( nDocID,  1, "Sarah: Sells weapons to Mercenaries"					);
				}
				else if(Canthar_Ausgeliefert)
				{
					Doc_PrintLines	( nDocID,  1, "Canthar: Wanted to frame up Sarah"					);
				};
					Doc_PrintLine	( nDocID,  1, ""					);
				if(MIS_RescueBennet == LOG_RUNNING)
				{
					Doc_PrintLines	( nDocID,  1, "Bennet: Murdered Lord Lothar"					);
				};
					Doc_PrintLine	( nDocID,  1, ""					);
				if(MIS_Richter_KillMorgahard == LOG_RUNNING)
				{
					Doc_PrintLines	( nDocID,  1, "Morgahard: Stole from governor Larius");
				};
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Personal4 == FALSE)
					{
						REV_ReadBook(BookType_Personal);
						RevivedBookstandRead_Personal4 = TRUE;
					};	  
	
	};
};