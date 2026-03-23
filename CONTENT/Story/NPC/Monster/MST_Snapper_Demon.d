//********************************
//	DragonSnapper Prototype			
//********************************

PROTOTYPE Mst_Default_DragonSnapper(C_Npc)			
{
	//----- Monster ----
	name							=	"Dragon Snapper";
	guild							=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]			= 	ID_DRAGONSNAPPER;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 40);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	150;
	protection	[PROT_EDGE]			=	150;
	protection	[PROT_POINT]		=	150;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	50;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_SNAPPER;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart]		= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual			(self,	"DragonSnapper.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Razor_Demon_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_DragonSnapperWeak()
{
	Mdl_SetVisual			(self,	"DragonSnapper.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"DRAGONSNAPPER_WEAK",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//********************
//	DragonSnapper    
//********************

INSTANCE DragonSnapper	(Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
	Npc_SetToFistMode(self);
};




//****************************************************************************************************************************************************************************************************************************************************************************************
//	STORY-DragonSnapper    
//****************************************************************************************************************************************************************************************************************************************************************************************

//********************
//	Gaans_Snapper    
//********************

INSTANCE Gaans_Snapper	(Mst_Default_DragonSnapper)
{
	name	=	"Snorting Snapper";

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 25);
	
	B_SetVisuals_DragonSnapperWeak();
	Npc_SetToFistMode(self);
};
