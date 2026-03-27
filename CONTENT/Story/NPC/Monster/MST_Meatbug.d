//*************************
//	Meatbug Prototype
//*************************

PROTOTYPE Mst_Default_Meatbug(C_Npc)			
{
	//----- Monster ----
	name							=	"Fleischwanze";
	guild							=	GIL_MEATBUG;
	aivar[AIV_MM_REAL_ID]			= 	ID_MEATBUG;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 1);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						= 	DAM_EDGE;

	//----- Senses & Ranges ----
	Senses			= 	SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] = FALSE;

	//----- Daily Routine ----
	start_aistate					= ZS_MM_AllScheduler;
		
	aivar[AIV_MM_WuselStart] 		= OnlyRoutine;
};


//***********
//	Visuals
//***********

func void B_SetVisuals_Meatbug()
{
	Mdl_SetVisual			(self,	"Meatbug.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Mbg_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

};

func void B_SetVisuals_MeatbugIndoor()
{
	Mdl_SetVisual			(self,	"Meatbug.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"MEATBUG_INDOOR",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

};


//***************
//	Meatbug    	
//***************

INSTANCE Meatbug	(Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};

INSTANCE MeatbugIndoor	(Mst_Default_Meatbug)
{
	B_SetVisuals_MeatbugIndoor();
};




//******************************
// Mission Meatbugs Kapitel 4
//******************************

//***************
//	Meatbug_Brutus1    	
//***************
INSTANCE Meatbug_Brutus1	(Mst_Default_Meatbug)
{
	B_SetVisuals_MeatbugIndoor();
};
//***************
//	Meatbug_Brutus2   	
//***************

INSTANCE Meatbug_Brutus2	(Mst_Default_Meatbug)
{
	B_SetVisuals_MeatbugIndoor();
};
//***************
//	Meatbug_Brutus3    	
//***************

INSTANCE Meatbug_Brutus3	(Mst_Default_Meatbug)
{
	B_SetVisuals_MeatbugIndoor();
};
//***************
//	Meatbug_Brutus4    	
//***************

INSTANCE Meatbug_Brutus4	(Mst_Default_Meatbug)
{
	B_SetVisuals_MeatbugIndoor();
};
