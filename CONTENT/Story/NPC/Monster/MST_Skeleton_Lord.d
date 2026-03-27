
PROTOTYPE Mst_Skeleton_Lord	(C_NPC)
{
	//----- Monster ----
	name							=	"Schattenritter";
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

func void B_SetVisuals_Skeleton_Lord()
{
	Mdl_SetVisual		(self,	"HumanS.mds");
	//Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds"); //FIXME s.Skeleton.
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	B_SetNpcVisual 		(self, MALE, "Ske_Head", 0, 0, ITAR_PAL_SKEL);
};


//**************************************************************
//	Schattenlord 	
//**************************************************************

INSTANCE Skeleton_Lord	(Mst_Skeleton_Lord)
{
	B_SetVisuals_Skeleton_Lord ();
};

//**************************************************************
//	Schattenlord Inubis	
//**************************************************************

INSTANCE Crypt_Skeleton_Lord	(Mst_Skeleton_Lord)
{
	name		=	"Schattenlord Inubis";

	B_SetVisuals_Skeleton_Lord ();
	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_04);
	
	CreateInvItems	(self,ItMi_Gold,500);
	CreateInvItems 	(self,ITPO_REVIVED_HEALTH_03,2);
	CreateInvItems 	(self,ITPO_REVIVED_MANA_03,2);
};


//**************************************************************
//	Schattenlord Archol	//Joly: Endgegner auf der DI
//**************************************************************

INSTANCE Skeleton_Lord_Archol	(Mst_Skeleton_Lord)
{
	name			=	"Schattenlord Archol";
	level			=	60;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	150; 
	attribute	[ATR_DEXTERITY]		=	150;
	attribute	[ATR_HITPOINTS_MAX]	=	400;
	attribute	[ATR_HITPOINTS]		=	400;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	1000; 
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	10;	

	B_SetVisuals_Skeleton_Lord ();
	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_04);
	
	CreateInvItems	(self,ItMi_Gold,650);
	CreateInvItems	(self,ItKe_EVT_UNDEAD_01,1);
	
};

