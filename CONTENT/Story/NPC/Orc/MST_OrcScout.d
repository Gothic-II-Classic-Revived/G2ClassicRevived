//*****************************
//	Orc Scout Prototype		
//*****************************

PROTOTYPE Mst_Default_OrcScout(C_Npc)			
{
	//----- Monster -----
	name							=	"Orc Späher";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCWARRIOR;
	voice							=	18;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 30);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	90;
	protection	[PROT_EDGE]			=	75;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	75;
	protection	[PROT_FLY]			=	75;
	protection	[PROT_MAGIC]		=	0;
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	fight_tactic	=	FAI_ORC;

	//----- Senses & Ranges ----
	senses			= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	= PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

//**************
//	Visuals
//**************

func void B_SetVisuals_OrcScout()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_Body",	DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
};


//******************
//	Orc Scout Roam    														
//******************

INSTANCE OrcScout_Roam (Mst_Default_OrcScout)
{
	//-------- visual --------
	B_SetVisuals_OrcScout();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};
//******************
//	Orc Scout Rest    														
//******************

INSTANCE OrcScout_Rest (Mst_Default_OrcScout)
{
	//-------- visual --------
	B_SetVisuals_OrcScout();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
//******************
//	Orc Scout Sit    														
//******************

INSTANCE OrcScout_Sit (Mst_Default_OrcScout)
{
	//-------- visual --------
	B_SetVisuals_OrcScout();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};



//******************************************************************************************************************************************************************************************************
//	Story Orks   														
//******************************************************************************************************************************************************************************************************

// ------ Ork vor Stadt ------
INSTANCE OrcScout_Harad (Mst_Default_OrcScout)
{
	name							=	"Orc Späher";

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 20);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	50;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	50;
	protection	[PROT_MAGIC]		=	0;
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	
	//-------- visual --------
	B_SetVisuals_OrcScout();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};