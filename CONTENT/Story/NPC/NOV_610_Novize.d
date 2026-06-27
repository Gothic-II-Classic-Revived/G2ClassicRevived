INSTANCE NOV_610_Novize (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Novize;
	guild 		= GIL_NOV;
	id 			= 610;
	voice 		= 8;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 																
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal24, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_610;
};

FUNC VOID Rtn_Start_610 ()
{	
	TA_Pick_FP 			(08,00,13,00,"NW_MONASTERY_HERB_03");
	TA_Pray_Innos_FP	(13,00,14,00,"NW_MONASTERY_CHURCH_03");
	TA_Pick_FP 			(14,00,22,50,"NW_MONASTERY_HERB_03");   
    TA_Sleep			(22,50,08,00,"NW_MONASTERY_NOVICE04_06");
};
