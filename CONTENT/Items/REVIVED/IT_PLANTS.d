const int	REV_Value_Berry			=	5;		const int	REV_Bonus_Berry			=	1;
const int	REV_Value_Grapes		=	 6;		const int	REV_Bonus_Grapes		=	5;
const int	REV_Value_Riceplant		=	5;		const int	REV_Bonus_Riceplant		=	1;


//****************************************************************************
//			BERRIES
//****************************************************************************

INSTANCE ITPL_REVIVED_BERRIES (C_Item)
{	
	name 				=	"Rote Beeren";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Berry;

	visual 				=	"REV_ITPL_BERRY_RED.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseBerrys;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Berry;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Berry;
};

func void UseBerrys ()
{
	Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_Bonus_Berry);
};

/******************************************************************************************/

INSTANCE ITPL_REVIVED_GRAPES (C_Item)
{	
	name 				=	"Lila Trauben";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Grapes;

	visual 				=	"REV_ITPL_WINEBERRY_PURPLE.3ds";
	on_state[0]         = 	UseWineberrys;  
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Grapes;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

func void UseWineberrys () 
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	REV_Bonus_Grapes);
	};

//****************************************************************************
//			RICE
//****************************************************************************

INSTANCE ITPL_REVIVED_RICEPLANT (C_Item)
{	
	name 				=	"Reispflanze";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	REV_Value_Riceplant;

	visual 				=	"ItPl_Weed.3ds";
	material 			=	MAT_LEATHER;
	on_state [0]		=   UseRiceplant;
	scemeName			=	"FOOD";

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= REV_Bonus_Riceplant;
	TEXT[5]				= NAME_Value;					COUNT[5]	= REV_Value_Riceplant;
};

func void UseRiceplant ()
{
	Npc_ChangeAttribute	(self,	ATR_Hitpoints,	REV_Bonus_Riceplant);
};
