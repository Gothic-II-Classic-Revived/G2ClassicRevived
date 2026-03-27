//***************************
//	Molerat Prototype	
//***************************

PROTOTYPE Mst_Default_Molerat(C_Npc)			
{
	//----- Monster ----
	name							=	"Molerat";
	guild							=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]			= 	ID_MOLERAT;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 5);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	25;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	30;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

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
	name							=	"junge Molerat";
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 3);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	15;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;

	B_SetVisuals_MoleratJuvenile();
	Mdl_SetModelScale(self, 0.8, 0.8, 0.8);
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};

INSTANCE MoleratDemon	(Mst_Default_Molerat)
{
	name							=	"Waldmolerat";
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 7);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	30;
	protection	[PROT_EDGE]			=	30;
	protection	[PROT_POINT]		=	50;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	30;
	protection	[PROT_MAGIC]		=	0;

	B_SetVisuals_MoleratDemon();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};
