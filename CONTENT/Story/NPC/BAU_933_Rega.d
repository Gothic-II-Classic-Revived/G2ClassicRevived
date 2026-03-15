

instance BAU_933_Rega  (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rega";
	guild 		= GIL_BAU;
	id 			= 933;
	voice 		= 17;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_OldBlonde, BodyTexBabe_N, ITAR_BauBabe_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_933;
};

FUNC VOID Rtn_Start_933 ()
{	
	TA_Pick_FP			(08,00,22,00,"NW_FARM4_FIELD_02");
    TA_Sit_Campfire		(22,00,08,00,"NW_FARM4_REST_02");
};

FUNC VOID Rtn_FleeDMT_933 ()
{	
	TA_Pick_FP			(08,00,22,00,"NW_FARM4_FIELD_02");
    TA_Pick_FP			(22,00,08,00,"NW_FARM4_FIELD_02");
};


