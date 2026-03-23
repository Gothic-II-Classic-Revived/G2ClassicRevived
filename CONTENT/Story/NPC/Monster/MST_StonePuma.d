//***************************
//	Shadowbeast Prototype	
//***************************

PROTOTYPE Mst_Default_StonePuma(C_Npc)			
{
	//----- Monster ----
	name							=	"Stone Panther";
	guild							=	GIL_Gargoyle;
	aivar[AIV_MM_REAL_ID]			= 	ID_Gargoyle;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 20);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	200;
	protection	[PROT_FIRE]			=	200;
	protection	[PROT_FLY]			=	200;
	protection	[PROT_MAGIC]		=	0;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GARGOYLE;

	//----- Senses & Ranges ----
	senses			= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_SleepStart] 	= 6;	
	aivar[AIV_MM_SleepEnd]		= 20;
	aivar[AIV_MM_RoamStart]		= 20;
	aivar[AIV_MM_RoamEnd]		= 6;
};


//***************
//	Visuals
//***************

func void B_SetVisuals_StonePuma()
{
	Mdl_SetVisual			(self,"StonePuma.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"PUMA_STONE",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*******************
//	Instances    	
//*******************

INSTANCE StonePuma	(Mst_Default_StonePuma)
{
	B_SetVisuals_StonePuma();
	Npc_SetToFistMode(self);
};