/*************************************************************************
**	Bloodhound Prototype	(Anims wie Shadowbeast)						**
*************************************************************************/

PROTOTYPE Mst_Default_Hellhound(C_Npc)			
{
	name							=	"Höllenhund";
	guild							=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]			= 	ID_HELLHOUND;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 22);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	80;
	protection	[PROT_EDGE]			=	80;
	protection	[PROT_POINT]		=	90;
	protection	[PROT_FIRE]			=	60;
	protection	[PROT_FLY]			=	60;
	protection	[PROT_MAGIC]		=	0;

//----------------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//-------------------------------------------------------------
//-------------------------------------------------------------
	fight_tactic					=	FAI_SHADOWBEAST;
//-------------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;

//	aivar[AIV_MM_Behaviour]		= HUNTER;
	
//	aivar[AIV_MM_PercRange]		= 2500;
//	aivar[AIV_MM_DrohRange]		= 2000;
//	aivar[AIV_MM_AttackRange]	= 1800;
//	aivar[AIV_MM_DrohTime]		= 2;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------

func void Set_Hellhound_Visuals()
{
	Mdl_SetVisual			(self,	"Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Hound_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Hellhound    															**
*************************************************************************/

INSTANCE Hellhound	(Mst_Default_Hellhound)
{
	Set_Hellhound_Visuals();
	Mdl_SetModelScale(self, 1.5, 1.5, 1.5);
	Npc_SetToFistMode(self);
};

