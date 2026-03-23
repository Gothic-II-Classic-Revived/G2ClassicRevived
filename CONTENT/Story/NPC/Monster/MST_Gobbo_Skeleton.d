//***************************
//	Gobbo-Skeleton Prototype
//***************************

PROTOTYPE Mst_Default_Gobbo_Skeleton(C_NPC)			
{
	//----- Monster ----
	name							=	"Goblin Skeleton";
	guild							=	GIL_GOBBO_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_SKELETON;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 15);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	75;
	protection	[PROT_EDGE]			=	75;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Skeleton()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gobbo_Skeleton_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//**********************
//	Gobbo_Skeleton 
//**********************

INSTANCE Gobbo_Skeleton	(Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_BRANCH_01); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};


//***************************
//	Summoned_Gobbo_Skeleton 
//***************************

INSTANCE Summoned_Gobbo_Skeleton (Mst_Default_Gobbo_Skeleton)
{
	name							= "Summoned Skeleton";
	guild							= GIL_SUMMONED_GOBBO_SKELETON;
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_GOBBO_SKELETON;
	level							= 0;

	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Gobbo_Skeleton();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_BRANCH_01); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};


//************************************
//	Gobbo_Skeleton im OW Dämonenturm	
//************************************
INSTANCE Gobbo_SkeletonOWDemonTower	(Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_BRANCH_01); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};
	
