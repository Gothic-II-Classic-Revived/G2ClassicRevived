

instance BAU_945_Egill (Npc_Default)
{
	// ------ NSC ------
	name 		= "Egill";
	guild 		= GIL_BAU;
	id 			= 945;
	voice 		= 8;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 1);							
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_P_Normal03, BodyTex_P, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_945;
};

FUNC VOID Rtn_Start_945 ()
{
	TA_Pick_FP			(05,00,12,00,"NW_FARM2_FIELD_02");
	TA_Pick_FP			(12,00,20,55,"NW_FARM2_FIELD_03");
    TA_Stand_Drinking	(20,55,00,02,"NW_FARM2_OUT_12");
    TA_Sit_Campfire		(00,02,02,00,"NW_FARM2_OUT_03");
    TA_Sleep			(02,00,05,00,"NW_FARM2_HUT1_005");
};