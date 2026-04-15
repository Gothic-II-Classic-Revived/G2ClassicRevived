const int	REV_Change_ITRI_Prot_Arrow				=	10;
const int	REV_Change_ITRI_Prot_Melee_01			=	8;
const int	REV_Change_ITRI_Prot_Melee_02			=	12;
const int	REV_Change_ITRI_Prot_Weapon_01			=	8;
const int	REV_Change_ITRI_Prot_Weapon_02			=	10;
//******************************************************************//
const int	REV_Change_ITRI_Prot_Magic_01			=	8;
const int	REV_Change_ITRI_Prot_Magic_02			=	10;
const int	REV_Change_ITRI_Prot_MagicFire			=	15;
const int	REV_Change_ITRI_Prot_Total_01			=	10;
const int	REV_Change_ITRI_Prot_Total_02			=	15;
//******************************************************************//
//******************************************************************//
const int	REV_Change_ITRI_Boost_Health_01			=	10;
const int	REV_Change_ITRI_Boost_Health_02			=	15;
const int	REV_Change_ITRI_Boost_Mana_01			=	10;
const int	REV_Change_ITRI_Boost_Mana_02			=	15;
const int	REV_Change_ITRI_Boost_HealthMana_01		=	20;
//******************************************************************//
//******************************************************************//
const int	REV_Change_ITRI_Boost_STR_01			=	6;
const int	REV_Change_ITRI_Boost_STR_02			=	10;
const int	REV_Change_ITRI_Boost_DEX_01			=	6;
const int	REV_Change_ITRI_Boost_DEX_02			=	10;
const int	REV_Change_ITRI_Boost_STRDEX_01			=	8;
//******************************************************************//
//******************************************************************//
const int	REV_Change_ITRI_Boost_Melee_01			=	10;
//******************************************************************//
//******************************************************************//

PROTOTYPE REVIVED_RING_T1 (C_Item)
{
	name 				=	"Tier 1";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	50;

	visual 				=	"REV_ITRI_NORMAL_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER";

	INV_ZBIAS			=	INVCAM_ENTF_RING_STANDARD;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
PROTOTYPE REVIVED_RING_T2 (C_Item)
{
	name 				=	"Tier 2";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	100;

	visual 				=	"REV_ITRI_NORMAL_02.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
PROTOTYPE REVIVED_RING_T3 (C_Item)
{
	name 				=	"Tier 3";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	150;

	visual 				=	"REV_ITRI_NORMAL_03.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
PROTOTYPE REVIVED_RING_T4 (C_Item)
{
	name 				=	"Tier 4";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	200;

	visual 				=	"REV_ITRI_NORMAL_04.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};
PROTOTYPE REVIVED_RING_T5 (C_Item)
{
	name 				=	"Tier 5";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	300;

	visual 				=	"REV_ITRI_NORMAL_05.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};


//****************************************************************************
//			PROTECTION
//****************************************************************************

INSTANCE ITRI_REVIVED_PROT_ARROW_01 (REVIVED_RING_T1)
{
	name 				=	"Ring of Stone Skin";

	on_equip			=	Equip_REV_ITRI_PROT_ARROW;
	on_unequip			=	UnEquip_REV_ITRI_PROT_ARROW;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Arrow;
};

FUNC VOID Equip_REV_ITRI_PROT_ARROW()
{
	self.protection [PROT_POINT] 		+=  REV_Change_ITRI_Prot_Arrow;
};

FUNC VOID UnEquip_REV_ITRI_PROT_ARROW()
{
	self.protection [PROT_POINT] 		-=  REV_Change_ITRI_Prot_Arrow;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MELEE_01 (REVIVED_RING_T2)
{
	name 				=	"Ring of Iron Skin";

	on_equip			=	Equip_REV_ITRI_PROT_MELEE_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MELEE_01;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITRI_Prot_Melee_01;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITRI_Prot_Melee_01;
};

FUNC VOID Equip_REV_ITRI_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_ITRI_Prot_Melee_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_ITRI_Prot_Melee_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_ITRI_Prot_Melee_01;
	self.protection [PROT_BLUNT]		-=  REV_Change_ITRI_Prot_Melee_01;
};

INSTANCE ITRI_REVIVED_PROT_MELEE_02 (REVIVED_RING_T3)
{
	name 				=	"Ring of Ore Skin";

	on_equip			=	Equip_REV_ITRI_PROT_MELEE_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MELEE_02;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITRI_Prot_Melee_02;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITRI_Prot_Melee_02;
};

FUNC VOID Equip_REV_ITRI_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_ITRI_Prot_Melee_02;
	self.protection [PROT_BLUNT]		+=  REV_Change_ITRI_Prot_Melee_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_ITRI_Prot_Melee_02;
	self.protection [PROT_BLUNT]		-=  REV_Change_ITRI_Prot_Melee_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_WEAPON_01 (REVIVED_RING_T4)
{
	name 				=	"Ring of Steadfastness";

	on_equip			=	Equip_REV_ITRI_PROT_WEAPON_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_WEAPON_01;	

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_ITRI_Prot_Weapon_01;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_ITRI_Prot_Weapon_01;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_ITRI_Prot_Weapon_01;
};

FUNC VOID Equip_REV_ITRI_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_POINT]		+=  REV_Change_ITRI_Prot_Weapon_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		-=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_POINT]		-=  REV_Change_ITRI_Prot_Weapon_01;
};

INSTANCE ITRI_REVIVED_PROT_WEAPON_02 (REVIVED_RING_T5)
{
	name 				=	"Ring of Impeachability";

	on_equip			=	Equip_REV_ITRI_PROT_WEAPON_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_WEAPON_02;	

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_ITRI_Prot_Weapon_02;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_ITRI_Prot_Weapon_02;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_ITRI_Prot_Weapon_02;
};

FUNC VOID Equip_REV_ITRI_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_BLUNT]		+=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_POINT]		+=  REV_Change_ITRI_Prot_Weapon_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_BLUNT]		-=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_POINT]		-=  REV_Change_ITRI_Prot_Weapon_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_01 (REVIVED_RING_T1)
{
	name 				=	"Ring of Spiritual Protection";
	visual 				=	"REV_ITRI_PROTECTION_01.3DS";

	on_equip			=	Equip_REV_ITRI_PROT_MAGIC_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGIC_01;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITRI_Prot_Magic_01;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_Magic_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_Magic_01;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_02 (REVIVED_RING_T2)
{
	name 				=	"Protection of Magic";
	visual 				=	"REV_ITRI_PROTECTION_02.3DS";

	on_equip			=	Equip_REV_ITRI_PROT_MAGIC_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGIC_02;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITRI_Prot_Magic_02;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_Magic_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_Magic_02;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE (REVIVED_RING_T3)
{
	name 				=	"Ring of Purification";
	visual 				=	"REV_ITRI_PROTECTION_03.3DS";

	on_equip			=	Equip_REV_ITRI_PROT_MAGICFIRE;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGICFIRE;	

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITRI_Prot_MagicFire;
	TEXT[3]				= 	NAME_Prot_Magic;				COUNT[3]	= REV_Change_ITRI_Prot_MagicFire;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGICFIRE()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITRI_Prot_MagicFire;
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_MagicFire;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGICFIRE()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITRI_Prot_MagicFire;
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_MagicFire;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_TOTAL_01 (REVIVED_RING_T4)
{
	name 				=	"Ring of Lesser Invincibility";
	visual 				=	"REV_ITRI_PROTECTION_04.3DS";

	on_equip			=	Equip_REV_ITRI_PROT_TOTAL_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_TOTAL_01;	

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_ITRI_Prot_Total_01;
};

FUNC VOID Equip_REV_ITRI_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		+=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_BLUNT]		+=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_POINT]		+=   REV_Change_ITRI_Prot_Total_01;
 	self.protection [PROT_FIRE]     	+=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_MAGIC]    	+=   REV_Change_ITRI_Prot_Total_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		-=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_BLUNT]		-=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_POINT]		-=   REV_Change_ITRI_Prot_Total_01;
 	self.protection [PROT_FIRE]     	-=   REV_Change_ITRI_Prot_Total_01;
	self.protection [PROT_MAGIC]    	-=   REV_Change_ITRI_Prot_Total_01;
};

INSTANCE ITRI_REVIVED_PROT_TOTAL_02 (REVIVED_RING_T5)
{
	name 				=	"Ring of Greater Invincibility";
	visual 				=	"REV_ITRI_PROTECTION_05.3DS";

	on_equip			=	Equip_REV_ITRI_PROT_TOTAL_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_TOTAL_02;	

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_ITRI_Prot_Total_02;
};

FUNC VOID Equip_REV_ITRI_PROT_TOTAL_02()
{
	self.protection [PROT_EDGE] 		+=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_BLUNT]		+=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_POINT]		+=   REV_Change_ITRI_Prot_Total_02;
 	self.protection [PROT_FIRE]     	+=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_MAGIC]    	+=   REV_Change_ITRI_Prot_Total_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_TOTAL_02()
{
	self.protection [PROT_EDGE] 		-=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_BLUNT]		-=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_POINT]		-=   REV_Change_ITRI_Prot_Total_02;
 	self.protection [PROT_FIRE]     	-=   REV_Change_ITRI_Prot_Total_02;
	self.protection [PROT_MAGIC]    	-=   REV_Change_ITRI_Prot_Total_02;
};

//****************************************************************************
//			VITALITY
//****************************************************************************

INSTANCE ITRI_REVIVED_HP_01 (REVIVED_RING_T3)
{
	name 				=	"Ring of Life";
	visual 				=	"REV_ITRI_VITALITY_03.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_HEALTH_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HEALTH_01;	

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_Health_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_HEALTH_01()
{
	self.attribute[ATR_HITPOINTS_MAX] += REV_Change_ITRI_Boost_Health_01; 
	self.attribute[ATR_HITPOINTS] += REV_Change_ITRI_Boost_Health_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HEALTH_01()
{
	self.attribute[ATR_HITPOINTS_MAX] -= REV_Change_ITRI_Boost_Health_01;
	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_Health_01 + 1)
	{
		self.attribute[ATR_HITPOINTS] -= REV_Change_ITRI_Boost_Health_01;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};
};

INSTANCE ITRI_REVIVED_HP_02 (REVIVED_RING_T4)
{
	name 				=	"Greater Ring of Life";
	visual 				=	"REV_ITRI_VITALITY_04.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_HEALTH_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HEALTH_02;	

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_Health_02;
};

FUNC VOID Equip_REV_ITRI_BOOST_HEALTH_02()
{
	self.attribute[ATR_HITPOINTS_MAX] += REV_Change_ITRI_Boost_Health_02; 
	self.attribute[ATR_HITPOINTS] += REV_Change_ITRI_Boost_Health_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HEALTH_02()
{
	self.attribute[ATR_HITPOINTS_MAX] -= REV_Change_ITRI_Boost_Health_02;
	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_Health_02 + 1)
	{
		self.attribute[ATR_HITPOINTS] -= REV_Change_ITRI_Boost_Health_02;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_MP_01 (REVIVED_RING_T3)
{
	name 				=	"Ring of Magic";
	visual 				=	"REV_ITRI_VITALITY_03.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_MANA_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_MANA_01;	

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_Mana;				COUNT[2]	= REV_Change_ITRI_Boost_Mana_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_MANA_01()
{
	self.attribute[ATR_MANA_MAX] += REV_Change_ITRI_Boost_Mana_01; 
	self.attribute[ATR_MANA] += REV_Change_ITRI_Boost_Mana_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_MANA_01()
{
	self.attribute[ATR_MANA_MAX] -= REV_Change_ITRI_Boost_Mana_01;
	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_Mana_01 + 1)
	{
		self.attribute[ATR_MANA] -= REV_Change_ITRI_Boost_Mana_01;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};

INSTANCE ITRI_REVIVED_MP_02 (REVIVED_RING_T4)
{
	name 				=	"Greater Ring of Magic";
	visual 				=	"REV_ITRI_VITALITY_04.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_MANA_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_MANA_02;	

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_Mana;				COUNT[2]	= REV_Change_ITRI_Boost_Mana_02;
};

FUNC VOID Equip_REV_ITRI_BOOST_MANA_02()
{
	self.attribute[ATR_MANA_MAX] += REV_Change_ITRI_Boost_Mana_02; 
	self.attribute[ATR_MANA] += REV_Change_ITRI_Boost_Mana_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_MANA_02()
{
	self.attribute[ATR_MANA_MAX] -= REV_Change_ITRI_Boost_Mana_02;
	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_Mana_02 + 1)
	{
		self.attribute[ATR_MANA] -= REV_Change_ITRI_Boost_Mana_02;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_HP_MP_01 (REVIVED_RING_T5)
{
	name 				=	"Ring of Enlightenment";
	visual 				=	"REV_ITRI_VITALITY_05.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_HPMP_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HPMP_01;	

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_HealthMana_01;
	TEXT[3]				= 	NAME_Bonus_Mana;				COUNT[3]	= REV_Change_ITRI_Boost_HealthMana_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_HPMP_01()
{
	self.attribute[ATR_HITPOINTS_MAX] += REV_Change_ITRI_Boost_HealthMana_01; 
	self.attribute[ATR_HITPOINTS] += REV_Change_ITRI_Boost_HealthMana_01;
	
	self.attribute[ATR_MANA_MAX] += REV_Change_ITRI_Boost_HealthMana_01; 
	self.attribute[ATR_MANA] += REV_Change_ITRI_Boost_HealthMana_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HPMP_01()
{
	self.attribute[ATR_HITPOINTS_MAX] -= REV_Change_ITRI_Boost_HealthMana_01;
	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_HealthMana_01 + 1)
	{
		self.attribute[ATR_HITPOINTS] -= REV_Change_ITRI_Boost_HealthMana_01;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};

	self.attribute[ATR_MANA_MAX] -= REV_Change_ITRI_Boost_HealthMana_01;
	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_HealthMana_01 + 1)
	{
		self.attribute[ATR_MANA] -= REV_Change_ITRI_Boost_HealthMana_01;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};


//****************************************************************************
//			BOOST
//****************************************************************************

INSTANCE ITRI_REVIVED_DEX_01 (REVIVED_RING_T2)
{
	name 				=	"Ring of Dexterity";
	visual 				=	"REV_ITRI_BOOST_02.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_DEX_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_DEX_01;

	description			=	name;
	TEXT[2]				= 	NAME_Bonus_Dex;					COUNT[2]	= REV_Change_ITRI_Boost_DEX_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_DEX_01()
{
	self.attribute[ATR_DEXTERITY] += REV_Change_ITRI_Boost_DEX_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_DEX_01()
{
	if self.attribute [ATR_DEXTERITY] >= (REV_Change_ITRI_Boost_DEX_01 + 1)
	{
		self.attribute[ATR_DEXTERITY] -= REV_Change_ITRI_Boost_DEX_01;
	}
	else
	{
		self.attribute[ATR_DEXTERITY] = 1;
	};
};

INSTANCE ITRI_REVIVED_DEX_02 (REVIVED_RING_T3)
{
	name 				=	"Ring of Agility";
	visual 				=	"REV_ITRI_BOOST_03.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_DEX_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_DEX_02;

	description			=	name;
	TEXT[2]				= 	NAME_Bonus_Dex;					COUNT[2]	= REV_Change_ITRI_Boost_DEX_02;
};

FUNC VOID Equip_REV_ITRI_BOOST_DEX_02()
{
	self.attribute[ATR_DEXTERITY] += REV_Change_ITRI_Boost_DEX_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_DEX_02()
{
	if self.attribute [ATR_DEXTERITY] >= (REV_Change_ITRI_Boost_DEX_02 + 1)
	{
		self.attribute[ATR_DEXTERITY] -= REV_Change_ITRI_Boost_DEX_02;
	}
	else
	{
		self.attribute[ATR_DEXTERITY] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_01 (REVIVED_RING_T2)
{
	name 				=	"Ring of Strength";
	visual 				=	"REV_ITRI_BOOST_02.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_STR_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_STR_01;

	description			=	name;
	TEXT[2]				= 	NAME_Bonus_Str;					COUNT[2]	= REV_Change_ITRI_Boost_STR_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_STR_01()
{
	self.attribute[ATR_STRENGTH] += REV_Change_ITRI_Boost_STR_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_STR_01()
{
	if self.attribute [ATR_STRENGTH] >= (REV_Change_ITRI_Boost_STR_01 + 1)
	{
		self.attribute[ATR_STRENGTH] -= REV_Change_ITRI_Boost_STR_01;
	}
	else
	{
		self.attribute[ATR_STRENGTH] = 1;
	};
};

INSTANCE ITRI_REVIVED_STR_02 (REVIVED_RING_T3)
{
	name 				=	"Ring of Power";
	visual 				=	"REV_ITRI_BOOST_03.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_STR_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_STR_02;

	description			=	name;
	TEXT[2]				= 	NAME_Bonus_Str;					COUNT[2]	= REV_Change_ITRI_Boost_STR_02;
};

FUNC VOID Equip_REV_ITRI_BOOST_STR_02()
{
	self.attribute[ATR_STRENGTH] += REV_Change_ITRI_Boost_STR_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_STR_02()
{
	if self.attribute [ATR_STRENGTH] >= (REV_Change_ITRI_Boost_STR_02 + 1)
	{
		self.attribute[ATR_STRENGTH] -= REV_Change_ITRI_Boost_STR_02;
	}
	else
	{
		self.attribute[ATR_STRENGTH] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_DEX_01 (REVIVED_RING_T4)
{
	name 				=	"Fighter's Ring";
	visual 				=	"REV_ITRI_BOOST_04.3DS";

	on_equip			=	Equip_REV_ITRI_BOOST_STRDEX_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_STRDEX_01;

	description			=	name;
	TEXT[2]				= 	NAME_Bonus_Str;					COUNT[2]	= REV_Change_ITRI_Boost_STRDEX_01;
	TEXT[3]				= 	NAME_Bonus_Dex;					COUNT[3]	= REV_Change_ITRI_Boost_STRDEX_01;
};

FUNC VOID Equip_REV_ITRI_BOOST_STRDEX_01()
{
	self.attribute[ATR_STRENGTH] += REV_Change_ITRI_Boost_STRDEX_01;
	self.attribute[ATR_DEXTERITY] += REV_Change_ITRI_Boost_STRDEX_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_STRDEX_01()
{
	if self.attribute [ATR_DEXTERITY] >= (REV_Change_ITRI_Boost_STRDEX_01 + 1)
	{
		self.attribute[ATR_DEXTERITY] -= REV_Change_ITRI_Boost_STRDEX_01;
	}
	else
	{
		self.attribute[ATR_DEXTERITY] = 1;
	};

	if self.attribute [ATR_STRENGTH] >= (REV_Change_ITRI_Boost_STRDEX_01 + 1)
	{
		self.attribute[ATR_STRENGTH] -= REV_Change_ITRI_Boost_STRDEX_01;
	}
	else
	{
		self.attribute[ATR_STRENGTH] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_MELEE_01 (REVIVED_RING_T4)
{	
	name 				=	"Warrior's Ring";
	visual 				=	"REV_ITRI_SKILL_04.3DS";

	on_equip			=	Equip_REV_ITRI_SKILL_MELEE_01;
	on_unequip			=	UnEquip_REV_ITRI_SKILL_MELEE_01;

	description			=	name;
	TEXT[2]				= 	NAME_RaiseWeaponSkill;					COUNT[2]	= REV_Change_ITRI_Boost_Melee_01;
};

FUNC VOID Equip_REV_ITRI_SKILL_MELEE_01()
{
	self.HitChance[NPC_TALENT_1H] += REV_Change_ITRI_Boost_Melee_01;
	self.HitChance[NPC_TALENT_2H] += REV_Change_ITRI_Boost_Melee_01;
};

FUNC VOID UnEquip_REV_ITRI_SKILL_MELEE_01()
{
	if self.HitChance [NPC_TALENT_1H] >= (REV_Change_ITRI_Boost_Melee_01 + 1)
	{
		self.HitChance[NPC_TALENT_1H] -= REV_Change_ITRI_Boost_Melee_01;
	}
	else
	{
		self.HitChance[NPC_TALENT_1H] = 1;
	};

	if self.HitChance [NPC_TALENT_2H] >= (REV_Change_ITRI_Boost_Melee_01 + 1)
	{
		self.HitChance[NPC_TALENT_2H] -= REV_Change_ITRI_Boost_Melee_01;
	}
	else
	{
		self.HitChance[NPC_TALENT_2H] = 1;
	};
};