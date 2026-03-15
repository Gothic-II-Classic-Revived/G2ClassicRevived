
instance SLD_841_Engardo (Npc_Default)
{
	// ------ NSC ------
	name 		= "Engardo"; 
	guild 		= GIL_SLD;
	id 			= 841;
	voice 		= 13;
	flags       = 0;						
	npctype		= NPCTYPE_SLDOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	//--------Aivars-----------------------
	aivar[AIV_EnemyOverride] = TRUE;  
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_LIGHT_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Normal_Erpresser, BodyTex_N, ITAR_REVIVED_ORG_H);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_841;
};

FUNC VOID Rtn_PreStart_841 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"NW_FARM2_PATH_02");
    TA_Stand_Guarding		(22,00,08,00,"NW_FARM2_PATH_02");
};

FUNC VOID Rtn_Start_841 ()
{
	TA_Smalltalk		(08,00,22,00,"NW_FARM2_TO_TAVERN_08");
    TA_Smalltalk		(22,00,08,00,"NW_FARM2_TO_TAVERN_08");	
};

FUNC VOID Rtn_Bigfarm_841 ()
{
	TA_Smalltalk		(08,00,22,00,"NW_BIGFARM_HOUSE_OUT_05");
    TA_Sit_Chair 		(22,00,08,00,"NW_BIGFARM_HOUSE_12");	
};
