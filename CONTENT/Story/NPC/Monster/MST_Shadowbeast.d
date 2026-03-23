//***************************
//	Shadowbeast Prototype	
//***************************

PROTOTYPE Mst_Default_Shadowbeast(C_Npc)			
{
	//----- Monster ----
	name							=	"Shadowbeast";
	guild							=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]			= 	ID_SHADOWBEAST;
	
	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 30);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	150;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	50;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_SHADOWBEAST;

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

func void B_SetVisuals_Shadowbeast()
{
	Mdl_SetVisual			(self,"Shadow.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sha_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*******************
//	Shadowbeast    	
//*******************

INSTANCE Shadowbeast	(Mst_Default_Shadowbeast)
{
	B_SetVisuals_Shadowbeast();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 2);
};

//Addon

INSTANCE BeachShadowbeast1	(Mst_Default_Shadowbeast)
{
	B_SetVisuals_Shadowbeast();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 2);
};
