const int	REV_Value_BadFood			=	 0;		const int	REV_HP_BadFood			=	5;

const int	REV_Value_Bugmeat			=	 2;		const int	REV_HP_Bugmeat			=	2;
const int	REV_Value_Ham				=	 30;	const int	REV_HP_Ham				=	20;
const int	REV_Value_HamCooked			=	 50;	const int	REV_HP_HamCooked		=	40;

const int	REV_Value_Apple				=	 6;		const int	REV_HP_Apple			=	4;
const int	REV_Value_Pear				=	 12;	const int	REV_HP_Pear				=	8;
const int	REV_Value_Honeycomb			=	30;		const int	REV_HP_Honeycomb		=	8;

const int	REV_Value_Carrot			=	12;		const int	REV_HP_Carrot			=	10;
const int	REV_Value_Cabbage			=	18;		const int	REV_HP_Cabbage			=	8;
const int	REV_Value_Tomato			=	30;		const int	REV_HP_Tomato			=	14;

const int	REV_Value_OldBread			=	 4;		const int	REV_HP_OldBread			=	4;
const int	REV_Value_StinkyCheese		=	 8;		const int	REV_HP_StinkyCheese		=	5;

const int	REV_Value_StaleWater		=	 3;		const int	REV_HP_StaleWater		=	2;
const int	REV_Value_OldBeer			=	 6;		const int	REV_HP_OldBeer			=	3;
const int	REV_Value_OldWine			=	 8;		const int	REV_HP_OldWine			=	3;

const int	REV_Value_TurnipBooze		=	16;		const int	REV_HP_TurnipBooze		=	5;
const int	REV_Value_VinoBooze			=	25;		const int	REV_HP_VinoBooze		=	10;
const int	REV_Value_MageWine			=	50;		const int	REV_HP_MageWine			=	15;
const int	REV_Value_MonsterDrink		=	30;		const int	REV_HP_MonsterDrink		=	15;		const int	REV_Time_MonsterDrink	=	10000;
const int	REV_Value_RiceSchnapps		=	 6;		const int	REV_HP_RiceSchnapps		=	3;
const int	REV_Value_Mead				=	12;		const int	REV_HP_Mead				=	8;

const int	REV_Value_MeatStew			=	 30;	const int	REV_HP_MeatStew			=	25;
const int	REV_Value_FishSoup			=	 30;	const int	REV_HP_FishSoup			=	25;
const int	REV_Value_MeatbugRagout		=	 4;		const int	REV_HP_MeatbugRagout	=	15;
const int	REV_Value_RootSoup			=	 3;		const int	REV_HP_RootSoup			=	10;
const int	REV_Value_CrawlerSoup		=	10;		const int	REV_HP_CrawlerSoup		=	20;
const int	REV_Value_Rice				=	 5;		const int	REV_HP_Rice				=	5;
const int	REV_Value_Marmalade			=	25;		const int	REV_HP_Marmalade		=	20;
const int	REV_Value_FruitSalad		=	20;		const int	REV_HP_FruitSalad		=	15;
const int	REV_Value_OldStew			=	 1;		const int	REV_HP_OldStew			=	5;


//****************************************************************************
//			FOOD
//****************************************************************************

INSTANCE ITFO_REVIVED_MEATBUG (C_Item)
{	
	name 				=	"Bugmeat";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	REV_Value_Bugmeat;
	
	visual 				=	"REV_ITFO_MEATBUG.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UseBugmeat;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_Bugmeat;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseBugmeat()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_Bugmeat);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_HAM_01_RAW (C_Item)
{
	name 				=	"Ham";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Ham;

	visual 				=	"REV_ITFO_HAM_01_RAW.3DS";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseHam;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_Ham;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseHam()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_Ham);
	};

INSTANCE ITFO_REVIVED_HAM_01_COOKED (C_Item)
{
	name 				=	"Cooked Ham";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_HamCooked;

	visual 				=	"REV_ITFO_HAM_01_COOKED.3DS";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseHamCooked;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_HamCooked;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseHamCooked()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_HamCooked);
	};

INSTANCE ITFO_REVIVED_HAM_02 (C_Item)
{
	name 				=	"Rotten Ham";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_BadFood;

	visual 				=	"REV_ITFO_HAM_02.3DS";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseHamOld;

	description			= name;
	TEXT[1]				= NAME_Penalty_HP;				COUNT[1]	= REV_HP_BadFood;
};

	FUNC VOID UseHamOld()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	-REV_HP_BadFood);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_APPLE_01 (C_Item)
{	
	name 				=	"Sour apple";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Apple;

	visual 				=	"ItFo_Apple_01.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UseApple;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_Apple;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseApple()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_Apple);
		
		if (Npc_IsPlayer (self))
		{
			OldApple_Bonus = OldApple_Bonus + 1;
			
			if (OldApple_Bonus == 7)  
			{
				Print	(PRINT_Eat_SourApple1);
			};
			if (OldApple_Bonus == 15)  
			{
				Print (PRINT_Eat_SourApple2);
			};
			if (OldApple_Bonus == 25)  
			{
				Print (PRINT_Eat_SourApple3);
				B_RaiseAttribute (self,	ATR_DEXTERITY, 1);
				Snd_Play	("LevelUp");
				OldApple_Bonus = 0;
			};
		};
	};

INSTANCE ITFO_REVIVED_APPLE_02 (C_Item)
{	
	name 				=	"Old apple";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_BadFood;

	visual 				=	"REV_ITFO_APPLE_02.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UseAppleOld;

	description			= name;
	TEXT[1]				= NAME_Penalty_HP;				COUNT[1]	= REV_HP_BadFood;
};

	FUNC VOID UseAppleOld()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	-REV_HP_BadFood);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_PEAR (C_Item)
{	
	name 				=	"Pear";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Pear;

	visual 				=	"REV_ITFO_PEAR.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UsePear;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_Pear;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UsePear()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_Pear);
		
		if (Npc_IsPlayer (self))
		{
			Pear_Bonus = Pear_Bonus + 1;
			
			if (Pear_Bonus == 7)  
			{
				Print (PRINT_Eat_Pear1);
			};
			if (Pear_Bonus == 15)  
			{
				Print (PRINT_Eat_Pear2);
			};
			if (Pear_Bonus == 25)  
			{
				Print (PRINT_Eat_Pear3);
				hero.lp = hero.lp + 1;
				PrintScreen	("Learning Points +1", -1, -1, FONT_SCREEN, 2);
				Snd_Play	("LevelUp");
				Pear_Bonus = 0;
			};
		};
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_HONEY (C_Item)
{	
	name 				=	"Honeycomb";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	REV_Value_Honeycomb;
	
	visual 				=	"REV_ITPL_HONEY.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseHoneycomb;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_Honeycomb;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseHoneycomb()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_Honeycomb);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BREAD_01 (C_Item)
{	
	name 				=	"Hard bread";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_OldBread;

	visual 				=	"ItFo_Loaf_01.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseLoaf;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_OldBread;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseLoaf()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_OldBread);
	};

INSTANCE ITFO_REVIVED_BREAD_02 (C_Item)
{	
	name 				=	"Bad bread";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_BadFood;

	visual 				=	"REV_ITFO_BREAD_02.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseLoafOld;

	description			= name;
	TEXT[1]				= NAME_Penalty_HP;				COUNT[1]	= REV_HP_BadFood;
};

	FUNC VOID UseLoafOld()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	-REV_HP_BadFood);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_CHEESE_01 (C_Item)
{	
	name 				=	"Stinky cheese";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_StinkyCheese;

	visual 				=	"ItFo_Cheese_01.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseCheese;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_StinkyCheese;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseCheese()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_StinkyCheese);
	};

INSTANCE ITFO_REVIVED_CHEESE_02 (C_Item)
{	
	name 				=	"Old cheese";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_BadFood;

	visual 				=	"REV_ITFO_CHEESE_02.3ds";
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseCheeseOld;

	description			= name;
	TEXT[1]				= NAME_Penalty_HP;				COUNT[1]	= REV_HP_BadFood;
};

	FUNC VOID UseCheeseOld()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	-REV_HP_BadFood);
	};


//****************************************************************************
//			DRINKS
//****************************************************************************

INSTANCE ITFO_REVIVED_WATER (C_Item)
{
	name 			=	"Stale water";

	mainflag 		=	ITEM_KAT_FOOD;
	flags 			=	ITEM_MULTI;

	value 			=	REV_Value_StaleWater;	

	visual 			=	"ItFo_Potion_Water_01.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseWaterPotion;
	scemeName		=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_StaleWater;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	func VOID UseWaterPotion()
	{	
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_StaleWater);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BEER (C_Item)
{
	name 				=	"Old beer";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	REV_Value_OldBeer;	

	visual 				=	"ItFo_Beer_01.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseBeer;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_OldBeer;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseBeer()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_OldBeer);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_WINE (C_Item)
{	
	name 				=	"Old wine";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_OldWine;

	visual	 			=	"ItFo_Wine_01.3ds";
	material 			=	MAT_LEATHER;
	on_state[0]			=	UseOldWine;
	scemeName			=	"POTION";

	description			= name;
	//TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_HP_OldWine;
	TEXT[4]				= PRINT_Bloodfly;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseOldWine()
	{
			if (OldWine_Bonus < 1)  
			{
				self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];		 
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
				//Print (PRINT_FullyHealed);
				
				B_RaiseAttribute (self,	ATR_MANA_MAX, REV_HP_OldWine);
				B_Say_Overlay (hero, hero , "$COUGH");
				
				OldWine_Bonus = 1;
			};

			if (OldWine_Bonus >= 1)  
			{
					var int random; random = Hlp_Random(3);
					if (random < 1) 
					{
						B_Say_Overlay (self, self, "$AARGH_1");	
					}
					else if (random == 1) 
					{
						B_Say_Overlay (self, self, "$AARGH_2");	
					}
					else 
					{
						B_Say_Overlay (self, self, "$AARGH_3");	
					};
					
				Npc_ChangeAttribute	(self, ATR_HITPOINTS, -REV_HP_OldWine);
				Npc_ChangeAttribute	(self, ATR_HITPOINTS_MAX, -REV_HP_OldWine);
				
				OldWine_Bonus = OldWine_Bonus + 1;
			};
	};




//****************************************************************************
//			BOOZE
//****************************************************************************

INSTANCE ITFO_REVIVED_TURNIPBOOZE (C_Item)
{	
	name 				=	"Turnip Booze";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_TurnipBooze;

	visual 				=	"REV_ITFO_TURNIPBOOZE.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseTurnipBooze;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_TurnipBooze;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseTurnipBooze()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_TurnipBooze);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_VINOBOOZE (C_Item)
{	
	name 				=	"Vino's Special";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_VinoBooze;

	visual 				=	"REV_ITFO_VINOBOOZE.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseVinoBooze;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Percentage_Mana;			COUNT[1]	= REV_HP_VinoBooze;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseVinoBooze()
	{
		REV_ChangeStatPercent (ATR_MANA,	REV_HP_VinoBooze);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_MAGEWINE (C_Item)
{	
	name 				=	"Monastery Wine";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_MageWine;

	visual 				=	"REV_ITFO_MAGEWINE.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseMageWine;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_PercentageHPMP;			COUNT[1]	= REV_HP_MageWine;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseMageWine()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_MageWine);
		REV_ChangeStatPercent (ATR_MANA,		REV_HP_MageWine);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_MONSTERDRINK (C_Item)
{	
	name 				=	"Monster Drink";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_MonsterDrink;

	visual 				=	"REV_ITFO_MONSTERDRINK.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseMonsterDrink;
	scemeName			=	"POTIONFAST";

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_MonsterDrink;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseMonsterDrink()
	{
		B_Say_Overlay (hero, hero , "$COUGH");
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_MonsterDrink);
		Mdl_ApplyOverlayMDSTimed	(self, "HUMANS_SPRINT.MDS", REV_Time_MonsterDrink);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_RICEBOOZE (C_Item)
{	
	name 				=	"Rice Schnapps";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_RiceSchnapps;

	visual 				=	"ItFo_Booze_01.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseRiceBooze;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_RiceSchnapps;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseRiceBooze()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_RiceSchnapps);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_MEAD (C_Item)
{	
	name 				=	"Mead";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_Mead;

	visual 				=	"REV_ITFO_MEAD.3ds";
	material 			=	MAT_GLAS;
	on_state[0]			=	UseMead;
	scemeName			=	"POTION";

	description			= name;
	TEXT[1]				= NAME_Percentage_Mana;			COUNT[1]	= REV_HP_Mead;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseMead()
	{
		REV_ChangeStatPercent (ATR_MANA,	REV_HP_Mead);
	};






//****************************************************************************
//			COOKING
//****************************************************************************

INSTANCE ITFO_REVIVED_MEATSTEW (C_Item)
{	
	name 				=	"Full Meat Stew";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_MeatStew;

	visual 				=	"REV_ITFO_MEATSTEW.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseSuperMeatSoup;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_MeatStew;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseSuperMeatSoup()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_MeatStew);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_FISHSOUP (C_Item)
{	
	name 				=	"Full Fish Stew";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_FishSoup;

	visual 				=	"REV_ITFO_FISHSOUP.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseSuperFishSoup;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_FishSoup;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseSuperFishSoup()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_FishSoup);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_FISHXPSOUP (C_Item)
{	
	name 				=	"Edda's Fish Soup";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_FishSoup;

	visual 				=	"ItFo_FishSoup.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseEddaFishSoup;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_FishSoup;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseEddaFishSoup()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_HP_FishSoup);
		Snd_Play	("LevelUp");
		B_RaiseAttribute (self, ATR_DEXTERITY, 1);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_BUGSOUP (C_Item)
{	
	name 				=	"Meatbug Ragout";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_MeatbugRagout;

	visual 				=	"ItFo_Meatbugragout_01.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseMeatbugragout;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_MeatbugRagout;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseMeatbugragout()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_MeatbugRagout);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_PLANTSOUP (C_Item)
{	
	name 				=	"Root Soup";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_RootSoup;

	visual 				=	"ItFo_Soup_01.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseSoup;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_RootSoup;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseSoup()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_RootSoup);
	};

/******************************************************************************************/

INSTANCE ITFO_REVIVED_CRAWLERSOUP (C_Item)                                          
{	                                                                
	name 				=	"Minecrawler Soup";
	                                                            
	mainflag 			=	ITEM_KAT_FOOD;  
	flags 				=	ITEM_MULTI;
                                                                    
	value 				=	REV_Value_CrawlerSoup;              
                                                                    
	visual 				=	"ItFo_Crawlersoup_01.3ds";  
	material 			=	MAT_LEATHER;
	on_state[0]			=	UseCrawlersoup;   
	scemeName			=	"RICE";

	description			= name;
	TEXT[1]				= NAME_BonusHPMP;				COUNT[1]	= REV_HP_CrawlerSoup;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;                                                    
};

	FUNC VOID UseCrawlersoup()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_CrawlerSoup);
		REV_ChangeStatPercent (ATR_MANA,		REV_HP_CrawlerSoup);
	};


/******************************************************************************************/

INSTANCE ITFO_REVIVED_RICE (C_Item)
{	
	name 				=	"Rice bowl";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Rice;

	visual 				=	"ItFo_Rice_01.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseRice;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_Rice;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseRice()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_Rice);
	};


/******************************************************************************************/
/******************************************************************************************/

INSTANCE ITFO_REVIVED_MARMALADE (C_Item)
{	
	name 				=	"Berry marmalade";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	REV_Value_Marmalade;
	
	visual 				=	"REV_ITFO_MARMALADE.3DS";
	material 			=	MAT_STONE;
	scemeName			=	"FOODHUGE";
	on_state[0]			=	UseMarmalade;

	description			= 	name;
	TEXT[1]				= 	NAME_Percentage_HP;			COUNT[1]	= REV_HP_Marmalade;
	TEXT[5]				= 	NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseMarmalade()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_Marmalade);
	};


/******************************************************************************************/

INSTANCE ITFO_REVIVED_FRUITSALAD (C_Item)
{	
	name 				=	"Fruit salad";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	REV_Value_FruitSalad;
	
	visual 				=	"REV_ITFO_FRUITSALAD.3DS";
	material 			=	MAT_STONE;
	scemeName			=	"RICE";
	on_state[0]			=	UseFruitSalad;

	description			= 	name;
	TEXT[1]				= 	NAME_Percentage_HP;			COUNT[1]	= REV_HP_FruitSalad;
	TEXT[5]				= 	NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseFruitSalad()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_FruitSalad);
	};


/******************************************************************************************/

INSTANCE ITFO_REVIVED_OLDSTEW (C_Item)
{	
	name 				=	"Convict's Stew";
	
	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	REV_Value_OldStew;

	visual 				=	"REV_ITFO_OLDSTEW.3ds"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"RICE";
	on_state[0]			=	UseOldstew;

	description			= name;
	TEXT[1]				= NAME_Percentage_HP;			COUNT[1]	= REV_HP_OldStew;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

	FUNC VOID UseOldstew()
	{
		REV_ChangeStatPercent (ATR_HITPOINTS,	REV_HP_OldStew);
	};