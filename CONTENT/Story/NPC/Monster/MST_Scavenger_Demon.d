//****************************
//	Scavenger-Demon Prototype
//****************************

PROTOTYPE Mst_Default_Scavenger_Demon(C_Npc)			
{
	//----- Monster ----
	name							=	"Grasland-Scavenger";
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_SCAVENGER_DEMON;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	40;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	
	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SCAVENGER;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_SleepStart] 	= 22;	
	aivar[AIV_MM_SleepEnd]		= 6;
	aivar[AIV_MM_EatGroundStart]= 6;
	aivar[AIV_MM_EatGroundEnd]	= 22;
};


//************
//	Visuals
//************


func void B_SetVisuals_Scavenger_Demon()
{
	Mdl_SetVisual			(self,	"ScavengerGL.mds");
	//								Body-Mesh					Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Scavenger_Demon_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***************
//	Scavenger    
//***************

INSTANCE Scavenger_Demon	(Mst_Default_Scavenger_Demon)
{
	B_SetVisuals_Scavenger_Demon();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};
