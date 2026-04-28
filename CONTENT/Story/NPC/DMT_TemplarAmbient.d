PROTOTYPE Default_AmbientTemplar (C_NPC)			
{
	//----- Monster ----
	name							=	NAME_Templar;
	guild							=	GIL_DMT;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;

	//----- Attribute ----	
	B_SetAttributesForLevel(self, 70);
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);	

	//----- Protection ----
	protection	[PROT_BLUNT]		=	100; //hat RS!
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100; 
	protection	[PROT_FIRE]			=	100;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	0;	//so lassen!
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_LIGHT_04);

	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

// *******************************************************
// DMT_TemplarAmbient
// *******************************************************

instance DMT_TemplarAmbientL (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_PSI_TPL_02);	
};

instance DMT_TemplarAmbientM (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_PSI_TPL_02);	
};

instance DMT_TemplarAmbientH (Default_AmbientTemplar)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 70);
	
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_REVIVED_PSI_TPL);	
};