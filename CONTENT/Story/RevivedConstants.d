// ***************
// Quest Log
// ***************

const string	TOPIC_Revived_DaronStatuette		=	"Feuermagier in Aufruhr";
var int			MiltenORPedro_LostInnosStatue_Daron;
var int 		TOPIC_Revived_DaronStatuette_END;

const string	TOPIC_Revived_ThievesGuild			=	"Diebesgilde";

const string	TOPIC_Revived_EddaStatue			=	"Im Hafen ausgeraubt";

const string	TOPIC_Tobacco						=	"Tabak mischen";
const string	LogText_TobaccoLearned				=	"Indem ich Abuyins Apfeltabak an einem Alchemietisch mische, kann ich herstellen:";

const string	TOPIC_Cooking						=	"Kochen";

const string	TOPIC_Booze							=	"Schnaps destillieren";


const string	LogText_Revived_GordonTrade	 		=	"Gorden im zerbrochenen Turm kann mir Essen und Bratpfannen verkaufen.";



// ***************
// Text
// ***************

// NPC Names
const string NAME_DementorNovice		= "Suchender Novize";
const string NAME_Templar				= "Apokalyptischer Templer";
const string NAME_JudgeGuard			= "Richterhaus Wache";

// Death Messages
const string PRINT_DEATH_MESSAGE_0		=	"Deine Reise endet hier.";
const string PRINT_DEATH_MESSAGE_1		=	"Vielleicht hättest du mehr Lernpunkte ausgeben sollen.";
const string PRINT_DEATH_MESSAGE_2		=	"Du warst wohl doch nicht der Auserwählte.";
const string PRINT_DEATH_MESSAGE_3		=	"Wann hast du das letzte Mal gespeichert...?";
const string PRINT_DEATH_MESSAGE_4		=	"Du bist endlich frei.";


// Eating Bonus Messages
const string PRINT_Eat_Apple1				= "Schmeckt saftig und frisch";
const string PRINT_Eat_Apple2				= "Du fühlst dich erfrischt";
const string PRINT_Eat_Apple3				= "Du fühlst dich gesund und stark!";
const string PRINT_Eat_SourApple1			= "Der Geschmack weckt deine Neugier.";
const string PRINT_Eat_SourApple2			= "Du fühlst dich voller Energie.";
const string PRINT_Eat_SourApple3			= "Du fühlst dich agil und wachsam!";
const string PRINT_Eat_Pear1				= "Süßer und milder Geschmack.";
const string PRINT_Eat_Pear2				= "Du spürst eine seltsame Klarheit.";
const string PRINT_Eat_Pear3				= "Du bist offen für neues Wissen!";
const string PRINT_Eat_MPMushroom1			= "Der Pilz kribbelt vor magischer Kraft.";
const string PRINT_Eat_MPMushroom2			= "Du spürst einen Energieschub.";
const string PRINT_Eat_MPMushroom3			= "Dein Geist klärt sich und Mana fließt!";
const string PRINT_Eat_HPMushroom1			= "Erdig und reichhaltig im Geschmack.";
const string PRINT_Eat_HPMushroom2			= "Der herzhafte Geschmack belebt dich.";
const string PRINT_Eat_HPMushroom3			= "Dein Körper fühlt sich widerstandsfähiger an!";


// Log Entries
const string LOGENTRY_RECIPE_HEALTH_01			= "Zutaten für 'Essenz der Heilung':\n2 Heilpflanze\n1 Feldknöterich";
const string LOGENTRY_RECIPE_HEALTH_02			= "Zutaten für 'Extrakt der Heilung':\n2 Heilkraut\n1 Feldknöterich";
const string LOGENTRY_RECIPE_HEALTH_03			= "Zutaten für 'Elixier der Heilung':\n2 Heilwurzel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_HEALTH_04			= "Zutaten für 'Reine Lebensenergie':\n3 Essenz der Heilung\n1 Feldknöterich";
const string LOGENTRY_RECIPE_MANA_01			= "Zutaten für 'Essenz der magischen Energie':\n2 Feuernessel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_MANA_02			= "Zutaten für 'Extrakt der magischen Energie':\n2 Feuerkraut\n1 Feldknöterich";
const string LOGENTRY_RECIPE_MANA_03			= "Zutaten für 'Elixier der magischen Energie':\n2 Feuerwurzel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_MANA_04			= "Zutaten für 'Reine Lebensenergie':\n3 Essenz der magischen Energie\n1 Feldknöterich";

const string LOGENTRY_RECIPE_PERM_HEALTH_01		= "Zutaten für 'Essenz des Lebens':\n2 Essenz der Heilung\n1 Kronstöckl\n1 Heilwurzel";
const string LOGENTRY_RECIPE_PERM_HEALTH_02		= "Zutaten für 'Extrakt des Lebens':\n2 Extrakt der Heilung\n1 Kronstöckl\n1 Heilwurzel";
const string LOGENTRY_RECIPE_PERM_HEALTH_03		= "Zutaten für 'Elixier des Lebens':\n2 Elixier der Heilung\n1 Kronstöckl\n1 Heilwurzel";
const string LOGENTRY_RECIPE_PERM_MANA_01		= "Zutaten für 'Essenz des Geistes':\n2 Essenz der magischen Energie\n1 Kronstöckl\n1 Feuerwurzel";
const string LOGENTRY_RECIPE_PERM_MANA_02		= "Zutaten für 'Extrakt des Geistes':\n2 Extrakt der magischen Energie\n1 Kronstöckl\n1 Feuerwurzel";
const string LOGENTRY_RECIPE_PERM_MANA_03		= "Zutaten für 'Elixier des Geistes':\n2 Elixier der magischen Energie\n1 Kronstöckl\n1 Feuerwurzel";
const string LOGENTRY_RECIPE_PERM_STR_01		= "Zutaten für 'Essenz der Stärke':\n1 Drachenwurzel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_STR_02		= "Zutaten für 'Extrakt der Stärke':\n2 Drachenwurzel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_STR_03		= "Zutaten für 'Elixier der Stärke':\n3 Drachenwurzel\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_DEX_01		= "Zutaten für 'Essenz der Geschicklichkeit':\n1 Goblinbeeren\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_DEX_02		= "Zutaten für 'Extrakt der Geschicklichkeit':\n2 Goblinbeeren\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_DEX_03		= "Zutaten für 'Elixier der Geschicklichkeit':\n3 Goblinbeeren\n1 Feldknöterich";
const string LOGENTRY_RECIPE_PERM_MASTER_01		= "Zutaten für 'Trank der Kraft':\n1 Essenz der Stärke\n1 Essenz der Geschicklichkeit\n1 Kronstöckl";
const string LOGENTRY_RECIPE_PERM_MASTER_02		= "Zutaten für 'Trank der Überlegenheit':\n1 Extrakt der Stärke\n1 Extrakt der Geschicklichkeit\n1 Kronstöckl";
const string LOGENTRY_RECIPE_PERM_MASTER_03		= "Zutaten für 'Trank der Göttlichkeit':\n1 Elixier der Stärke\n1 Elixier der Geschicklichkeit\n1 Kronstöckl";
const string LOGENTRY_RECIPE_SPEED_01			= "Zutaten für 'Trank der Schnelligkeit':\n1 Snapperkraut\n1 Feldknöterich";
const string LOGENTRY_RECIPE_SPEED_02			= "Zutaten für den 'Trank der Geschwindigkeit':\n2 Snapperkraut\n1 Feldknöterich";
const string LOGENTRY_RECIPE_SPEED_03			= "Zutaten für den 'Trank der Eile':\n3 Snapperkraut\n1 Feldknöterich";

const string LOGENTRY_RECIPE_LOUHAMMER			= "Zutaten für 'Lous Hammer':\n2 Rübe\n1 Sumpfkraut\n1 Sumpfhaizahn\n1 Weißer Rum";
const string LOGENTRY_RECIPE_LOUHAMMERDOUBLE	= "Zutaten für 'Lous Doppelhammer':\n2 Rüben\n1 Sumpfkraut\n1 Sumpfhaizahn\n1 Lous Hammer";
const string LOGENTRY_RECIPE_FASTHERRING		= "Zutaten für 'Eiligen Hering':\n1 Fisch\n1 Snapperkraut\n1 Weißer Rum";
const string LOGENTRY_RECIPE_TURNIPBOOZE		= "Zutaten für 'Rüben-Schnaps':\n4 Rüben\n1 Bier\n1 Minecrawlerzange";
const string LOGENTRY_RECIPE_VINOBOOZE			= "Zutaten für 'Vinos Spezial':\n4 Beeren\n2 Äpfel\n2 Birnen\n1 Blutfliegenflügel";
const string LOGENTRY_RECIPE_MONSTERDRINK		= "Zutaten für 'Monstergetränk':\n2 Kronstöckl\n2 Trollhauer\n4 Zähne\n4 Krallen";
const string LOGENTRY_RECIPE_MAGEWINE			= "Zutaten für 'Klosterwein':\n4 Trauben\n1 Blutfliegenstachel";
const string LOGENTRY_RECIPE_RICESCHNAPS		= "Zutaten für 'Reisschnaps':\n4 Reispflanzen\n1 Lurkerklaue";
const string LOGENTRY_RECIPE_MEAD				= "Zutaten für 'Met':\n2 Honigwaben\n1 Feldräuberzange";

const string LOGENTRY_RECIPE_MEATSTEW        	= "Zutaten für 'Fleischeintopf':\n2 Fleisch\n1 Muschelfleisch\n1 Wurst\n1 Schinken";
const string LOGENTRY_RECIPE_FISHSOUP        	= "Zutaten für 'Fischsuppe':\n2 Fische\n1 Wasser";
const string LOGENTRY_RECIPE_MEATBUGRAGOUT  	= "Zutaten für 'Fleischwanzenragout':\n5 Dunkelpilze\n3 Fleischwanzenfleisch\n2 Reispflanzen";
const string LOGENTRY_RECIPE_ROOTSOUP        	= "Zutaten für 'Wurzelsuppe':\n2 Weidenbeeren\n2 Waldbeeren\n2 Sumpfkraut";
const string LOGENTRY_RECIPE_MINECRAWLERSOUP 	= "Zutaten für 'Minecrawlersuppe':\n2 Minecrawlerzangen\n4 Sumpfkraut";
const string LOGENTRY_RECIPE_RICEBOWL        	= "Zutaten für 'Reisschüssel':\n3 Reispflanzen";
const string LOGENTRY_RECIPE_BERRYMARMALADE  	= "Zutaten für 'Beerenmarmelade':\n2 Trauben\n2 Beeren\n2 Weidenbeeren\n2 Waldbeeren";
const string LOGENTRY_RECIPE_FRUITSALAD      	= "Zutaten für 'Obstsalat':\n1 Apfel\n1 Birne\n1 Beere\n1 Traube\n1 Milchflasche";
const string LOGENTRY_RECIPE_CONVICTSTEW    	= "Zutaten für 'Sträflings-Eintopf':\n1 Hartes Brot\n1 Stinkender Käse\n1 Altes Bier\n1 Verdorbenes Wasser";

// NPC Names
const string NAME_LOAFER				=	"Herumtreiber";
const string NAME_HIGHWAYMAN			=	"Wegelagerer";


// Items
const string NAME_OrcWeapon				=	"Ork-Waffe";
const string NAME_OrcWeaponFix			=	"Ork-Waffe (neu geschmiedet)";
const string NAME_HolyWeapon1H			=	"Einhandwaffe (heilig)";
const string NAME_HolyWeapon2H			=	"Zweihandwaffe (heilig)";
const string NAME_BlessedWeapon1H		=	"Einhandwaffe (gesegnet)";
const string NAME_BlessedWeapon2H		=	"Zweihandwaffe (gesegnet)";
const string NAME_TaintedWeapon1H		=	"Einhandwaffe (verdorben)";
const string NAME_TaintedWeapon2H		=	"Zweihandwaffe (Verunreinigt)";
const string NAME_ForgedWeapon1H		=	"Einhandwaffe (Geschmiedet)";
const string NAME_ForgedWeapon2H		=	"Zweihandwaffe (Geschmiedet)";

const string NAME_HP_needed				=	"Erforderliche Trefferpunkte";

const string NAME_Penalty_HP			=	"Trefferpunktabzug";
const string NAME_Penalty_Mana			=	"Manaabzug";

const string NAME_Prot_Edge				=	"Schutz gegen Schnittangriffe";
const string NAME_Prot_Blunt			=	"Schutz gegen stumpfe Angriffe";

const string NAME_Damage_Edge			=	"Schadenswert bei Schnittangriffen";
const string NAME_Damage_Blunt			=	"Schadenswert bei stumpfen Angriffen";
const string NAME_Damage_Point			=	"Schadenswert bei Stichangriffen";
const string NAME_Damage_Magic			=	"Magieschaden";
const string NAME_Damage_Fire			=	"Feuerschaden";

const string NAME_RaiseStrDex			=	"Stärke und Geschick +";
const string NAME_RaiseHPMP				=	"Trefferpunkte und Mana +";
const string NAME_RaiseWeaponSkill		=	"Talentbonus für Nahkampfwaffen";

const string NAME_BonusHPMP				=	"Trefferpunkte- und Manabonus";

const string NAME_Addon_BeArArcher		=	"Zusammen mit Bogenschützen-Rüstung +";

const string PRINT_GotFood				=	"Das Paket war mit Essen gefüllt";


// MobInter
const string _STR_MESSAGE_OCLEVER_STUCKS	= "der Hebel bewegt sich kein Haarbreit"			;
const string _STR_MESSAGE_ORCLEVER_MOVES	= "die Statuette bewegt den Hebel"			;
const string _STR_MESSAGE_PILLAR_STUCKS		= "Die Säule rührt sich nicht von der Stelle."					;
const string _STR_MESSAGE_WHEEL_STUCKS		= "die Winde klemmt"					;


// MobName
CONST STRING MOBNAME_CHESTOLD				= "Alte Truhe";
CONST STRING MOBNAME_LEVER					= "Hebel";
CONST STRING MOBNAME_PILLAR					= "Säule";
CONST STRING MOBNAME_LADDER					= "Leiter";

CONST STRING MOBNAME_LATI					= "Alchemielabor";
CONST STRING MOBNAME_ORB					= "Magischer Orb";

CONST STRING MOBNAME_ADANOS_SHRINE			= "Statue von Adanos";

CONST STRING MOBNAME_WEEDSMASHER			= "Unkrautvernichter";
CONST STRING MOBNAME_STOMPER				= "Stampfer";

CONST STRING MOBNAME_VINEYARD				= "Weinrebe";
CONST STRING MOBNAME_ORE_DEPLETED			= "Erschöpftes Erz";

CONST STRING MOBNAME_GR_CHAPEL				= "Zur Kapelle";
CONST STRING MOBNAME_CHESTMAKER_01			= "Thorbens Werkstatt";
CONST STRING MOBNAME_ALCHEMIST_01			= "Alchemist Constantino";



CONST STRING TESTLEVEL_TELEPORT_NW			= "NEWWORLD.ZEN";
CONST STRING TESTLEVEL_TELEPORT_VALLEY		= "OLDWORLD.ZEN";
CONST STRING TESTLEVEL_TELEPORT_OW			= "OLDWORLD_G2.ZEN";
CONST STRING TESTLEVEL_TELEPORT_AM			= "ABANDONEDMINE.ZEN";
CONST STRING TESTLEVEL_TELEPORT_OM			= "OLDMINE.ZEN";
CONST STRING TESTLEVEL_TELEPORT_FM			= "ABANDONEDMINE.ZEN";
CONST STRING TESTLEVEL_TELEPORT_OGY			= "ORCGRAVEYARD.ZEN";
CONST STRING TESTLEVEL_TELEPORT_OT			= "ORCTEMPEL.ZEN";
CONST STRING TESTLEVEL_TELEPORT_ADDON		= "ADDONWORLD.ZEN";
CONST STRING TESTLEVEL_TELEPORT_DI			= "DRAGONISLAND.ZEN";


// Graves
CONST STRING MOBNAME_GRAVE_REVIVED_01		= "Crygreg – 'Schönes Jubiläum!'";
CONST STRING MOBNAME_GRAVE_REVIVED_02		= "Macintosh – 'Hättest du mir das nicht verdammt noch mal früher sagen können?!'";
CONST STRING MOBNAME_GRAVE_REVIVED_03		= "Angel – 'Hallo Damiaeing.'";
CONST STRING MOBNAME_GRAVE_REVIVED_04		= "Berb – 'Kann ich dir in diesen schwierigen Zeiten mit einer Wurst helfen?'";
CONST STRING MOBNAME_GRAVE_REVIVED_05		= "Alistair Afton – 'Crygreg sehnt sich nach Björn.'";
CONST STRING MOBNAME_GRAVE_REVIVED_06		= "Joka – 'Die Cocos fallen ein!'";
CONST STRING MOBNAME_GRAVE_REVIVED_07		= "bloody – 'Das UV-Mapping hier ist scheiße.'";
CONST STRING MOBNAME_GRAVE_REVIVED_08		= "Thorusus – 'Die Serververöffentlichung wird verschoben.'";
CONST STRING MOBNAME_GRAVE_REVIVED_09		= "Uvi – 'Oh mein Gott'";
CONST STRING MOBNAME_GRAVE_REVIVED_10		= "n00wls – 'unknown111 und seine Folgen waren eine Katastrophe für die Totuka-Modding-Szene'";
CONST STRING MOBNAME_GRAVE_REVIVED_11		= "Asden – 'Ich verstehe nicht, wie die Tatsache, dass ich fünfmal reicher bin als Gomez, die Wirtschaft der Kolonie zum Einsturz bringen soll.'";
CONST STRING MOBNAME_GRAVE_REVIVED_12		= "Dave – 'Kann man Gothic als Buddler durchspielen?'";
CONST STRING MOBNAME_GRAVE_REVIVED_13		= "Sord – 'Meine Kraft ist MAXIMAL!'";
CONST STRING MOBNAME_GRAVE_REVIVED_14		= "Arkhan – 'Das hier ist das Königreich Drakania.'";
CONST STRING MOBNAME_GRAVE_REVIVED_15		= "Konny – 'Du bist jetzt dauerhaft gesperrt.'";

// Graves (OW)
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_01		= "Wegan";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_02		= "Cysiex";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_03		= "Aulaler";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_04		= "Derno";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_05		= "Rafix";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_06		= "Tandor";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_07		= "Sinister";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_08		= "Antor";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_09		= "Udar";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_10		= "Bartired";


// Shrines
const string NAME_PRAYADANOS_GIVENOTHING			= "Ich will beten und spende nichts.";
const string NAME_PRAYADANOS_GIVELP1				= "Ich werde beten und 1 Lernpunkt opfern.";
const string NAME_PRAYADANOS_GIVELP2				= "Ich werde beten und 2 Lernpunkte opfern.";
const string NAME_PRAYADANOS_GIVELP3				= "Ich werde beten und 3 Lernpunkte opfern.";
const string NAME_PRAYADANOS_GIVEEXP				= "Ich werde beten und 1000 Erfahrungspunkte opfern.";

const string PRINT_PRAYADANOS_Bless1H				= "Adanos erhöht deine Fertigkeiten mit Einhandwaffen.";
const string PRINT_PRAYADANOS_Bless2H				= "Adanos erhöht deine Fertigkeiten mit Zweihandwaffen.";
const string Print_PRAYADANOS_BlessBOW				= "Adanos erhöht deine Fertigkeiten mit dem Bogen.";
const string Print_PRAYADANOS_BlessCBOW				= "Adanos erhöht deine Fertigkeiten mit der Armbrust.";
const string Print_PRAYADANOS_BlessWisp				= "Adanos segnet dich.";
const string Print_PRAYADANOS_BlessNone				= "Adanos dankt dir für dein Gebet.";
const string Print_PRAYADANOS_BlessCant				= "Adanos kann deine Opfergabe nicht annehmen.";
const string PRINT_BlessMANA_MAX					= "Adanos gewährt dir: Mana +";

const string PurifySword							= "Schwert reinigen (Tränen von Innos)";

const string Print_PRAYBELIAR_GETLP					= "Beliar gewährt dir 1 Lernpunkt.";


// Cooking
const string PRINT_CookingSuccess					= "Rezept fertig!";
const string PRINT_CookingDesc_MeatStew				= "Bereite einen 'Fleischeintopf' zu";
const string PRINT_CookingDesc_FishSoup				= "Bereite eine 'Fischsuppe' zu";
const string PRINT_CookingDesc_MeatbugRagout		= "Bereite ein 'Fleischwanzenragout' zu";
const string PRINT_CookingDesc_RootSoup				= "Bereite eine 'Wurzelsuppe' zu";
const string PRINT_CookingDesc_MinecrawlerSoup		= "Bereite eine 'Minecrawlersuppe' zu";
const string PRINT_CookingDesc_RiceBowl				= "Bereite eine 'Reisschüssel' zu";
const string PRINT_CookingDesc_Marmalade			= "Bereite eine 'Beerenmarmelade' zu";
const string PRINT_CookingDesc_FruitSalad			= "Bereite einen 'Obstsalat' zu";
const string PRINT_CookingDesc_ConvictStew			= "Bereite einen 'Sträflings-Eintopf' zu";


// Alchemy
const string PRINT_PotionMixSuccess					= "Tränke gemischt!";
const string PRINT_BoozeSuccess						= "Schnaps gemischt!";
const string PRINT_TabakSuccessREVIVED				= "Stängel gedreht!";


// Skills
const string PRINT_ADDON_HACKCHANCE					= "Kenntnisse im Buddeln verbessert! (+";	

const string Print_LearnFromBookstand				= "Du scheinst etwas Neues gelernt zu haben.";
const string Print_TalentFromBookstand				= "Du scheinst eine neue Fertigkeit erworben zu haben.";
const string Print_XPFromBookstand					= "Du scheinst ein wenig Wissen dazugewonnen zu haben.";	
	

const string PRINT_LearnBowyer						= "Erlernen: Bogenbau";
const string PRINT_LearnCooking						= "Lerne: Kochen";
const string PRINT_LearnTobacco						= "Erlernen: Tabak mischen";
const string PRINT_LearnBooze						= "Erlernen: Schnaps brennen";


// Output
const string PRINT_NoMorePicklocks					= "Keine Dietrich mehr!";
const string PRINT_Ranged_No_Ammo_Crossbow			= "Keine Bolzen mehr!";
const string PRINT_Ranged_No_Ammo_Bow				= "Keine Pfeile mehr!";


// ***************
// whatever this is
// ***************

const int	_TIME_MESSAGE_RAISEATTRIBUTE	=	4;


// ***************
// ZEN Constants
// ***************

const int ABANDONEDMINE_ZEN = 5;
var int PlayerPassedAbandonedMine;
var int EnterAM_Kapitel1;
var int EnterAM_Kapitel2;
var int EnterAM_Kapitel3;
var int EnterAM_Kapitel4;
var int EnterAM_Kapitel5;

const int FREEMINE_ZEN = 6;
var int EnteredFreeMine;
var int EnterFM_Kapitel1;
var int EnterFM_Kapitel2;
var int EnterFM_Kapitel3;
var int EnterFM_Kapitel4;
var int EnterFM_Kapitel5;

const int ORCGRAVEYARD_ZEN = 7;
var int EnteredOrcGraveyard;
var int EnterOG_Kapitel1;
var int EnterOG_Kapitel2;
var int EnterOG_Kapitel3;
var int EnterOG_Kapitel4;
var int EnterOG_Kapitel5;


// ***************
// Book Constants
// ***************

var int BookAlchemy;
var int BookRunemaking;
var int BookHunting;
var int BookMagic;
var int BookHistory;
var int BookFighting;
var int BookPersonal;


// ***************
// Recipe Constants
// ***************

var int KnowsRecipe_LousHammer;
var int KnowsRecipe_LousDoubleHammer;
var int KnowsRecipe_HastyHerring;
var int KnowsRecipe_TurnipBooze;
var int KnowsRecipe_VinoBooze;
var int KnowsRecipe_MonsterDrink;
var int KnowsRecipe_MageWine;
var int KnowsRecipe_RiceSchnaps;
var int KnowsRecipe_Mead;

var int KnowsRecipe_MeatSoup;
var int KnowsRecipe_FishSoup;
var int KnowsRecipe_BugSoup;
var int KnowsRecipe_RootSoup;
var int KnowsRecipe_CrawlerSoup;
var int KnowsRecipe_Rice;
var int KnowsRecipe_Marmalade;
var int KnowsRecipe_FruitSalad;
var int KnowsRecipe_OldStew;



// ***************
// AI Constants
// ***************

// New
const int Face_N_GordonRamsay		= 	163;
const int Face_N_ArkhanQualshy		= 	164;
const int Face_N_BartiredQualshy	= 	165;
const int Face_N_SinisterCruz		= 	166;
const int Face_N_UdarEverett		= 	167;
const int Face_N_DelaCroix			= 	168;

// Named characters



const int ID_MINECRAWLERQUEEN		=	65;
const int FAI_MINECRAWLERQUEEN		=	47;

const int ID_PANTHER				=	66;
const int ID_BLACKWOLF				=	67;
const int ID_ORCDOG					=	68;
const int ID_HELLHOUND				=	69;

const int ID_FANATIC				=	70;


// ***************
// Guilds
// ***************
const int NPCTYPE_BAUOUT_AMBIENT	=	8;
const int NPCTYPE_BAUOUT_MAIN		=	9;
const int NPCTYPE_SLDOUT_AMBIENT	=	10;
const int NPCTYPE_SLDOUT_MAIN		=	11;
const int NPCTYPE_MILOUT_AMBIENT	=	12;
const int NPCTYPE_MILOUT_MAIN		=	13;

const int GIL_FANATIC				=	53;
const int GIL_56					=	56;
const int GIL_57					=	57;
const int GIL_63					=	63;
const int GIL_64					=	64;
const int GIL_65					=	65;



// ***************
// Checks
// ***************

var int SCUsed_NW_TELEPORTSTATION_TROLLAREA;
var int SCUsed_NW_TELEPORTSTATION_CASTLEMINE;
var int SCUsed_NW_TELEPORTSTATION_JAEGER;
var int SCUsed_NW_TELEPORTSTATION_FOREST;

var int SCUsed_OW_TELEPORTSTATION_STONEHENGE;
var int SCUsed_OW_TELEPORTSTATION_TROLLCANYON;
var int SCUsed_OW_TELEPORTSTATION_MONASTERY;
var int SCUsed_OW_TELEPORTSTATION_CLIFF;
var int SCUsed_OW_TELEPORTSTATION_STONEFORTRESS;

var int SCUsed_AllOWTeleportStones;


const int OreMob_All_Amount_MAX = 3;
var int OreMob_01_Amount;
var int OreMob_02_Amount;
var int OreMob_03_Amount;
var int OreMob_04_Amount;
var int OreMob_05_Amount;
var int OreMob_06_Amount;
var int OreMob_07_Amount;
var int OreMob_08_Amount;
var int OreMob_09_Amount;
var int OreMob_10_Amount;
var int OreMob_11_Amount;
var int OreMob_12_Amount;
var int OreMob_13_Amount;
var int OreMob_14_Amount;
var int OreMob_15_Amount;
var int OreMob_16_Amount;
var int OreMob_17_Amount;
var int OreMob_18_Amount;
var int OreMob_19_Amount;
var int OreMob_20_Amount;
var int OreMob_21_Amount;
var int OreMob_22_Amount;
var int OreMob_23_Amount;
var int OreMob_24_Amount;
var int OreMob_25_Amount;
var int OreMob_26_Amount;
var int OreMob_27_Amount;
var int OreMob_28_Amount;
var int OreMob_29_Amount;
var int OreMob_30_Amount;
var int OreMob_31_Amount;
var int OreMob_32_Amount;


var int FirstJoint_01;
var int FirstJoint_02;
var int FirstJoint_03;
var int FirstJoint_04;
var int FirstJoint_REGULAR; 
var int FirstJoint_APPLE; 
var int FirstJoint_APPLEDOUBLE;
var int FirstJoint_HONEY;
var int FirstJoint_MUSHROOM;

var int OldApple_Bonus;
var int Pear_Bonus;
var int OldWine_Bonus;
var int DiggerMushroom_Bonus;

var int BilgotSecondPass;
var int BilgotInKhorinis;

var int DragonHunt_OriginalPass;
var int DragonHunt_SecondPass;

var int DJG_KnowsAbout_Purifying;

var int LesterKeyStolen;
var int DIA_Peck_BUYARMOR_perm;
var int DIA_Revived_Gordon_Trade_OneTime;

var int CipherBuysWeed;

var int EddaSoup_Chapter1;
var int EddaSoup_Chapter2;
var int EddaSoup_Chapter3;
var int EddaSoup_Chapter4;
var int EddaSoup_Chapter5;

var int BusterLOGAcrobat;

var int Alrik_LevelUpCount;
var int Alrik_ArenaDayCount;

var int BaltramSellRecipe;
var int BaltramPirateTrade;
var int BaltramRatOut;
var int BaltramInJail;

var int Bounty1;
var int Bounty2;
var int Bounty3;
var int Bounty4;
var int Bounty5;


// ***************
// Books and Notes
// ***************

var int 	BookType_Alchemy;
var int 	Read_BookstandAlchemy;
var int		RevivedBookstandRead_Alchemy1;
var int		RevivedBookstandRead_Alchemy2;
var int		RevivedBookstandRead_Alchemy3;
var int		RevivedBookstandRead_Alchemy4;
var int		RevivedBookstandRead_Alchemy5;
const int	Read_BookstandAlchemy_Max = 5;

var int 	BookType_Runemaking;
var int 	Read_BookstandRunemaking;
var int		RevivedBookstandRead_Runemaking1;
var int		RevivedBookstandRead_Runemaking2;
var int		RevivedBookstandRead_Runemaking3;
var int		RevivedBookstandRead_Runemaking4;
var int		RevivedBookstandRead_Runemaking5;
var int		RevivedBookstandRead_Runemaking6;
const int	Read_BookstandRunemaking_Max = 6;

var int 	BookType_Runes;
var int 	Read_BookstandRunes;
var int		RevivedBookstandRead_Runes1;
var int		RevivedBookstandRead_Runes2;
var int		RevivedBookstandRead_Runes3;
var int		RevivedBookstandRead_Runes4;
var int		RevivedBookstandRead_Runes5;
var int		RevivedBookstandRead_Runes6;
const int	Read_BookstandRunes_Max = 6;

var int 	BookType_Astronomy;
var int 	Read_BookstandAstronomy;
var int		RevivedBookstandRead_Astronomy1;
var int		RevivedBookstandRead_Astronomy2;
const int	Read_BookstandAstronomy_Max = 2;

var int 	BookType_Magic;
var int 	Read_BookstandMagic;
var int		RevivedBookstandRead_Magic1;
var int		RevivedBookstandRead_Magic2;
var int		RevivedBookstandRead_Magic3;
var int		RevivedBookstandRead_Magic4;
var int		RevivedBookstandRead_Magic5;
var int		RevivedBookstandRead_Magic6;
var int		RevivedBookstandRead_Magic7;
var int		RevivedBookstandRead_Magic8;
var int		RevivedBookstandRead_Magic9;
const int	Read_BookstandMagic_Max = 9;

var int 	BookType_Hunting;
var int 	Read_BookstandHunting;
var int		RevivedBookstandRead_Hunting1;
var int		RevivedBookstandRead_Hunting2;
var int		RevivedBookstandRead_Hunting3;
var int		RevivedBookstandRead_Hunting4;
var int		RevivedBookstandRead_Hunting5;
const int	Read_BookstandHunting_Max = 5;

var int 	BookType_Combat;
var int 	Read_BookstandCombat;
var int		RevivedBookstandRead_Combat1;
var int		RevivedBookstandRead_Combat2;
var int		RevivedBookstandRead_Combat3;
var int		RevivedBookstandRead_Combat4;
const int	Read_BookstandCombat_Max = 4;

var int 	BookType_History;
var int 	Read_BookstandHistory;
var int		RevivedBookstandRead_History1;
var int		RevivedBookstandRead_History2;
var int		RevivedBookstandRead_History3;
var int		RevivedBookstandRead_History4;
var int		RevivedBookstandRead_History5;
var int		RevivedBookstandRead_History6;
const int	Read_BookstandHistory_Max = 6;

var int 	BookType_Teachings;
var int 	Read_BookstandTeachings;
var int		RevivedBookstandRead_Teachings1;
var int		RevivedBookstandRead_Teachings2;
var int		RevivedBookstandRead_Teachings3;
const int	Read_BookstandTeachings_Max = 3;

var int 	BookType_Special;
var int 	Read_BookstandSpecial;
var int		RevivedBookstandRead_Special1;
var int		RevivedBookstandRead_Special2;
const int	Read_BookstandSpecial_Max = 2;

var int 	BookType_Personal;
var int 	Read_BookstandPersonal;
var int		RevivedBookstandRead_Personal1;
var int		RevivedBookstandRead_Personal2;
var int		RevivedBookstandRead_Personal3;
var int		RevivedBookstandRead_Personal4;
const int	Read_BookstandPersonal_Max = 4;


// ***************
// Ambient XP
// ***************

const int	XP_NostalgiaBonus				= 25;
const int 	XP_Addon_AllOWTeleporststones	= 400;

const int	XP_BookstandAlchemy				= 25;
const int	XP_BookstandRunemaking			= 25;
const int	XP_BookstandRunes				= 25;
const int	XP_BookstandAstronomy			= 25;
const int	XP_BookstandMagic				= 25;
const int	XP_BookstandHunting				= 25;
const int	XP_BookstandCombat				= 25;
const int	XP_BookstandHistory				= 25;
const int	XP_BookstandTeachings			= 25;

const int	XP_BookstandSpecial				= 50;
const int	XP_BookstandPersonal			= 50;

const int	XP_BookstandFireContest			= 50;



// ***************
// Equips
// ***************

var int ArcherBelt_Equipped;
var int ArcherArmor_Equipped;
var int ArcherAmulet_Equipped;
var int ArcherRing_Equipped;
// ***************
var int ArrowProtAmulet_Equipped;
var int ArrowProtRing_Equipped;

var int MeleeProtAmulet_Equipped;
var int MeleeProtRing_Equipped;

var int WeaponProtAmulet_Equipped;
var int WeaponProtRing_Equipped;

var int MagicProtAmulet_Equipped;
var int MagicProtRing_Equipped;

var int FireProtAmulet_Equipped;
var int FireProtRing_Equipped;

var int MagicFireProtAmulet_Equipped;
var int MagicFireProtRing_Equipped;
// ***************
var int HPBoostAmulet_Equipped;
var int HPBoostRing_Equipped;

var int MPBoostAmulet_Equipped;
var int MPBoostRing_Equipped;

var int STRBoostAmulet_Equipped;
var int STRBoostRing_Equipped;

var int DEXBoostAmulet_Equipped;
var int DEXBoostRing_Equipped;
// ***************


// ***************
// GoldValue
// ***************

const int	Value_Orkhundfell		=	15;
const int	Value_Eistueck			=	100;
const int	Value_Lurkerklaue		=	15;
const int	Value_Joint3			=	20;


// ***************
// Pray Shrines
// ***************

const int	BLESS_HITPOINTS			= 1;
const int	BLESS_MANA				= 2;
const int	BLESS_STRENGTH			= 3;
const int	BLESS_DEXTERITY			= 4;
const int 	BLESS_HITPOINTS_MAX		= 5;
const int	BLESS_MANA_MAX			= 6;
const int	BLESS_TALENT_1H			= 7;
const int	BLESS_TALENT_2H			= 8;
const int	BLESS_TALENT_BOW		= 9;
const int	BLESS_TALENT_CROSSBOW	= 10;



// ***************
// Magic
// ***************

// Remember to change the names in Text.d


const int 	SPL_TeleportNC				= 90;
const string NAME_SPL_TeleportNC		= "Zum neuen Lager teleportieren";

const int 	SPL_TeleportPsi				= 91;
const string NAME_SPL_TeleportPsi		= "Zur Bruderschaft teleportieren";

const int 	SPL_TeleportOrc				= 92;
const string NAME_SPL_TeleportOrc		= "orkischer Teleport";


const int	SPL_Telekinesis				= 100;
const string NAME_SPL_Telekinesis		= "Telekinese";

const int	SPL_Control					= 101;
const string NAME_SPL_Control			= "Kontrolle";


const int	SPL_TrfMeatbug				= 102;
const string NAME_SPL_TrfMeatbug		= "Verwandlung Fleischwanze";

const int	SPL_TrfMolerat				= 103;
const string NAME_SPL_TrfMolerat		= "Verwandlung Molerat";

const int	SPL_TrfBloodfly				= 104;
const string NAME_SPL_TrfBloodfly		= "Verwandlung Bloodfly";

const int	SPL_TrfSwampDrone			= 105;
const string NAME_SPL_TrfSwampDrone		= "In eine Sumpfgas-Drohne verwandeln";

const int	SPL_TrfMinecrawler			= 106;
const string NAME_SPL_TrfMinecrawler	= "Verwandlung Crawler";

const int	SPL_TrfMantis				= 107;
const string NAME_SPL_TrfMantis			= "In eine Fangheuschrecke verwandeln";

const int	SPL_TrfBoar					= 108;
const string NAME_SPL_TrfBoar			= "In ein Wildschwein verwandeln";

const int	SPL_TrfOrcDog				= 109;
const string NAME_SPL_TrfOrcDog			= "Verwandlung Orcdog";

const int	SPL_TrfRazor				= 110;
const string NAME_SPL_TrfRazor			= "In einen Razor verwandeln";

const int	SPL_TrfChomper				= 111;
const string NAME_SPL_TrfChomper		= "In einen Beißer verwandeln";

const int	SPL_TrfBloodhound			= 112;
const string NAME_SPL_TrfBloodhound		= "In einen Bluthund verwandeln";

const int	SPL_TrfHellhound			= 113;
const string NAME_SPL_TrfHellhound		= "In einen Höllenhund verwandeln";

const int	SPL_TrfPanther				= 114;
const string NAME_SPL_TrfPanther		= "In einen Panther verwandeln";

const int	SPL_TrfAlligator			= 115;
const string NAME_SPL_TrfAlligator		= "In einen Alligator verwandeln";

const int	SPL_TrfSwampshark			= 116;
const string NAME_SPL_TrfSwampshark		= "In einen Sumpfhai verwandeln";

const int	SPL_TrfHarpy				= 117;
const string NAME_SPL_TrfHarpy			= "In eine Harpie verwandeln";

const int	SPL_TrfTroll				= 118;
const string NAME_SPL_TrfTroll			= "In einen Troll verwandeln";

const int	SPL_TrfGoblin				= 119;
const string NAME_SPL_TrfGoblin			= "In einen Goblin verwandeln";


const int	SPL_SummonStonepuma			= 120;
const string NAME_SPL_SummonStonepuma 	= "Stonepuma beschwören";

const int	SPL_SummonWisp				= 121;
const string NAME_SPL_SummonWisp		= "Wisp beschwören";



// ***************
// Crafting Variables
// ***************

var int PotionMixMultiple;
var int PotionMakeMultiple;
var int PotionInstance;
var int PotionDialogue;

var int HealthStart;
var int ManaStart;
var int SpecialStart;
var int SpecialHealth;
var int SpecialMana;
var int SpecialStr;
var int SpecialDex;
var int SpecialSpeed;
var int MixingStart;

var int BoozeStart;
var int TabakStart;
var int TabakBlend;


// ***************
// MOBSI
// ***************

const int	MOBSI_OREHACKEN					= 8;
const int	MOBSI_CAULDRON					= 9;
const int	MOBSI_PAN						= 10;	
const int	MOBSI_PRAYADANOS				= 11;	




// ***************
// TALENTS
// ***************

const int NPC_TALENT_BOWMAKING			= 10;
const int NPC_TALENT_COOKING			= 19;
const int NPC_TALENT_BOOZE				= 20;
const int NPC_TALENT_TOBACCO			= 21;



// ***************
// Swordmaking
// ***************

const string NAME_1H_COMMON_01_DESC		= "Einfaches Schwert (einhändig)";

const int WEAPON_1H_REVIVED_01			= 13;
const string NAME_1H_REVIVED_01			= "Kurzschwert";
const string NAME_1H_REVIVED_01_DESC	= "Kurzes Schwert (einhändig)";
const int WEAPON_1H_REVIVED_02			= 14;
const string NAME_1H_REVIVED_02			= "Langschwert";
const string NAME_1H_REVIVED_02_DESC	= "Langschwert (einhändig)";
const int WEAPON_1H_REVIVED_03			= 15;
const string NAME_1H_REVIVED_03			= "Breitschwert";
const string NAME_1H_REVIVED_03_DESC	= "Breitschwert (einhändig)";
const int WEAPON_1H_REVIVED_04			= 16;
const string NAME_1H_REVIVED_04			= "sword";
const string NAME_1H_REVIVED_04_DESC	= "Schwert (einhändig)";
const int WEAPON_1H_REVIVED_05			= 17;
const string NAME_1H_REVIVED_05			= "Bastardschwert";
const string NAME_1H_REVIVED_05_DESC	= "Bastardschwert (einhändig)";
const int WEAPON_2H_REVIVED_01			= 18;
const string NAME_2H_REVIVED_01			= "Leichtes Schwert";
const string NAME_2H_REVIVED_01_DESC	= "Leichtes Schwert (zweihändig)";
const int WEAPON_2H_REVIVED_02			= 19;
const string NAME_2H_REVIVED_02			= "Schweres Schwert";
const string NAME_2H_REVIVED_02_DESC	= "Schweres Schwert (zweihändig)";
const int WEAPON_2H_REVIVED_03			= 20;
const string NAME_2H_REVIVED_03			= "Breitschwert";
const string NAME_2H_REVIVED_03_DESC	= "Breitschwert (zweihändig)";
const int WEAPON_2H_REVIVED_04			= 21;
const string NAME_2H_REVIVED_04			= "sword";
const string NAME_2H_REVIVED_04_DESC	= "Schwert (zweihändig)";
const int WEAPON_2H_REVIVED_05			= 22;
const string NAME_2H_REVIVED_05			= "Bastardschwert";
const string NAME_2H_REVIVED_05_DESC	= "Bastardschwert (zweihändig)";

const int WEAPON_1H_REVIVED_ORE_01		= 23;
const string NAME_1H_REVIVED_ORE_01		= "Rohe Erzklinge";
const string NAME_1H_REVIVED_ORE_01_DESC= "Rohes Erzschwert (einhändig)";
const int WEAPON_1H_REVIVED_ORE_02		= 24;
const string NAME_1H_REVIVED_ORE_02		= "Meister-Erzschwert";
const string NAME_1H_REVIVED_ORE_02_DESC= "Meister-Erzschwert (einhändig)";
const int WEAPON_1H_REVIVED_ORE_03		= 25;
const string NAME_1H_REVIVED_ORE_03		= "Erz-Schlachtklinge";
const string NAME_1H_REVIVED_ORE_03_DESC= "Erz-Kampfschwert (einhändig)";
const int WEAPON_1H_REVIVED_ORE_04		= 26;
const string NAME_1H_REVIVED_ORE_04		= "Erz-Drachentöter";
const string NAME_1H_REVIVED_ORE_04_DESC= "Erz-Drachentöter (einhändig)";
const int WEAPON_1H_REVIVED_ORE_05		= 27;
const string NAME_1H_REVIVED_ORE_05		= "Erz-Bastardschwert";
const string NAME_1H_REVIVED_ORE_05_DESC= "Erz-Bastardschwert (einhändig)";
const int WEAPON_2H_REVIVED_ORE_01		= 28;
const string NAME_2H_REVIVED_ORE_01		= "Meister-Erzschwert";
const string NAME_2H_REVIVED_ORE_01_DESC= "Meister-Erzschwert (zweihändig)";
const int WEAPON_2H_REVIVED_ORE_02		= 29;
const string NAME_2H_REVIVED_ORE_02		= "Grobes Erzschwert";
const string NAME_2H_REVIVED_ORE_02_DESC= "Grobes Erzschwert (zweihändig)";
const int WEAPON_2H_REVIVED_ORE_03		= 30;
const string NAME_2H_REVIVED_ORE_03		= "Erz-Kampfschwert";
const string NAME_2H_REVIVED_ORE_03_DESC= "Erz-Kampfschwert (zweihändig)";
const int WEAPON_2H_REVIVED_ORE_04		= 31;
const string NAME_2H_REVIVED_ORE_04		= "Schweres Erz-Drachentöter";
const string NAME_2H_REVIVED_ORE_04_DESC= "Schweres Erz-Drachentöter (zweihändig)";
const int WEAPON_2H_REVIVED_ORE_05		= 32;
const string NAME_2H_REVIVED_ORE_05		= "Erz-Bastardschwert";
const string NAME_2H_REVIVED_ORE_05_DESC= "Erz-Bastardschwert (zweihändig)";


const int MAX_WEAPONS_MELEE 			= 33;
var int PLAYER_TALENT_SMITH[MAX_WEAPONS_MELEE];



// ***************
// Bowmaking
// ***************

const int WEAPON_BOW_REVIVED_01			= 1;
const string NAME_BOW_REVIVED_01		= "Erz-Bastardschwert";
const int WEAPON_BOW_REVIVED_02			= 2;
const string NAME_BOW_REVIVED_02		= "Erz-Bastardschwert";
const int WEAPON_BOW_REVIVED_03			= 3;
const string NAME_BOW_REVIVED_03		= "Erz-Bastardschwert";
const int WEAPON_BOW_REVIVED_04			= 4;
const string NAME_BOW_REVIVED_04		= "Erz-Bastardschwert";
const int WEAPON_CBOW_REVIVED_01		= 5;
const string NAME_CBOW_REVIVED_01		= "Erz-Bastardschwert";
const int WEAPON_CBOW_REVIVED_02		= 6;
const string NAME_CBOW_REVIVED_02		= "Erz-Bastardschwert";
const int WEAPON_CBOW_REVIVED_03		= 7;
const string NAME_CBOW_REVIVED_03		= "Erz-Bastardschwert";
const int WEAPON_CBOW_REVIVED_04		= 8;
const string NAME_CBOW_REVIVED_04		= "Erz-Bastardschwert";


const int MAX_WEAPONS_RANGED 			= 9;
var int PLAYER_TALENT_BOWYER[MAX_WEAPONS_RANGED];



// ****************
// Alchemy
// ****************

const int POTION_Perm_DEX_01  					= 15;
const int POTION_Perm_DEX_02  					= 16;
const int POTION_Perm_DEX_03  					= 17;
const int POTION_Perm_STR_01  					= 18;
const int POTION_Perm_STR_02  					= 19;
const int POTION_Perm_STR_03  					= 20;
const int POTION_Perm_HEALTH_01  				= 21;
const int POTION_Perm_HEALTH_02  				= 22;
const int POTION_Perm_HEALTH_03  				= 23;
const int POTION_Perm_MANA_01  					= 24;
const int POTION_Perm_MANA_02  					= 25;
const int POTION_Perm_MANA_03  					= 26;
const int POTION_SPEED_01  						= 27;
const int POTION_SPEED_02  						= 28;
const int POTION_SPEED_03  						= 29;
const int POTION_Perm_MASTER_01  				= 30;
const int POTION_Perm_MASTER_02  				= 31;
const int POTION_Perm_MASTER_03  				= 32;



// ****************
// Alchemy (Special)
// ****************

const int POTION_Special_Experience		  		= 32;
const int POTION_Special_DragonDrink	  		= 33;


const int MAX_POTION						= 34;
var int PLAYER_TALENT_ALCHEMY[MAX_POTION];




// ***************
// Cooking
// ***************

const int COOKING_MeatStew				= 1;
const int COOKING_FishSoup				= 2;
const int COOKING_MeatbugRagout			= 3;
const int COOKING_RootSoup				= 4;
const int COOKING_MinecrawlerSoup		= 5;
const int COOKING_Marmalade				= 6;
const int COOKING_RiceBowl				= 7;
const int COOKING_FruitSalad			= 8;
const int COOKING_ConvictStew			= 9;


const int MAX_COOKING 					= 20;
var int PLAYER_TALENT_COOKING[MAX_COOKING];



// ****************
// Alchemy (Booze)
// ****************

const int BOOZE_LouHammer  					= 1;
const int BOOZE_LouHammerDouble  			= 2;
const int BOOZE_FastHerring  				= 3;
const int BOOZE_TurnipBooze  				= 4;
const int BOOZE_VinoBooze  					= 5;
const int BOOZE_MonsterDrink  				= 6;
const int BOOZE_MageWine  					= 7;
const int BOOZE_RiceSchnaps  				= 8;
const int BOOZE_Mead		  				= 9;


const int MAX_BOOZE							= 12;
var int PLAYER_TALENT_BOOZE[MAX_BOOZE];



// ****************
// Alchemy (Weed)
// ****************

const int TOBACCO_Apple						= 1;
const int TOBACCO_AppleDouble				= 2;
const int TOBACCO_Honey						= 3;
const int TOBACCO_Swampweed					= 4;
const int TOBACCO_Mushroom					= 5;

const int TOBACCO_Weed_Regular				= 6;
const int TOBACCO_Weed_Apple				= 7;
const int TOBACCO_Weed_AppleDouble			= 8;
const int TOBACCO_Weed_Honey				= 9;
const int TOBACCO_Weed_Mushroom				= 10;
const int TOBACCO_Weed_GreenNovice			= 11;
const int TOBACCO_Weed_NorthernDark			= 12;
const int TOBACCO_Weed_Dreamcall			= 13;
const int TOBACCO_Weed_DreamcallStrong		= 14;

const int MAX_TOBACCO						= 15;
var int PLAYER_TALENT_TOBACCO[MAX_TOBACCO];