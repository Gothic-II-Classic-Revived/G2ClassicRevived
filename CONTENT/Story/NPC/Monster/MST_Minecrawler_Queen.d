
/*************************************************************************
**	Minecrawler QUEEN Prototype											**
*************************************************************************/

PROTOTYPE Mst_Default_MinecrawlerQueen(C_Npc)			
{
	name							=	"Minecrawler Queen";
	guild							=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]			= 	ID_MINECRAWLERQUEEN;
	
	//----- Attribute ----
	B_SetMonsterAttributesForLevel(self, 30);
	slf.attribute[ATR_HITPOINTS_MAX] 	= 1000;
	slf.attribute[ATR_HITPOINTS] 		= 1000;

	//----- Protections ----
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	IMMUNE;
	protection	[PROT_MAGIC]		=	100;
//------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//------------------------------------------------------
	fight_tactic					=	FAI_MINECRAWLERQUEEN;
//------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;
/* 
	aivar[AIV_MM_Behaviour]		= PASSIVE;
	
	aivar[AIV_MM_PercRange]		= 1200;
	aivar[AIV_MM_DrohRange]		= 1000;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 1; */
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//---------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;
};
//---------------------------------------------------
func void Set_MinecrawlerQueen_Visuals()
{
	Mdl_SetVisual			(self,"CrwQueen.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"CrQ_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	MinecrawlerQueen    												**
*************************************************************************/

INSTANCE MinecrawlerQueen	(Mst_Default_MinecrawlerQueen)
{
	Set_MinecrawlerQueen_Visuals();
	Npc_SetToFistMode(self);
};
