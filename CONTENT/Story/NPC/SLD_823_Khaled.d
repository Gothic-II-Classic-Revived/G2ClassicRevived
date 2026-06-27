
instance SLD_823_Khaled (Npc_Default)
{
	// ------ NSC ------
	name 		= "Khaled"; 
	guild 		= GIL_SLD;
	id 			= 823;
	voice 		= 11;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_AXE_LIGHT_03);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_B_Khaled, Body_B_Hum_Naked, Body_Black, Teeth_Broken, ITAR_SLD_H);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_823;
};

FUNC VOID Rtn_Start_823 ()
{
	TA_Stand_Guarding		(07,55,21,55,"NW_BIGFARM_HOUSE_12");
    TA_Stand_Eating			(21,55,23,55,"NW_BIGFARM_HOUSE_UP2_06");
    TA_Sleep				(23,55,07,55,"NW_BIGFARM_HOUSE_UP2_02");
};

