//****************************************************************************
//			TELEPORT
//****************************************************************************

INSTANCE ITRU_REVIVED_TELEPORT_OC (C_Item) 
{
	name 				=	NAME_SPL_TeleportOC;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_OC.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOC;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOC;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_NC (C_Item) 
{
	name 				=	NAME_SPL_TeleportNC;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_NC.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportNC;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportNC;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_PSI (C_Item) 
{
	name 				=	NAME_SPL_TeleportPsi;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_PSI.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportPSI;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportPsi;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ITRU_REVIVED_TELEPORT_DT (C_Item) 
{
	name 				=	NAME_SPL_TeleportOWDemonTower;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ITRU_REV_TELEPORT_DT.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOWDemonTower;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOWDemonTower;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

//****************************************************************************
//			PSI SPELLS
//****************************************************************************

const int REV_Value_PSI_RUNE = 700;

INSTANCE ITRU_REVIVED_PYROKINESIS (C_Item)
{
	name 				= 	NAME_SPL_Pyrokinesis;

	mainflag 			= 	ITEM_KAT_RUNE;
	flags 				= 	0;

	value 				= 	REV_Value_PSI_RUNE;

	visual				= 	"ItRu_Pyrokinesis.3ds";
	material			= 	MAT_STONE;

	spell				= 	SPL_Pyrokinesis;

	wear				= 	WEAR_EFFECT;
	effect				= 	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_Pyrokinesis;

	TEXT	[1]			= 	NAME_DamagePerSec;
	COUNT	[1]			= 	SPL_PYRO_DAMAGE_PER_SEC;
	TEXT	[4]			= 	NAME_Spell_Invest;
	TEXT	[5]			= 	NAME_Value;
	COUNT	[5]			= 	value;
};
