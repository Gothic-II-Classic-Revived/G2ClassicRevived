const int	REV_Value_ITRI_Prot_Arrow_01			=	30;
const int	REV_Change_ITRI_Prot_Arrow_01			=	8;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Arrow_02			=	50;
const int	REV_Change_ITRI_Prot_Arrow_02			=	12;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_Melee_01			=	30;
const int	REV_Change_ITRI_Prot_Melee_01			=	8;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Melee_02			=	50;
const int	REV_Change_ITRI_Prot_Melee_02			=	12;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_Weapon_01			=	50;
const int	REV_Change_ITRI_Prot_Weapon_01			=	8;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Weapon_02			=	75;
const int	REV_Change_ITRI_Prot_Weapon_02			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_Magic_01			=	30;
const int	REV_Change_ITRI_Prot_Magic_01			=	8;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Magic_02			=	50;
const int	REV_Change_ITRI_Prot_Magic_02			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_Fire_01				=	30;
const int	REV_Change_ITRI_Prot_Fire_01			=	10;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Fire_02				=	50;
const int	REV_Change_ITRI_Prot_Fire_02			=	15;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_MagicFire_01		=	50;
const int	REV_Change_ITRI_Prot_MagicFire_01		=	10;
//******************************************************************//
const int	REV_Value_ITRI_Prot_MagicFire_02		=	75;
const int	REV_Change_ITRI_Prot_MagicFire_02		=	15;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Prot_Total_01			=	200;
const int	REV_Change_ITRI_Prot_Total_01			=	10;
//******************************************************************//
const int	REV_Value_ITRI_Prot_Total_02			=	250;
const int	REV_Change_ITRI_Prot_Total_02			=	15;
//******************************************************************//
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_Health_01			=	100;
const int	REV_Change_ITRI_Boost_Health_01			=	10;
//******************************************************************//
const int	REV_Value_ITRI_Boost_Health_02			=	200;
const int	REV_Change_ITRI_Boost_Health_02			=	15;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_Mana_01			=	100;
const int	REV_Change_ITRI_Boost_Mana_01			=	10;
//******************************************************************//
const int	REV_Value_ITRI_Boost_Mana_02			=	200;
const int	REV_Change_ITRI_Boost_Mana_02			=	15;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_HealthMana_01		=	100;
const int	REV_Change_ITRI_Boost_HealthMana_01		=	20;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_STR_01				=	100;
const int	REV_Change_ITRI_Boost_STR_01			=	6;
//******************************************************************//
const int	REV_Value_ITRI_Boost_STR_02				=	200;
const int	REV_Change_ITRI_Boost_STR_02			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_DEX_01				=	100;
const int	REV_Change_ITRI_Boost_DEX_01			=	6;
//******************************************************************//
const int	REV_Value_ITRI_Boost_DEX_02				=	200;
const int	REV_Change_ITRI_Boost_DEX_02			=	10;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_STRDEX_01			=	100;
const int	REV_Change_ITRI_Boost_STRDEX_01			=	8;
//******************************************************************//
//******************************************************************//
const int	REV_Value_ITRI_Boost_Melee_01			=	100;
const int	REV_Change_ITRI_Boost_Melee_01			=	10;
//******************************************************************//
//******************************************************************//



//****************************************************************************
//			PROTECTION
//****************************************************************************

INSTANCE ITRI_REVIVED_PROT_ARROW_01(C_Item)
{
	name 				=	"Ring der Holzhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Arrow_01;

	on_equip			=	Equip_REV_ITRI_PROT_ARROW_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_ARROW_01;	

	visual 				=	"REV_ITRI_NORMAL_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Arrow_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		+=  REV_Change_ITRI_Prot_Arrow_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_ARROW_01()
{
	self.protection [PROT_POINT] 		-=  REV_Change_ITRI_Prot_Arrow_01;
};

INSTANCE ITRI_REVIVED_PROT_ARROW_02(C_Item)
{
	name 				=	"Ring der Steinhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Arrow_02;

	on_equip			=	Equip_REV_ITRI_PROT_ARROW_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_ARROW_02;	

	visual 				=	"REV_ITRI_NORMAL_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Arrow_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_ARROW_02()
{
	self.protection [PROT_POINT] 		+=  REV_Change_ITRI_Prot_Arrow_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_ARROW_02()
{
	self.protection [PROT_POINT] 		-=  REV_Change_ITRI_Prot_Arrow_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MELEE_01(C_Item)
{
	name 				=	"Ring der Eisenhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Melee_01;

	on_equip			=	Equip_REV_ITRI_PROT_MELEE_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MELEE_01;	

	visual 				=	"REV_ITRI_NORMAL_02.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITRI_Prot_Melee_01;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITRI_Prot_Melee_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
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

INSTANCE ITRI_REVIVED_PROT_MELEE_02(C_Item)
{
	name 				=	"Ring der Erzhaut";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Melee_02;

	on_equip			=	Equip_REV_ITRI_PROT_MELEE_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MELEE_02;	

	visual 				=	"REV_ITRI_NORMAL_02.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Edge;					COUNT[2]	= REV_Change_ITRI_Prot_Melee_02;
	TEXT[3]				= 	NAME_Prot_Blunt;				COUNT[3]	= REV_Change_ITRI_Prot_Melee_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
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

INSTANCE ITRI_REVIVED_PROT_WEAPON_01(C_ITEM)
{
	name 				=	"Ring der Standhaftigkeit";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Weapon_01;

	on_equip			=	Equip_REV_ITRI_PROT_WEAPON_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_WEAPON_01;	

	visual 				=	"REV_ITRI_NORMAL_03.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_ITRI_Prot_Weapon_01;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_ITRI_Prot_Weapon_01;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_ITRI_Prot_Weapon_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
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

INSTANCE ITRI_REVIVED_PROT_WEAPON_02(C_ITEM)
{
	name 				=	"Ring der Unantastbarkeit";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Weapon_02;

	on_equip			=	Equip_REV_ITRI_PROT_WEAPON_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_WEAPON_02;	

	visual 				=	"REV_ITRI_NORMAL_03.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[1]				= 	NAME_Prot_Edge;					COUNT[1]	= REV_Change_ITRI_Prot_Weapon_02;
	TEXT[2]				= 	NAME_Prot_Blunt;				COUNT[2]	= REV_Change_ITRI_Prot_Weapon_02;
	TEXT[3]				= 	NAME_Prot_Point;				COUNT[3]	= REV_Change_ITRI_Prot_Weapon_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		+=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_BLUNT]		+=  REV_Change_ITRI_Prot_Weapon_01;
	self.protection [PROT_POINT]		+=  REV_Change_ITRI_Prot_Weapon_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_WEAPON_02()
{
	self.protection [PROT_EDGE] 		-=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_BLUNT]		-=  REV_Change_ITRI_Prot_Weapon_02;
	self.protection [PROT_POINT]		-=  REV_Change_ITRI_Prot_Weapon_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_01(C_ITEM)
{
	name 				=	"Ring des spirituellen Schutzes";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Magic_01;

	on_equip			=	Equip_REV_ITRI_PROT_MAGIC_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGIC_01;	

	visual 				=	"REV_ITRI_NORMAL_04.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITRI_Prot_Magic_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_Magic_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGIC_01()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_Magic_01;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_02(C_ITEM)
{
	name 				=	"Schutz vor Magie";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Magic_02;

	on_equip			=	Equip_REV_ITRI_PROT_MAGIC_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGIC_02;	

	visual 				=	"REV_ITRI_NORMAL_04.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Magic;				COUNT[2]	= REV_Change_ITRI_Prot_Magic_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_Magic_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGIC_02()
{
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_Magic_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_FIRE_01(C_Item)
{
	name 				=	"Flammenschutzring";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Fire_01;

	on_equip			=	Equip_REV_ITRI_PROT_FIRE_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_FIRE_01;	

	visual 				=	"REV_ITRI_PROT_A_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITRI_Prot_Fire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITRI_Prot_Fire_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_FIRE_01()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITRI_Prot_Fire_01;
};

INSTANCE ITRI_REVIVED_PROT_FIRE_02(C_Item)
{
	name 				=	"Schutz vor Feuer";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Fire_02;

	on_equip			=	Equip_REV_ITRI_PROT_FIRE_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_FIRE_02;	

	visual 				=	"REV_ITRI_PROT_A_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITRI_Prot_Fire_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITRI_Prot_Fire_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_FIRE_02()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITRI_Prot_Fire_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_01(C_ITEM)
{
	name 				=	"Ring der geringeren Reinigung";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_MagicFire_01;

	on_equip			=	Equip_REV_ITRI_PROT_MAGICFIRE_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGICFIRE_01;	

	visual 				=	"REV_ITRI_PROT_B_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITRI_Prot_MagicFire_01;
	TEXT[3]				= 	NAME_Prot_Magic;				COUNT[3]	= REV_Change_ITRI_Prot_MagicFire_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGICFIRE_01()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITRI_Prot_MagicFire_01;
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_MagicFire_01;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGICFIRE_01()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITRI_Prot_MagicFire_01;
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_MagicFire_01;
};

INSTANCE ITRI_REVIVED_PROT_MAGIC_FIRE_02(C_ITEM)
{
	name 				=	"Ring der Läuterung";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_MagicFire_02;

	on_equip			=	Equip_REV_ITRI_PROT_MAGICFIRE_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_MAGICFIRE_02;	

	visual 				=	"REV_ITRI_PROT_B_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Prot_Fire;					COUNT[2]	= REV_Change_ITRI_Prot_MagicFire_02;
	TEXT[3]				= 	NAME_Prot_Magic;				COUNT[3]	= REV_Change_ITRI_Prot_MagicFire_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_PROT_MAGICFIRE_02()
{
	self.protection [PROT_FIRE] 		+=  REV_Change_ITRI_Prot_MagicFire_02;
	self.protection [PROT_MAGIC] 		+=  REV_Change_ITRI_Prot_MagicFire_02;
};

FUNC VOID UnEquip_REV_ITRI_PROT_MAGICFIRE_02()
{
	self.protection [PROT_FIRE] 		-=  REV_Change_ITRI_Prot_MagicFire_02;
	self.protection [PROT_MAGIC] 		-=  REV_Change_ITRI_Prot_MagicFire_02;
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_PROT_TOTAL_01(C_ITEM)
{
	name 				=	"Ring der Unbezwingbarkeit";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Total_01;

	on_equip			=	Equip_REV_ITRI_PROT_TOTAL_01;
	on_unequip			=	UnEquip_REV_ITRI_PROT_TOTAL_01;	

	visual 				=	"REV_ITRI_GOOD_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_ITRI_Prot_Total_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
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

INSTANCE ITRI_REVIVED_PROT_TOTAL_02(C_ITEM)
{
	name 				=	"Ring der Unbesiegbarkeit";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Prot_Total_02;

	on_equip			=	Equip_REV_ITRI_PROT_TOTAL_02;
	on_unequip			=	UnEquip_REV_ITRI_PROT_TOTAL_02;	

	visual 				=	"REV_ITRI_GOOD_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[0]				= 	NAME_Prot_Edge;					COUNT[0]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[1]				= 	NAME_Prot_Blunt;				COUNT[1]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[2]				= 	NAME_Prot_Point;				COUNT[2]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[3]				= 	NAME_Prot_Fire;					COUNT[3]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[4]				= 	NAME_Prot_Magic;				COUNT[4]	= REV_Change_ITRI_Prot_Total_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
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
//			BOOST
//****************************************************************************

INSTANCE ITRI_REVIVED_HP_01(C_Item)
{
	name 				=	"Ring der Lebenskraft";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Boost_Health_01;

	on_equip			=	Equip_REV_ITRI_BOOST_HEALTH_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HEALTH_01;	

	visual 				=	"REV_ITRI_GREAT_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_Health_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_BOOST_HEALTH_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + REV_Change_ITRI_Boost_Health_01; 
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + REV_Change_ITRI_Boost_Health_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HEALTH_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - REV_Change_ITRI_Boost_Health_01;

	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_Health_01 + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - REV_Change_ITRI_Boost_Health_01;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};
};

INSTANCE ITRI_REVIVED_HP_02(C_Item)
{
	name 				=	"Großer Ring des Lebens";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Boost_Health_02;

	on_equip			=	Equip_REV_ITRI_BOOST_HEALTH_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HEALTH_02;	

	visual 				=	"REV_ITRI_GREAT_02.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_Health_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_BOOST_HEALTH_02()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + REV_Change_ITRI_Boost_Health_02; 
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + REV_Change_ITRI_Boost_Health_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HEALTH_02()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - REV_Change_ITRI_Boost_Health_02;

	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_Health_02 + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - REV_Change_ITRI_Boost_Health_02;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_MP_01(C_Item)
{
	name 				=	"Ring der Magie";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Boost_Mana_01;

	on_equip			=	Equip_REV_ITRI_BOOST_MANA_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_MANA_01;	

	visual 				=	"REV_ITRI_GREAT_01.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_Mana;				COUNT[2]	= REV_Change_ITRI_Boost_Mana_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_BOOST_MANA_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + REV_Change_ITRI_Boost_Mana_01; 
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + REV_Change_ITRI_Boost_Mana_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_MANA_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - REV_Change_ITRI_Boost_Mana_01;

	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_Mana_01 + 1)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - REV_Change_ITRI_Boost_Mana_01;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};

INSTANCE ITRI_REVIVED_MP_02(C_Item)
{
	name 				=	"Großer Ring der Magie";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Boost_Mana_02;

	on_equip			=	Equip_REV_ITRI_BOOST_MANA_02;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_MANA_02;	

	visual 				=	"REV_ITRI_GREAT_02.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_Mana;				COUNT[2]	= REV_Change_ITRI_Boost_Mana_02;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_BOOST_MANA_02()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + REV_Change_ITRI_Boost_Mana_02; 
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + REV_Change_ITRI_Boost_Mana_02;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_MANA_02()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - REV_Change_ITRI_Boost_Mana_02;

	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_Mana_02 + 1)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - REV_Change_ITRI_Boost_Mana_02;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_HP_MP_01(C_Item)
{
	name 				=	"Ring der Erleuchtung";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;	
	material 			=	MAT_METAL;

	value 				=	REV_Value_ITRI_Boost_HealthMana_01;

	on_equip			=	Equip_REV_ITRI_BOOST_HPMP_01;
	on_unequip			=	UnEquip_REV_ITRI_BOOST_HPMP_01;	

	visual 				=	"REV_ITRI_GREAT_03.3DS";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[2]				= 	NAME_Bonus_HP;					COUNT[2]	= REV_Change_ITRI_Boost_HealthMana_01;
	TEXT[3]				= 	NAME_Bonus_Mana;				COUNT[3]	= REV_Change_ITRI_Boost_HealthMana_01;
	TEXT[5]				= 	NAME_Value;						COUNT[5]	= value;
};

FUNC VOID Equip_REV_ITRI_BOOST_HPMP_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + REV_Change_ITRI_Boost_HealthMana_01; 
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + REV_Change_ITRI_Boost_HealthMana_01;
	
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + REV_Change_ITRI_Boost_HealthMana_01; 
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + REV_Change_ITRI_Boost_HealthMana_01;
};

FUNC VOID UnEquip_REV_ITRI_BOOST_HPMP_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - REV_Change_ITRI_Boost_HealthMana_01;
	if self.attribute [ATR_HITPOINTS] >= (REV_Change_ITRI_Boost_HealthMana_01 + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - REV_Change_ITRI_Boost_HealthMana_01;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 1;
	};

	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - REV_Change_ITRI_Boost_HealthMana_01;
	if self.attribute [ATR_MANA] >= (REV_Change_ITRI_Boost_HealthMana_01 + 1)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - REV_Change_ITRI_Boost_HealthMana_01;
	}
	else
	{
		self.attribute[ATR_MANA] = 1;
	};
};

/******************************************************************************************/

INSTANCE ITRI_REVIVED_DEX_01(C_Item)
{
	name 					=	"Ring der Gewandtheit";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	160;

	visual 					=	"REV_ITRI_GREAT_04.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_REV_ITRI_Ring_des_Geschicks;
	on_unequip				=	UnEquip_REV_ITRI_Ring_des_Geschicks;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_REV_ITRI_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,5 );
};

FUNC VOID UnEquip_REV_ITRI_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-5 );
};

INSTANCE ITRI_REVIVED_DEX_02(C_Item)
{
	name 					=	"Ring der Geschicklichkeit";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	240;

	visual 					=	"REV_ITRI_GREAT_04.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_REV_ITRI_Ring_des_Geschicks2;
	on_unequip				=	UnEquip_REV_ITRI_Ring_des_Geschicks2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_REV_ITRI_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,10 );
};

FUNC VOID UnEquip_REV_ITRI_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-10 );
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_01(C_Item)
{
	name 					=	"Ring der Kraft";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	160;

	visual 					=	"REV_ITRI_GREAT_04.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_REV_ITRI_Staerkering;
	on_unequip				=	UnEquip_REV_ITRI_Staerkering;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 5;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_REV_ITRI_Staerkering()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,5 );
};

FUNC VOID UnEquip_REV_ITRI_Staerkering()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-5 );
};

INSTANCE ITRI_REVIVED_STR_02(C_Item)
{
	name 					=	"Ring der Stärke";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	240;

	visual 					=	"REV_ITRI_GREAT_04.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 				=	0;
	material 				=	MAT_METAL;

	on_equip				=	Equip_REV_ITRI_Staerkering2;
	on_unequip				=	UnEquip_REV_ITRI_Staerkering2;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_REV_ITRI_Staerkering2()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,10 );
};

FUNC VOID UnEquip_REV_ITRI_Staerkering2()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH, -10 );
};	

/******************************************************************************************/

INSTANCE ITRI_REVIVED_STR_DEX_01(C_Item)
{
	name 					=	"Ring der Macht";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	300;

	visual 					=	"REV_ITRI_GREAT_04.3ds";
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	visual_skin 				=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_REV_ITRI_Machtring;
	on_unequip				=	UnEquip_REV_ITRI_Machtring;

	description		= name;
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= 4;
	TEXT[3] 		= NAME_Bonus_Dex;
	COUNT[3]		= 4;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

FUNC VOID Equip_REV_ITRI_Machtring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH, 4);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, 4);
};

FUNC VOID UnEquip_REV_ITRI_Machtring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,- 4);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, -4);
};

/******************************************************************************************/

INSTANCE ITAM_REVIVED_MELEE_01 (C_Item)
{	
	name 				=	"Morgans Ring";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING;
	
	value 				=	500;
	
	visual 				=	"ItRi_Prot_Total_02.3DS";
	material 			=	MAT_METAL;
	
	on_equip			=  	Equip_REV_ITRI_RevMorgansRing;
	on_unequip			= 	UnEquip_REV_ITRI_RevMorgansRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= name;
	
	
	TEXT[1]			= "Der Ring ist mit lauter feinen Runen verziert.";
	TEXT[2]			= NAME_RaiseWeaponSkill;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;

};

FUNC VOID Equip_REV_ITRI_RevMorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, 10);
	B_AddFightSkill (self, NPC_TALENT_2H, 10);
};

FUNC VOID UnEquip_REV_ITRI_RevMorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, -10);
	B_AddFightSkill (self, NPC_TALENT_2H, -10);
};

//****************************************************************************
//			SPECIAL
//****************************************************************************

