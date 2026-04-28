//************************************
//	Shadowbeast-Skeleton PROTOTYPE
//************************************

PROTOTYPE Mst_Default_Shadowbeast_Skeleton(C_Npc)			
{
	//----- Monster ----
	name							=	"Shadowbeast Skeleton";
	guild							=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SHADOWBEAST_SKELETON;
	
	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 35);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	150;
	protection	[PROT_POINT]		=	200;
	protection	[PROT_FIRE]			=	150;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	100;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SHADOWBEAST;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};

//************
//	Visuals
//************

func void B_SetVisuals_Shadowbeast_Skeleton()
{
	Mdl_SetVisual			(self, "Shadow.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self, "Shadowbeast_Skeleton_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************************
//	Shadowbeast_Skeleton    	
//*****************************

INSTANCE Shadowbeast_Skeleton	(Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
	Npc_SetToFistMode(self);
};
