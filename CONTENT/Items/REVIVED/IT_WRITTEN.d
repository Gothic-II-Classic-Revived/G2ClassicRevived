const int	REV_VALUE_RECIPE			=	25;

const int	REV_VALUE_CIRCLE_FIRST		=	75;
const int	REV_VALUE_CIRCLE_SECOND		=	100;
const int	REV_VALUE_CIRCLE_THIRD		=	150;
const int	REV_VALUE_CIRCLE_FOURTH		=	200;
const int	REV_VALUE_CIRCLE_FIFTH		=	250;
const int	REV_VALUE_CIRCLE_SIXTH		=	300;

//****************************************************************************
//			BOOKS
//****************************************************************************

INSTANCE ITWR_REVIVED_CIRCLE_KDF_01(C_Item)
{	
	name 					=	"The First Fire Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FIRST;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_01;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE FIRST CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Light");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "Innos' first gift to mankind. A shining ball appears over the magician.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Fire Bolt");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A missile of magic Fire.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle1 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle1 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_02(C_Item)
{	
	name 					=	"The Second Fire Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_SECOND;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_02;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_02()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE SECOND CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "All magic originates from the magic powers of the user. The user is called a magician.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Fireball");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "Innos' second gift to the children of Fire. A ball of fire, which burns its victims.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle2 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle2 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_03 (C_Item)
{	
	name 					=	"The Third Fire Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_THIRD;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_03;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_03()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE THIRD CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Storm of Fire");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "Like the fireball, this spell affects one foe, but then leaps to other foes as well.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle3 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle3 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_04 (C_Item)
{	
	name 					=	"The Fourth Fire Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FOURTH;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_04;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_04()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE FOURTH CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "The Magic");
	Doc_PrintLine(nDocID, 0, "of Teleportation");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "The special feature of these magic formulas is that, although they are bound in runes, they can be cast by anybody with magic powers. The magic of these formulas can be activated at once. There are no restrictions to the teleportation spell.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Death to the Undead");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "This spell banishes undead creatures of darkness.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle4 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle4 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_05(C_Item)
{	
	name 					=	"The Fifth Fire Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FIFTH;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_05;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_05()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE FIFTH CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "Rain of Fire");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "The power of divine Fire hits every creature within range of the magician.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle5 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle5 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDF_06(C_Item)
{	
	name 					=	"The Sixth Fire Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_SIXTH;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDF_06;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDF_06()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "THE SIXTH CIRCLE OF FIRE");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will.");
	Doc_PrintLine(nDocID, 0, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "The Word of Innos");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle6 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle6 = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_CIRCLE_KDW_01(C_Item)
{	
	name 					=	"The First Water Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FIRST;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_01;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE FIRST CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "Ice Bolt");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A missile of magic energy.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 0, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle7 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle7 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDW_02(C_Item)
{	
	name 					=	"The Second Water Circle";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_SECOND;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_02;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_02()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE SECOND CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "All magic originates from the magic powers of the user. The user is called a magician.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Every activation of a magic spell costs the magician a portion of his powers. These powers are referred to as mana.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "Healing");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "Adanos saw that the humans died and that it was the will of Beliar that it should be that way. And he spoke: I will not oppose the will of Beliar, but I shall give mankind the power of healing.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "This spell has the power of healing the magician.");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle8 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle8 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDW_03 (C_Item)
{	
	name 					=	"The Third Water Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_THIRD;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_03;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_03()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE THIRD CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Some spells can be charged with a certain amount of magic power. They are also known as charging spells.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Other spells remain in force for as long as the magician lets his mana flow into them. These spells are referred to as investment spells.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle9 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle9 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDW_04 (C_Item)
{	
	name 					=	"The Fourth Water Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FOURTH;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_04;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_04()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE FOURTH CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Chain Lightning");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "The spell is leaping to more targets, the longer it is working. The power of lightning is hard to control. Thus, the caster himself may become a target.");
	Doc_PrintLine(nDocID, 1, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Ice Block");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "The victim is enclosed in a block of ice. A spell from the temple of the Magicians of Water.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Ball Lightning");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A ball of magic power.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle10 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle10 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDW_05(C_Item)
{	
	name 					=	"The Fifth Water Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FIFTH;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_05;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_05()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE FIFTH CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Wave of Ice");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "A magic Wave of Ice extends over any foes and freezes them for a short period of time. During this period, the victims are paralyzed and damaged.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Temple of Water");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A spell from the temple of the Magicians of Water.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle11 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle11 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_KDW_06(C_Item)
{	
	name 					=	"The Sixth Water Circle";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_SIXTH;

	visual 					=	"itwr_book_02_04.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_KDW_06;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_KDW_06()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "THE SIXTH CIRCLE OF WATER");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "The Word of Adanos");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created.");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "The Magicians of Water");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle12 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle12 = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_CIRCLE_BELIAR_01(C_Item)
{	
	name 					=	"The Forbidden Spells - Volume I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_THIRD;

	visual 					=	"itwr_book_02_05.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_BELIAR_01;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_BELIAR_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "Forbidden Spells - Volume I");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Root Snare");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "A grasping curse that calls roots from the ground and binds the victim where he stands.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Steal Energy");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "The caster tears strength from the enemy and turns the stolen force back into his own life.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Beliar's Wrath");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A dark missile of punishment. It carries no lesson and no warning, only Beliar's answer to defiance.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle13 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle13 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_BELIAR_02(C_Item)
{	
	name 					=	"The Forbidden Spells - Volume II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_FIFTH;

	visual 					=	"itwr_book_02_05.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_BELIAR_02;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_BELIAR_02()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "Forbidden Spells - Volume II");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Create Guardian");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "This formula calls a stone guardian into service. The creature obeys the summoner, but not out of loyalty.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Insect Swarm");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "A black cloud of biting insects descends on the target, worrying flesh and breaking concentration.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Create Zombie");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "A dead servant is raised and bound to the caster's will. Such obedience ends only with destruction.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle14 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle14 = TRUE;
	};
};

INSTANCE ITWR_REVIVED_CIRCLE_BELIAR_03(C_Item)
{	
	name 					=	"The Forbidden Spells - Volume III";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	REV_VALUE_CIRCLE_SIXTH;

	visual 					=	"itwr_book_02_05.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	Use_BOOK_CIRCLE_BELIAR_03;

	description				=	name;
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
};
FUNC VOID Use_BOOK_CIRCLE_BELIAR_03()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLines(nDocID, 0, "Forbidden Spells - Volume III");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 0, "Cry of the Dead");
	Doc_PrintLine(nDocID, 0, "---------------");
	Doc_PrintLines(nDocID, 0, "The dead answer in a single terrible cry. The spell gives no mercy to the target and little mercy to the caster.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");

	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "Last Formula");
	Doc_PrintLine(nDocID, 1, "---------------");
	Doc_PrintLines(nDocID, 1, "This is not a spell for testing, threat, or display. The caster gives himself wholly to the formula before the skull is released.");
	Doc_PrintLine(nDocID, 1, "MANAKOST");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "No sixth-circle Beliar rune is preserved in these records.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);
	if (RevivedBookstandRead_MagicCircle15 == FALSE)
	{
		REV_ReadBook(BookType_MagicCircles);
		RevivedBookstandRead_MagicCircle15 = TRUE;
	};
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
	description				=	"A Gift from the Gods";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_MAGIC5_S1;
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
	description				=	"The Secrets of Magic";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_MAGIC4_S1;
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
	description				=	"A Powerful Art";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_MAGIC7_S1;
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
	description				=	"Elementary Arcanum";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_MAGIC2_S1;
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
	description				=	"True Power";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_MAGIC3_S1;
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
	description				=	"Magic Ore";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_HISTORY1_S1;
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
	description				=	"Astronomy";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_BookstandRevived_ASTRONOMY1_S1;
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
	description				= "Words of the Gods";
	TEXT[0]					= "Volume 1";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseLehren_der_Goetter1;
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
	description				= "Words of the Gods";
	TEXT[0]					= "Volume 2";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseLehren_der_Goetter2;
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
	description				=	"Words of the Gods";
	TEXT[0]					=	"Volume 3";

	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseLehren_der_Goetter3;
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
	description				= "The Battle of Varant";
	TEXT[0]					= "Volume 1";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseSchlacht_um_Varant1;
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
	description				= "The Battle of Varant";
	TEXT[0]					= "Volume 2";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseSchlacht_um_Varant2;
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
	description				= "Myrtana's Poetry";

	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
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
	description				=	"Hunt and Prey";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseJagd_und_Beute;
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
	description				=	name;
	
	TEXT[5]					=	NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseItWr_Bestiary_Bloodfly;
};

FUNC VOID UseItWr_Bestiary_Bloodfly()
{   
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Bloodflies");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "But in that place, where the soil is damp and the air is humid, the flies gather, attracted by the sweat of all kinds of beings. They use their stings to kill their victims and feast on their blood.");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "To take such a sting is the art of many hunters in the swamp. Make a deep cut into the creature's abdomen, then cut in a zigzag line around the sting and remove it carefully, together with the tissue surrounding it. Let it bleed and scrape off the inedible meat.");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting4 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting4 = TRUE;
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BESTIARY_SWAMPSHARK (C_Item)
{
	name 					= 	"The Swampsharks";

	mainflag 				= 	ITEM_KAT_DOCS;
	flags 					= 	0;
	value 					= 	150;

	visual 					= 	"ItWr_Book_02_01.3ds";
	material 				= 	MAT_LEATHER;

	scemeName				= 	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;			COUNT[5]	= value;
	on_state[0]				= 	UseItWr_Bestiary_Swampshark;
};

FUNC VOID UseItWr_Bestiary_Swampshark()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Swampsharks");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLine(nDocID, 0, "");
	Doc_PrintLines(nDocID, 0, "Swampsharks live in warm marshes and muddy water. Their size makes them slow on dry ground, but in their own territory they are dangerous hunters.");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "The jaws are the safest trophy to take first. Cut behind the gum and loosen each tooth from the base instead of striking the skull.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "The hide is thick and tears easily near the belly. Start behind the forelegs, keep the knife flat, and pull the skin away in one piece.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting6 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting6 = TRUE;

		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampsharkTeeth] = TRUE;
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampsharkSkin] = TRUE;

		Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
		B_LogEntry (TOPIC_TalentAnimalTrophy, "Now I can:");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...remove swampshark teeth.");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...skin dead swampsharks.");
		PrintScreen (PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
		Npc_SetTalentSkill (hero, NPC_TALENT_TAKEANIMALTROPHY, 1);
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BESTIARY_GOLEM (C_Item)
{
	name 					= 	"The Golems";

	mainflag 				= 	ITEM_KAT_DOCS;
	flags 					= 	0;
	value 					= 	150;

	visual 					= 	"ItWr_Book_02_01.3ds";
	material 				= 	MAT_LEATHER;

	scemeName				= 	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;			COUNT[5]	= value;
	on_state[0]				= 	UseItWr_Bestiary_Golem;
};

FUNC VOID UseItWr_Bestiary_Golem()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Golems");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLines(nDocID, 0, "A golem is not flesh, but animated matter bound around a core. Stone, fire, ice and swamp golems differ in body, but not in principle.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "Do not search for organs. Break open the chest cavity and remove the charged heart before the body collapses completely.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "The heart carries the nature of the golem. Keep it wrapped and away from water, flame or frost unless you know exactly what it is.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting7 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting7 = TRUE;

		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_GolemHeart] = TRUE;

		Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
		B_LogEntry (TOPIC_TalentAnimalTrophy, "Now I can:");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...remove hearts from dead golems.");
		PrintScreen (PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
		Npc_SetTalentSkill (hero, NPC_TALENT_TAKEANIMALTROPHY, 1);
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BESTIARY_FIRELIZARD (C_Item)
{
	name 					= 	"The Fire Lizards";

	mainflag 				= 	ITEM_KAT_DOCS;
	flags 					= 	0;
	value 					= 	150;

	visual 					= 	"ItWr_Book_02_01.3ds";
	material 				= 	MAT_LEATHER;

	scemeName				= 	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;			COUNT[5]	= value;
	on_state[0]				= 	UseItWr_Bestiary_FireLizard;
};

FUNC VOID UseItWr_Bestiary_FireLizard()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Fire Lizards");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLines(nDocID, 0, "Fire lizards are warans changed by heat and magic. The glands in the throat feed their flame, and the tongue is hardened by it.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "Let the carcass cool before cutting. Hold the lower jaw open and sever the tongue at the root with one clean stroke.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "If the cut is shallow, the tongue tears and loses its value. A hunter should use a sharp knife and avoid the throat glands.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting8 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting8 = TRUE;

		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireLizardTongue] = TRUE;

		Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
		B_LogEntry (TOPIC_TalentAnimalTrophy, "Now I can:");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...remove tongues from dead fire lizards.");
		PrintScreen (PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
		Npc_SetTalentSkill (hero, NPC_TALENT_TAKEANIMALTROPHY, 1);
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BESTIARY_BLACKTROLL (C_Item)
{
	name 					= 	"The Black Troll";

	mainflag 				= 	ITEM_KAT_DOCS;
	flags 					= 	0;
	value 					= 	150;

	visual 					= 	"ItWr_Book_02_01.3ds";
	material 				= 	MAT_LEATHER;

	scemeName				= 	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;			COUNT[5]	= value;
	on_state[0]				= 	UseItWr_Bestiary_BlackTroll;
};

FUNC VOID UseItWr_Bestiary_BlackTroll()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Black Troll");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLines(nDocID, 0, "The black troll is larger, older and tougher than common trolls. Its hide is heavy enough to turn a poor blade.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "Begin at the neck where the fur parts naturally. Work slowly along the spine and keep the hide stretched while cutting.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "The skin is prized because it is rare and dense. Torn pieces are almost worthless, so the first cut matters more than strength.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting9 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting9 = TRUE;

		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BlackTrollSkin] = TRUE;

		Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
		B_LogEntry (TOPIC_TalentAnimalTrophy, "Now I can:");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...skin dead black trolls.");
		PrintScreen (PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
		Npc_SetTalentSkill (hero, NPC_TALENT_TAKEANIMALTROPHY, 1);
	};
};

/******************************************************************************************/

INSTANCE ITWR_REVIVED_BESTIARY_MANTIS (C_Item)
{
	name 					= 	"The Mantises";

	mainflag 				= 	ITEM_KAT_DOCS;
	flags 					= 	0;
	value 					= 	150;

	visual 					= 	"ItWr_Book_02_01.3ds";
	material 				= 	MAT_LEATHER;

	scemeName				= 	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;			COUNT[5]	= value;
	on_state[0]				= 	UseItWr_Bestiary_Mantis;
};

FUNC VOID UseItWr_Bestiary_Mantis()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 2);
	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);
	Doc_SetFont(nDocID, -1, FONT_Book2);
	Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);
	Doc_PrintLine(nDocID, 0, "The Mantises");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetFont(nDocID, -1, FONT_Book);
	Doc_PrintLines(nDocID, 0, "Mantises strike with their forelegs and protect the head with hard plates. The trophy is delicate despite the armor.");
	Doc_PrintLine(nDocID, 0, "");
	Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "Cut below the first neck plate and do not crush the mandibles. A cleanly separated head is the only part worth carrying.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_PrintLines(nDocID, 1, "Hunters should wrap the head at once. The chitin splits if it dries too quickly in the sun.");
	Doc_PrintLine(nDocID, 1, "");
	Doc_Show(nDocID);

	if (RevivedBookstandRead_Hunting10 == FALSE)
	{
		REV_ReadBook(BookType_Hunting);
		RevivedBookstandRead_Hunting10 = TRUE;

		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_MantisHead] = TRUE;

		Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
		B_LogEntry (TOPIC_TalentAnimalTrophy, "Now I can:");
		B_LogEntry (TOPIC_TalentAnimalTrophy, "...remove heads from dead mantises.");
		PrintScreen (PRINT_LearnTakeAnimalTrophy, -1, -1, FONT_Screen, 2);
		Npc_SetTalentSkill (hero, NPC_TALENT_TAKEANIMALTROPHY, 1);
	};
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
	description				=	"The Art of Fighting";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	UseKampfkunst;
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
	description				=	"Recipes";
	TEXT[0]					=	"Volume 1";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
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
	description				=	"Recipes";
	TEXT[0]					=	"Volume 2";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
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
	description				=	name;
	TEXT[0]					=	"The recipe for a healing potion.";
	TEXT[5]					= NAME_Value;			COUNT[5]	= value;
	on_state[0]				=	Use_KalomsRecipe;
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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	value 				=	REV_VALUE_RECIPE;

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
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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

	value 		= 150;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ITWR_REVIVED_MAP_VALLEY_GAROND;

	description	= name;
	TEXT[0]		= "It's only part of the full map";
	TEXT[1]		= "";
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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
	on_state[0]			= 	UseItWrCryptbuch;
	description			= "The Crypt";
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
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
				Doc_SetFont 	(nDocID, -1, FONT_Book2);
				Doc_PrintLine	(nDocID,  0,"Certificate");
				Doc_SetFont 	(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0,"I, Bergmar, Burgrave of the Western Field and presiding judge over the lands of my Lord of Tymorisin, the region surrounding Khorinis, ... hereby declare ... that I ... surrender and sell ... to the holder of this document ... and to the house of Innos the fief of the mountain fort (along with further tenths of my revenue and the mines contained therein) for 400 units of gold.");
				Doc_Show		(nDocID );
};
