//*****************************
//	Minecrawler Prototype
//*****************************

PROTOTYPE Mst_Default_Blattcrawler(C_Npc)			
{
	//----- Monster ----
	name							=	"Fangheuschrecke";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLATTCRAWLER;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 15);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	40;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_MINECRAWLER;
	
	//----- Sense & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;
};


//***********
// Visuals
//***********

func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual			(self,	"Blattcrawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"BlattCrawler_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Minecrawler
//*****************

INSTANCE Blattcrawler	(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
};

