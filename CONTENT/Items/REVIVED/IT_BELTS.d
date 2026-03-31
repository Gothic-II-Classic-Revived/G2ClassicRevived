INSTANCE ITBE_REVIVED_ARCHER (C_Item)
{
	name 			=	"Bogenschützen-Gürtel";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Leather_01;

	visual 			=	"REV_BELT_SFB.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ITBE_REVIVED_ARCHER;
	on_unequip		=	UnEquip_ITBE_REVIVED_ARCHER;

	description		=  name;

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	TEXT[3]			=	NAME_Addon_BeArArcher;
	COUNT[3]		= 	BA_Bonus01;
	TEXT[5]			=   NAME_Value;
	COUNT[5]		=   value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ITBE_REVIVED_ARCHER()
{
	self.protection[PROT_EDGE]  += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	
	if (Npc_IsPlayer(self))
	{
		ArcherBelt_Equipped = TRUE;	
	
		if (ArcherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;
		};
	};
};
FUNC VOID UnEquip_ITBE_REVIVED_ARCHER()
{
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	
	if (Npc_IsPlayer(self))
	{
		ArcherBelt_Equipped = FALSE;
			
		if (ArcherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
		};
	};
};