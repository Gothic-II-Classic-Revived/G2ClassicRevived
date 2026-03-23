//**************************
//	Harpie Prototype
//**************************

PROTOTYPE Mst_Default_Harpie(C_Npc)			
{
	//----- Monster ----
	name							=	"Harpy";
	guild							=	GIL_HARPY;
	aivar[AIV_MM_REAL_ID]			= 	ID_HARPY;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 16);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	90;
	protection	[PROT_EDGE]			=	90;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	40;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----	
	fight_tactic	= 	FAI_HARPY;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//**************
//	Visuals
//**************


func void B_SetVisuals_Harpie()
{
	Mdl_SetVisual			(self,	"Harpie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Har_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Harpie
//************

INSTANCE Harpie	(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	
	Npc_SetToFistMode(self);
};
