//*************************
//	Fire Waran Prototype  
//*************************

PROTOTYPE Mst_Default_FireWaran(C_Npc)			
{
	//----- Monster ----
	name							=	"Feuerwaran";
	guild							=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]			= 	ID_FIREWARAN;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 26);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	150;
	protection	[PROT_EDGE]			=	150;
	protection	[PROT_POINT]		=	150;
	protection	[PROT_FIRE]			=	IMMUNE;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_FIRE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_WARAN;

	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_Setvisuals_FireWaran()
{
	Mdl_SetVisual			(self,	"Waran.mds");
	Mdl_ApplyOverlayMds 	(self,	"Firewaran.mds");

	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"War_Fire_Body",DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};
func void B_SetVisuals_BeachFireWaran()
{
	Mdl_SetVisual			(self,	"Waran.mds");
	Mdl_ApplyOverlayMds 	(self,	"Firewaran.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"WAR_BEACH_FIRE_BODY",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Fire Waran    	
//*****************

INSTANCE FireWaran	(Mst_Default_FireWaran)
{
	B_SetVisuals_FireWaran();
	Npc_SetToFistMode(self);
};

INSTANCE BeachFireWaran	(Mst_Default_FireWaran)
{
	B_SetVisuals_BeachFireWaran();
	Npc_SetToFistMode(self);
};