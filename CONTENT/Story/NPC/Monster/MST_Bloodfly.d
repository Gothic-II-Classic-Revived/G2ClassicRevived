//********************
//	Bloodfly Prototype
//********************

PROTOTYPE Mst_Default_Bloodfly(C_Npc)			
{
	//----- Monster -----
	name							=	"Bloodfly";
	guild							=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLOODFLY;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 4);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
	
	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_BLOODFLY;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= FALSE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_WuselStart] 	= OnlyRoutine;	
};

//******************
//		Visuals
//******************

func void B_SetVisuals_Bloodfly()
{
	Mdl_SetVisual			(self,	"Bloodfly.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Blo_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_BloodflyJuvenile()
{
	Mdl_SetVisual			(self,	"Bloodfly.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"BLOODFLY_JUVENILE",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//*************
//	Bloodfly   
//*************

INSTANCE Bloodfly	(Mst_Default_Bloodfly)
{
	B_SetVisuals_Bloodfly();
	Npc_SetToFistMode(self);
};

//*************
//	YBloodfly   
//*************

INSTANCE BloodflyJuvenile	(Mst_Default_Bloodfly)
{
	name							=	"Small Bloodfly";

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 3);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;
		
	//B_SetVisuals_BloodflyJuvenile();
	B_SetVisuals_Bloodfly();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};
INSTANCE BloodflyJuvenileTEST	(Mst_Default_Bloodfly)
{
	name							=	"Small Bloodfly";
	
	level							=	3;
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	5;
	attribute	[ATR_DEXTERITY]		=	5;
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20; 
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protection ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
		
	B_SetVisuals_BloodflyJuvenile();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);
	Npc_SetToFistMode(self);
};
//*************
//	Sleepfly (schlafende Blutfliege)   
//*************

INSTANCE Sleepfly	(Mst_Default_Bloodfly)
{
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_SleepStart] 	= OnlyRoutine;	
	
	B_SetVisuals_BloodflyJuvenile();
	Npc_SetToFistMode(self);
};
