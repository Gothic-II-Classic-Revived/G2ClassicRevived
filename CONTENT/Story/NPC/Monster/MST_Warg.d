//*************************
//	Warg Prototype
//*************************

PROTOTYPE Mst_Default_Warg(C_Npc)			
{
	//----- Monster ----
	name							=	"Warg";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_WARG;
	
	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 20);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_WOLF;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************


func void B_SetVisuals_Warg()
{
	Mdl_SetVisual			(self, "Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Warg_Body2",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//************
//	Warg
//************

INSTANCE Warg	(Mst_Default_Warg)
{
	B_SetVisuals_Warg();
	Mdl_SetModelScale(self, 1.1, 1.1, 1.1);
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};