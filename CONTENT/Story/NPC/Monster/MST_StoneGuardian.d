/*************************************************************************
**	Stoneguardian Prototype												**
*************************************************************************/

prototype Mst_Addon_Stoneguardian	(C_NPC)
{
	//----- Monster ----
	name							= "Stone Sentinel";
	guild							= GIL_STONEGUARDIAN;
	aivar[AIV_MM_REAL_ID]			= ID_STONEGUARDIAN;
	
	bodyStateInterruptableOverride  = TRUE;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 18);

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
	fight_tactic	=	FAI_STONEGUARDIAN;	
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;

	Npc_SetToFistMode(self);
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Stoneguardian()
{
	Mdl_SetVisual			(self,"StoneGuardian.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"StG_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//**************************************************************
//	Beschworener Steinwächter	
//**************************************************************

INSTANCE Summoned_Guardian	(Mst_Addon_Stoneguardian)
{
	name							= NAME_Addon_Summoned_Guardian;
	guild							= GIL_SUMMONEDGuardian;
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONEDGuardian;
	level							=	0;	//30

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	100; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	150;
	attribute	[ATR_HITPOINTS_MAX]	=	150;
	attribute	[ATR_HITPOINTS]		=	150;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	75;
	protection	[PROT_EDGE]			=	125;
	protection	[PROT_POINT]		=	175; 
	protection	[PROT_FIRE]			=	125;
	protection	[PROT_FLY]			=	125;
		
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Stoneguardian ();
};

//**************************************************************
//	Steinwächter	
//**************************************************************


INSTANCE Stoneguardian	(Mst_Addon_Stoneguardian)
{
	B_SetVisuals_Stoneguardian ();
};
