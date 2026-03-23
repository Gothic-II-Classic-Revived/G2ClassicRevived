//************************************
//	Minecrawler WARRIOR Prototype		
//************************************

PROTOTYPE Mst_Default_MinecrawlerWarrior(C_Npc)			
{
	//----- Monster -----
	name							=	"Minecrawler Warrior";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_MINECRAWLERWARRIOR;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 20);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	120;
	protection	[PROT_POINT]		=	150;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic		=	FAI_MINECRAWLER;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- DAily Routine -----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;
};


//************
//	Visuals
//************


func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual			(self,	"Crawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Cr2_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************************
//	MinecrawlerWarrior    
//************************

INSTANCE MinecrawlerWarrior	(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
};
