//*********************
//	Zombie Prototype	
//*********************

PROTOTYPE Mst_Default_SwampZombie(C_Npc)			
{
	//----- Monster ----
	name							=	"Swamp Corpse";
	guild							=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]			= 	ID_ZOMBIE;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 25);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_ZOMBIE;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

//-------------------------------------------------------------
// Zwei Hautfarben mit jeweils zwei Gesichtstexturen
//-------------------------------------------------------------
func void B_SetVisuals_SwampZombie()
{
	Mdl_SetVisual			(self,	"SwampZombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			0,			"Zom_Head", 0,  		DEFAULT,	-1);
};

//***********
//	Zombie01   
//***********

INSTANCE SwampZombie		(Mst_Default_SwampZombie)
{
	B_SetVisuals_SwampZombie();
	Npc_SetToFistMode(self);
};
