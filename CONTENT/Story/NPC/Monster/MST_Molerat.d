//***************************
//	Molerat Prototype	
//***************************

PROTOTYPE Mst_Default_Molerat(C_Npc)			
{
	//----- Monster ----
	name							=	"Molerat";
	guild							=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]			= 	ID_MOLERAT;
	level							=	5;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	25;
	attribute	[ATR_DEXTERITY]		=	25;
	attribute	[ATR_HITPOINTS_MAX]	=	50;
	attribute	[ATR_HITPOINTS]		=	50;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	25;
	protection	[PROT_EDGE]			=	25;
	protection	[PROT_POINT]		=	25;	
	protection	[PROT_FIRE]			=	25;
	protection	[PROT_FLY]			=	25;	
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_MOLERAT;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Molerat()
{
	Mdl_SetVisual			(self,	"Molerat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Mol_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_MoleratJuvenile()
{
	Mdl_SetVisual			(self,	"Molerat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"MOLERAT_JUVENILE",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_MoleratDemon()
{
	Mdl_SetVisual			(self,	"Molerat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"MOLERAT_DEMON",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*****************
//	Molerat	
//*****************
INSTANCE Molerat	(Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};

INSTANCE MoleratJuvenile	(Mst_Default_Molerat)
{
	name							=	"Juvenile Molerat";
	level							=	3;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	10;
	attribute	[ATR_DEXTERITY]		=	10;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	15;
	protection	[PROT_POINT]		=	15;	
	protection	[PROT_FIRE]			=	15;
	protection	[PROT_FLY]			=	15;	
	protection	[PROT_MAGIC]		=	0;

	B_SetVisuals_MoleratJuvenile();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};

INSTANCE MoleratDemon	(Mst_Default_Molerat)
{
	name							=	"Forest Molerat";
	level							=	7;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	40;
	attribute	[ATR_DEXTERITY]		=	40;
	attribute	[ATR_HITPOINTS_MAX]	=	75;
	attribute	[ATR_HITPOINTS]		=	75;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	50;	
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	50;	
	protection	[PROT_MAGIC]		=	0;

	B_SetVisuals_MoleratDemon();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};
