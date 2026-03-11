//****************************************************************************
//			BOOKS
//****************************************************************************

INSTANCE ITWR_REVIVED_CIRCLE_KDF_01(C_Item)
{	
	name 					=	"The First Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	50;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The First Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_01;
};

	FUNC VOID UseItWr_Book_Circle_01()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"The First Circle");
					Doc_PrintLine	( nDocID,  0,"---------------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");
					
				

					//2.Seite
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
	};
	
INSTANCE ITWR_REVIVED_CIRCLE_KDF_02(C_Item)
{	
	name 					=	"The Second Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Second Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_02;
};

	FUNC VOID UseItWr_Book_Circle_02()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
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
					
					
					//2.Seite
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
	};
										
INSTANCE ITWR_REVIVED_CIRCLE_KDF_03 (C_Item)
{	
	name 					=	"The Third Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Third Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_03;
	
	
};
	FUNC VOID UseItWr_Book_Circle_03()
	{   
		
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
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


					//2.Seite
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
	};
		
INSTANCE ITWR_REVIVED_CIRCLE_KDF_04 (C_Item)
{	
	name 					=	"The Fourth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	200;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Fourth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseItWr_Book_Circle_04;
};
	FUNC VOID UseItWr_Book_Circle_04()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
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
					

					//2.Seite
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
	};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_05(C_Item)
{	
	name 					=	"The Fifth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	250;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= "The Fifth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_05;
	
	
};
	FUNC VOID UseItWr_Book_Circle_05()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
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
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Wave of Ice");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"A magic Wave of Ice extends over any foes and freezes them for a short period of time. During this period, the victims are paralyzed and damaged. ");
					Doc_PrintLines	( nDocID,  1,"A spell from the temple of the Magicians of Water.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_Show		( nDocID );
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_06(C_Item)
{	
	name 					=	"The Sixth Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	300;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Sixth Circle of Magic";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Book_Circle_06;
	
	
};
	FUNC VOID UseItWr_Book_Circle_06()
	{   
		var int nDocID;		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
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
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Ring of Death");
					Doc_PrintLine	( nDocID,  1,"---------------");
					Doc_PrintLines	( nDocID,  1,"There are hardly any records about the rune carrying the powers of URIZIEL.");	
					Doc_PrintLines	( nDocID,  1,"It is only known that it has Beliar's powers.");
					Doc_PrintLine	( nDocID,  1, "");
				
					
					Doc_Show		( nDocID );
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_GIFTFROMTHEGODS(C_Item)
{	
	name 					=	"A Gift from the Gods";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "A Gift from the Gods";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseGoettergabe;
};

	FUNC VOID UseGoettergabe()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_PrintLine	( nDocID,  0,"Magic");
  					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0," ");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0,"A Gift from the Gods");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos of Laran");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_SECRETSOFMAGIC(C_Item)
{	
	name 					=	"The Secrets of Magic";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Secrets of Magic";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseGeheimnisse_der_Zauberei;
};

	FUNC VOID UseGeheimnisse_der_Zauberei()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"The Secrets of Magic");
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
					
					//2.Seite
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
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_POWERFULART (C_Item)
{	
	name 					=	"A Powerful Art";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "A Powerful Art";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseMachtvolle_Kunst;
	
	
};
	FUNC VOID UseMachtvolle_Kunst()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" 	, 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga"	, 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"A Powerful Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A Work for Those Instructed in the Arcane Art");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ELEMENTARYARCANUM (C_Item)
{	
	name 					=	"Elementary Arcanum";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Elementary Arcanum";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseElementare_Arcanei;
	
	
};
	FUNC VOID UseElementare_Arcanei()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" ,	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" ,	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Elementary Arcanum");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Place of Magic in the Order of the Worldly");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_TRUEPOWER (C_Item)
{	
	name 					=	"True Power";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "True Power";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseWahre_Macht;
	
	
};
	FUNC VOID UseWahre_Macht()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"True Power");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The Sacred Duty of the Skillful");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
					Doc_Show		( nDocID );
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAGICORE (C_Item)
{	
	name 					=	"Magic Ore";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Magic Ore";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseDas_magische_Erz;
	
	
};
	FUNC VOID UseDas_magische_Erz()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
					Doc_PrintLine	( nDocID,  0,"Magic Ore");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");	
					Doc_PrintLines	( nDocID,  1,"It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ASTRONOMY (C_ITEM)
{	
	name 					=	"Astronomy";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Astronomy";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseAstronomie;
};

	FUNC VOID UseAstronomie()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens.");
					Doc_PrintLine	( nDocID,  0,"");
					//Absatz
					Doc_PrintLines	( nDocID,  0,"In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe.");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_01 (C_Item)
{	
	name 					=	"Arcanum Golum - Volume I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook1;
};

	FUNC VOID UseGolemBook1()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ; 
		Doc_SetPages	( nDocID,  2 );
		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
		
		//1.Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0,"(Magic of the Golems)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0,"Only who has been confronted with these creatures that came from the elements can truly understand how much respect these magical beings will teach an adventurous wanderer.");
		Doc_PrintLine	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	( nDocID,  1,"Stone Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"These colossuses of stone are nearly invulnerable in battle. Swords, axes and bows do not seem to do any damage to these monsters.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1,"The only plausible report of a battle against such a leviathan was written by a mercenary. He reported how the blunt hit of a war hammer caused cracks in the golem, until it finally burst apart.");

		Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_ARCANUMGOLUM_02(C_Item)
{	
	name 					=	"Arcanum Golum - Volume II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook2;
};

	FUNC VOID UseGolemBook2()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ; 
		Doc_SetPages	( nDocID,  2 );

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 

		//1. Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
		Doc_PrintLine	( nDocID,  0,"ARCANUM GOLUM - Volume II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0,"Ice Golem");
		Doc_PrintLine	( nDocID,  0,"---------");
		Doc_PrintLines	( nDocID,  0,"The ice golems are somehow related to the stone golems, though their physical substance seems to consist of water. Any familiar weapon seems to slide off the surface of this icy being.");
		Doc_PrintLines	( nDocID,  0,"Adventurous wanderers be warned of this creature's icy breath as well, because it surrounds the unsuspecting with a pillar of ice.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	( nDocID,  1,"A Magician of Fire reported an encounter with such a creature, but apparently he didn't see much of a threat in it.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1,"Fire Golem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"According to reports, these fiery beings can convert their victims into a sea of flames with only one touch.");
		Doc_PrintLines	( nDocID,  1,"It was only last year that a group of hunters met such a walking mound of embers. There is no report on the outcome of the encounter, but apparently lightning bolts and ice had some effect on the hellish creature.");
		Doc_Show		( nDocID );
	};

/******************************************************************************************/
INSTANCE ITWR_REVIVED_WORDSOFGODS_01 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 1";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter1;
};

	FUNC VOID UseLehren_der_Goetter1()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Hear the words of the gods, for it is their will that you shall hear them. Heed the teachings of the gods, for it is their will that you shall heed them. Honor the priests of the gods, for they are the chosen ones.");
					Doc_PrintLine	( nDocID,  0,"");
					//Absatz
					Doc_PrintLines	( nDocID,  0,"The word of Innos: And if it shall happen that you do not understand, do not despair at the words of the priests, for they are just and wise. For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"The word of Adanos: Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created. But whosoever shall be listless and idle, he shall be banished to the shadows forever more.");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"The word of Beliar: But whosoever shall do wrong and go against the will of the gods, him I will punish. I will plague his body with pain, suffering and death, but his spirit shall join me in the shadows forever more. ");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_WORDSOFGODS_02 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 2";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter2;
};

	FUNC VOID UseLehren_der_Goetter2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"Of the beginning of time: There was no night and no day, and no living thing moved across the land. Then Innos appeared and his light shone upon the world. And Innos gave unto the world the gift of life. But no creature could live in the light of Innos, so he created the sun. But still the light was too bright. So Innos divided himself and thus created Beliar. Beliar created the night. Now man could be. So Innos divided himself again and created Adanos. Adanos brought man versatility, knowledge, curiosity and courage. Innos was satisfied with what he had done.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"And he decided to leave mankind in the care of Adanos, and he rested. But Beliar was consumed by envy, for the people did not pray to him, but slept at night. He grew angry and created a man. A man to pray to him alone. But the man he created was like all other men. Beliar became so furious that he killed the man and spoke: If they will not worship me, then at least they shall fear me. And he created death and ended the lives of men.");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_WORDSOFGODS_03 (C_ITEM)
{	
	name 					=	"Words of the Gods Volume 3";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Words of the Gods";
	TEXT[0]				= "Volume 3";

	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseLehren_der_Goetter3;
};

	FUNC VOID UseLehren_der_Goetter3()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
   					Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will. Innos gave them no limits. And thus man received a portion of the divine power of creation. But not all the people were equal, and this dissatisfied them. So he took the power from the discontented. Innos raised the few who had shown him gratitude above the others.");
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
 					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"These few were soon revered and feared, and the people  called them priests. But among them were many who soon became dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The league of priests was divided. Wars ensued and the faith in divine omnipotence soon became a myth. And so the priests were separated. Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_VARANT_01 (C_Item)
{	
	name 					=	"The Battle of Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Battle of Varant";
	TEXT[0]				= "Volume 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant1;
};

	FUNC VOID UseSchlacht_um_Varant1()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"... but Rhobar, the strategist, chose to attack. He assembled his troops and had them storm the enemy's weak right flank. He did not waste his time on long skirmishes, but thrust into the enemy army like a sword and cut down the defenses as though they were made of paper. On and on he drove his troops, advancing on the boarders of Varant. He knew that to win this fight, he would have to disperse the enemy army and prevent Gellon and Lukkor ");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"uniting and dealing him a crushing blow. He would have to sever their supply lines to secure the victory ...");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"... Gellon was dead, his army beaten, his leaderless troops on the run. But Rhobar was not willing to give the enemy a chance to regroup, and commanded his army to destroy the remainder of the enemy forces. Meanwhile, Lukkor took advantage of the moment and struck a decisive blow at King Rhobar's exhausted troops ...");
					
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_VARANT_02(C_Item)
{	
	name 					=	"The Battle of Varant";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Battle of Varant";
	TEXT[0]				= "Volume 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseSchlacht_um_Varant2;
};

	FUNC VOID UseSchlacht_um_Varant2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"The war had been decided. Varant had lost its seaports, vital to army supplies. King Rhobar had not lingered on the battle fields for a long time, but left his generals to deal with the few remaining enemy troops. Varant had only one large force left, commanded by Lukkor, the most capable warlord of the Varant army, who had more than once turned defeat into victory.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"But now his army was trapped. The situation was hopeless, even though his army greatly outnumbered the enemy. Lee, a war hero from Myrtana, had lured him into this trap. The heavy cavalry had been unable to fight on the thick, swamped ground of the narrow valley. Lee's soldiers had occupied the range of hills surrounding the swamp, and they had struck repeatedly, decimating the army. The desperate sallies his troops had launched had been cut short in pools of blood. He was beaten.");
					
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MYRTANAPOETRY (C_Item)
{	
	name 					=	"Myrtana's Poetry";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Myrtana's Poetry";

	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseMyrtanas_Lyrik;
};

	FUNC VOID UseMyrtanas_Lyrik()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"    The Song of");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"          Repentance");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLine	( nDocID,  0,"");
		
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"In the beginning was the power, pure and white,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Now only echoes of the vow sound through the night.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"They tell of days of unity, long since past,");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"'Tis having and taking for which we now thirst.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"All unity was torn apart and burst.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Cursed the spirit which did not last.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"Of desire doth now tell our song.");				
					Doc_PrintLine	( nDocID,  1,"");				
					Doc_PrintLines	( nDocID,  1,"For unity is forever gone.");				
					Doc_PrintLines	( nDocID,  1,"");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_HUNTANDPREY (C_ITEM)
{	
	name 					=	"Hunt and Prey";
	mainflag 				=	ITEM_KAT_DOCS;			
									
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_02.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Hunt and Prey";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseJagd_und_Beute;
};

	FUNC VOID UseJagd_und_Beute()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
					Doc_PrintLine	( nDocID,  0,""); 					
					Doc_PrintLines	( nDocID,  0,"His writings have outlasted the ages and his advice is considered a book on the art of hunting. Following the heavy battles in the north, every countryman now knows how to use a bow and arrows. Yet there are some rules to be followed when hunting which exceed the simple knowledge of how to use the weapon! Game is both timid and unpredictable.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"The art of hunting with a bow is not merely ancient tradition, but the most common form of hunting. The techniques employed in this traditional method of hunting have hardly altered in the course of the millennia, and it is unlikely that they will change in the future. What circumstances really determine a hunt with a bow and arrow? To recognize these laws is the true art of bow hunting.");
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BLOODFLIES (C_Item)
{	
	name 					=	"The Bloodflies";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	150;

	visual 					=	"ItWr_Book_02_01.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "The Bloodflies";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseItWr_Bloodfly_01;
};

	FUNC VOID UseItWr_Bloodfly_01()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);
					
					//1.Seite
  					
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
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"To take such a sting is the art of many hunters in the swamp. Make a deep cut into the creature's abdomen, then cut in a zigzag line around the sting and remove it carefully, together with the tissue surrounding it. Let it bleed and scrape off the inedible meat.");	
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_Show		( nDocID );
/* 					
					if Knows_GetBFSting ==  FALSE
					{
					Knows_GetBFSting = TRUE;
					Log_CreateTopic (GE_AnimalTrophies,LOG_NOTE);
					B_LogEntry (GE_AnimalTrophies,"How to remove stings - bloodflies");	
					PrintScreen	("Learn: Remove sting", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					}; */
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_ARTOFFIGHTING (C_ITEM)
{	
	name 					=	"The Art of Fighting";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "The Art of Fighting";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseKampfkunst;
};

	FUNC VOID UseKampfkunst()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
					Doc_PrintLines	( nDocID,  0,"For 2000 years, the teachings of this expert have determined the development of the art of fighting.");
  					Doc_PrintLine	( nDocID,  0,"");					
  					Doc_PrintLine	( nDocID,  0,"");					
   					Doc_PrintLines	( nDocID,  0,"Dexterity, composure, speed, observation and reactions are the skills which must be trained. Your movements must be well-coordinated and your posture correct if you want your powers to blossom.");			
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
					Doc_PrintLines	( nDocID,  1,"The essence of the master's spiritual and physical teachings has survived many years.");
  					Doc_PrintLine	( nDocID,  1,"");					
  					Doc_PrintLine	( nDocID,  1,"");					
 					Doc_PrintLines	( nDocID,  1,"His unique success has influenced generations. For millennia, the face of the world has shifted and changed, but the harmony of inner powers with movements of the body has survived.");					
					Doc_Show		( nDocID );
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPES_01 (C_ITEM)
{	
	name 					=	"Recipes";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Recipes";
	TEXT[0]				= "Volume 1";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseRezepturen;
};

	FUNC VOID UseRezepturen()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Balm of Vision:");
					Doc_PrintLine	( nDocID,  0,"----------------");
					Doc_PrintLine	( nDocID,  0,"");		
					Doc_PrintLines	( nDocID,  0,"Cover the patient's eyes with bile. This secretion has a bitter taste. Placing this bitterness on the eye forces the patient to regard it, which makes him wise. He learns to see! Bitterness and wisdom are mutually exclusive opposites. They are each other's counterparts!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Tears, suffering and disappointment are bitter, but wisdom is the consoling influence of every kind of pain. Bitterness and wisdom are alternatives. Where there is bitterness, there is no room for wisdom, and where there is wisdom, there is no bitterness.");
					Doc_Show		( nDocID );
	};

INSTANCE ITWR_REVIVED_RECIPES_02 (C_ITEM)
{	
	name 					=	"Recipes";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_04.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description			= "Recipes";
	TEXT[0]				= "Volume 2";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]				=	UseRezepturen2;
};

	FUNC VOID UseRezepturen2()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
 					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"The Wine of Oblivion");
					Doc_PrintLine	( nDocID,  0,"--------------------");
						Doc_PrintLine	( nDocID,  0,"");			
					Doc_PrintLines	( nDocID,  0,"The best grapes for this wine are found high up on the slopes of Archolos. The art of allowing this wine to ripen to perfection lies in not disturbing it through any kind of movement. The grapes are blended with the common syos herb in front of the wine cellars.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");
					//Absatz
					Doc_PrintLines	( nDocID,  1,"Observe and marvel as the master turns the clear water of the well to wine. The people pay tribute to him and feast on his gift. The master punishes his lazy disciples by locking them in bottles. A fire is kindled and black snakes arise.");
					Doc_Show		( nDocID );
	};

//****************************************************************************

INSTANCE ITWR_REVIVED_KALOMSRECIPE (C_Item)
{
	name 					=	"Kalom's Recipe";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"ItWr_Scroll_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= name;
	TEXT[0]					= "The recipe for a healing potion.";
	////COUNT[0]			= ;
	//TEXT[1]				= "";
	////COUNT[1]			= ;
	//TEXT[2]				= "";
	//COUNT[2]			= ;
	//TEXT[3] 			= "";
	//COUNT[3]			= ;
	//TEXT[4]				= ""; 
	////COUNT[4]			= ;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			= Use_KalomsRecipe;
};

func VOID Use_KalomsRecipe()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
				
				//1.Seite

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0, ""									);
				Doc_PrintLine	( nDocID,  0,"Lifrun ak Gharak"); 		
				Doc_PrintLine	( nDocID,  0, ""									); 			
				Doc_PrintLines	( nDocID,  0,"Gharak Or Nach bin thu. Lifrun mar Orag chtah. Shrunk esp Horinth.");
				
				//2.Seite

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1, ""					);					
				Doc_PrintLines	( nDocID,  1,"It seems to make sense if you read it backwards.");
				Doc_PrintLine	( nDocID,  1, ""					);	
				Doc_PrintLine	( nDocID,  1,"          - Kalom");	
				
				
				
				
				Doc_Show		( nDocID );
};

//****************************************************************************
//			NOTES
//****************************************************************************



//****************************************************************************
//			RECIPES
//****************************************************************************
INSTANCE ITWR_REVIVED_RECIPE_TURNIPBOOZE		(C_Item)
{
	name 				=	"Recipe for Turnip Booze";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_TurnipBooze;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Turnip Booze";
};
func void UseRecipe_TurnipBooze ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Turnip Booze"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing turnip based alcohol:");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Take a water bottle, two turnips and a decent portion of swampweed.");	
					Doc_PrintLines	( nDocID,  0, "Add the ground teeth of a swampshark."					);
					Doc_PrintLines	( nDocID,  0, "Put it all in the bottle and boil with a shot of beer."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_Show		( nDocID );

	if(KnowsRecipe_TurnipBooze == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_TURNIPBOOZE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_TurnipBooze = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_TurnipBooze] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_VINOSPECIAL		(C_Item)
{
	name 				=	"Recipe for Vino's Special";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_VinoSpecial;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Vino's Special";
};
func void UseRecipe_VinoSpecial ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Vino's Special" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing Vino's Special:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Take two handfuls of berries and crush them well." );
					Doc_PrintLines	( nDocID,  0, "Add two apples and two pears to sweeten the mixture." );
					Doc_PrintLines	( nDocID,  0, "Stir in the dried wings of a bloodfly." );
					Doc_PrintLines	( nDocID,  0, "Let the mixture ferment in a sealed bottle." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_VinoBooze == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_VINOBOOZE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_VinoBooze = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_VinoBooze] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MONSTERDRINK		(C_Item)
{
	name 				=	"Recipe for Monster Drink";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MonsterDrink;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Monster Drink";
};
func void UseRecipe_MonsterDrink ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Monster Drink" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing Monster Drink:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Crush two King's Sorrel leaves into a paste." );
					Doc_PrintLines	( nDocID,  0, "Add ground troll tusk powder from two pieces." );
					Doc_PrintLines	( nDocID,  0, "Mix in four teeth and four claws from beasts." );
					Doc_PrintLines	( nDocID,  0, "Boil everything together until the drink thickens." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_MonsterDrink == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MONSTERDRINK);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MonsterDrink = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_MonsterDrink] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MAGEWINE		(C_Item)
{
	name 				=	"Recipe for Monastery's Wine";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MageWine;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Monastery's Wine";
};
func void UseRecipe_MageWine ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Monastery Wine" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing Monastery Wine:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Press four ripe grapes into juice." );
					Doc_PrintLines	( nDocID,  0, "Add the stinger of a bloodfly to strengthen the flavor." );
					Doc_PrintLines	( nDocID,  0, "Seal the mixture in a bottle and let it age." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_MageWine == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MAGEWINE);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MageWine = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_MageWine] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_RICESCHNAPPS		(C_Item)
{
	name 				=	"Recipe for Rice Schnapps";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RiceBooze;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Rice Schnapps";
};
func void UseRecipe_RiceBooze ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Rice Schnapps" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing Rice Schnapps:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Take four rice plants and crush the grains." );
					Doc_PrintLines	( nDocID,  0, "Add finely chopped lurker claws." );
					Doc_PrintLines	( nDocID,  0, "Boil the mixture in a bottle and let it cool." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_RiceSchnaps == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_RICESCHNAPS);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_RiceSchnaps = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_RiceSchnaps] = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MEAD		(C_Item)
{
	name 				=	"Recipe for Mead";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_Mead;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making Mead";
};
func void UseRecipe_Mead ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Mead" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLine	( nDocID,  0, "Ingredients for brewing Mead:" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "Take two honey combs and dissolve them in warm water." );
					Doc_PrintLines	( nDocID,  0, "Add the mandibles of a field raider." );
					Doc_PrintLines	( nDocID,  0, "Let the mixture ferment until the drink becomes strong." );

					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );

					Doc_PrintLines	( nDocID,  0, "" );

					Doc_Show		( nDocID );

	if(KnowsRecipe_Mead == FALSE)
	{
		Log_CreateTopic (TOPIC_Booze, LOG_NOTE);
		B_LogEntry (TOPIC_Booze, LOGENTRY_RECIPE_MEAD);
		PrintScreen	(PRINT_LearnBooze, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Mead = TRUE;
		PLAYER_TALENT_BOOZE[BOOZE_Mead] = TRUE;
	};
};

/******************************************************************************************/
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MEATSTEW		(C_Item)
{
	name 				=	"Recipe for Meat Stew";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_MeatStew;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a meat stew";
};
func void UseRecipe_MeatStew ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Meat Stew" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Meat Stew:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take two pieces of meat and two portions of clam meat." );
					Doc_PrintLines	( nDocID,  0, "Add one sausage and a strip of bacon." );
					Doc_PrintLines	( nDocID,  0, "Boil everything slowly until the stew thickens." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_MeatSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MEATSTEW);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_MeatSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MeatStew] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_FISHSOUP		(C_Item)
{
	name 				=	"Recipe for Fish Soup";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_FishSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a fish soup";
};
func void UseRecipe_FishSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Fish Soup" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Fish Soup:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take two fish and clean them well." );
					Doc_PrintLines	( nDocID,  0, "Put them into a pot with water." );
					Doc_PrintLines	( nDocID,  0, "Let the soup boil until the fish softens." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_FishSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_FISHSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_FishSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_FishSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_BUGSOUP		(C_Item)
{
	name 				=	"Recipe for Meatbug Ragout";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_BugSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a meat stew";
};
func void UseRecipe_BugSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Meatbug Ragout" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Meatbug Ragout:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take five dark mushrooms and three portions of meatbug meat." );
					Doc_PrintLines	( nDocID,  0, "Add two rice plants to give the ragout some body." );
					Doc_PrintLines	( nDocID,  0, "Cook it slowly until the mushrooms dissolve into the sauce." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Don't get confused by the meatbugs ugly looks. Once cooked they are tasty." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_BugSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MEATBUGRAGOUT);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_BugSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MeatbugRagout] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_ROOTSOUP		(C_Item)
{
	name 				=	"Recipe for Root Soup";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RootSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a Root Soup";
};
func void UseRecipe_RootSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Root Soup" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Root Soup:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take two meadow berries and two forest berries." );
					Doc_PrintLines	( nDocID,  0, "Add two portions of swamp weed." );
					Doc_PrintLines	( nDocID,  0, "Boil the mixture carefully into a strange but filling soup." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_RootSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_ROOTSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_RootSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_RootSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_CRAWLERSOUP		(C_Item)
{
	name 				=	"Recipe for Minecrawler Soup";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_CrawlerSoup;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a Minecrawler Soup";
};
func void UseRecipe_CrawlerSoup ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Minecrawler Soup" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Minecrawler Soup:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take two minecrawler mandibles and crush them." );
					Doc_PrintLines	( nDocID,  0, "Mix in four portions of swamp weed." );
					Doc_PrintLines	( nDocID,  0, "Boil the brew until the broth turns dark and bitter." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_CrawlerSoup == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_MINECRAWLERSOUP);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_CrawlerSoup = TRUE;
		PLAYER_TALENT_COOKING[COOKING_MinecrawlerSoup] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_RICEBOWL		(C_Item)
{
	name 				=	"Recipe for Rice bowl";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_RiceBowl;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a bowl of rice";
};
func void UseRecipe_RiceBowl ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Rice bowl" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for preparing Rice bowl:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take three rice plants and separate the grains." );
					Doc_PrintLines	( nDocID,  0, "Cook them in a small pot until soft." );
					Doc_PrintLines	( nDocID,  0, "Serve while still warm." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_Rice == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_RICEBOWL);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Rice = TRUE;
		PLAYER_TALENT_COOKING[COOKING_RiceBowl] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_MARMALADE		(C_Item)
{
	name 				=	"Recipe for Berry Marmalade";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_Marmalade;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a berry marmalade";
};
func void UseRecipe_Marmalade ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Berry Marmalade" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for preparing Berry Marmalade:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take two grapes, two berries, two meadow berries and two forest berries." );
					Doc_PrintLines	( nDocID,  0, "Crush all fruit into a thick mash." );
					Doc_PrintLines	( nDocID,  0, "Boil it down until it becomes a sweet marmalade." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_Marmalade == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_BERRYMARMALADE);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_Marmalade = TRUE;
		PLAYER_TALENT_COOKING[COOKING_Marmalade] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_FRUITSALAD		(C_Item)
{
	name 				=	"Recipe for Fruit Salad";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_FruitSalad;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a fruit salad";
};
func void UseRecipe_FruitSalad ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Fruit salad" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for preparing Fruit salad:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take one apple, one pear, one berry and one grape." );
					Doc_PrintLines	( nDocID,  0, "Cut the fruit into pieces without crushing them." );
					Doc_PrintLines	( nDocID,  0, "Place everything in a bowl and pour a bottle of milk over it." );
					Doc_PrintLines	( nDocID,  0, "Serve the dish fresh." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_FruitSalad == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_FRUITSALAD);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_FruitSalad = TRUE;
		PLAYER_TALENT_COOKING[COOKING_FruitSalad] = TRUE;
	};
};
/******************************************************************************************/

INSTANCE ITWR_REVIVED_RECIPE_OLDSTEW		(C_Item)
{
	name 				=	"Recipe for Convict's Stew";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;
	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRecipe_OldStew;
	scemeName			=	"MAP";

	description			= 	name;
	text[0]				= 	"Recipe for making a Convict's Stew";
};
func void UseRecipe_OldStew ()
{
		var int nDocID;

		nDocID = 	Doc_Create		();
					Doc_SetPages	( nDocID,  1 );
					Doc_SetPage 	( nDocID,  0, "letters.TGA", 0 );
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline );
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1 );

					Doc_PrintLine	( nDocID,  0, "Convict's Stew" );
					Doc_SetFont 	( nDocID,  0, FONT_Book );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "Ingredients for cooking Convict's Stew:" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "Take one hard bread and break it into pieces." );
					Doc_PrintLines	( nDocID,  0, "Add one stinky cheese, one old beer and one stale water." );
					Doc_PrintLines	( nDocID,  0, "Cook the miserable mixture until even a paladin can stomach it." );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLine	( nDocID,  0, "" );
					Doc_PrintLines	( nDocID,  0, "" );
					Doc_Show		( nDocID );

	if(KnowsRecipe_OldStew == FALSE)
	{
		Log_CreateTopic (TOPIC_Cooking, LOG_NOTE);
		B_LogEntry (TOPIC_Cooking, LOGENTRY_RECIPE_CONVICTSTEW);
		PrintScreen	(PRINT_LearnCooking, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);

		KnowsRecipe_OldStew = TRUE;
		PLAYER_TALENT_COOKING[COOKING_ConvictStew] = TRUE;
	};
};


//****************************************************************************
//			MAPS
//****************************************************************************

INSTANCE ITWR_REVIVED_MAP_VALLEY (C_Item)
{
	name 		= "Map of the Valley of Mines (supplemented)";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY;

	description	= name;
	TEXT[0]		= "Ur-Shak, the Orc shaman, has sketched in";
	TEXT[1]		= "the Orc territory!";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};
INSTANCE ITWR_REVIVED_MAP_VALLEY_NOORC (C_Item)
{
	name 		= "Map of the Valley of Mines";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_NOORC;

	description	= name;
	TEXT[0]		= "Unfortunately, a big territory in the";
	TEXT[1]		= "southwest is missing.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_NOORC()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_NOORC);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_NOORC.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_GAROND (C_Item)
{
	name 		= "Garond's Mine Map";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_GAROND;

	description	= name;
	TEXT[0]		= "It's only part of the full map";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_GAROND()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_GAROND);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_GAROND.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_DRAGONS (C_Item)
{
	name 		= "Dragon locations in the Valley";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS;

	description	= name;
	TEXT[0]		= "The placement of the orc symbols";
	TEXT[1]		= "are oddly familiar";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_DRAGONS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_DRAGONS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_DRAGONS.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

INSTANCE ITWR_REVIVED_MAP_VALLEY_CAVES (C_Item)
{
	name 		= "Caves of the Valley of Mines";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_CAVES;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ITWR_REVIVED_MAP_VALLEY_CAVES()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ITWR_REVIVED_MAP_VALLEY_CAVES);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "REV_MAP_VALLEYOFMINES_CAVES.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "VALLEYOFMINES\OLDWORLD.zen");
					Doc_SetLevelCoords	(Document, -75642, 55012, 74528, -54472);
					Doc_Show			(Document);
	};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_MAP_FOCUS (C_Item)
{	
	name 					=	"Saturas' Focus Map";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	15;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseFocimap;

	description				= name;
	TEXT[0]					= "The tips of the pentagram";
	TEXT[1]					= "reveal the locations of all five";
	TEXT[2]					= "focus stones which were used to create";
	TEXT[3]					= "the Magic Barrier. The map is old";
	TEXT[4]					= "and doesn't show how the Valley";
	TEXT[5]					= "looks today.";
};

FUNC VOID UseFocimap()
{
	var int nDocID;
	
	nDocID = 	Doc_CreateMap	()			  ; 
				Doc_SetLevel	( nDocID,	"WORLD.ZEN" );
				Doc_SetPages	( nDocID, 1 );                         
				Doc_SetPage 	( nDocID, 0, "Map_World_Foki.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITWR_REVIVED_ALMANAC (C_Item)
{	
	name 					=	"Almanac";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	value 					=	0;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				= 	UseItWrFokusbuch;
	description				=	name;
	TEXT[0]					=	"This ancient magic book contains some";
	TEXT[1]					=	"magic formulas which all refer to the use";
	TEXT[2]					=	"of so-called focus stones.";
};
	FUNC VOID UseItWrFokusbuch()
	{   
				
					/* if (Wissen_Almanach == FALSE)
					&& Npc_IsPlayer (self)
					{
						//B_GiveXP (50);
						Wissen_Almanach = TRUE;
					}; */
				
					var int			nDocID;	
					nDocID = 	Doc_Create		()			  ;	 
					Doc_SetPages	( nDocID,  2 );

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
					Doc_PrintLine	( nDocID,  0,"Chapter 23");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
					Doc_PrintLine	( nDocID,  0,"The Focusing of Powers");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"The power inherent in the stone increases continuously and is unleashed by the words of the magician. Be it lasting or a single blow, this is within his judgment alone.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"But once unleashed, the focus becomes devoid of power, remaining but an empty shell.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,  "");
					Doc_PrintLines	( nDocID,  1,"The words that must be spoken to unleash the power of a focus are accessible to many artists of arcane power. Even the knowledge of endowing a new artifact with magic powers has become more of a magical custom than a secret of the knowing.");
					Doc_PrintLine	( nDocID,  1,  "");
					Doc_PrintLines	( nDocID,  1,"But only a chosen few have the knowledge needed to recharge a used focus stone. This formula of days long past serves as a sign of the high gift.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Now, oh knowing one, open your mind to the words of the ancient power.");
					
					Doc_Show		( nDocID );
	};

//****************************************************************************

INSTANCE ITWR_REVIVED_CRYPT (C_ITEM)
{	
	name 				=	"The Crypt";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	100;

	visual 				=	"ItWr_Book_02_03.3ds";
	material 			=	MAT_LEATHER;

	scemeName			=	"MAP";
	description			= "The Crypt";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
};

//****************************************************************************
//****************************************************************************

INSTANCE ITWR_REVIVED_CERTIFICATE (C_Item)
{	
	name 			=	"Certificate";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	0;

	value 			=	4;

	visual 			=	"ItWr_Scroll_01.3DS";
	material 		=	MAT_LEATHER;

	scemeName		=	"MAP";	
	on_state[0]		=	UseUrkunde;
	description		=	"Title Deed";
	TEXT[0]			=	"Entitles the holder to claim the";
	TEXT[1]			=	"territory of the mountain fort.";
	TEXT[5]			=	"Value                                      400 pounds of gold";
};

FUNC VOID UseUrkunde()
{   
	var int nDocID;
	
	nDocID = 	Doc_Create		()			  ;								 
				Doc_SetPages	(nDocID,  1 );                         
				Doc_SetPage 	(nDocID,  0, "letters.TGA"  , 0); 
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);  
				Doc_SetFont 	(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID,  0,"Certificate");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0,"I, Bergmar, Burgrave of the Western Field and presiding judge over the lands of my Lord of Tymorisin, the region surrounding Khorinis, ... hereby declare ... that I ... surrender and sell ... to the holder of this document ... and to the house of Innos the fief of the mountain fort (along with further tenths of my revenue and the mines contained therein) for 400 units of gold.");
				Doc_Show		(nDocID );
};