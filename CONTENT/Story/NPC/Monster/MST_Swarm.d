//********************
//	Swarm Prototype
//********************

PROTOTYPE Mst_Default_Swarm(C_Npc)
{
	//----- Monster -----
	name							=	"Locust Swarm";
	guild							=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLOODFLY;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 5);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_FLY;
	
	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_BLOODFLY;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MaxDistToWp]			= 700;
	aivar[AIV_MM_Packhunter]	= FALSE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;	
	
};

//******************
//		Visuals
//******************

func void B_SetVisuals_Swarm()
{
	Mdl_SetVisual			(self,	"Swarm.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Irrlicht_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*************
//	Swarm
//*************

INSTANCE Swarm (Mst_Default_Swarm)
{
	fight_tactic	= 	FAI_BLOODFLY;
	B_SetVisuals_Swarm();
	Npc_SetToFistMode(self);
};

//*************
//	Swarm Detector
//*************

INSTANCE Swarm_Detector (Mst_Default_Swarm)
{	
	level						=	0;
	npctype						= NPCTYPE_MAIN;
	
	B_SetVisuals_Swarm();
	senses_range				=	3000;
	
	aivar[AIV_PARTYMEMBER] 		= TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	Npc_SetToFistMode(self);
	aivar[AIV_NoFightParker]	= 	TRUE;
	start_aistate				= ZS_MM_Rtn_Summoned;
};

