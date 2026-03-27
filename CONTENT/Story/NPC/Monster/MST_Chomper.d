/*************************************************************************
**	OrcBiter Prototype													**
*************************************************************************/

PROTOTYPE Mst_Default_OrcBiter(C_Npc)			
{
	name							=	"Beisser";
	guild							=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]			= 	ID_ORCBITER;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 12);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	60;
	protection	[PROT_EDGE]			=	60;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;
	
//----------------------------------------------------
	damagetype 						=	DAM_EDGE;
//----------------------------------------------------
	fight_tactic					=	FAI_SCAVENGER;
//----------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;

//	aivar[AIV_MM_Behaviour]		= HUNTER;
	
//	aivar[AIV_MM_PercRange]		= 1200;
//	aivar[AIV_MM_DrohRange]		= 1000;
//	aivar[AIV_MM_AttackRange]	= 700;
//	aivar[AIV_MM_DrohTime]		= 5;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
//-------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------
func void Set_OrcBiter_Visuals()
{
	Mdl_SetVisual			(self,	"Scavenger.mds");
	Mdl_ApplyOverlayMds 	(self,	"Orcbiter.mds"); // eigener Run-Loop
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sc2_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

/*************************************************************************
**	OrcBiter    														**
*************************************************************************/

INSTANCE OrcBiter (Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);

	CreateInvItems (self, ItFoMuttonRaw, 2);
};