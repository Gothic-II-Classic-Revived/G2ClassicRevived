// ***************
// Quest Log
// ***************

const string	TOPIC_Revived_DaronStatuette		=	"Fire Mage in turmoil";
var int			MiltenORPedro_LostInnosStatue_Daron;
var int 		TOPIC_Revived_DaronStatuette_END;

var int			OrlanWine_Scam;

const string	TOPIC_Revived_ThievesGuild			=	"Thieves' Guild";

const string	TOPIC_Revived_EddaStatue			=	"Robbed in the Harbour";

const string	TOPIC_Tobacco						=	"Mixing tobacco";
const string	LogText_TobaccoLearned				=	"By mixing Abuyin's apple tobacco at an alchemist's bench I can make:";

const string	TOPIC_Cooking						=	"Cooking";

const string	TOPIC_Booze							=	"Distilling booze";


const string	LogText_Revived_GordonTrade	 		=	"Gordon Ramsay in the broken tower can sell me food and frying pans.";



// ***************
// Text
// ***************

// NPC Names
const string NAME_DementorNovice		=	"Seeker Novice";
const string NAME_Templar				=	"Apocalyptic Templar";

const string NAME_JudgeGuard			=	"Judge's House Guard";
const string NAME_TowerGuard			=	"Tower Guard";

const string NAME_LOAFER				=	"Loafer";
const string NAME_HIGHWAYMAN			=	"Highwayman";

const string NAME_BOUNTY				=	"Bounty";


// Death Messages
const string PRINT_DEATH_MESSAGE_0		=	"Your journey ends here.";
const string PRINT_DEATH_MESSAGE_1		=	"Maybe you should've spent more learning points.";
const string PRINT_DEATH_MESSAGE_2		=	"Guess you weren't the Chosen One after all.";
const string PRINT_DEATH_MESSAGE_3		=	"When was the last time you saved...?";
const string PRINT_DEATH_MESSAGE_4		=	"You are finally free.";


// Eating Bonus Messages
const string PRINT_Eat_Apple1			=	"Tastes juicy and fresh.";
const string PRINT_Eat_Apple2			=	"You feel refreshed.";
const string PRINT_Eat_Apple3			=	"You feel well and strong!";
const string PRINT_Eat_SourApple1		=	"The taste sparks your curiosity.";
const string PRINT_Eat_SourApple2		=	"You feel energized.";
const string PRINT_Eat_SourApple3		=	"You feel agile and alert!";
const string PRINT_Eat_Pear1			=	"Sweet and mellow taste.";
const string PRINT_Eat_Pear2			=	"You feel a strange clarity.";
const string PRINT_Eat_Pear3			=	"You feel open to new knowledge!";
const string PRINT_Eat_MPMushroom1		=	"The mushroom tingles with magic power.";
const string PRINT_Eat_MPMushroom2		=	"You feel a spark of energy.";
const string PRINT_Eat_MPMushroom3		=	"Your mind clears and mana flows!";
const string PRINT_Eat_HPMushroom1		=	"Earthy and rich in taste.";
const string PRINT_Eat_HPMushroom2		=	"The hearty flavor revitalizes you.";
const string PRINT_Eat_HPMushroom3		=	"Your body feels more resilient!";


// Log Entries
const string LOGENTRY_RECIPE_HEALTH_01			= "Ingredients for 'Essence of Healing':\n2 Healing Plant\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_HEALTH_02			= "Ingredients for 'Extract of Healing':\n2 Healing Herb\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_HEALTH_03			= "Ingredients for 'Elixir of Healing':\n2 Healing Root\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_HEALTH_04			= "Ingredients for 'Pure Life Energy':\n3 Essence of Healing\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_01			= "Ingredients for 'Essence of Magic Energy':\n2 Fire Nettle\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_02			= "Ingredients for 'Extract of Magic Energy':\n2 Fireweed\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_03			= "Ingredients for 'Elixir of Magic Energy':\n2 Fire Root\n1 Meadow Knotweed";
const string LOGENTRY_RECIPE_MANA_04			= "Ingredients for 'Pure Life Energy':\n3 Essence of Magic Energy\n1 Meadow Knotweed";

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
const string NAME_MagicWeapon1H			=	"One-Handed Weapon (Magic)";
const string NAME_MagicWeapon2H			=	"Two-Handed Weapon (Magic)";

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


const string NAME_UndeadDamageBonus		= 	"Undead Damage Bonus";
const string NAME_CreatureDamageBonus	= 	"Creature Damage Bonus";


const string NAME_RaiseStrDex			=	"Strength and Dexterity +";
const string NAME_RaiseHPMP				=	"Hitpoints and Mana +";
const string NAME_RaiseWeaponSkill		=	"Melee Weapon Talent Bonus";

const string NAME_BonusHPMP				=	"Hitpoints and Mana bonus";

const string NAME_PercentageHPMP		=	"Hitpoints and Mana percentage";
const string NAME_Percentage_HP			=	"Hitpoint percentage";
const string NAME_Percentage_Mana		=	"Mana percentage";

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
CONST STRING MOBNAME_WOODCHOPPIN			= "Tree Cut";

CONST STRING MOBNAME_VINEYARD				= "Grapevine";
CONST STRING MOBNAME_ORE_DEPLETED			= "Depleted Ore";

CONST STRING MOBNAME_SARCOPHAGUS			= "Sarcophagus";

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


// Graves (Stone Fortress)
CONST STRING MOBNAME_GRAVE_REVIVED_01		= "Crygreg - 'Happy Anniversary!'";
CONST STRING MOBNAME_GRAVE_REVIVED_02		= "Macintosh - 'You couldn't have fucking told me this earlier?!'";
CONST STRING MOBNAME_GRAVE_REVIVED_03		= "Jorgenson - 'ALISTAAAAIR!'";
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

// Graves (OW - Paladins)
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_01		= "Melothar";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_02		= "Cysiex";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_03		= "Axel";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_04		= "Derno";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_05		= "Rafix";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_06		= "Tandor";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_07		= "Sinister";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_08		= "Antor";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_09		= "Udar";
CONST STRING MOBNAME_GRAVE_PALADIN_REVIVED_10		= "Bartired";

// Graves (NW)
CONST STRING MOBNAME_GRAVE_REVIVED_16		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_17		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_18		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_19		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_20		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_21		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_22		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_23		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_24		= "";
CONST STRING MOBNAME_GRAVE_REVIVED_25		= "";


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
const string Print_XPFromBookstand					= "You seem to have gained a bit of knowledge.";	
	

const string PRINT_LearnBowyer						= "Learn: Bowmaking";
const string PRINT_LearnCooking						= "Learn: Cooking";
const string PRINT_LearnTobacco						= "Learn: Blend tobacco";
const string PRINT_LearnBooze						= "Learn: Distill booze";


// Output
const string PRINT_NoMorePicklocks					= "No more lock picks!";
const string PRINT_Ranged_No_Ammo_Crossbow			= "No more bolts!";
const string PRINT_Ranged_No_Ammo_Bow				= "No more arrows!";
const string PRINT_PALADIN_WEAPON_MISSING			= "Only paladins can equip this weapon.";


// ***************
// whatever this is
// ***************

const int	_TIME_MESSAGE_RAISEATTRIBUTE	=	4;


// ***************
// ZEN Constants
// ***************

const int ABANDONEDMINE_ZEN = 5;
var int EnteredAbandonedMine;
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

const int PASS_ZEN = 8;
var int EnteredPassZen;
var int EnterPass_Kapitel1;
var int EnterPass_Kapitel2;
var int EnterPass_Kapitel3;
var int EnterPass_Kapitel4;
var int EnterPass_Kapitel5;


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

// Teeth Texture
const int Teeth_Normal				= 	0;
const int Teeth_Yellow				= 	1;
const int Teeth_Broken				= 	2;
const int Teeth_Rotten				= 	3;
const int Teeth_Gold				= 	4;

// Body Type (not Texture)
const int Body_Pale					= 	0;
const int Body_White				= 	1;
const int Body_Latino				= 	2;
const int Body_Black				= 	3;
const int Body_Sick					= 	4;
const int Body_Player				= 	5;

// Body / Pale
const int Body_P_Hum_Naked    = 0;
const int Body_P_Hum_Tattoo   = 1;
const int Body_P_Hum_Normal1  = 2;
const int Body_P_Hum_Normal2  = 3;
const int Body_P_Hum_Normal3  = 4;
const int Body_P_Babe_Naked   = 5;
const int Body_P_Babe_Normal1 = 6;

// Body / White
const int Body_W_Hum_Naked    = 0;
const int Body_W_Hum_Tattoo   = 1;
const int Body_W_Hum_Normal1  = 2;
const int Body_W_Hum_Normal2  = 3;
const int Body_W_Hum_Normal3  = 4;
const int Body_W_Hum_Cook1    = 5;
const int Body_W_Hum_Smith1   = 6;
const int Body_W_Babe_Naked   = 7;
const int Body_W_Babe_Naked2  = 8;
const int Body_W_Babe_Naked3  = 9;
const int Body_W_Babe_Normal1 = 10;
const int Body_W_Babe_Normal2 = 11;
const int Body_W_Babe_Normal3 = 12;

// Body / Latino
const int Body_L_Hum_Naked    = 0;
const int Body_L_Hum_Naked2   = 1;
const int Body_L_Hum_Tattoo   = 2;
const int Body_L_Hum_Normal1  = 3;
const int Body_L_Hum_Normal2  = 4;
const int Body_L_Hum_Normal3  = 5;
const int Body_L_Hum_Normal4  = 6;
const int Body_L_Hum_Normal5  = 7;
const int Body_L_Babe_Naked   = 8;
const int Body_L_Babe_Naked2  = 9;
const int Body_L_Babe_Normal1 = 10;

// Body / Black
const int Body_B_Hum_Naked    = 0;
const int Body_B_Hum_Naked2   = 1;
const int Body_B_Hum_Tattoo   = 2;
const int Body_B_Hum_Normal1  = 3;
const int Body_B_Hum_Normal2  = 4;
const int Body_B_Hum_Normal3  = 5;
const int Body_B_Hum_Normal4  = 6;
const int Body_B_Babe_Naked   = 7;
const int Body_B_Babe_Normal1 = 8;

// Body / Sick
const int Body_S_Sick1 = 0;

// Body / Special
const int Body_Special_Hero1         = 0;
const int Body_Special_Hero2         = 1;
const int Body_Special_Hero3         = 2;
const int Body_Special_IE_Cello      = 3;
const int Body_Special_IE_Drum       = 4;
const int Body_Special_IE_Drumscheid = 5;
const int Body_Special_IE_Dudelsack  = 6;
const int Body_Special_IE_Harfe      = 7;
const int Body_Special_IE_Laute      = 8;
const int Body_Special_IE_Piper      = 9;

// Face / Pale
const int Face_P_Hum_Normal1   = 0;
const int Face_P_Hum_Normal2   = 1;
const int Face_P_Hum_Normal3   = 2;
const int Face_P_Hum_Normal4   = 3;
const int Face_P_Hum_Normal5   = 4;
const int Face_P_Hum_Normal7   = 5;
const int Face_P_Hum_Normal8   = 6;
const int Face_P_Hum_Tattoo1   = 7;
const int Face_P_Hum_Bald1     = 8;
const int Face_P_Hum_Bald2     = 9;
const int Face_P_Hum_Bald3     = 10;
const int Face_P_Hum_Bald4     = 11;
const int Face_P_Hum_Beard1    = 12;
const int Face_P_Hum_Beard2    = 13;
const int Face_P_Hum_BeardOld1 = 14;
const int Face_P_Babe_Normal1  = 15;
const int Face_P_Babe_Normal2  = 16;
const int Face_P_Babe_Normal3  = 17;
const int Face_P_Babe_Normal4  = 18;
const int Face_P_Babe_Normal5  = 19;
const int Face_P_Albrecht      = 20;
const int Face_P_Alwin         = 21;
const int Face_P_Balthasar     = 22;
const int Face_P_Bilgot        = 23;
const int Face_P_Brutus        = 24;
const int Face_P_Cornelius     = 25;
const int Face_P_Cronos        = 26;
const int Face_P_Cutter        = 27;
const int Face_P_Delta         = 28;
const int Face_P_Dyrian        = 29;
const int Face_P_EgilEhnim     = 30;
const int Face_P_Fed           = 31;
const int Face_P_Gordon        = 32;
const int Face_P_Grom          = 33;
const int Face_P_Gunnar        = 34;
const int Face_P_Joe           = 35;
const int Face_P_Kalom         = 36;
const int Face_P_Lester        = 37;
const int Face_P_Lothar        = 38;
const int Face_P_Marcos        = 39;
const int Face_P_Marduk        = 40;
const int Face_P_Martin        = 41;
const int Face_P_Meldor        = 42;
const int Face_P_Merdarion     = 43;
const int Face_P_Mortis        = 44;
const int Face_P_Myxir         = 45;
const int Face_P_Nefarius      = 46;
const int Face_P_Neoras        = 47;
const int Face_P_Parcival      = 48;
const int Face_P_Riordian      = 49;
const int Face_P_Ruga          = 50;
const int Face_P_Sekob         = 51;
const int Face_P_Tandor        = 52;
const int Face_P_Till          = 53;

// Face / White
const int Face_W_Hum_Normal1   = 0;
const int Face_W_Hum_Normal2   = 1;
const int Face_W_Hum_Normal3   = 2;
const int Face_W_Hum_Normal4   = 3;
const int Face_W_Hum_Normal5   = 4;
const int Face_W_Hum_Normal6   = 5;
const int Face_W_Hum_Normal7   = 6;
const int Face_W_Hum_Normal8   = 7;
const int Face_W_Hum_Normal9   = 8;
const int Face_W_Hum_Normal10  = 9;
const int Face_W_Hum_Normal11  = 10;
const int Face_W_Hum_Normal12  = 11;
const int Face_W_Hum_Normal13  = 12;
const int Face_W_Hum_Normal14  = 13;
const int Face_W_Hum_Normal15  = 14;
const int Face_W_Hum_Normal16  = 15;
const int Face_W_Hum_Normal17  = 16;
const int Face_W_Hum_Normal18  = 17;
const int Face_W_Hum_Normal19  = 18;
const int Face_W_Hum_Normal20  = 19;
const int Face_W_Hum_Normal21  = 20;
const int Face_W_Hum_Normal22  = 21;
const int Face_W_Hum_Normal23  = 22;
const int Face_W_Hum_Normal24  = 23;
const int Face_W_Hum_Normal25  = 24;
const int Face_W_Hum_Normal26  = 25;
const int Face_W_Hum_Normal27  = 26;
const int Face_W_Hum_Normal28  = 27;
const int Face_W_Hum_Normal29  = 28;
const int Face_W_Hum_Normal30  = 29;
const int Face_W_Hum_Normal31  = 30;
const int Face_W_Hum_Normal32  = 31;
const int Face_W_Hum_Normal33  = 32;
const int Face_W_Hum_Normal34  = 33;
const int Face_W_Hum_Normal35  = 34;
const int Face_W_Hum_Normal36  = 35;
const int Face_W_Hum_Normal37  = 36;
const int Face_W_Hum_Normal38  = 37;
const int Face_W_Hum_Normal39  = 38;
const int Face_W_Hum_Normal40  = 39;
const int Face_W_Hum_Tattoo1   = 40;
const int Face_W_Hum_Tattoo2   = 41;
const int Face_W_Hum_Tattoo3   = 42;
const int Face_W_Hum_Tattoo4   = 43;
const int Face_W_Hum_Tattoo5   = 44;
const int Face_W_Hum_Tattoo6   = 45;
const int Face_W_Hum_Tattoo7   = 46;
const int Face_W_Hum_Tattoo8   = 47;
const int Face_W_Hum_Tattoo9   = 48;
const int Face_W_Hum_Tattoo10  = 49;
const int Face_W_Hum_Tattoo11  = 50;
const int Face_W_Hum_Tattoo12  = 51;
const int Face_W_Hum_Tattoo13  = 52;
const int Face_W_Hum_Tattoo14  = 53;
const int Face_W_Hum_Tattoo15  = 54;
const int Face_W_Hum_Tattoo16  = 55;
const int Face_W_Hum_Tattoo17  = 56;
const int Face_W_Hum_Tattoo18  = 57;
const int Face_W_Hum_Tattoo19  = 58;
const int Face_W_Hum_Tattoo20  = 59;
const int Face_W_Hum_Tattoo21  = 60;
const int Face_W_Hum_Tattoo22  = 61;
const int Face_W_Hum_Tattoo23  = 62;
const int Face_W_Hum_Tattoo24  = 63;
const int Face_W_Hum_Bald1     = 64;
const int Face_W_Hum_Bald2     = 65;
const int Face_W_Hum_Bald3     = 66;
const int Face_W_Hum_Beard1    = 67;
const int Face_W_Hum_Beard2    = 68;
const int Face_W_Hum_Beard3    = 69;
const int Face_W_Hum_Beard4    = 70;
const int Face_W_Hum_Beard5    = 71;
const int Face_W_Hum_Beard6    = 72;
const int Face_W_Hum_Beard7    = 73;
const int Face_W_Hum_Beard8    = 74;
const int Face_W_Hum_Beard9    = 75;
const int Face_W_Hum_Beard10   = 76;
const int Face_W_Hum_Beard11   = 77;
const int Face_W_Hum_Beard12   = 78;
const int Face_W_Hum_Beard13   = 79;
const int Face_W_Hum_Beard14   = 80;
const int Face_W_Hum_Beard15   = 81;
const int Face_W_Hum_Beard16   = 82;
const int Face_W_Hum_Beard17   = 83;
const int Face_W_Hum_Beard18   = 84;
const int Face_W_Hum_Beard19   = 85;
const int Face_W_Hum_Beard20   = 86;
const int Face_W_Hum_Beard21   = 87;
const int Face_W_Hum_Beard22   = 88;
const int Face_W_Hum_Old1      = 89;
const int Face_W_Hum_Old2      = 90;
const int Face_W_Babe_Normal1  = 91;
const int Face_W_Babe_Normal2  = 92;
const int Face_W_Babe_Normal3  = 93;
const int Face_W_Babe_Normal4  = 94;
const int Face_W_Babe_Normal5  = 95;
const int Face_W_Babe_Normal6  = 96;
const int Face_W_Babe_Normal7  = 97;
const int Face_W_Babe_Normal8  = 98;
const int Face_W_Babe_Normal9  = 99;
const int Face_W_Babe_Normal10 = 100;
const int Face_W_Babe_Normal11 = 101;
const int Face_W_Babe_Normal12 = 102;
const int Face_W_Babe_Normal13 = 103;
const int Face_W_Babe_Normal14 = 104;
const int Face_W_Babe_Normal15 = 105;
const int Face_W_Babe_Normal16 = 106;
const int Face_W_Babe_Cloth1   = 107;
const int Face_W_Babe_Cloth2   = 108;
const int Face_W_Babe_Cloth3   = 109;
const int Face_W_Babe_Cloth4   = 110;
const int Face_W_Babe_Makeup1  = 111;
const int Face_W_Babe_Makeup2  = 112;
const int Face_W_Babe_Makeup3  = 113;
const int Face_W_Agon          = 114;
const int Face_W_Akil          = 115;
const int Face_W_Alrik         = 116;
const int Face_W_Andre         = 117;
const int Face_W_Angus         = 118;
const int Face_W_Arkhan        = 119;
const int Face_W_Arto          = 120;
const int Face_W_Babo          = 121;
const int Face_W_Baltram       = 122;
const int Face_W_Bartired      = 123;
const int Face_W_Bartok        = 124;
const int Face_W_Bengar        = 125;
const int Face_W_Bennet        = 126;
const int Face_W_Berion        = 127;
const int Face_W_Biff          = 128;
const int Face_W_Bloodwyn      = 129;
const int Face_W_Bodo          = 130;
const int Face_W_Brago         = 131;
const int Face_W_Brahim        = 132;
const int Face_W_Bromor        = 133;
const int Face_W_Bullco        = 134;
const int Face_W_Bullit        = 135;
const int Face_W_Buster        = 136;
const int Face_W_Canthar       = 137;
const int Face_W_Cassia        = 138;
const int Face_W_Cedric        = 139;
const int Face_W_Cipher        = 140;
const int Face_W_Constantino   = 141;
const int Face_W_Coragon       = 142;
const int Face_W_Cord          = 143;
const int Face_W_Dar           = 144;
const int Face_W_Daron         = 145;
const int Face_W_DelaCroix     = 146;
const int Face_W_Dexter        = 147;
const int Face_W_Dobar         = 148;
const int Face_W_Dragomir      = 149;
const int Face_W_Drake         = 150;
const int Face_W_Drexar        = 151;
const int Face_W_Elena         = 152;
const int Face_W_Engrom        = 153;
const int Face_W_Fajeth        = 154;
const int Face_W_Farim         = 155;
const int Face_W_Farric        = 156;
const int Face_W_Fellan        = 157;
const int Face_W_Fenia         = 158;
const int Face_W_Fernando      = 159;
const int Face_W_Fester        = 160;
const int Face_W_Fortuno       = 161;
const int Face_W_Gaan          = 162;
const int Face_W_Garond        = 163;
const int Face_W_Garvell       = 164;
const int Face_W_Gerold        = 165;
const int Face_W_Girion        = 166;
const int Face_W_Godar         = 167;
const int Face_W_Gomez         = 168;
const int Face_W_Gorax         = 169;
const int Face_W_Greg          = 170;
const int Face_W_Grimes        = 171;
const int Face_W_Gritta        = 172;
const int Face_W_Hagen         = 173;
const int Face_W_Hakon         = 174;
const int Face_W_Halvor        = 175;
const int Face_W_Hank          = 176;
const int Face_W_Hanna         = 177;
const int Face_W_Harad         = 178;
const int Face_W_Herold        = 179;
const int Face_W_Hilda         = 180;
const int Face_W_Hyglas        = 181;
const int Face_W_Igaraz        = 182;
const int Face_W_Ignaz         = 183;
const int Face_W_Ingmar        = 184;
const int Face_W_Isgaroth      = 185;
const int Face_W_Jack          = 186;
const int Face_W_Jan           = 187;
const int Face_W_Jarvis        = 188;
const int Face_W_Jergan        = 189;
const int Face_W_Jesper        = 190;
const int Face_W_Jora          = 191;
const int Face_W_Jorgen        = 192;
const int Face_W_Judge         = 193;
const int Face_W_Kardif        = 194;
const int Face_W_Kati          = 195;
const int Face_W_Keroloth      = 196;
const int Face_W_Kjorn         = 197;
const int Face_W_Kurgan        = 198;
const int Face_W_Lares         = 199;
const int Face_W_Larius        = 200;
const int Face_W_Lee           = 201;
const int Face_W_Lehmar        = 202;
const int Face_W_Lobart        = 203;
const int Face_W_Lutero        = 204;
const int Face_W_Malak         = 205;
const int Face_W_Maleth        = 206;
const int Face_W_Maria         = 207;
const int Face_W_Matteo        = 208;
const int Face_W_Milten        = 209;
const int Face_W_Mist          = 210;
const int Face_W_Moe           = 211;
const int Face_W_Morgahard     = 212;
const int Face_W_Mud           = 213;
const int Face_W_Nadia         = 214;
const int Face_W_Nagur         = 215;
const int Face_W_Niclas        = 216;
const int Face_W_Onar          = 217;
const int Face_W_Oric          = 218;
const int Face_W_Pablo         = 219;
const int Face_W_Parlaf        = 220;
const int Face_W_Parlan        = 221;
const int Face_W_Pepe          = 222;
const int Face_W_Pyrokar       = 223;
const int Face_W_Q             = 224;
const int Face_W_Ramirez       = 225;
const int Face_W_Rangar        = 226;
const int Face_W_Raven         = 227;
const int Face_W_Regan         = 228;
const int Face_W_Regis         = 229;
const int Face_W_Reko          = 230;
const int Face_W_Reliops       = 231;
const int Face_W_Rengaru       = 232;
const int Face_W_Rethon        = 233;
const int Face_W_Rod           = 234;
const int Face_W_Rosi          = 235;
const int Face_W_Rupert        = 236;
const int Face_W_Sagitta       = 237;
const int Face_W_Salandril     = 238;
const int Face_W_Salazar       = 239;
const int Face_W_Sarah         = 240;
const int Face_W_Scar          = 241;
const int Face_W_Sengrath      = 242;
const int Face_W_Sentenza      = 243;
const int Face_W_Sergio        = 244;
const int Face_W_Serpentes     = 245;
const int Face_W_Sinister      = 246;
const int Face_W_Skip          = 247;
const int Face_W_Sly           = 248;
const int Face_W_Sylvio        = 249;
const int Face_W_Talbin        = 250;
const int Face_W_Thekla        = 251;
const int Face_W_Thorben       = 252;
const int Face_W_Torlof        = 253;
const int Face_W_Tygren        = 254;
const int Face_W_Udar          = 255;
const int Face_W_UdarEverett   = 256;
const int Face_W_Ulf           = 257;
const int Face_W_Valentino     = 258;
const int Face_W_Vino          = 259;
const int Face_W_Wambo         = 260;
const int Face_W_Wasili        = 261;
const int Face_W_Wolf          = 262;
const int Face_W_Wulfgar       = 263;
const int Face_W_Xardas        = 264;
const int Face_W_Zerrit        = 265;
const int Face_W_Zuris         = 266;

// Face / Latino
const int Face_L_Hum_Normal1   = 0;
const int Face_L_Hum_Normal2   = 1;
const int Face_L_Hum_Normal3   = 2;
const int Face_L_Hum_Normal4   = 3;
const int Face_L_Hum_Normal5   = 4;
const int Face_L_Hum_Normal6   = 5;
const int Face_L_Hum_Tattoo1   = 6;
const int Face_L_Hum_Tattoo2   = 7;
const int Face_L_Hum_Tattoo3   = 8;
const int Face_L_Hum_Bald1     = 9;
const int Face_L_Hum_Bald2     = 10;
const int Face_L_Hum_Bald3     = 11;
const int Face_L_Hum_Bald4     = 12;
const int Face_L_Hum_Bald5     = 13;
const int Face_L_Hum_Beard1    = 14;
const int Face_L_Hum_BeardOld1 = 15;
const int Face_L_Hum_BeardOld2 = 16;
const int Face_L_Hum_Old1      = 17;
const int Face_L_Babe_Normal1  = 18;
const int Face_L_Babe_Normal2  = 19;
const int Face_L_Babe_Normal3  = 20;
const int Face_L_Babe_Normal4  = 21;
const int Face_L_Babe_Normal5  = 22;
const int Face_L_Babe_Normal6  = 23;
const int Face_L_Attila        = 24;
const int Face_L_Borka         = 25;
const int Face_L_Bosper        = 26;
const int Face_L_Carl          = 27;
const int Face_L_Diego         = 28;
const int Face_L_Engor         = 29;
const int Face_L_Garwig        = 30;
const int Face_L_Gerbrandt     = 31;
const int Face_L_Hodges        = 32;
const int Face_L_Karras        = 33;
const int Face_L_Mika          = 34;
const int Face_L_Pedro         = 35;
const int Face_L_Raoul         = 36;
const int Face_L_Rukhar        = 37;
const int Face_L_Santino       = 38;
const int Face_L_Sonja         = 39;
const int Face_L_Tengron       = 40;
const int Face_L_Ulthar        = 41;

// Face / Black
const int Face_B_Hum_Normal1  = 0;
const int Face_B_Hum_Normal2  = 1;
const int Face_B_Hum_Normal3  = 2;
const int Face_B_Hum_Normal4  = 3;
const int Face_B_Hum_Normal5  = 4;
const int Face_B_Hum_Tattoo1  = 5;
const int Face_B_Hum_Bald1    = 6;
const int Face_B_Hum_Bald2    = 7;
const int Face_B_Hum_Bald3    = 8;
const int Face_B_Babe_Normal1 = 9;
const int Face_B_Babe_Normal2 = 10;
const int Face_B_Babe_Normal3 = 11;
const int Face_B_Babe_Normal4 = 12;
const int Face_B_Babe_Normal5 = 13;
const int Face_B_Abuyin       = 14;
const int Face_B_Angar        = 15;
const int Face_B_Boltan       = 16;
const int Face_B_Brian        = 17;
const int Face_B_Bronko       = 18;
const int Face_B_Cavalorn     = 19;
const int Face_B_Edda         = 20;
const int Face_B_Feros        = 21;
const int Face_B_Gestath      = 22;
const int Face_B_Gorn         = 23;
const int Face_B_Grimbald     = 24;
const int Face_B_Hokurn       = 25;
const int Face_B_Khaled       = 26;
const int Face_B_Mario        = 27;
const int Face_B_Opolos       = 28;
const int Face_B_Orlan        = 29;
const int Face_B_Peck         = 30;
const int Face_B_Randolph     = 31;
const int Face_B_Saturas      = 32;
const int Face_B_Talamon      = 33;
const int Face_B_Thorus       = 34;
const int Face_B_Vanja        = 35;
const int Face_B_Vatras       = 36;

// Face / Sick
const int Face_S_Sick1 = 0;

// Face / Special
const int Face_Special_Hero        = 0;
const int Face_Special_HeroAlt     = 1;
const int Face_Special_IE_Flail    = 2;
const int Face_Special_IE_Flex     = 3;
const int Face_Special_IE_Lutter   = 4;
const int Face_Special_IE_Pfeiffer = 5;
const int Face_Special_IE_Pymonte  = 6;
const int Face_Special_IE_Thomas   = 7;
const int Face_Special_IE_Unicorn  = 8;
const int Face_Special_TattooMad   = 9;



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
const int GIL_BOUNT					=	56;
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

var int SCUsed_PASS_TELEPORTSTATION_ENTRY;

var int SCUsed_AllOWTeleportStones;
var int SCUsed_AllPassTeleportStones;


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

var int Bounty0;
var int Bounty1;
var int Bounty2;
var int Bounty3;
var int Bounty4;
var int Bounty5;
var int Bounty6;
var int Bounty7;
var int Bounty8;
var int Bounty9;
var int Bounty10;

var int VatrasMessage1;
var int VatrasMessage2;
var int VatrasMessage3;
var int VatrasMessage4;
var int VatrasMessage5;

var int BaltramPackage1;
var int BaltramPackage2;
var int BaltramPackage3;
var int BaltramPackage4;
var int BaltramPackage5;


// ***************
// Books and Notes
// ***************

const int 	BookType_Alchemy = 0;
var int 	Read_BookstandAlchemy;
var int		RevivedBookstandRead_Alchemy1;
var int		RevivedBookstandRead_Alchemy2;
var int		RevivedBookstandRead_Alchemy3;
var int		RevivedBookstandRead_Alchemy4;
var int		RevivedBookstandRead_Alchemy5;
const int	Read_BookstandAlchemy_Max = 5;

const int 	BookType_MagicCircles = 1;
var int 	Read_BookstandMagicCircles;
var int		RevivedBookstandRead_MagicCircle1;
var int		RevivedBookstandRead_MagicCircle2;
var int		RevivedBookstandRead_MagicCircle3;
var int		RevivedBookstandRead_MagicCircle4;
var int		RevivedBookstandRead_MagicCircle5;
var int		RevivedBookstandRead_MagicCircle6;
var int		RevivedBookstandRead_MagicCircle7;
var int		RevivedBookstandRead_MagicCircle8;
var int		RevivedBookstandRead_MagicCircle9;
var int		RevivedBookstandRead_MagicCircle10;
var int		RevivedBookstandRead_MagicCircle11;
var int		RevivedBookstandRead_MagicCircle12;
var int		RevivedBookstandRead_MagicCircle13;
var int		RevivedBookstandRead_MagicCircle14;
var int		RevivedBookstandRead_MagicCircle15;
const int	Read_BookstandMagicCircles_Max = 15;

const int 	BookType_Astronomy = 2;
var int 	Read_BookstandAstronomy;
var int		RevivedBookstandRead_Astronomy1;
var int		RevivedBookstandRead_Astronomy2;
const int	Read_BookstandAstronomy_Max = 2;

const int 	BookType_Magic = 3;
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

const int 	BookType_Hunting = 4;
var int 	Read_BookstandHunting;
var int		RevivedBookstandRead_Hunting1;
var int		RevivedBookstandRead_Hunting2;
var int		RevivedBookstandRead_Hunting3;
var int		RevivedBookstandRead_Hunting4;
var int		RevivedBookstandRead_Hunting5;
var int		RevivedBookstandRead_Hunting6;
var int		RevivedBookstandRead_Hunting7;
var int		RevivedBookstandRead_Hunting8;
var int		RevivedBookstandRead_Hunting9;
var int		RevivedBookstandRead_Hunting10;
const int	Read_BookstandHunting_Max = 10;

const int 	BookType_Combat = 5;
var int 	Read_BookstandCombat;
var int		RevivedBookstandRead_Combat1;
var int		RevivedBookstandRead_Combat2;
var int		RevivedBookstandRead_Combat3;
var int		RevivedBookstandRead_Combat4;
const int	Read_BookstandCombat_Max = 4;

const int 	BookType_History = 6;
var int 	Read_BookstandHistory;
var int		RevivedBookstandRead_History1;
var int		RevivedBookstandRead_History2;
var int		RevivedBookstandRead_History3;
var int		RevivedBookstandRead_History4;
var int		RevivedBookstandRead_History5;
const int	Read_BookstandHistory_Max = 5;

const int 	BookType_Teachings = 7;
var int 	Read_BookstandTeachings;
var int		RevivedBookstandRead_Teachings1;
var int		RevivedBookstandRead_Teachings2;
var int		RevivedBookstandRead_Teachings3;
const int	Read_BookstandTeachings_Max = 3;

const int 	BookType_Personal = 8;
var int 	Read_BookstandPersonal;
var int		RevivedBookstandRead_PersonalSpecial1;
var int		RevivedBookstandRead_PersonalSpecial2;
var int		RevivedBookstandRead_Personal1;
var int		RevivedBookstandRead_Personal2;
var int		RevivedBookstandRead_Personal3;
var int		RevivedBookstandRead_Personal4;
const int	Read_BookstandPersonal_Max = 6;


// ***************
// Ambient XP
// ***************

const int	XP_NostalgiaBonus				= 25;
const int 	XP_AllNWTeleportStones		= 400;
const int 	XP_AllOWTeleportStones		= 400;
const int 	XP_AllPassTeleportStones	= 400;

const int	XP_BookstandAlchemy				= 25;
const int	XP_BookstandMagicCircles		= 25;
const int	XP_BookstandAstronomy			= 25;
const int	XP_BookstandMagic				= 25;
const int	XP_BookstandHunting				= 25;
const int	XP_BookstandCombat				= 25;
const int	XP_BookstandHistory				= 25;
const int	XP_BookstandTeachings			= 25;
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


const int	SPL_Pyrokinesis			= 122;
const string NAME_SPL_Pyrokinesis	= "Pyrokinesis";
const int	SPL_PYRO_DAMAGE_PER_SEC		= 20;
const int	SPL_PYRO_MANA_PER_INVEST	= 1;
const int	SPL_PYRO_MANA_PER_SEC		= 4;

const int	SPL_Berzerk				= 123;
const int	SPL_Berserk				= 123;
const string NAME_SPL_Berserk		= "Berserk";
const string NAME_Berzerk			= "Berserk";
const int	SPL_SENDCAST_BERZERK	= 10;
const int	SPL_SENDCAST_BERSERK	= 10;
const int	SPL_TIME_BERZERK		= 30;
const int	SPL_TIME_BERSERK		= 30;

const int	SPL_HealOther			= 124;
const string NAME_SPL_HealOther	= "Heal Other";
const int	SPL_Cost_HealOther		= 30;
const int	SPL_Heal_HealOther		= 150;

const int	SPL_Explode			= 125;
const string NAME_SPL_Explode		= "Explode";
const int	SPL_Cost_Explode		= 35;
const int	SPL_Damage_Explode	= 165;

const int	SPL_ManaRecovery		= 126;
const string NAME_SPL_ManaRecovery	= "Mana Recovery";
const int	SPL_ManaRecovery_RELATION	= 2;
const int	SPL_ManaRecovery_MINHP		= 20;
const int	SPL_ManaRecovery_MAXHP		= 250;
const int	SPL_ManaRecovery_SAYTIME		= 50;

const int	SPL_Extricate			= 127;
const string NAME_SPL_Extricate	= "Extricate";
const int	SPL_Cost_Extricate	= 20;
const int	SPL_Damage_Extricate	= 80;

const int	SPL_Cost_Earthquake		= 5;
const int	SPL_Damage_Earthquake	= 100;



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
// BONUSES
// ***************

const int REV_Damage_Undead_Blessed		= 	20;
const int REV_Damage_Undead_Holy		= 	40;

const int REV_Damage_OrcWeapon_Creature_01	= 	20;
const int REV_Damage_OrcWeapon_Creature_02	= 	40;
const int REV_Damage_OrcWeapon_Creature_03	= 	60;


const int REV_Bonus_Mana_ArcaneStaff_01		= 	10;
const int REV_Bonus_Mana_ArcaneStaff_02		= 	20;
const int REV_Bonus_Mana_ArcaneStaff_03		= 	30;
const int REV_Bonus_Mana_ArcaneStaff_04		= 	40;



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



// ***************
// Trophies
// ***************
const int TROPHY_SwampsharkTeeth		= 14;
const int TROPHY_SwampsharkSkin			= 15;
const int TROPHY_GolemHeart				= 16;
const int TROPHY_FireLizardTongue		= 17;
const int TROPHY_BlackTrollSkin			= 18;
const int TROPHY_MantisHead				= 19;

const int MAX_TROPHIES					= 20;
var int PLAYER_TALENT_TAKEANIMALTROPHY[MAX_TROPHIES];



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

const int POTION_Special_Experience		  		= 33;
const int POTION_Special_DragonDrink	  		= 34;


const int MAX_POTION							= 35;
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
