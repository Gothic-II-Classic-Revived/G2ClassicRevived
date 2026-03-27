//*************************
//	FireGolem Prototype	
//*************************

PROTOTYPE Mst_Default_FireGolem(C_Npc)			
{
	//----- Monster ----
	name							=	"Feuergolem";
	guild							=	GIL_FIREGOLEM;
	aivar[AIV_MM_REAL_ID]			= 	ID_FIREGOLEM;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 50);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	300;
	protection	[PROT_POINT]		=	300;
	protection	[PROT_FIRE]			=	IMMUNE;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_MAGIC|DAM_FIRE|DAM_FLY;
	damage		[DAM_INDEX_FIRE]	=	100;
	damage		[DAM_INDEX_FLY]		=	1;
	damage		[DAM_INDEX_MAGIC]	=	100;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGOLEM;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//***************
//	Visuals
//***************

func void B_SetVisuals_FireGolem()
{
	Mdl_SetVisual			(self,	"Golem.mds");
	Mdl_ApplyOverlayMds 	(self,	"Golem_Firegolem.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gol_Fire_Body",DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	FireGolem   
//***************

INSTANCE FireGolem	(Mst_Default_FireGolem)
{
	B_SetVisuals_FireGolem();
	Npc_SetToFistMode(self);
};
