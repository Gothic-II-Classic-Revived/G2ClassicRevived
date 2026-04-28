//************************
//	Drakonian Prototype
//************************

PROTOTYPE Mst_Default_Draconian(C_Npc)			
{
	//----- Monster ----
	name							=	"Draconian";
	guild							=	GIL_DRACONIAN;
	aivar[AIV_MM_REAL_ID]			= 	ID_DRACONIAN;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 40);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	120;
	protection	[PROT_EDGE]			=	120;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	60;
	protection	[PROT_FLY]			=	60;
	protection	[PROT_MAGIC]		=	100;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_ORC;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Draconian()
{
	Mdl_SetVisual			(self,	"Draconian.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Draconian_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_DraconianGreen()
{
	Mdl_SetVisual			(self,	"Draconian.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Draconian_Green",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};
func void B_SetVisuals_DraconianGold()
{
	Mdl_SetVisual			(self,	"Draconian.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Draconian_Gold",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//**************
//	Drakonier    
//**************

INSTANCE Draconian			(Mst_Default_Draconian)
{
	// ------ visuals ------
	B_SetVisuals_Draconian();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_SWORD_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


INSTANCE DraconianGreen			(Mst_Default_Draconian)
{
	//----- Monster ----
	name							=	"Green Draconian";

	// ------ visuals ------
	B_SetVisuals_DraconianGreen();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_SWORD_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


INSTANCE DraconianGold			(Mst_Default_Draconian)
{
	//----- Monster ----
	name							=	"Gold Draconian";
	
	// ------ visuals ------
	B_SetVisuals_DraconianGold();
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_ORC_SWORD_03);
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};