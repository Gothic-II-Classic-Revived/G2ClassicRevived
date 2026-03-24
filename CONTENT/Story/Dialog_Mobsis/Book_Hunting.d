//##########################################################################
//##
//##	Hunting Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandAnimals1_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunt and Prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Every beast or creature has certain trophies that improve the wealth and glory of experienced hunters."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "An experienced hunter knows all about the trophies of the prey and how to gut them.");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Extract Teeth"						);
					Doc_PrintLines	( nDocID,  0, "Teeth are the weapons of many beasts and creatures. If you know how to extract them from your prey, wolves, snappers, shadowbeasts, swampsharks and trolls are the best targets."						);
				
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Skinning"						);
					Doc_PrintLines	( nDocID,  1, "A talent experienced hunters value greatly, for many animals have pelts - sheep, wolves and shadowbeats, for example."						); 
					Doc_PrintLines	( nDocID,  1, "A hunter with this skill can also skin swampsharks and lurkers."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Extract Claws"						);
					Doc_PrintLines	( nDocID,  1, "An art to be used on all kinds of lizards, snappers, lurkers and shadowbeats."						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting1 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting1 = TRUE;
					};	
	};
};

FUNC VOID Use_BookstandAnimals2_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunt and Prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Every beast or creature has certain trophies that improve the wealth and glory of experienced hunters."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Bloodflies"			);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Two special skills are required to gut these flying devils."					); 
					Doc_PrintLines	( nDocID,  0, "Their wings can be removed and their stingers extracted." );
					Doc_PrintLines	( nDocID,  0, "Both arts should be used by experienced hunters to claim their trophies."	);
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Field raiders and minecrawlers use mandibles to attack. Minecrawler mandibles are"						);
					Doc_PrintLines	( nDocID,  1, "particularly valuable, as they contain a secretion that increases magic powers."						);
					Doc_PrintLines	( nDocID,  1, "However, it should be used sparingly, as the human body ceases to react to it over time."						);   
					Doc_PrintLines	( nDocID,  1, "Minecrawler plates are also popular. They can be used to make armor."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, " "						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting2 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting2 = TRUE;
					};
	};
};

FUNC VOID Use_BookstandAnimals3_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Hunt and Prey"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Every beast or creature has certain trophies that improve the wealth and glory of experience hunters."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Fire Lizard"						);
					Doc_PrintLines	( nDocID,  0, "This beast is a lizard, but it can spit fire that will kill anyone venturing within a few paces of it."						);
					Doc_PrintLines	( nDocID,  0, "Only those who have protection from fire can fight these beasts and take their valued tongues."	);		
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "The Shadowbeast"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "The shadowbeast is an ancient loner and lives hidden in the woods."						); 
					Doc_PrintLines	( nDocID,  1, "There are very few of these creatures left, therefore they are no danger to humans unless they venture into their hunting grounds."						);
					Doc_PrintLines	( nDocID,  1, "The horn on a shadowbeast's head is regarded as a valuable hunting trophy. A hunter must learn how to remove it properly"						);
					Doc_PrintLines	( nDocID,  1, "in order to claim this prize."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
							
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting3 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting3 = TRUE;
					};
	};
};

//##########################################################################
//##
//##	Hunting Books - Revived
//##
//##########################################################################

FUNC VOID UseItWr_Bloodfly_01()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);

 				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
 				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
 				Doc_PrintLine	( nDocID,  0,"Bloodflies");
  				Doc_PrintLine	( nDocID,  0,"");
				Doc_PrintLine	( nDocID,  0," ");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0,"About the Flies");
				Doc_PrintLine	( nDocID,  0,"");
				Doc_PrintLines	( nDocID,  0,"But in that place, where the soil is damp and the air is humid, the flies gather, attracted by the sweat of all kinds of beings. They use their stings to kill their victims and feast on their blood.");
				Doc_PrintLine	( nDocID,  0,"");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"To take such a sting is the art of many hunters in the swamp. Make a deep cut into the creature's abdomen, then cut in a zigzag line around the sting and remove it carefully, together with the tissue surrounding it. Let it bleed and scrape off the inedible meat.");	
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Hunting4 == FALSE)
				{
					REV_ReadBook(BookType_Hunting);
					RevivedBookstandRead_Hunting4 = TRUE;
				};
/* 					
					if Knows_GetBFSting ==  FALSE
					{
					Knows_GetBFSting = TRUE;
					Log_CreateTopic (GE_AnimalTrophies,LOG_NOTE);
					B_LogEntry (GE_AnimalTrophies,"How to remove stings - bloodflies");	
					PrintScreen	("Learn: Remove sting", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					}; */
};

FUNC VOID UseJagd_und_Beute()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"His writings have outlasted the ages and his advice is considered a book on the art of hunting. Following the heavy battles in the north, every countryman now knows how to use a bow and arrows. Yet there are some rules to be followed when hunting which exceed the simple knowledge of how to use the weapon! Game is both timid and unpredictable.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"The art of hunting with a bow is not merely ancient tradition, but the most common form of hunting. The techniques employed in this traditional method of hunting have hardly altered in the course of the millennia, and it is unlikely that they will change in the future. What circumstances really determine a hunt with a bow and arrow? To recognize these laws is the true art of bow hunting.");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Hunting5 == FALSE)
				{
					REV_ReadBook(BookType_Hunting);
					RevivedBookstandRead_Hunting5 = TRUE;
				};
};