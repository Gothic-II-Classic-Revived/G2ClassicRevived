
instance BAU_938_Bauer (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BAUER;
	guild 		= GIL_BAU;
	id 			= 938;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Orry, BodyTex_N, ITAR_Bau_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_938;
};

FUNC VOID Rtn_Start_938 ()
{	
	TA_Pick_FP			(08,00,22,00,"NW_FARM4_FIELD_02");
    TA_Sit_Campfire		(22,00,08,00,"NW_FARM4_REST_01");
};

FUNC VOID Rtn_FleeDMT_938 ()
{	
	TA_Rake_FP			(08,00,22,00,"NW_FARM4_FIELD_02");
    TA_Rake_FP			(22,00,08,00,"NW_FARM4_FIELD_02");
};
