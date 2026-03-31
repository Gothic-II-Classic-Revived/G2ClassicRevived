//*************************
//	BlackGobbo Prototype	
//*************************

PROTOTYPE Mst_Default_Gobbo_Black(C_NPC)			
{
	//----- Monster ----
	name							=	"schwarzer Goblin";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO_BLACK;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	40;
	protection	[PROT_EDGE]			=	40;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	40;
	protection	[PROT_FLY]			=	40;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_GOBBO;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//***************
//	Visuals
//***************

func void B_SetVisuals_Gobbo_Black()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		1,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


// ***********
// Black Gobbo   	
// ***********

INSTANCE Gobbo_Black (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_CLUB_02); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};

// ***********
// Gobbo_DaronsStatuenKlauer   	
// ***********
INSTANCE Gobbo_DaronsStatuenKlauer (Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	CreateInvItems (self, ItMi_LostInnosStatue_Daron, 1);									
	Npc_SetToFightMode (self, ITMW_REVIVED_1H_CLUB_02); //Waffe ist nur Optik - Schaden wird NUR über STR bestimmt (Gobbo ist als Monster im Fistmode)
};
