//##########################################################################
//##
//##	Magic Books - Gothic II
//##
//##########################################################################



//##########################################################################
//##
//##	Magic Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_MAGIC1_S1()
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
					Doc_PrintLines	( nDocID,  0,"All magic originates from the magic powers of the user. The user is called a magician.");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");
					Doc_PrintLine	( nDocID,  1,"");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic1 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic1 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC2_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  270, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Elementary Arcanum");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLines	( nDocID,  0,"The Place of Magic in the Order of the Worldly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic2 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic2 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC3_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"True Power");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLines	( nDocID,  0,"The Sacred Duty of the Skillful");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic3 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic3 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC4_S1()
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

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"The Secrets of Magic");
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"His spirit serves as a vessel for the all-encompassing arcane power ... to shape it, focus it and finally release it into the world we know. During these moments of total concentration, the magus' spirit rises above our sphere and gazes upon the Other Side, the home of power. The magus himself is but a conductor and shaper of that power.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic4 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic4 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC5_S1()
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

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0," ");
					Doc_PrintLine	( nDocID,  0,"A Gift from the Gods");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic5 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic5 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC6_S1()
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

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"The special feature of these magic formulas is that, although they are bound in runes, they can be cast by anybody with magic powers. The magic of these formulas can be activated at once. There are no restrictions to the teleportation spell.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic6 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic6 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC7_S1()
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
					Doc_PrintLine	( nDocID,  0,"A Powerful Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A Work for Those Instructed in the Arcane Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic7 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic7 = TRUE;
					};	  
	};
};

FUNC VOID UseGolemBook1()
{   
		var int nDocID;
		nDocID = Doc_Create(); 

		Doc_SetPages	( nDocID,  2 );
		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0,"(Magic of the Golems)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0,"Only who has been confronted with these creatures that came from the elements can truly understand how much respect these magical beings will teach an adventurous wanderer.");
		Doc_PrintLine	( nDocID,  0, "");

		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	( nDocID,  1,"Stone Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"These colossuses of stone are nearly invulnerable in battle. Swords, axes and bows do not seem to do any damage to these monsters.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1,"The only plausible report of a battle against such a leviathan was written by a mercenary. He reported how the blunt hit of a war hammer caused cracks in the golem, until it finally burst apart.");

		Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic8 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic8 = TRUE;
					};	  
};

FUNC VOID UseGolemBook2()
{   
		var int nDocID;
		nDocID = Doc_Create(); 
		Doc_SetPages	( nDocID,  2 );

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0,"Ice Golem");
		Doc_PrintLine	( nDocID,  0,"---------");
		Doc_PrintLines	( nDocID,  0,"The ice golems are somehow related to the stone golems, though their physical substance seems to consist of water. Any familiar weapon seems to slide off the surface of this icy being.");
		Doc_PrintLines	( nDocID,  0,"Adventurous wanderers be warned of this creature's icy breath as well, because it surrounds the unsuspecting with a pillar of ice.");

		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	( nDocID,  1,"A Magician of Fire reported an encounter with such a creature, but apparently he didn't see much of a threat in it.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1,"Fire Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"According to reports, these fiery beings can convert their victims into a sea of flames with only one touch.");
		Doc_PrintLines	( nDocID,  1,"It was only last year that a group of hunters met such a walking mound of embers. There is no report on the outcome of the encounter, but apparently lightning bolts and ice had some effect on the hellish creature.");
		
		Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic9 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic9 = TRUE;
					};	  
};