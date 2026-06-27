
instance SLD_805_Cord (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cord";
	guild 		= GIL_SLD;
	id 			= 805;
	voice 		= 14;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_CORD);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Cord, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_SLD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_805;
};

FUNC VOID Rtn_Start_805 ()
{
	TA_Practice_Sword 	(07,40,22,40,"NW_BIGFARM_CORD");
    TA_Sleep			(22,40,07,40,"NW_BIGFARM_MERCHUT_SLEEP_05");
};