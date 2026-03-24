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

					Doc_PrintLine	( nDocID,  0, "THE FIRST CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "The runes of the 1st Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Light");
					Doc_PrintLine	( nDocID,  0, "Gold Coin");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Fire Arrow");
					Doc_PrintLine	( nDocID,  0, "Sulfur");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Small Lightning");
					Doc_PrintLine	( nDocID,  0, "Rock Crystal");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Goblin Skeleton");
					Doc_PrintLine	( nDocID,  0, "Goblin's Bone");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Heal Light Wounds");
					Doc_PrintLine	( nDocID,  0, "Healing Plant");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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

					Doc_PrintLine	( nDocID,  0, "THE SECOND CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "The runes of the 2nd Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Fireball");
					Doc_PrintLine	( nDocID,  0, "Pitch");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Ice Arrow");
					Doc_PrintLine	( nDocID,  0, "Glacier Quartz");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Summon Wolf");
					Doc_PrintLine	( nDocID,  0, "Wolf Skin");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Wind Fist");
					Doc_PrintLine	( nDocID,  0, "Coal");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Sleep");
					Doc_PrintLine	( nDocID,  0, "Swampweed");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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

					Doc_PrintLine	( nDocID,  0, "THE THIRD CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the 3rd Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					
					
					Doc_PrintLine	( nDocID,  0, "Heal Medium Wounds");
					Doc_PrintLine	( nDocID,  0, "Healing Herb");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Small Fire Storm");
					Doc_PrintLine	( nDocID,  0, "Pitch, Sulfur");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Create Skeleton");
					Doc_PrintLine	( nDocID,  0, "Skeleton's Bone");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Fear");
					Doc_PrintLine	( nDocID,  0, "Black Pearl");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Ice Block");
					Doc_PrintLine	( nDocID,  0, "Glacier Quartz");
					Doc_PrintLine	( nDocID,  0, "Aquamarine");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Ball Lightning");
					Doc_PrintLine	( nDocID,  0, "Rock Crystal");
					Doc_PrintLine	( nDocID,  0, "Sulfur");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Fireball");
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  0, "Pitch, Sulfur");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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

					Doc_PrintLine	( nDocID,  0, "THE FOURTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the 4th Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Large Fireball");
					Doc_PrintLine	( nDocID,  0, "Sulfur");
					Doc_PrintLine	( nDocID,  0, "Pitch");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Lightning");
					Doc_PrintLine	( nDocID,  0, "Rock Crystal");
					Doc_PrintLine	( nDocID,  0, "Glacier Quartz");
					Doc_PrintLine	( nDocID,  0, "");				
					
					Doc_PrintLine	( nDocID,  0, "Awaken Golem");
					Doc_PrintLine	( nDocID,  0, "Heart of a Stone Golem");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Destroy Undead");
					Doc_PrintLine	( nDocID,  0, "Holy Water");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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

					Doc_PrintLine	( nDocID,  0, "THE FIFTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the 5th Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Ice Wave");
					Doc_PrintLine	( nDocID,  0, "Glacier Quartz");
					Doc_PrintLine	( nDocID,  0, "Aquamarine");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Large Fire Storm");
					Doc_PrintLine	( nDocID,  0, "Sulfur");
					Doc_PrintLine	( nDocID,  0, "Tongue of Fire");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Summon Demon");
					Doc_PrintLine	( nDocID,  0, "Heart of a Demon");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Heal Heavy Wounds");
					Doc_PrintLine	( nDocID,  0, "Healing Root");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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

					Doc_PrintLine	( nDocID,  0, "THE SIXTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the 6th Circle and the ingredients required to create them.");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Fire Rain");
					Doc_PrintLine	( nDocID,  0, "Pitch");
					Doc_PrintLine	( nDocID,  0, "Sulfur");
					Doc_PrintLine	( nDocID,  0, "Tongue of Fire");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Breath of Death");
					Doc_PrintLine	( nDocID,  0, "Coal");
					Doc_PrintLine	( nDocID,  0, "Black Pearl");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Wave of Death");
					Doc_PrintLine	( nDocID,  0, "Skeleton's Bone");
					Doc_PrintLine	( nDocID,  0, "Black Pearl");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Army of Darkness");
					Doc_PrintLine	( nDocID,  0, "Skeleton's Bone");
					Doc_PrintLine	( nDocID,  0, "Black Pearl");
					Doc_PrintLine	( nDocID,  0, "Heart of a Stone Golem");
					Doc_PrintLine	( nDocID,  0,  "Heart of a Demon");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLine	( nDocID,  1, "Shrink Monster");
					Doc_PrintLine	( nDocID,  1, "Goblin's Bone");
					Doc_PrintLine	( nDocID,  1, "Troll Tusk");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
			
					Doc_PrintLines	( nDocID,  1, "To create a rune you always require ONE of the ingredients listed."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he set to work on the rune table."					);
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
				Doc_PrintLine	( nDocID,  0,"The First Circle");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Light");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Innos' first gift to mankind. A shining ball appears over the magician.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1,  "" );
				Doc_PrintLine	( nDocID,  1,"Ice Bolt");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"A missile of magic energy.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Fire Bolt");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"A missile of magic Fire.");
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
				Doc_PrintLine	( nDocID,  0,"The Second Circle");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"All magic originates from the magic powers of the user. The user is called a magician.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
					
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Healing");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Adanos saw that the humans died and that it was the will of Beliar that it should be that way. And he spoke: I will not oppose the will of Beliar, but I shall give mankind the power of healing."); 
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLines	( nDocID,  1,"This spell has the power of healing the magician.");
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
				Doc_PrintLine	( nDocID,  0,"The Third Circle");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Fireball");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Innos' second gift to the children of Fire. A ball of fire, which burns its victims.");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Ice Block");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"The victim is enclosed in a block of ice. A spell from the temple of the Magicians of Water.");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Ball Lightning");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"A ball of magic power.");
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
				Doc_PrintLine	( nDocID,  0,"The Fourth Circle");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"The Magic");
				Doc_PrintLine	( nDocID,  0,"of Teleportation");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0,"The special feature of these magic formulas is that, although they are bound in runes, they can be cast by anybody with magic powers. The magic of these formulas can be activated at once. There are no restrictions to the teleportation spell.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);

				Doc_PrintLine	( nDocID,  1,"Storm of Fire");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"Like the fireball, this spell affects one foe, but then leaps to other foes as well.");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Chain Lightning");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"The spell is leaping to more targets, the longer it is working. The power of lighning is hard to control. Thus, the caster himself may become a target.");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLine	( nDocID,  1, "");	
				Doc_PrintLine	( nDocID,  1,"Death to the Undead");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"This spell banishes undead creatures of darkness.");	
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
				Doc_PrintLine	( nDocID,  0,"The Fifth Circle");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"Rain of Fire");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLines	( nDocID,  0,"The power of divine Fire hits every creature within range of the magician.");
				Doc_PrintLine	( nDocID,  0, "");					

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Wave of Ice");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"A magic Wave of Ice extends over any foes and freezes them for a short period of time. During this period, the victims are paralyzed and damaged. ");
				Doc_PrintLines	( nDocID,  1,"A spell from the temple of the Magicians of Water.");
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
				Doc_PrintLine	( nDocID,  0,"The Sixth Circle");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0,"Breath of Death");
				Doc_PrintLine	( nDocID,  0,"---------------");
				Doc_PrintLines	( nDocID,  0,"Beliar's breath. A cloud of destructive air, which may kill any being instantly.");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLine	( nDocID,  0, "");					

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLine	( nDocID,  1,"Ring of Death");
				Doc_PrintLine	( nDocID,  1,"---------------");
				Doc_PrintLines	( nDocID,  1,"There are hardly any records about the rune carrying the powers of URIZIEL.");	
				Doc_PrintLines	( nDocID,  1,"It is only known that it has Beliar's powers.");
				Doc_PrintLine	( nDocID,  1, "");
			
				Doc_Show		( nDocID );
					
			if (RevivedBookstandRead_Runes6 == FALSE)
			{
				REV_ReadBook(BookType_Runes);
				RevivedBookstandRead_Runes6 = TRUE;
			};	  
};