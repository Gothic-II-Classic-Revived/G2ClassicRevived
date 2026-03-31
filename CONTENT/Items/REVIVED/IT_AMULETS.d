const int	REV_Value_ITAM_Prot_Arrow_01			=	30;
const int	REV_Change_ITAM_Prot_Arrow_01			=	8;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_Melee_01			=	30;
const int	REV_Change_ITAM_Prot_Melee_01			=	8;
//******************************************************************//
const int	REV_Value_ITAM_Prot_Melee_02			=	50;
const int	REV_Change_ITAM_Prot_Melee_02			=	12;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_Weapon_01			=	50;
const int	REV_Change_ITAM_Prot_Weapon_01			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_Magic_01			=	30;
const int	REV_Change_ITAM_Prot_Magic_01			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_Fire_01				=	30;
const int	REV_Change_ITAM_Prot_Fire_01			=	10;
//******************************************************************//
const int	REV_Value_ITAM_Prot_Fire_02				=	50;
const int	REV_Change_ITAM_Prot_Fire_02			=	20;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_MagicFire_01		=	50;
const int	REV_Change_ITAM_Prot_MagicFire_01		=	12;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITAM_Prot_Total_01			=	200;
const int	REV_Change_ITAM_Prot_Total_01			=	15;
//******************************************************************//
//******************************************************************//
//******************************************************************//


//****************************************************************************
//			PROTECTION
//****************************************************************************

INSTANCE ITAM_REVIVED_PROT_ARROW_01(C_ITEM)
{
	name 				=	"Amulett der Eichenhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Arrow_01;

	on_equip			=	Equip_REV_ITAM_PROT_ARROW_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_ARROW_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITAM_Prot_Arrow_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		+=  REV_Change_ITAM_Prot_Arrow_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		-=  REV_Change_ITAM_Prot_Arrow_01;
};


INSTANCE ITAM_REVIVED_PROT_MELEE_01(C_Item)
{
	name 				=	"Harnischamulett";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Melee_01;

	on_equip			=	Equip_REV_ITAM_PROT_MELEE_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_MELEE_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITAM_Prot_Melee_01;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITAM_Prot_Melee_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] += REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_BLUNT] += REV_Change_ITAM_Prot_Melee_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_MELEE_01()
{
	self.protection [PROT_EDGE] -= REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_BLUNT] -= REV_Change_ITAM_Prot_Melee_01;
};


INSTANCE ITAM_REVIVED_PROT_MELEE_02(C_Item)
{
	name 				=	"Schutzamulett";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Melee_02;

	on_equip			=	Equip_REV_ITAM_PROT_MELEE_02;
	on_unequip			=	UnEquip_REV_ITAM_PROT_MELEE_02;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[1]				=	"der Name NEK ist auf der Rückseite eingraviert";
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITAM_Prot_Melee_02;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITAM_Prot_Melee_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] += REV_Change_ITAM_Prot_Melee_02;
	self.protection [PROT_BLUNT] += REV_Change_ITAM_Prot_Melee_02;
};

FUNC VOID UnEquip_REV_ITAM_PROT_MELEE_02()
{
	self.protection [PROT_EDGE] -= REV_Change_ITAM_Prot_Melee_02;
	self.protection [PROT_BLUNT] -= REV_Change_ITAM_Prot_Melee_02;
};


INSTANCE ITAM_REVIVED_PROT_WEAPON_01(C_ITEM)
{
	name 				=	"Amulett der Steinhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Weapon_01;

	on_equip			=	Equip_REV_ITAM_PROT_WEAPON_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_WEAPON_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITAM_Prot_Weapon_01;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITAM_Prot_Weapon_01;
	TEXT[4]				= 	NAME_Prot_Point;				COUNT[4]	= REV_Change_ITAM_Prot_Weapon_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] += REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_BLUNT] += REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_POINT] += REV_Change_ITAM_Prot_Melee_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_WEAPON_01()
{
	self.protection [PROT_EDGE] -= REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_BLUNT] -= REV_Change_ITAM_Prot_Melee_01;
	self.protection [PROT_POINT] -= REV_Change_ITAM_Prot_Melee_01;
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_PROT_MAGIC_01(C_ITEM)
{
	name 				=	"Amulett der Geisteskraft";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Magic_01;

	on_equip			=	Equip_REV_ITAM_PROT_MAGIC_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_MAGIC_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITAM_Prot_Magic_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITAM_Prot_Magic_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITAM_Prot_Magic_01;
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_PROT_FIRE_01(C_Item)
{
	name 				=	"Amulett der Flammen";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Fire_01;

	on_equip			=	Equip_REV_ITAM_PROT_FIRE_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_FIRE_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITAM_Prot_Fire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITAM_Prot_Fire_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITAM_Prot_Fire_01;
};


INSTANCE ITAM_REVIVED_PROT_FIRE_02(C_Item)
{
	name 				=	"orkischer Talisman";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Fire_02;

	on_equip			=	Equip_REV_ITAM_PROT_FIRE_02;
	on_unequip			=	UnEquip_REV_ITAM_PROT_FIRE_02;	

	visual 				=	"ItMi_Amulet_UluMulu_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITAM_Prot_Fire_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITAM_Prot_Fire_02;
};

FUNC VOID UnEquip_REV_ITAM_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITAM_Prot_Fire_02;
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_PROT_MAGIC_FIRE(C_ITEM)
{
	name 				=	"Amulett der Läuterung";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_MagicFire_01;

	on_equip			=	Equip_REV_ITAM_PROT_MAGIC_FIRE_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_MAGIC_FIRE_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITAM_Prot_MagicFire_01;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITAM_Prot_MagicFire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_MAGIC_FIRE_01()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITAM_Prot_MagicFire_01;
	self.protection [PROT_FIRE] 		+=  REV_Change_ITAM_Prot_MagicFire_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_MAGIC_FIRE_01()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITAM_Prot_MagicFire_01;
	self.protection [PROT_FIRE] 		-=  REV_Change_ITAM_Prot_MagicFire_01;
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_PROT_TOTAL_01(C_ITEM)
{
	name 				=	"Amulett der Erzhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET;
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITAM_Prot_Total_01;

	on_equip			=	Equip_REV_ITAM_PROT_TOTAL_01;
	on_unequip			=	UnEquip_REV_ITAM_PROT_TOTAL_01;	

	visual 				=	"ITAM_AMULET_01.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 
	visual_skin 		=	0;

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_ITAM_Prot_Total_01;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_ITAM_Prot_Total_01;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITAM_Prot_Total_01;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITAM_Prot_Total_01;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_ITAM_Prot_Total_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
	
	INV_ZBIAS			= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ			= INVCAM_Z_RING_STANDARD;
	INV_ROTX			= INVCAM_X_RING_STANDARD;
};

FUNC VOID Equip_REV_ITAM_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		+=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_BLUNT]		+=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_POINT]		+=   REV_Change_ITAM_Prot_Total_01;
 	self.protection [PROT_FIRE]     	+=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_MAGIC]    	+=   REV_Change_ITAM_Prot_Total_01;
};

FUNC VOID UnEquip_REV_ITAM_PROT_TOTAL_01()
{
	self.protection [PROT_EDGE] 		-=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_BLUNT]		-=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_POINT]		-=   REV_Change_ITAM_Prot_Total_01;
 	self.protection [PROT_FIRE]     	-=   REV_Change_ITAM_Prot_Total_01;
	self.protection [PROT_MAGIC]    	-=   REV_Change_ITAM_Prot_Total_01;
};

//****************************************************************************
//			BOOST
//****************************************************************************

INSTANCE ITAM_REVIVED_HP_01(C_Item)
{
	name 			=	"Amulett der Lebenskraft";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	720;

	visual 			=	"ITAM_AMULET_02.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Lebensamulett;
	on_unequip		=	UnEquip_REV_Lebensamulett;

	description		= name;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 30;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Lebensamulett()
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 30;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 30;
		
	};


	FUNC VOID UnEquip_REV_Lebensamulett()
	{
		self.attribute [ATR_HITPOINTS_MAX] = self.attribute [ATR_HITPOINTS_MAX] -30;
		if (self.attribute[ATR_HITPOINTS] > 31)
		{
		self.attribute [ATR_HITPOINTS] = self.attribute [ATR_HITPOINTS] -30;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;
		};
	};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_MP_01(C_Item)
{
	name 			=	"Amulett der Magie";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	400;

	visual 			=	"ITAM_AMULET_02.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Amulett_der_Magie;
	on_unequip		=	UnEquip_REV_Amulett_der_Magie;

	description		= name;
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Amulett_der_Magie()
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 10;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 10;
	};

	FUNC VOID UnEquip_REV_Amulett_der_Magie ()
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 10;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 10;
	};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_HP_MP_01(C_Item)
{
	name 			=	"Amulett der Erleuchtung";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	1000;

	visual 			=	"ITAM_AMULET_04.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Amulett_der_Erleuchtung;
	on_unequip		=	UnEquip_REV_Amulett_der_Erleuchtung;

	description		= name;
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= 25;
	TEXT[3] 		= NAME_Bonus_Mana;
	COUNT[3]		= 25;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Amulett_der_Erleuchtung()
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 25;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 25;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 25;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 25;
		
	};


	FUNC VOID UnEquip_REV_Amulett_der_Erleuchtung ()
	{
		
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 25;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 25;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 25;
		
		if (self.attribute[ATR_HITPOINTS] > 26)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 25;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;
		};
	};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_DEX_01(C_Item)
{
	name 			=	"Amulett der Wendigkeit";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	320;

	visual 			=	"ITAM_AMULET_03.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Gewandtheitsamulett;
	on_unequip		=	UnEquip_REV_Gewandtheitsamulett;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Gewandtheitsamulett()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,10);
	};


	FUNC VOID UnEquip_REV_Gewandtheitsamulett()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-10);
	};


INSTANCE ITAM_REVIVED_DEX_02(C_Item)
{
	name 			=	"Amulett der Geschicklichkeit";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	480;

	visual 			=	"ITAM_AMULET_03.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Gewandtheitsamulett2;
	on_unequip		=	UnEquip_REV_Gewandtheitsamulett2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 20;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Gewandtheitsamulett2()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,20);
	};

	FUNC VOID UnEquip_REV_Gewandtheitsamulett2()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-20);
	};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_STR_01(C_Item)
{
	name 			=	"Amulett der Kraft";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	320;

	visual 			=	"ITAM_AMULET_03.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Staerkeamulett;
	on_unequip		=	UnEquip_REV_Staerkeamulett;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Staerkeamulett()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,10);
	};

	FUNC VOID UnEquip_REV_Staerkeamulett()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,-10);
	};


INSTANCE ITAM_REVIVED_STR_02(C_Item)
{
	name 			=	"Amulett der Stärke";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	480;

	visual 			=	"ITAM_AMULET_03.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Staerkeamulett2;
	on_unequip		=	UnEquip_REV_Staerkeamulett2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 20;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Staerkeamulett2()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,20);
	};


	FUNC VOID UnEquip_REV_Staerkeamulett2()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,-20);
	};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_STR_DEX_01(C_Item)
{
	name 			=	"Amulett der Macht";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ITAM_AMULET_04.3ds";
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Amulett_der_Macht;
	on_unequip		=	UnEquip_REV_Amulett_der_Macht;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 7;
	TEXT[3] 		= NAME_Bonus_Str;
	COUNT[3]		= 7;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Amulett_der_Macht()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,7 );
		Npc_ChangeAttribute(self,ATR_STRENGTH,7 );
	};


	FUNC VOID UnEquip_REV_Amulett_der_Macht ()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-7 );
		Npc_ChangeAttribute(self,ATR_STRENGTH,-7 );
	};

//****************************************************************************
//			SPECIAL
//****************************************************************************

INSTANCE ITAM_REVIVED_PSI(C_Item)
{
	name 			=	"Zeichen der Bruderschaft";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	5;

	visual 			=	"ItMi_Amulet_Psi_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	description		= name;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_KDW(C_Item)
{
	name 			=	"Botenamulett der Wassermagier";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	5;

	visual 			=	"ITAM_AMULET_KDW.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	description		= name;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

/******************************************************************************************/
/* 
	Schwarz wie die Seele
	Schwarz wie die Nacht
	Schwarz wie das Böse
	Schwarz verheisst Macht
*/
INSTANCE ITAM_REVIVED_DEMON(C_Item)
{
	name 			=	"Beschwörungsamulett";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	300;

	visual 			=	"ITAM_AMULET_DEMON.3ds";

	visual_skin 		=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_REV_Beschworungsamulett;
	on_unequip		=	UnEquip_REV_Beschworungsamulett;
	description		= name;
	TEXT[1]			= "Schwarz umhüllt die Seele";
	TEXT[2]			= "Schwarz hüllt die Nacht ein";
	TEXT[3]			= "Schwarz verdirbt das Herz";
	TEXT[4] 		= "Schwarz verleiht Macht";
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

	FUNC VOID Equip_REV_Beschworungsamulett()
	{
		if (Npc_IsPlayer(self)) 
		{		
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Summoned_Demon);

				AI_Teleport (DetWsp, "TOT");
				Wld_SpawnNpcRange (self, Summoned_Demon, 1, 1000);
			
				//Wld_PlayEffect("spellFX_Fear", Summoned_Demon, Summoned_Demon, 0, 0, 0, FALSE );

				Snd_Play ("MFX_FEAR_CAST" );
				Wld_PlayEffect("spellFX_SummonCreature_ORIGIN", self, self, 0, 0, 0, FALSE );

				//Npc_ChangeAttribute (hero, ATR_HITPOINTS, -(hero.attribute[ATR_HITPOINTS] / 2));
				
				AI_PlayAni		(hero,    "T_MAD_2_MADDOWN");
				AI_PlayAni		(hero,    "S_MADDOWN");
				AI_PlayAni		(hero,    "T_MADDOWN_2_STAND");
				AI_PlayAni		(hero,    "T_STAND_2_MAD");
				B_Say_Overlay	(hero, hero, "SVM_15_Aargh_5"); //Aaargh!
		};
	};


	FUNC VOID UnEquip_REV_Beschworungsamulett ()
	{
		if (Npc_IsPlayer(self)) 
		{		
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Summoned_Demon);
			
				Snd_Play ("zombie_01");
				Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE );

			AI_Teleport (DetWsp, "TOT");

			if (Npc_IsDead(DetWsp) == FALSE)
			{
				Npc_ChangeAttribute (DetWsp, ATR_HITPOINTS, -DetWsp.attribute[ATR_HITPOINTS_MAX]);
			};

			B_RemoveNpc (DetWsp);
			AI_Teleport (DetWsp, "TOT");
		};
	};

/******************************************************************************************/