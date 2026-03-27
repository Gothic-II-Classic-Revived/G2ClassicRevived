INSTANCE REVIVED_POCKET_WHITE(C_Item)
{
	name = "Weiße Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_WHITE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_WHITE;
	description = name;
};

func void use_REVIVED_POCKET_WHITE()
{

};

//****************************************************************************

INSTANCE REVIVED_POCKET_BLACK(C_Item)
{
	name = "Schwarze Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_BLACK.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_BLACK;
	description = name;
	text[4] = "Debug items from the mod";
};

func void use_REVIVED_POCKET_BLACK()
{
	CreateInvItems(hero, REVIVED_LEARN_ALCHEMY_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_SMITHING_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_BOWMAKING_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_TROPHIES_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_RUNES_ALL, 1);
	CreateInvItems(hero, REVIVED_LEARN_TALENTS_ALL, 1);
};

//****************************************************************************
INSTANCE REVIVED_POCKET_BLUE(C_Item)
{
	name = "Blaue Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_BLUE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_BLUE;
	description = name;
};

func void use_REVIVED_POCKET_BLUE()
{

};

//****************************************************************************
INSTANCE REVIVED_POCKET_CYAN(C_Item)
{
	name = "Cyanfarbene Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_CYAN.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_CYAN;
	description = name;
};

func void use_REVIVED_POCKET_CYAN()
{

};

//****************************************************************************
INSTANCE REVIVED_POCKET_PURPLE(C_Item)
{
	name = "Violette Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_PURPLE.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_PURPLE;
	description = name;
};

func void use_REVIVED_POCKET_PURPLE()
{

};

//****************************************************************************
INSTANCE REVIVED_POCKET_RED(C_Item)
{
	name = "Rote Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_RED.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_RED;
	description = name;
};

func void use_REVIVED_POCKET_RED()
{

};

//****************************************************************************
INSTANCE REVIVED_POCKET_YELLOW(C_Item)
{
	name = "Gelbe Tasche";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 10;
	visual = "REV_IT_POCKET_YELLOW.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_REVIVED_POCKET_YELLOW;
	description = name;
};

func void use_REVIVED_POCKET_YELLOW()
{

};