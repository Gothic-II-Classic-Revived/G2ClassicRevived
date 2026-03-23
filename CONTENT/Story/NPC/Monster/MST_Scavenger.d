//**************************
//	Scavenger Prototype
//**************************

PROTOTYPE Mst_Default_Scavenger(C_Npc)			
{
	//----- Monster ----
	name							=	"Scavenger";
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_SCAVENGER;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 7);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	40;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	
	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SCAVENGER;

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;

	//----- Dailay Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_SleepStart] 	= 22;	
	aivar[AIV_MM_SleepEnd]		= 6;
	aivar[AIV_MM_EatGroundStart]= 6;
	aivar[AIV_MM_EatGroundEnd]	= 22;
};


//****************
//	Visuals
//****************
	
func void B_SetVisuals_Scavenger()
{
	Mdl_SetVisual			(self,	"Scavenger.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sca_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};
	
func void B_SetVisuals_ScavengerJuvenile()
{
	Mdl_SetVisual			(self,	"Scavenger.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"SCAVENGER_FEATHER",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	Scavenger 
//***************

INSTANCE Scavenger	(Mst_Default_Scavenger)
{
	B_SetVisuals_Scavenger();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};

INSTANCE ScavengerJuvenile	(Mst_Default_Scavenger)
{
	name							=	"Juvenile Scavenger";

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 4);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	20;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;

	//B_SetVisuals_ScavengerJuvenile();
	B_SetVisuals_Scavenger();
	
	Mdl_SetModelScale(self, 0.8, 0.8, 0.8);
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};