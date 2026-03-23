//***************************
//	Swampgolem Prototype			
//***************************

PROTOTYPE Mst_Default_Addon_SwampGolem(C_Npc)			
{
	//----- Monster ----
	name							=	"Swamp Golem";
	guild							=	GIL_SWAMPGOLEM;
	aivar[AIV_MM_REAL_ID]			= 	ID_SWAMPGOLEM;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 50);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	300;
	protection	[PROT_POINT]		=	300;
	protection	[PROT_FIRE]			=	150;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_MAGIC|DAM_FLY;
	damage		[DAM_INDEX_FLY]		=	1;
	damage		[DAM_INDEX_MAGIC]	=	100;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGOLEM;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//-------------------------------------------------------------
func void B_SetVisuals_Swampgolem()
{
	Mdl_SetVisual			(self,	"SwampGolem.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gol_Sumpf_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//******************
//	Swampgolem
//******************

INSTANCE SwampGolem	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
};

//******************
//	SwampGolem_Valley
//******************

INSTANCE SwampGolem_Valley	(Mst_Default_Addon_SwampGolem)
{
	B_SetVisuals_Swampgolem();
	Npc_SetToFistMode	(self);
	aivar[AIV_MaxDistToWp]			= 1500;
	aivar[AIV_OriginalFightTactic] 	= FAI_STONEGOLEM;
};

