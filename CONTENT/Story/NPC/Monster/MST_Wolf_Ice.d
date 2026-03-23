//*************************
//	Eiswolf Prototype
//*************************

PROTOTYPE Mst_Default_Icewolf(C_Npc)			
{
	//----- Monster ----
	name							=	"Ice Wolf";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_Icewolf;
	
	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 15);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	70;
	protection	[PROT_EDGE]			=	70;
	protection	[PROT_POINT]		=	40;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	50;

	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_WOLF;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************


func void B_SetVisuals_Icewolf()
{
	Mdl_SetVisual			(self, "Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"SnoWol_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Eiswolf
//************

INSTANCE Icewolf	(Mst_Default_Icewolf)
{
	B_SetVisuals_Icewolf();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};
