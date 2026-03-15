
instance SLD_840_Alvares (Npc_Default)
{
	// ------ NSC ------
	name 		= "Alvares"; 
	guild 		= GIL_SLD;
	id 			= 840;
	voice 		= 11;
	flags       = 0;						
	npctype		= NPCTYPE_SLDOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	
	
	//--------Aivars-----------------------
	aivar[AIV_EnemyOverride] = TRUE;  
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_AXE_LIGHT_03);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_B_Tough_Silas, BodyTex_B, ITAR_REVIVED_SLD_L_02);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_840;
};

FUNC VOID Rtn_PreStart_840 ()
{	
	TA_Smalltalk		(08,00,22,00,"NW_FARM2_PATH_02");
    TA_Smalltalk		(22,00,08,00,"NW_FARM2_PATH_02");
};

FUNC VOID Rtn_Start_840 ()
{
	TA_Smalltalk		(08,00,22,00,"NW_FARM2_TO_TAVERN_08");
    TA_Smalltalk		(22,00,08,00,"NW_FARM2_TO_TAVERN_08");	
};

FUNC VOID Rtn_Bigfarm_840 ()
{
	TA_Smalltalk		(08,00,22,00,"NW_BIGFARM_HOUSE_OUT_05");
    TA_Sit_Chair 		(22,00,08,00,"NW_BIGFARM_HOUSE_12");	
};
