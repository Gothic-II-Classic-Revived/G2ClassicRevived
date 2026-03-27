
instance GRD_4143_HaupttorWache (Npc_Default)
{
	// ------ NSC ------
	name 		= "Burgtorwache"; 
	guild 		= GIL_MIL;
	id 			= 4143;
	voice 		= 13;
	flags       = 0;
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_07);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITKE_OC_MAINGATE_MIS, 1);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal18, BodyTex_N, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4143;
};

FUNC VOID Rtn_Start_4143 ()
{	
	TA_Stand_Guarding			(08,00,18,00,"OCC_TOWER_PLATFORM_GUARD_LEFT");
    TA_Stand_Guarding			(18,00,23,00,"OCC_TOWER_PLATFORM_GUARD_RIGHT");
    TA_Stand_Guarding			(23,00,08,00,"OCC_TOWER_PLATFORM_GUARD_FRONT");
};

FUNC VOID Rtn_KAP5_4143 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"OCC_RIGHT_TOWER_GANGWAY_GUARD");
    TA_Stand_Guarding		(22,00,08,00,"OCC_RIGHT_TOWER_GANGWAY_GUARD");
};