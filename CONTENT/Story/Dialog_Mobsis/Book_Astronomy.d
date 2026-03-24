//##########################################################################
//##
//##	Astronomy Books - Gothic II
//##
//##########################################################################

var int Astronomy_once;
FUNC VOID Use_Astronomy()
{   
		if (Astronomy_once == FALSE)
		{
			B_RaiseAttribute (self, ATR_MANA_MAX, 2);
			Print (PRINT_ReadAstronomy);
			Astronomy_once = TRUE;
		};
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					Doc_SetFont 	( nDocID,  -1, FONT_Book	   			); 	// -1 -> all pages 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels					
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "... but when the strength of an ox is combined with the principles of a warrior, then beware of the events that may come to pass.");
					Doc_PrintLines	( nDocID,  0, "The unbound strength of the ox and the perseverance of the warrior can topple the ancient balance of the powers. The cosmic boundary between the dimensions grows weak - so weak that it becomes easy for the shadow creatures of Beliar to enter our world.");

					Doc_SetMargins	( nDocID,  -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "What would ensue from this is shown to us by the wars of ancient times, when the link between the worlds was still strong. The henchmen of Evil brought death and destruction to the world, and only the help of Innos and the Chosen One could ward off Evil from mankind."	);
					Doc_PrintLines	( nDocID,  1, "If such a threat should ever exist again, then may Innos protect us, for there has not been another Chosen of Innos for over a hundred years."					);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Astronomy1 == FALSE)
					{
						REV_ReadBook(BookType_Astronomy);
						RevivedBookstandRead_Astronomy1 = TRUE;
					};	 
};

//##########################################################################
//##
//##	Astronomy Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_ASTRONOMY1_S1()
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
					Doc_PrintLines	( nDocID,  0,"In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens.");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe.");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Astronomy2 == FALSE)
					{
						REV_ReadBook(BookType_Astronomy);
						RevivedBookstandRead_Astronomy2 = TRUE;
					};	  
	};
};