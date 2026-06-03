CONST INT	REV_VALUE_GOLEMHEART		=	200;	CONST INT	REV_SPL_COST_GOLEMHEART		= 150;
CONST INT	REV_VALUE_DRAGONHEART		=	500;	CONST INT	REV_SPL_COST_DRAGONHEART	= 300;
CONST INT	REV_VALUE_DEMONHEART		=	200;
CONST INT	REV_VALUE_DEMONLORDHEART	=	300;

CONST INT	REV_VALUE_MINECRAWLEREGG	=	80;
CONST INT	REV_VALUE_SCAVENGEREGG		=	20;

CONST INT	REV_VALUE_SNAPPERSKIN		=	50;
CONST INT	REV_VALUE_DRAGONSNAPPERSKIN	=	100;
CONST INT	REV_VALUE_RAZORSKIN			=	50;
CONST INT	REV_VALUE_BITERSKIN			=	20;
CONST INT	REV_VALUE_WARANSKIN			=	100;
CONST INT	REV_VALUE_FIREWARANSKIN		=	150;
CONST INT	REV_VALUE_ALLIGATORSKIN		=	150;

CONST INT	REV_VALUE_HELLHOUNDFUR		=	30;
CONST INT	REV_VALUE_ORCDOGFUR			=	30;
CONST INT	REV_VALUE_ICEWOLFFUR		=	20;
CONST INT	REV_VALUE_BLACKWOLFFUR		=	20;
CONST INT	REV_VALUE_PANTHERFUR		=	200;

/******************************************************************************************/
/******************************************************************************************/

INSTANCE ITAT_REVIVED_DAMLURKER (C_Item)
{
	name 					=	"Dam Lurker's Claws";

	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;

	value 					=	Value_Lurkerklaue*2;

	visual 					=	"ItAt_Lurker_01.3DS";
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_CRAWLEREGG(C_Item)
{	
	name 					=	"Minecrawler's Egg";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;	

	value 					=	REV_VALUE_MINECRAWLEREGG;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"These eggs were laid by";
	TEXT[1]					=	"a minecrawler queen.";
	TEXT[2]					=	"They contain a far stronger secretion than";
	TEXT[3]					=	"a normal minecrawler's mandibles.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SCAVENGEREGG(C_Item)
{	
	name 					=	"Scavenger's Egg";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;	

	value 					=	REV_VALUE_SCAVENGEREGG;

	visual 					=	"REV_ITAT_SCAVENGER_EGG_01.3DS"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_FUR_HELLHOUND (C_Item)
{
	name 				=	"Skin of a Hellhound";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_HELLHOUNDFUR;

	visual 				=	"REV_ITAT_HELLHOUND_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_FUR_ORCDOG (C_Item)
{
	name 				=	"Skin of an Orc Dog";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ORCDOGFUR;

	visual 				=	"REV_ITAT_ORCDOG_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_FUR_ICEWOLF (C_Item)
{
	name 				=	"Skin of an Ice Wolf";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ICEWOLFFUR;

	visual 				=	"REV_ITAT_ICEWOLF_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_FUR_BLACKWOLF (C_Item)
{
	name 				=	"Skin of a Black Wolf";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_BLACKWOLFFUR;

	visual 				=	"REV_ITAT_BLACKWOLF_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_FUR_PANTHER (C_Item)
{
	name 				=	"Skin of a Panther";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_PANTHERFUR;

	visual 				=	"REV_ITAT_PANTHER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_SKIN_SNAPPER (C_Item)
{
	name 				=	"Skin of a Snapper";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_SNAPPERSKIN;

	visual 				=	"REV_ITAT_SNAPPER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_DRAGONSNAPPER (C_Item)
{
	name 				=	"Skin of a Dragon Snapper";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_DRAGONSNAPPERSKIN;

	visual 				=	"REV_ITAT_DRAGONSNAPPER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_RAZOR (C_Item)
{
	name 				=	"Skin of a Razor";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_RAZORSKIN;

	visual 				=	"REV_ITAT_RAZOR_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_BITER (C_Item)
{
	name 				=	"Skin of a Biter";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_BITERSKIN;

	visual 				=	"REV_ITAT_BITER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_WARAN (C_Item)
{
	name 				=	"Skin of a Lizard";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_WARANSKIN;

	visual 				=	"REV_ITAT_WARAN_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_FIREWARAN (C_Item)
{
	name 				=	"Skin of a Fire Lizard";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_FIREWARANSKIN;

	visual 				=	"REV_ITAT_FIREWARAN_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_ALLIGATOR (C_Item)
{
	name 				=	"Skin of an Alligator";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ALLIGATORSKIN;

	visual 				=	"REV_ITAT_ALLIGATOR_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_DEMONHEART (C_Item)
{
	name 				=	"Heart of a Demon";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_DEMONHEART;

	visual 				=	"REV_ITAT_DEMONHEART_01.3DS";
	material 			=	MAT_LEATHER;

	description				=		name;
	TEXT[5]					=		NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DEMONLORDHEART (C_Item)
{
	name 				=	"Heart of a Demon Lord";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_DEMONLORDHEART;

	visual 				=	"REV_ITAT_DEMONLORDHEART_01.3DS";
	material 			=	MAT_LEATHER;

	description				=		name;
	TEXT[5]					=		NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_GOLEMHEART_FIRE (C_Item)
{
	name 				=	"Heart of a Fire Golem";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_FIREBOLT;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_FireGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"This is a fragment of";
	TEXT[1]					=	"a defeated fire golem.";
	TEXT[2]					=	"It has the power to burn a foe.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_ICE (C_Item)
{
	name 				=	"Heart of an Ice Golem";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_ICEBOLT;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_IceGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"This is a fragment of";
	TEXT[1]					=	"a defeated ice golem.";
	TEXT[2]					=	"It has the power to freeze a foe.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_ROCK (C_Item)
{
	name 				=	"Heart of a Stone Golem";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_ZAP;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_StoneGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"This is a fragment of";
	TEXT[1]					=	"a defeated stone golem.";
	TEXT[2]					=	"It has the power to zap a foe.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_SWAMP (C_Item)
{
	name 				=	"Heart of a Swamp Golem";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_WATERFIST;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"REV_ITAT_SWAMPGOLEM_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"This is a fragment of";
	TEXT[1]					=	"a defeated swamp golem.";
	TEXT[2]					=	"It has the power to punch a foe.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_DRAGONHEART_UNDEAD (C_Item)
{
	name 				=	"Undead Dragon's Soul Stone";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_BREATHOFDEATH;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_UNDEADDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"This heart stems from the remains";
	TEXT[1]					=	"of a defeated undead dragon.";
	TEXT[2]					=	"It has the power to take away";
	TEXT[3]					=	"the life out of it's foes.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
	
	//INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_FIRE (C_Item)
{
	name 				=	"Heart of a Fire Dragon";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_Pyrokinesis; //SPL_FIRESTORM;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_FIREDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"This heart stems from the remains";
	TEXT[1]					=	"of a defeated fire dragon.";
	TEXT[2]					=	"It has the power to set foes";
	TEXT[3]					=	"on fire.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_ICE (C_Item)
{
	name 				=	"Heart of an Ice Dragon";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_ICELANCE;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_ICEDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"This heart stems from the remains";
	TEXT[1]					=	"of a defeated ice dragon.";
	TEXT[2]					=	"It has the power to pierce a foe";
	TEXT[3]					=	"with ice.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_ROCK (C_Item)
{
	name 				=	"Heart of a Rock Dragon";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_WINDFIST;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_STONEDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"This heart stems from the remains";
	TEXT[1]					=	"of a defeated rock dragon.";
	TEXT[2]					=	"It has the power to hurl a foe"; 
	TEXT[3]					=	"through the air.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_SWAMP (C_Item)
{
	name 				=	"Heart of a Swamp Dragon";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION; 

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_SWARM;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_SWAMPDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"This heart stems from the remains";
	TEXT[1]					=	"of a defeated swamp dragon.";
	TEXT[2]					=	"It has the power to distract the foe"; 
	TEXT[3]					=	"with stinging insects.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};