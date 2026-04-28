//**********************
//	Troll Prototype		
//**********************

PROTOTYPE Mst_Default_Troll(C_Npc)			
{
	//----- Monster ----
	name							=	"Troll";
	guild							=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]			= 	ID_TROLL;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 60);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	200;
	protection	[PROT_EDGE]			=	200;
	protection	[PROT_POINT]		=	IMMUNE;
	protection	[PROT_FIRE]			=	200;
	protection	[PROT_FLY]			=	IMMUNE;
	protection	[PROT_MAGIC]		=	75;
	
	//------------------------------------------------------	
	damagetype 						=	DAM_BLUNT|DAM_FLY;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_TROLL;

	//----- Senses & Ranges ----	
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************


func void B_SetVisuals_Troll()
{
	Mdl_SetVisual			(self,	"Troll.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Tro_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//***********
//	Troll    
//***********
INSTANCE Troll	(Mst_Default_Troll)
{
	B_SetVisuals_Troll();
	Npc_SetToFistMode(self);
};

//*********************************
//	Höhlentroll bei Orks auf der DI    
//*********************************
INSTANCE Troll_DI	(Mst_Default_Troll)
{
	name		=	"Cave Troll";
	
	protection	[PROT_BLUNT]		=	200;
	protection	[PROT_EDGE]			=	200;
	protection	[PROT_POINT]		=	IMMUNE;
	protection	[PROT_FIRE]			=	200;
	protection	[PROT_FLY]			=	IMMUNE;
	protection	[PROT_MAGIC]		=	50;

	aivar[AIV_MaxDistToWp]			= 300;
	aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};
