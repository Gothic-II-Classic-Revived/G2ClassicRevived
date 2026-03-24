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

					Doc_PrintLine	( nDocID,  0, "The Way of Battle"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
				
					Doc_PrintLines	( nDocID,  0, "The best defense is a good offense, at least against anything non-human. It's useless to parry animals' or monsters' attacks."						);
					Doc_PrintLines	( nDocID,  0, "It's better to keep the foe at bay with well-aimed blows and then launch a surprise combination attack."						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Of course, only experienced fighters can combine their moves. If you become a master in the art of battle, you can even use several combinations."						); 
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
			Doc_PrintLines	( nDocID,  0, "Double Blocks"	);
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
			Doc_PrintLines	( nDocID,  0, "Southern Defense Art"	);
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "A southerner uses less physical strength than a northerner, instead relying on agility. In the hot climate of his home he prefers light armor which permits him to move more freely. The southerner has therefore developed a style of fighting that is fundamentally different from what we are used to. "					);
					
			Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
			Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_PrintLines	( nDocID,  1, "Probably the most famous maneuver a southerner uses is the one-armed block and backstep. The backstep enables the fighter to weaken the blow from his assailant's attack, at the same time taking up a superb stance from which to counterattack."	);
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
				Doc_PrintLines	( nDocID,  0,"For 2000 years, the teachings of this expert have determined the development of the art of fighting.");
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLine	( nDocID,  0,"");					
				Doc_PrintLines	( nDocID,  0,"Dexterity, composure, speed, observation and reactions are the skills which must be trained. Your movements must be well-coordinated and your posture correct if you want your powers to blossom.");			
				
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"The essence of the master's spiritual and physical teachings has survived many years.");
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"His unique success has influenced generations. For millennia, the face of the world has shifted and changed, but the harmony of inner powers with movements of the body has survived.");					

				Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Combat4 == FALSE)
					{
						REV_ReadBook(BookType_Combat);
						RevivedBookstandRead_Combat4 = TRUE;
					};
};