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
	name 					=	"Klaue des Dammlurker";

	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;

	value 					=	Value_Lurkerklaue*2;

	visual 					=	"ItAt_Lurker_01.3DS";
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_CRAWLEREGG(C_Item)
{	
	name 					=	"Minecrawler Ei";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;	

	value 					=	REV_VALUE_MINECRAWLEREGG;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"Diese Eier wurden gelegt von";
	TEXT[1]					=	"einer Minecrawler-Königin.";
	TEXT[2]					=	"Sie enthalten ein viel stärkeres Sekret";
	TEXT[3]					=	"als die Zangen der normalen Minecrawler.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_SCAVENGEREGG(C_Item)
{	
	name 					=	"Scavenger-Ei";
	
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
	name 				=	"Haut eines Höllenhundes";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_HELLHOUNDFUR;

	visual 				=	"REV_ITAT_HELLHOUND_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_FUR_ORCDOG (C_Item)
{
	name 				=	"Orkhundfell";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ORCDOGFUR;

	visual 				=	"REV_ITAT_ORCDOG_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_FUR_ICEWOLF (C_Item)
{
	name 				=	"Haut eines Eiswolfes";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ICEWOLFFUR;

	visual 				=	"REV_ITAT_ICEWOLF_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_FUR_BLACKWOLF (C_Item)
{
	name 				=	"Haut eines schwarzen Wolfes";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_BLACKWOLFFUR;

	visual 				=	"REV_ITAT_BLACKWOLF_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_FUR_PANTHER (C_Item)
{
	name 				=	"Haut eines Panthers";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_PANTHERFUR;

	visual 				=	"REV_ITAT_PANTHER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_SKIN_SNAPPER (C_Item)
{
	name 				=	"Haut eines Snappers";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_SNAPPERSKIN;

	visual 				=	"REV_ITAT_SNAPPER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_DRAGONSNAPPER (C_Item)
{
	name 				=	"Haut eines Drachensnappers";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_DRAGONSNAPPERSKIN;

	visual 				=	"REV_ITAT_DRAGONSNAPPER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_RAZOR (C_Item)
{
	name 				=	"Haut eines Razors";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_RAZORSKIN;

	visual 				=	"REV_ITAT_RAZOR_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_BITER (C_Item)
{
	name 				=	"Haut eines Beißers";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_BITERSKIN;

	visual 				=	"REV_ITAT_BITER_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_WARAN (C_Item)
{
	name 				=	"Haut einer Echse";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_WARANSKIN;

	visual 				=	"REV_ITAT_WARAN_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_FIREWARAN (C_Item)
{
	name 				=	"Haut einer Feuerechse";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_FIREWARANSKIN;

	visual 				=	"REV_ITAT_FIREWARAN_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_SKIN_ALLIGATOR (C_Item)
{
	name 				=	"Haut eines Alligators";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	REV_VALUE_ALLIGATORSKIN;

	visual 				=	"REV_ITAT_ALLIGATOR_01.3DS";
	material 			=	MAT_LEATHER;

	description				=	name;
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_DEMONHEART (C_Item)
{
	name 				=	"Herz eines Dämonen";

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
	name 				=	"Herz eines Dämonenlords";

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
	name 				=	"Herz eines Feuergolems";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_FIREBOLT;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_FireGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"Dieses Stück stammt aus den Überresten";
	TEXT[1]					=	"einem besiegten Feuergolem.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner zu verbrennen.";
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_ICE (C_Item)
{
	name 				=	"Herz eines Eisgolems";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_ICEBOLT;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_IceGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"Dieses Stück stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten Eisgolems.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner einzufrieren.";
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_ROCK (C_Item)
{
	name 				=	"Herz eines Steingolems";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_ZAP;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"ItAt_StoneGolem_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"Dieses Stück stammt aus den Überresten";
	TEXT[1]					=	"einem besiegten Steingolem.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner zu elektrisieren.";
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

INSTANCE ITAT_REVIVED_GOLEMHEART_SWAMP (C_Item)
{
	name 				=	"Herz eines Sumpfgolems";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	spell					=		SPL_WATERFIST;

	value 				=	REV_VALUE_GOLEMHEART;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_GOLEMHEART;

	visual 				=	"REV_ITAT_SWAMPGOLEM_01.3DS";
	material 			=	MAT_STONE;

	description				=	name;
	TEXT[0]					=	"Dieses Stück stammt aus den Überresten";
	TEXT[1]					=	"einem besiegten Sumpfgolem.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner zu schlagen.";
	TEXT[4]					=	NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/

INSTANCE ITAT_REVIVED_DRAGONHEART_UNDEAD (C_Item)
{
	name 				=	"Seelenstein des Untoten Drachens";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_BREATHOFDEATH;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_UNDEADDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"Dieses Herz stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten untoten Drachen.";
	TEXT[2]					=	"Es hat die Kraft,";
	TEXT[3]					=	"seinen Gegnern das Leben zu rauben.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
	
	//INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_FIRE (C_Item)
{
	name 				=	"Herz eines Feuerdrachen";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_Pyrokinesis; //SPL_FIRESTORM;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_FIREDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"Dieses Herz stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten Feuerdrachen.";
	TEXT[2]					=	"Es hat die Kraft, Gegner";
	TEXT[3]					=	"in Flammen aufgehen zu lassen.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_ICE (C_Item)
{
	name 				=	"Herz eines Eisdrachen";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_ICELANCE;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_ICEDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"Dieses Herz stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten Eisdrachen.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner";
	TEXT[3]					=	"mit Eis zu durchbohren.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_ROCK (C_Item)
{
	name 				=	"Herz eines Felsdrachen";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_WINDFIST;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_STONEDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"Dieses Herz stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten Felsdrachen.";
	TEXT[2]					=	"Es hat die Kraft, einen Gegner"; 
	TEXT[3]					=	"durch die Luft zu schleudern.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};

INSTANCE ITAT_REVIVED_DRAGONHEART_SWAMP (C_Item)
{
	name 				=	"Herz eines Sumpfdrachens";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION; 

	value 				=	REV_VALUE_DRAGONHEART;

	spell					=		SPL_SWARM;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	REV_SPL_COST_DRAGONHEART;

	visual 				=	"REV_ITAT_SWAMPDRAGON_01.3DS";
	material 			=	MAT_CLAY;

	description				=		name;
	TEXT[0]					=	"Dieses Herz stammt aus den Überresten";
	TEXT[1]					=	"eines besiegten Sumpfdrachen.";
	TEXT[2]					=	"Es hat die Kraft, den Gegner"; 
	TEXT[3]					=	"mit stechenden Insekten abzulenken.";
	TEXT[5]					=		NAME_Value;						COUNT[5]	= value;
};