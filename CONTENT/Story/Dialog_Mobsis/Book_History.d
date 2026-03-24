//##########################################################################
//##
//##	History Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandHistory2_S1()		//Geschichtsbücher
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

					Doc_PrintLine	( nDocID,  0, "The Island"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "The harbor city of Khorinis lies on an island off the coast of the Kingdom Myrtana."						);
					Doc_PrintLines	( nDocID,  0, "The island owes much of its fame to the Valley of Mines. Its reputation is dubious, as for many years a magic barrier spanned the entire valley, which served as a prison for all convicts of the Realm."						);
					Doc_PrintLines	( nDocID,  0, "Thus the valley became a prison colony where the convicts mined the magic ore far below the ground."						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Outside of Khorinis lie a series of farms which use the good soil to plant wheat and turnips and breed sheep."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For generations the largest farm has belonged to a landowner who rents the surrounding lands to other farmers."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "On the middle of the island is an ancient monastery of Innos, led by the Magicians of Fire. There they conduct research of magic and alchemy and press wine."						);
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History2 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History2 = TRUE;
					};
	};
};

FUNC VOID Use_BookstandHistory3_S1()		//Geschichtsbücher
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

					Doc_PrintLine	( nDocID,  0, "The Law of the Island"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					Doc_PrintLines	( nDocID,  0, "Wherever men come together, ways must be found to keep the peace - be it in the monastery, the city or on the landowner's farm."						);
					Doc_PrintLines	( nDocID,  0, "Any crime against the community is punished."						);
					Doc_PrintLines	( nDocID,  0, "The community forbids starting fights or joining brawls."						);
					Doc_PrintLines	( nDocID,  0, "Theft is also a crime that has consequences. The sheep are also protected by law."						);
					Doc_PrintLines	( nDocID,  0, " "						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "If a man strikes down another or murders him, he must expect to be judged on the spot."						);
					Doc_PrintLines	( nDocID,  1, "To evade this fate he must pay a heavy fine."						);
					Doc_PrintLines	( nDocID,  1, "In all large places, men of justice keep the peace. They will hear of any crime, and it is their duty to effect punishment and restore order."						); 
					Doc_PrintLines	( nDocID,  1, "For whoever suffers from crime or witnesses such will not have a high opinion of the culprit."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Of course, there are folks who care nothing for laws, particularly bandits and mercenaries."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History3 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History3 = TRUE;
					};
	};
};

//##########################################################################
//##
//##	History Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_HISTORY1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Magic Ore");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");	
					Doc_PrintLines	( nDocID,  1,"It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History4 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History4 = TRUE;
					};	  
	};
};


FUNC VOID UseSchlacht_um_Varant1()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"... but Rhobar, the strategist, chose to attack. He assembled his troops and had them storm the enemy's weak right flank. He did not waste his time on long skirmishes, but thrust into the enemy army like a sword and cut down the defenses as though they were made of paper. On and on he drove his troops, advancing on the boarders of Varant. He knew that to win this fight, he would have to disperse the enemy army and prevent Gellon and Lukkor ");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"uniting and dealing him a crushing blow. He would have to sever their supply lines to secure the victory ...");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"... Gellon was dead, his army beaten, his leaderless troops on the run. But Rhobar was not willing to give the enemy a chance to regroup, and commanded his army to destroy the remainder of the enemy forces. Meanwhile, Lukkor took advantage of the moment and struck a decisive blow at King Rhobar's exhausted troops ...");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_History5 == FALSE)
				{
					REV_ReadBook(BookType_History);
					RevivedBookstandRead_History5 = TRUE;
				};	  
};

FUNC VOID UseSchlacht_um_Varant2()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"The war had been decided. Varant had lost its seaports, vital to army supplies. King Rhobar had not lingered on the battle fields for a long time, but left his generals to deal with the few remaining enemy troops. Varant had only one large force left, commanded by Lukkor, the most capable warlord of the Varant army, who had more than once turned defeat into victory.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"But now his army was trapped. The situation was hopeless, even though his army greatly outnumbered the enemy. Lee, a war hero from Myrtana, had lured him into this trap. The heavy cavalry had been unable to fight on the thick, swamped ground of the narrow valley. Lee's soldiers had occupied the range of hills surrounding the swamp, and they had struck repeatedly, decimating the army. The desperate sallies his troops had launched had been cut short in pools of blood. He was beaten.");
					
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_History6 == FALSE)
				{
					REV_ReadBook(BookType_History);
					RevivedBookstandRead_History6 = TRUE;
				};	  
};