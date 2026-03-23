//*************************
//	Giant_DesertRat Prototype		
//*************************

PROTOTYPE Mst_Default_Giant_DesertRat(C_Npc)			
{
	//----- Monster ----
	name							=	"Desert Rat";
	guild							=	GIL_Giant_Rat;
	aivar[AIV_MM_REAL_ID]			= 	ID_Giant_Rat;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	30;
	protection	[PROT_EDGE]			=	30;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage TYpes ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----
	fight_tactic	= 	FAI_GIANT_RAT;
	
	//----- Senses & Ranges ----
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter]	= TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		= OnlyRoutine;
};


//************
//	Visuals
//************

func void B_SetVisuals_Giant_DesertRat()
{
	Mdl_SetVisual			(self,	"Giant_Rat.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Giant_DesertRat_Body",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
	Mdl_SetModelScale(self,	1.30,	1.30, 	1);
};


//***************
//	Giant_DesertRat    
//***************

INSTANCE Giant_DesertRat	(Mst_Default_Giant_DesertRat)
{
	B_SetVisuals_Giant_DesertRat();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 1);
};
