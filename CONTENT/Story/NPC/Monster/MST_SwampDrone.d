//**********************
//	SwampDrone Prototype
//**********************

PROTOTYPE Mst_Default_SwampDrone(C_Npc)			
{
	//----- Monster -----
	name							= "Sumpfgasdrone";
	guild							= GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]			= ID_SWAMPDRONE;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
	
	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_BLOODFLY;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= FALSE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;	
};

//******************
//		Visuals
//******************

func void B_SetVisuals_SwampDrone()
{
	Mdl_SetVisual			(self,	"SwampDrone.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"SwampDrone_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*************
//	Bloodfly   
//*************

INSTANCE SwampDrone	(Mst_Default_SwampDrone)
{
	B_SetVisuals_SwampDrone();
	Npc_SetToFistMode(self);
};
