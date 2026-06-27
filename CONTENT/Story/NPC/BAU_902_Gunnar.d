

instance BAU_902_Gunnar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gunnar";
	guild 		= GIL_BAU;
	id 			= 902;
	voice 		= 10;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);															//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SCYTHE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Gunnar, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_902;
};

FUNC VOID Rtn_Start_902 ()
{	
	TA_Smalltalk			(08,00,19,59,"NW_BIGFARM_BIGTREE_SMALLTALK_STABLE_02");
    TA_Sit_Chair			(19,59,08,00,"NW_BIGFARM_STABLE_06");
};

