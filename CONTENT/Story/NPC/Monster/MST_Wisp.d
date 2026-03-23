//********************
//	Wisp Prototype
//********************

PROTOTYPE Mst_Default_Wisp(C_Npc)
{
	//----- Monster -----
	name							=	"Ghost Light";
	guild							=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]			= 	ID_WISP;
	
	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 3);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	IMMUNE;
	
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

func void B_SetVisuals_Wisp()
{
	Mdl_SetVisual			(self,	"Irrlicht.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Irrlicht_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*************
//	Irrlicht   
//*************

INSTANCE Wisp (Mst_Default_Wisp)
{
	B_SetVisuals_Wisp();
	Npc_SetToFistMode(self);
};

//*************
//	Irrlicht   
//*************

INSTANCE Wisp_Detector (Mst_Default_Wisp)
{
	level				=	0;
	npctype		= NPCTYPE_MAIN;
	B_SetVisuals_Wisp();
	senses_range	=	3000;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	Npc_SetToFistMode(self);
	aivar[AIV_NoFightParker]	= 	TRUE;
	start_aistate				= ZS_MM_Rtn_Summoned;
};

