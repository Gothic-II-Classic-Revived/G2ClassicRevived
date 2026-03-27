//***************************
//	Molerat Prototype	
//***************************

PROTOTYPE Mst_Default_Swamprat (C_Npc)			
{
	//----- Monster ----
	name							=	"Sumpfratte";
	guild							=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]			= 	ID_SWAMPRAT;

	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 10);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	30;
	protection	[PROT_EDGE]			=	30;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	10;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_MOLERAT;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

func void B_SetVisuals_Swamprat ()
{
	Mdl_SetVisual			(self,	"Swamprat.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Swamprat_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
	//Mdl_SetModelScale(self, 1.3, 1.3, 1);
};


//*****************
//	Molerat	
//*****************
INSTANCE Swamprat	(Mst_Default_Swamprat)
{
	B_SetVisuals_Swamprat();
	Npc_SetToFistMode(self);
	CreateInvItems (self, ItFoMuttonRaw, 2);
};
