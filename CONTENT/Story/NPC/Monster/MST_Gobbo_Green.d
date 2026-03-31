// *********************
// Gobbo_Green Prototype
// *********************

prototype Mst_Default_Gobbo_Green (C_NPC)			
{
	// ------ Monster -----
	name							=	"Goblin";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_GREEN;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 5);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	20;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;

	// ------ Damage Types ------						//entweder EIN damagetype oder mehrere damage[x], die dann addiert werden und getrennten Rüstungsabzug bekommen
	damagetype 						=	DAM_EDGE;

	// ------ Kampf-Taktik ------
	fight_tactic	=	FAI_GOBBO;
	
	// ------ senses & ranges ------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	// ------ Daily Routine ------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


// *****************
// 		Visuals
// *****************

func void B_SetVisuals_Gobbo_Green()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


// ***********
// Green Gobbo
// ***********

INSTANCE Gobbo_Green (Mst_Default_Gobbo_Green)
{
	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_CLUB_01); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};


// *****************
// Young Green Gobbo
// *****************

INSTANCE YGobbo_Green (Mst_Default_Gobbo_Green)
{
	name							=	"Schwächerer Goblin";

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 3);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	10;
	protection	[PROT_MAGIC]		=	0;

	fight_tactic	=	FAI_MONSTER_COWARD;

	B_SetVisuals_Gobbo_Green();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_CLUB_01); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};