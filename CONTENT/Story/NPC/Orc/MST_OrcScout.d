//*****************************
//	Orc Scout Prototype		
//*****************************

PROTOTYPE Mst_Default_OrcScout(C_Npc)			
{
	//----- Monster -----
	name							=	"Orc Scout";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCWARRIOR;
	voice							=	18;
	level							=	20;
	
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	90; //+ca. 50-80 Waffe //MIN 100 wg Equip!!!
	attribute	[ATR_DEXTERITY]		=	50;
	attribute	[ATR_HITPOINTS_MAX]	=	300;
	attribute	[ATR_HITPOINTS]		=	300;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;
	
	//----- HitChances -----
	HitChance	[NPC_TALENT_1H]			= 40;
	HitChance	[NPC_TALENT_2H]			= 40;
	HitChance	[NPC_TALENT_BOW]		= 40;
	HitChance	[NPC_TALENT_CROSSBOW]	= 40;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

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
	name							=	"Orc Scout";
	
	level							=	15;
	
	//----- Attribute -----	
	attribute	[ATR_STRENGTH]		=	70; //MIN 70 wg Equip!!!
	attribute	[ATR_DEXTERITY]		=	25;
	attribute	[ATR_HITPOINTS_MAX]	=	150;
	attribute	[ATR_HITPOINTS]		=	150;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	75;
	protection	[PROT_EDGE]			=	75;
	protection	[PROT_POINT]		=	75;
	protection	[PROT_FIRE]			=	75;
	protection	[PROT_FLY]			=	75;
	
	//-------- visual --------
	B_SetVisuals_OrcScout();

	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_AXE_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};