//*****************************
//	Minecrawler Prototype
//*****************************

PROTOTYPE Mst_Default_Minecrawler(C_Npc)			
{
	//----- Monster ----
	name							=	"Minecrawler";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_MINECRAWLER;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 12);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	80;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	120;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
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

func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual			(self,	"Crawler.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Crw_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//*****************
//	Minecrawler
//*****************

INSTANCE Minecrawler	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};
//*****************
//	Minecrawler_Priest im PriesterHaus der ADW
//*****************

INSTANCE Minecrawler_Priest	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};
INSTANCE GoldMinecrawler	(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};



