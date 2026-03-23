//**************************
//	Skeleton-Mage Prototype	
//**************************

PROTOTYPE Mst_Default_Skeleton_Mage(C_Npc)			
{
	//----- Monster ----
	name							=	"Skeleton Mage";
	guild							=	GIL_SKELETON_MAGE;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON_MAGE;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 30);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	75;
	protection	[PROT_EDGE]			=	75;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	200;
	protection	[PROT_MAGIC]		=	200;	
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Skeleton_Mage()
{
	Mdl_SetVisual			(self,	"HumanS.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_skeleton_fly.mds");

	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Ske_Fly_Body",	1,			DEFAULT,	"",			1,  		DEFAULT,	-1);
};

//*********************
//	Skeleton   Mage 	
//*********************

INSTANCE SkeletonMage		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
};

//*********************
//	SkeletonMage_Angar 	
//*********************

INSTANCE SkeletonMage_Angar		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
	CreateInvItems (self, ItAm_Mana_Angar_MIS, 1);	
	CreateInvItems (self, ITPO_REVIVED_BOOST_MANA_02, 1);	
};

//************************
//	SecretLibrarySkeleton
//***********************

INSTANCE SecretLibrarySkeleton		(Mst_Default_Skeleton_Mage)
{
 	B_SetVisuals_Skeleton_Mage();
};
