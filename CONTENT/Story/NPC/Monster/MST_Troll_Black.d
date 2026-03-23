//******************************
//	Schwarzer Troll Prototype	
//******************************

PROTOTYPE Mst_Default_Troll_Black(C_Npc)			
{
	//----- Monster ----
	name							=	"Black Troll";
	guild							=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]			= 	ID_TROLL_BLACK;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 50);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	300;
	protection	[PROT_EDGE]			=	300;
	protection	[PROT_POINT]		=	IMMUNE;
	protection	[PROT_FIRE]			=	300;
	protection	[PROT_FLY]			=	IMMUNE;
	protection	[PROT_MAGIC]		=	100;
	
	//------------------------------------------------------	
	damagetype 						=	DAM_BLUNT|DAM_FLY;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_TROLL;

	//----- Daily Routine ----	
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
};


//****************
//	Visuals
//****************



func void B_SetVisuals_Troll_Black()
{
	Mdl_SetVisual			(self,	"Troll.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Troll_Black_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************************
//	Schwarzer Troll    		
//************************
INSTANCE Troll_Black	(Mst_Default_Troll_Black)
{
	//aivar[AIV_MaxDistToWp]			= 1000;
	//aivar[AIV_OriginalFightTactic] 	= FAI_TROLL;
	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
};

INSTANCE Troll_Black_Sagitta	(Mst_Default_Troll_Black)
{
	protection	[PROT_BLUNT]		=	200;
	protection	[PROT_EDGE]			=	200;
	protection	[PROT_POINT]		=	IMMUNE;
	protection	[PROT_FIRE]			=	200;
	protection	[PROT_FLY]			=	IMMUNE;
	protection	[PROT_MAGIC]		=	50;

	B_SetVisuals_Troll_Black();
	Npc_SetToFistMode(self);
};