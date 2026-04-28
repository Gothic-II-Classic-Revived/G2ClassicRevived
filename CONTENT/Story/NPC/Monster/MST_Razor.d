/*************************************************************************
**	Razor Prototype		(Anims wie Snapper)								**
*************************************************************************/

PROTOTYPE Mst_Default_Razor(C_Npc)			
{
	name							= "Razor";
	guild							= GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]			= ID_RAZOR;

	//----- Attributes ----
	B_SetMonsterAttributesForLevel(self, 18);

	//----- Protections ----
	protection	[PROT_BLUNT]		=	90;
	protection	[PROT_EDGE]			=	90;
	protection	[PROT_POINT]		=	60;
	protection	[PROT_FIRE]			=	60;
	protection	[PROT_FLY]			=	40;
	protection	[PROT_MAGIC]		=	0;

//--------------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//--------------------------------------------------------------
	fight_tactic					=	FAI_SNAPPER;
//--------------------------------------------------------------	
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;

//	aivar[AIV_MM_Behaviour]		= HUNTER;
	
//	aivar[AIV_MM_PercRange]		= 1400;
//	aivar[AIV_MM_DrohRange]		= 1200;
//	aivar[AIV_MM_AttackRange]	= 700;
//	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
//-------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------
func void Set_Razor_Visuals()
{
	Mdl_SetVisual			(self,	"Razor.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Raz_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Razor    															**
*************************************************************************/

INSTANCE Razor (Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};