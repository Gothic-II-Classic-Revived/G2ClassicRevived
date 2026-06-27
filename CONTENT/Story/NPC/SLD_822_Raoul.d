
instance SLD_822_Raoul (Npc_Default)
{
	// ------ NSC ------
	name 		= "Raoul"; 
	guild 		= GIL_SLD;
	id 			= 822;
	voice 		= 1;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Raoul, Body_L_Hum_Naked, Body_Latino, Teeth_Gold, ITAR_REVIVED_SLD_L_02);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_822;
};

FUNC VOID Rtn_PreStart_822 ()
{
	TA_Stand_Guarding	(08,00,22,00,"NW_BIGFARM_PATH_01");
    TA_Stand_Guarding	(22,00,08,00,"NW_BIGFARM_PATH_01");		
};

