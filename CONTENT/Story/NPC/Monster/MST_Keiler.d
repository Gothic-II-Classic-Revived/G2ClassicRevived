//********************
//	Keiler Prototype														
//********************

PROTOTYPE Mst_Default_Keiler(C_Npc)			
{
	//----- Monster ----
	name							=	"Keiler";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_Keiler;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;

	//---- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_WOLF;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;

	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;	
};


//************
//	Visuals
//************


func void B_SetVisuals_Keiler()
{
	Mdl_SetVisual			(self,"Keiler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Keiler_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Keiler    	
//************

INSTANCE Keiler	(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ITFO_REVIVED_HAM_01_RAW, 1);
};

