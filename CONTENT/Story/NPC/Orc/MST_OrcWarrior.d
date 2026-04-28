//*****************************
//	Orc WARRIOR Prototype		
//*****************************

PROTOTYPE Mst_Default_OrcWarrior(C_Npc)			
{
	//----- Monster -----
	name							=	"Orc Warrior";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCWARRIOR;
	voice							=	18;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 40);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
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

func void B_SetVisuals_OrcWarrior()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyWarrior",	DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
};


//******************
//	Orc Warrior Roam    														
//******************

INSTANCE OrcWarrior_Roam (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};
//******************
//	Orc Warrior Rest    														
//******************

INSTANCE OrcWarrior_Rest (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_02);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
//******************
//	Orc Warrior Sit    														
//******************

INSTANCE OrcWarrior_Sit (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};



//******************************************************************************************************************************************************************************************************
//	Story Orks   														
//******************************************************************************************************************************************************************************************************

// ----- Lobarts Orks ------
INSTANCE OrcWarrior_Lobart1 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcWarrior_Lobart2 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcWarrior_Lobart3 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcWarrior_Lobart4 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcWarrior_Lobart5 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

INSTANCE OrcWarrior_Lobart6 (Mst_Default_OrcWarrior)
{
	//-------- visual --------
	B_SetVisuals_OrcWarrior();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
