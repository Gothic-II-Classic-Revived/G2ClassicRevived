//****************************
//	Orc SHAMAN Prototype		
//****************************

PROTOTYPE Mst_Default_OrcShaman(C_Npc)			
{
	//----- Monster ----
	name							=	"Ork Schamane";
	guild							=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCSHAMAN;
	voice							=	18;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 40);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	200;
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	fight_tactic	=	FAI_ORC;

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE;
	senses_range	= 	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};


//****************
//	Visuals
//****************

func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyShaman",	DEFAULT,	DEFAULT,	"Orc_HeadShaman",	DEFAULT,  	DEFAULT,	-1);
};


//****************
//	Orc Shaman    
//****************

INSTANCE OrcShaman_Sit (Mst_Default_OrcShaman)
{
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_MACE_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};

//*********************
//	Hosh-Pak
//*********************

INSTANCE OrcShaman_Hosh_Pak (Mst_Default_OrcShaman)
{
	name							=	"Hosh-Pak";

	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_MACE_01);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};
//****************
//	Orc Shaman    
//****************

INSTANCE OrcCity_Pray (Mst_Default_OrcShaman)
{
	//-------- visuals --------
	B_SetVisuals_OrcShaman();

	//-------- inventory --------
	CreateInvItem	(self,	ITMW_REVIVED_ORC_STAFF_01);	

	//-------- ai --------
	start_aistate	= ZS_Orc_Pray;

};

INSTANCE OrcShaman_Sit_CanyonLibraryKey (Mst_Default_OrcShaman)
{
	name							=	"Anführer der Horde";
	// ------ visuals ------
	B_SetVisuals_OrcShaman();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_STAFF_02);
	
	CreateInvItems (self, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON, 1);									
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_OrcSitStart] 	= OnlyRoutine;
};

