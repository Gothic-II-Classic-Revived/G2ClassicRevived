
PROTOTYPE Mst_Shadow_Warrior	(C_NPC)
{
	//----- Monster ----
	name							=	"Shadow Warrior";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 40);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	150;
	protection	[PROT_EDGE]			=	150;
	protection	[PROT_POINT]		=	150;
	protection	[PROT_FIRE]			=	150;
	protection	[PROT_FLY]			=	150;
	protection	[PROT_MAGIC]		=	150;
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;	
	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_OLD_01);

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Shadow_Warrior()
{
	Mdl_SetVisual		(self,	"HumanS.mds");
	//Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds"); //FIXME s.Skeleton.
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	B_SetNpcVisual 		(self, MALE, "Ske_Head", 0, 0, ITAR_Raven_Addon);
};


//**************************************************************
//	Schattenlord 	
//**************************************************************

INSTANCE Shadow_Warrior	(Mst_Shadow_Warrior)
{
	B_SetVisuals_Shadow_Warrior ();
};

INSTANCE Shadow_WarriorGeneral	(Mst_Shadow_Warrior)
{
	name							=	"Shadow General";
	level							=	80;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	180; //+ 105 Waffe
	attribute	[ATR_DEXTERITY]		=	180;
	attribute	[ATR_HITPOINTS_MAX]	=	500;
	attribute	[ATR_HITPOINTS]		=	500;
	attribute	[ATR_MANA_MAX] 		=	200;
	attribute	[ATR_MANA] 			=	200;
	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_HEAVY_05);

	B_SetVisuals_Shadow_Warrior ();
};