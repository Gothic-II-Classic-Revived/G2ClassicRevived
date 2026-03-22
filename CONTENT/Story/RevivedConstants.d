// ***************
// Quest Log
// ***************

var int			MiltenORPedro_LostInnosStatue_Daron;
var int 		TOPIC_Revived_DaronStatuette_END;

const string	TOPIC_Revived_DaronStatuette		=	"Fire Mage in turmoil";

const string	TOPIC_Revived_ThievesGuild			=	"Thieves' Guild";

const string	TOPIC_Tobacco						=	"Mixing tobacco";
const string	LogText_TobaccoLearned				=	"By mixing Abuyin's apple tobacco at an alchemist's bench I can make:";

const string	TOPIC_Cooking						=	"Cooking";

const string	TOPIC_Booze							=	"Distilling booze";


const string	LogText_Revived_GordonTrade	 		=	"Gordon Ramsay in the broken tower can sell me food and frying pans.";



// ***************
// Text
// ***************

// NPC Names
const string NAME_DementorNovice		= "Seeker Novice";
const string NAME_Templar				= "Apocalyptic Templar";
const string NAME_JudgeGuard			= "Judge's House Guard";

// Death Messages
const string PRINT_DEATH_MESSAGE_0		=	"Your journey ends here.";
const string PRINT_DEATH_MESSAGE_1		=	"Maybe you should've spent more learning points.";
const string PRINT_DEATH_MESSAGE_2		=	"Guess you weren't the Chosen One after all.";
const string PRINT_DEATH_MESSAGE_3		=	"When was the last time you saved...?";
const string PRINT_DEATH_MESSAGE_4		=	"You are finally free.";


// Eating Bonus Messages
const string PRINT_Eat_Apple1				= "Tastes juicy and fresh.";
const string PRINT_Eat_Apple2				= "You feel refreshed.";
const string PRINT_Eat_Apple3				= "You feel well and strong!";
const string PRINT_Eat_SourApple1			= "The taste sparks your curiosity.";
const string PRINT_Eat_SourApple2			= "You feel energized.";
const string PRINT_Eat_SourApple3			= "You feel agile and alert!";
const string PRINT_Eat_Pear1				= "Sweet and mellow taste.";
const string PRINT_Eat_Pear2				= "You feel a strange clarity.";
const string PRINT_Eat_Pear3				= "You feel open to new knowledge!";
const string PRINT_Eat_MPMushroom1			= "The mushroom tingles with magic power.";
const string PRINT_Eat_MPMushroom2			= "You feel a spark of energy.";
const string PRINT_Eat_MPMushroom3			= "Your mind clears and mana flows!";
const string PRINT_Eat_HPMushroom1			= "Earthy and rich in taste.";
const string PRINT_Eat_HPMushroom2			= "The hearty flavor revitalizes you.";
const string PRINT_Eat_HPMushroom3			= "Your body feels more resilient!";


// Log Entries
const string LOGENTRY_RECIPE_HEALTH_01			= "Ingredients for 'Essence of Healing':\n2 Healing Plant\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_HEALTH_02			= "Ingredients for 'Extract of Healing':\n2 Healing Herb\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_HEALTH_03			= "Ingredients for 'Elixir of Healing':\n2 Healing Root\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_01			= "Ingredients for 'Essence of Magic Energy':\n2 Fire Nettle\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_02			= "Ingredients for 'Extract of Magic Energy':\n2 Fireweed\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_03			= "Ingredients for 'Elixir of Magic Energy':\n2 Fire Root\n1 Meadow Knotweed";

const string LOGENTRY_RECIPE_PERM_HEALTH_01		= "Ingredients for 'Essence of Life':\n2 Essence of Healing\n1 King's Sorrel\n1 Healing Root";
const string LOGENTRY_RECIPE_PERM_HEALTH_02		= "Ingredients for 'Extract of Life':\n2 Extract of Healing\n1 King's Sorrel\n1 Healing Root";
const string LOGENTRY_RECIPE_PERM_HEALTH_03		= "Ingredients for 'Elixir of Life':\n2 Elixir of Healing\n1 King's Sorrel\n1 Healing Root";
const string LOGENTRY_RECIPE_PERM_MANA_01		= "Ingredients for 'Essence of Spirit':\n2 Essence of Magic Energy\n1 King's Sorrel\n1 Fire Root";
const string LOGENTRY_RECIPE_PERM_MANA_02		= "Ingredients for 'Extract of Spirit':\n2 Extract of Magic Energy\n1 King's Sorrel\n1 Fire Root";
const string LOGENTRY_RECIPE_PERM_MANA_03		= "Ingredients for 'Elixir of Spirit':\n2 Elixir of Magic Energy\n1 King's Sorrel\n1 Fire Root";
const string LOGENTRY_RECIPE_PERM_STR_01		= "Ingredients for 'Essence of Strength':\n1 Dragonroot\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_STR_02		= "Ingredients for 'Extract of Strength':\n2 Dragonroot\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_STR_03		= "Ingredients for 'Elixir of Strength':\n3 Dragonroot\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_DEX_01		= "Ingredients for 'Essence of Dexterity':\n1 Goblin Berries\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_DEX_02		= "Ingredients for 'Extract of Dexterity':\n2 Goblin Berries\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_DEX_03		= "Ingredients for 'Elixir of Dexterity':\n3 Goblin Berries\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_PERM_MASTER_01		= "Ingredients for 'Potion of Power':\n1 Essence of Strength\n1 Essence of Dexterity\n1 King's Sorrel";
const string LOGENTRY_RECIPE_PERM_MASTER_02		= "Ingredients for 'Potion of Supremacy':\n1 Extract of Strength\n1 Extract of Dexterity\n1 King's Sorrel";
const string LOGENTRY_RECIPE_PERM_MASTER_03		= "Ingredients for 'Potion of Godhood':\n1 Elixir of Strength\n1 Elixir of Dexterity\n1 King's Sorrel";
const string LOGENTRY_RECIPE_SPEED_01			= "Ingredients for 'Potion of Swiftness':\n1 Snapperweed\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_SPEED_02			= "Ingredients for 'Potion of Velocity':\n2 Snapperweed\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_SPEED_03			= "Ingredients for 'Potion of Haste':\n3 Snapperweed\n1 Meadow Knotweed";

const string LOGENTRY_RECIPE_LOUHAMMER			= "Ingredients for 'Lou's Hammer':\n2 Turnip\n1 Swampweed\n1 Swampshark tooth\n1 White Rum";
const string LOGENTRY_RECIPE_LOUHAMMERDOUBLE	= "Ingredients for 'Lou's Double Hammer':\n2 Turnip\n1 Swampweed\n1 Swampshark tooth\n1 Lou's Hammer";
const string LOGENTRY_RECIPE_FASTHERRING		= "Ingredients for 'Hasty Herring':\n1 Fish\n1 Snapperweed\n1 White Rum";
const string LOGENTRY_RECIPE_TURNIPBOOZE		= "Ingredients for 'Turnip Booze':\n4 Turnip\n1 Beer\n1 Minecrawler Mandibles";
const string LOGENTRY_RECIPE_VINOBOOZE			= "Ingredients for 'Vino's Special':\n4 Berries\n2 Apple\n2 Pear\n1 Bloodfly's wings";
const string LOGENTRY_RECIPE_MONSTERDRINK		= "Ingredients for 'Monster Drink':\n2 King's Sorrel\n2 Troll Tusk\n4 Teeth\n4 Claws";
const string LOGENTRY_RECIPE_MAGEWINE			= "Ingredients for 'Monastery Wine':\n4 Grapes\n1 Bloodfly's stinger";
const string LOGENTRY_RECIPE_RICESCHNAPS		= "Ingredients for 'Rice Schnapps':\n4 Riceplant\n1 Lurker claws";
const string LOGENTRY_RECIPE_MEAD				= "Ingredients for 'Mead':\n2 Honey comb\n1 Field Raider mandibles";

const string LOGENTRY_RECIPE_MEATSTEW        	= "Ingredients for 'Full Meat Stew':\n2 Meat\n1 Clam Meat\n1 Sausage\n1 Bacon";
const string LOGENTRY_RECIPE_FISHSOUP        	= "Ingredients for 'Fish Soup':\n2 Fish\n1 Water";
const string LOGENTRY_RECIPE_MEATBUGRAGOUT  	= "Ingredients for 'Meatbug Ragout':\n5 Dark Mushroom\n3 Meatbug Meat\n2 Rice plants";
const string LOGENTRY_RECIPE_ROOTSOUP        	= "Ingredients for 'Root Soup':\n2 Meadow Berry\n2 Forest Berry\n2 Swamp weed";
const string LOGENTRY_RECIPE_MINECRAWLERSOUP 	= "Ingredients for 'Minecrawler Soup':\n2 Minecrawler Mandibles\n4 Swamp weed";
const string LOGENTRY_RECIPE_RICEBOWL        	= "Ingredients for 'Rice bowl':\n3 Rice plants";
const string LOGENTRY_RECIPE_BERRYMARMALADE  	= "Ingredients for 'Berry Marmalade':\n2 Grapes\n2 Berries\n2 Meadow berry\n2 Forest berry";
const string LOGENTRY_RECIPE_FRUITSALAD      	= "Ingredients for 'Fruit salad':\n1 Apple\n1 Pear\n1 Berry\n1 Grape\n1 Milk bottle";
const string LOGENTRY_RECIPE_CONVICTSTEW    	= "Ingredients for 'Convict's Stew':\n1 Hard Bread\n1 Stinky Cheese\n1 Old Beer\n1 Stale Water";

// NPC Names
const string NAME_LOAFER				=	"Loafer";
const string NAME_HIGHWAYMAN			=	"Highwayman";


// Items
const string NAME_OrcWeapon				=	"Orc Weapon";
const string NAME_OrcWeaponFix			=	"Orc Weapon (Reforged)";
const string NAME_HolyWeapon1H			=	"One-Handed Weapon (Holy)";
const string NAME_HolyWeapon2H			=	"Two-Handed Weapon (Holy)";
const string NAME_BlessedWeapon1H		=	"One-Handed Weapon (Blessed)";
const string NAME_BlessedWeapon2H		=	"Two-Handed Weapon (Blessed)";
const string NAME_TaintedWeapon1H		=	"One-Handed Weapon (Tainted)";
const string NAME_TaintedWeapon2H		=	"Two-Handed Weapon (Tainted)";
const string NAME_ForgedWeapon1H		=	"One-Handed Weapon (Forged)";
const string NAME_ForgedWeapon2H		=	"Two-Handed Weapon (Forged)";

const string NAME_HP_needed				=	"Hitpoints required";

const string NAME_Penalty_HP			=	"Hitpoint penalty";
const string NAME_Penalty_Mana			=	"Mana penalty";

const string NAME_Prot_Edge				=	"Slash Protection";
const string NAME_Prot_Blunt			=	"Blunt Protection";

const string NAME_Damage_Edge			=	"Slash Damage";
const string NAME_Damage_Blunt			=	"Blunt Damage";
const string NAME_Damage_Point			=	"Point Damage";
const string NAME_Damage_Magic			=	"Magic Damage";
const string NAME_Damage_Fire			=	"Fire Damage";

const string NAME_RaiseStrDex			=	"Strength and Dexterity +";
const string NAME_RaiseHPMP				=	"Hitpoints and Mana +";
const string NAME_RaiseWeaponSkill		=	"Melee Weapon Talent Bonus";

const string NAME_BonusHPMP				=	"Hitpoints and Mana bonus";

const string NAME_Addon_BeArArcher		=	"Together with Archer's Suit +";

const string PRINT_GotFood				=	"Package was filled with food";


// MobInter
const string _STR_MESSAGE_OCLEVER_STUCKS	= "The lever doesn't move at all."			;
const string _STR_MESSAGE_ORCLEVER_MOVES	= "The statuette moves the lever."			;
const string _STR_MESSAGE_PILLAR_STUCKS		= "The pillar won't budge."					;
const string _STR_MESSAGE_WHEEL_STUCKS		= "The winch is jammed."					;


// MobName
CONST STRING MOBNAME_CHESTOLD				= "Old Chest";
CONST STRING MOBNAME_LEVER					= "Lever";
CONST STRING MOBNAME_PILLAR					= "Pillar";
CONST STRING MOBNAME_LADDER					= "Ladder";

CONST STRING MOBNAME_LATI					= "Alchemist's Lab";
CONST STRING MOBNAME_ORB					= "Magic Orb";

CONST STRING MOBNAME_ADANOS_SHRINE			= "Statue of Adanos";

CONST STRING MOBNAME_WEEDSMASHER			= "Weed smasher";
CONST STRING MOBNAME_STOMPER				= "Stomper";

CONST STRING MOBNAME_VINEYARD				= "Grapevine";
CONST STRING MOBNAME_ORE_DEPLETED			= "Depleted Ore";

CONST STRING MOBNAME_GR_CHAPEL				= "To Chapel";
CONST STRING MOBNAME_CHESTMAKER_01			= "Thorben's Workshop";
CONST STRING MOBNAME_ALCHEMIST_01			= "Constantino Alchemist";



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
CONST STRING MOBNAME_GRAVE_REVIVED_01		= "Crygreg - 'Happy Anniversary!'";
CONST STRING MOBNAME_GRAVE_REVIVED_02		= "Macintosh - 'You couldn't have fucking told me this earlier?!'";
CONST STRING MOBNAME_GRAVE_REVIVED_03		= "Angel - 'Hi Damiaeing.'";
CONST STRING MOBNAME_GRAVE_REVIVED_04		= "Berb - 'Can I help you with a sausage in these troubled times?'";
CONST STRING MOBNAME_GRAVE_REVIVED_05		= "Alistair - 'Crygreg yearns for Bjorn.'";
CONST STRING MOBNAME_GRAVE_REVIVED_06		= "Joka - 'The Cocos are invading!'";
CONST STRING MOBNAME_GRAVE_REVIVED_07		= "bloody - 'The UV mapping here sucks.'";
CONST STRING MOBNAME_GRAVE_REVIVED_08		= "Thorusus - 'The server release is postponed.'";
CONST STRING MOBNAME_GRAVE_REVIVED_09		= "Uvi - 'Oh my goodness gracious'";
CONST STRING MOBNAME_GRAVE_REVIVED_10		= "n00wls - 'unknown111 and his consequences were a disaster for totuka modding scene'";
CONST STRING MOBNAME_GRAVE_REVIVED_11		= "Asden - 'I dont see how me being 5 times richer than Gomez collapses the economy of the colony.'";
CONST STRING MOBNAME_GRAVE_REVIVED_12		= "Dave - 'Can you beat Gothic as a digger?'";
CONST STRING MOBNAME_GRAVE_REVIVED_13		= "Sord - 'My power is MAXIMUM!'";
CONST STRING MOBNAME_GRAVE_REVIVED_14		= "Arkhan - 'This is Kingdom of Drakania.'";
CONST STRING MOBNAME_GRAVE_REVIVED_15		= "Konny - 'You are now permabanned.'";

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
const string NAME_PRAYADANOS_GIVENOTHING			= "I will pray and offer nothing.";
const string NAME_PRAYADANOS_GIVELP1				= "I will pray and offer 1 learn point.";
const string NAME_PRAYADANOS_GIVELP2				= "I will pray and offer 2 learn points.";
const string NAME_PRAYADANOS_GIVELP3				= "I will pray and offer 3 learn points.";
const string NAME_PRAYADANOS_GIVEEXP				= "I will pray and offer 1000 experience.";

const string PRINT_PRAYADANOS_Bless1H				= "Adanos increases your one-handed weapon skills.";
const string PRINT_PRAYADANOS_Bless2H				= "Adanos increases your two-handed weapon skills.";
const string Print_PRAYADANOS_BlessBOW				= "Adanos increases your bow skills.";
const string Print_PRAYADANOS_BlessCBOW				= "Adanos increases your crossbow skills.";
const string Print_PRAYADANOS_BlessWisp				= "Adanos blesses you.";
const string Print_PRAYADANOS_BlessNone				= "Adanos thanks you for your prayer.";
const string Print_PRAYADANOS_BlessCant				= "Adanos can't take your offering.";
const string PRINT_BlessMANA_MAX					= "Adanos grants you: Mana + ";

const string PurifySword							= "Purify Sword (Tears of Innos)";

const string Print_PRAYBELIAR_GETLP					= "Beliar grants you 1 learn point.";


// Cooking
const string PRINT_CookingSuccess					= "Recipe prepared!";
const string PRINT_CookingDesc_MeatStew				= "Prepare a 'Meat Stew'";
const string PRINT_CookingDesc_FishSoup				= "Prepare a 'Fish Soup'";
const string PRINT_CookingDesc_MeatbugRagout		= "Prepare a 'Meatbug Ragout'";
const string PRINT_CookingDesc_RootSoup				= "Prepare a 'Root Soup'";
const string PRINT_CookingDesc_MinecrawlerSoup		= "Prepare a 'Minecrawler Soup'";
const string PRINT_CookingDesc_RiceBowl				= "Prepare a 'Rice bowl'";
const string PRINT_CookingDesc_Marmalade			= "Prepare a 'Berry marmalade'";
const string PRINT_CookingDesc_FruitSalad			= "Prepare a 'Fruit salad'";
const string PRINT_CookingDesc_ConvictStew			= "Prepare a 'Convict's Stew'";


// Alchemy
const string PRINT_PotionMixSuccess					= "Potions mixed!";
const string PRINT_BoozeSuccess						= "Booze mixed!";
const string PRINT_TabakSuccessREVIVED				= "Reefer rolled!";


// Skills
const string PRINT_ADDON_HACKCHANCE					= "Knowledge of digging improved! (+";	

const string Print_LearnFromBookstand				= "You seem to have learned something new.";
const string Print_TalentFromBookstand				= "You seem to have picked up a new skill.";	

const string PRINT_LearnBowyer						= "Learn: Bowmaking";
const string PRINT_LearnCooking						= "Learn: Cooking";
const string PRINT_LearnTobacco						= "Learn: Blend tobacco";
const string PRINT_LearnBooze						= "Learn: Distill booze";

// Output
const string PRINT_NoMorePicklocks					= "No more lock picks!";
const string PRINT_Ranged_No_Ammo_Crossbow			= "No more bolts!";
const string PRINT_Ranged_No_Ammo_Bow				= "No more arrows!";


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
// Ambient XP
// ***************

const int	XP_NostalgiaBonus			= 25;

const int 	XP_Addon_AllOWTeleporststones			= 400;

const int	XP_BookstandAlchemy			= 25;
const int	XP_BookstandRunes			= 25;
const int	XP_BookstandAstronomy		= 25;
const int	XP_BookstandMagic			= 25;
const int	XP_BookstandHunting			= 25;
const int	XP_BookstandHistory			= 25;
const int	XP_BookstandSpecial			= 50;

const int	XP_BookstandSpecific		= 50;

const int	XP_BookstandPersonal		= 50;
const int	XP_BookstandFireContest		= 50;



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
const string NAME_SPL_TeleportNC		= "Teleport to New Camp";

const int 	SPL_TeleportPsi				= 91;
const string NAME_SPL_TeleportPsi		= "Teleport to Brotherhood";

const int 	SPL_TeleportOrc				= 92;
const string NAME_SPL_TeleportOrc		= "Orc Teleport";


const int	SPL_Telekinesis				= 100;
const string NAME_SPL_Telekinesis		= "Telekinesis";

const int	SPL_Control					= 101;
const string NAME_SPL_Control			= "Control";


const int	SPL_TrfMeatbug				= 102;
const string NAME_SPL_TrfMeatbug		= "Transform into Meatbug";

const int	SPL_TrfMolerat				= 103;
const string NAME_SPL_TrfMolerat		= "Transform into Molerat";

const int	SPL_TrfBloodfly				= 104;
const string NAME_SPL_TrfBloodfly		= "Transform into Bloodfly";

const int	SPL_TrfSwampDrone			= 105;
const string NAME_SPL_TrfSwampDrone		= "Transform into Swampgas drone";

const int	SPL_TrfMinecrawler			= 106;
const string NAME_SPL_TrfMinecrawler	= "Transform into Minecrawler";

const int	SPL_TrfMantis				= 107;
const string NAME_SPL_TrfMantis			= "Transform into Mantis";

const int	SPL_TrfBoar					= 108;
const string NAME_SPL_TrfBoar			= "Transform into Boar";

const int	SPL_TrfOrcDog				= 109;
const string NAME_SPL_TrfOrcDog			= "Transform into Orc Dog";

const int	SPL_TrfRazor				= 110;
const string NAME_SPL_TrfRazor			= "Transform into Razor";

const int	SPL_TrfChomper				= 111;
const string NAME_SPL_TrfChomper		= "Transform into Chomper";

const int	SPL_TrfBloodhound			= 112;
const string NAME_SPL_TrfBloodhound		= "Transform into Bloodhound";

const int	SPL_TrfHellhound			= 113;
const string NAME_SPL_TrfHellhound		= "Transform into Hellhound";

const int	SPL_TrfPanther				= 114;
const string NAME_SPL_TrfPanther		= "Transform into Panther";

const int	SPL_TrfAlligator			= 115;
const string NAME_SPL_TrfAlligator		= "Transform into Alligator";

const int	SPL_TrfSwampshark			= 116;
const string NAME_SPL_TrfSwampshark		= "Transform into Swampshark";

const int	SPL_TrfHarpy				= 117;
const string NAME_SPL_TrfHarpy			= "Transform into Harpy";

const int	SPL_TrfTroll				= 118;
const string NAME_SPL_TrfTroll			= "Transform into Troll";

const int	SPL_TrfGoblin				= 119;
const string NAME_SPL_TrfGoblin			= "Transform into Goblin";


const int	SPL_SummonStonepuma			= 120;
const string NAME_SPL_SummonStonepuma 	= "Summon Stonepuma";

const int	SPL_SummonWisp				= 121;
const string NAME_SPL_SummonWisp		= "Summon Wisp";



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

const string NAME_1H_COMMON_01_DESC		= "Crude Sword (One-Handed)";

const int WEAPON_1H_REVIVED_01			= 13;
const string NAME_1H_REVIVED_01			= "Short Sword";
const string NAME_1H_REVIVED_01_DESC	= "Short Sword (One-Handed)";
const int WEAPON_1H_REVIVED_02			= 14;
const string NAME_1H_REVIVED_02			= "Long Sword";
const string NAME_1H_REVIVED_02_DESC	= "Long Sword (One-Handed)";
const int WEAPON_1H_REVIVED_03			= 15;
const string NAME_1H_REVIVED_03			= "Broad Sword";
const string NAME_1H_REVIVED_03_DESC	= "Broad Sword (One-Handed)";
const int WEAPON_1H_REVIVED_04			= 16;
const string NAME_1H_REVIVED_04			= "Sword";
const string NAME_1H_REVIVED_04_DESC	= "Sword (One-Handed)";
const int WEAPON_1H_REVIVED_05			= 17;
const string NAME_1H_REVIVED_05			= "Bastard Sword";
const string NAME_1H_REVIVED_05_DESC	= "Bastard Sword (One-Handed)";
const int WEAPON_2H_REVIVED_01			= 18;
const string NAME_2H_REVIVED_01			= "Light Sword";
const string NAME_2H_REVIVED_01_DESC	= "Light Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_02			= 19;
const string NAME_2H_REVIVED_02			= "Heavy Sword";
const string NAME_2H_REVIVED_02_DESC	= "Heavy Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_03			= 20;
const string NAME_2H_REVIVED_03			= "Broad Sword";
const string NAME_2H_REVIVED_03_DESC	= "Broad Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_04			= 21;
const string NAME_2H_REVIVED_04			= "Sword";
const string NAME_2H_REVIVED_04_DESC	= "Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_05			= 22;
const string NAME_2H_REVIVED_05			= "Bastard Sword";
const string NAME_2H_REVIVED_05_DESC	= "Bastard Sword (Two-Handed)";

const int WEAPON_1H_REVIVED_ORE_01		= 23;
const string NAME_1H_REVIVED_ORE_01		= "Rough Ore Blade";
const string NAME_1H_REVIVED_ORE_01_DESC= "Rough Ore Blade (One-Handed)";
const int WEAPON_1H_REVIVED_ORE_02		= 24;
const string NAME_1H_REVIVED_ORE_02		= "Master Ore Blade";
const string NAME_1H_REVIVED_ORE_02_DESC= "Master Ore Blade (One-Handed)";
const int WEAPON_1H_REVIVED_ORE_03		= 25;
const string NAME_1H_REVIVED_ORE_03		= "Ore Battle Blade";
const string NAME_1H_REVIVED_ORE_03_DESC= "Ore Battle Blade (One-Handed)";
const int WEAPON_1H_REVIVED_ORE_04		= 26;
const string NAME_1H_REVIVED_ORE_04		= "Ore Dragon Slayer";
const string NAME_1H_REVIVED_ORE_04_DESC= "Ore Dragon Slayer (One-Handed)";
const int WEAPON_1H_REVIVED_ORE_05		= 27;
const string NAME_1H_REVIVED_ORE_05		= "Ore Bastard Sword";
const string NAME_1H_REVIVED_ORE_05_DESC= "Ore Bastard Sword (One-Handed)";
const int WEAPON_2H_REVIVED_ORE_01		= 28;
const string NAME_2H_REVIVED_ORE_01		= "Master Ore Sword";
const string NAME_2H_REVIVED_ORE_01_DESC= "Master Ore Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_ORE_02		= 29;
const string NAME_2H_REVIVED_ORE_02		= "Rough Ore Sword";
const string NAME_2H_REVIVED_ORE_02_DESC= "Rough Ore Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_ORE_03		= 30;
const string NAME_2H_REVIVED_ORE_03		= "Ore Battle Sword";
const string NAME_2H_REVIVED_ORE_03_DESC= "Ore Battle Sword (Two-Handed)";
const int WEAPON_2H_REVIVED_ORE_04		= 31;
const string NAME_2H_REVIVED_ORE_04		= "Heavy Ore Dragon Slayer";
const string NAME_2H_REVIVED_ORE_04_DESC= "Heavy Ore Dragon Slayer (Two-Handed)";
const int WEAPON_2H_REVIVED_ORE_05		= 32;
const string NAME_2H_REVIVED_ORE_05		= "Ore Bastard Sword";
const string NAME_2H_REVIVED_ORE_05_DESC= "Ore Bastard Sword (Two-Handed)";


const int MAX_WEAPONS_MELEE 			= 33;
var int PLAYER_TALENT_SMITH[MAX_WEAPONS_MELEE];



// ***************
// Bowmaking
// ***************

const int WEAPON_BOW_REVIVED_01			= 1;
const string NAME_BOW_REVIVED_01		= "Ore Bastard Sword";
const int WEAPON_BOW_REVIVED_02			= 2;
const string NAME_BOW_REVIVED_02		= "Ore Bastard Sword";
const int WEAPON_BOW_REVIVED_03			= 3;
const string NAME_BOW_REVIVED_03		= "Ore Bastard Sword";
const int WEAPON_BOW_REVIVED_04			= 4;
const string NAME_BOW_REVIVED_04		= "Ore Bastard Sword";
const int WEAPON_CBOW_REVIVED_01		= 5;
const string NAME_CBOW_REVIVED_01		= "Ore Bastard Sword";
const int WEAPON_CBOW_REVIVED_02		= 6;
const string NAME_CBOW_REVIVED_02		= "Ore Bastard Sword";
const int WEAPON_CBOW_REVIVED_03		= 7;
const string NAME_CBOW_REVIVED_03		= "Ore Bastard Sword";
const int WEAPON_CBOW_REVIVED_04		= 8;
const string NAME_CBOW_REVIVED_04		= "Ore Bastard Sword";


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