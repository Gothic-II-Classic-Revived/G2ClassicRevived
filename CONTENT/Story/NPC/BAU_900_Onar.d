
instance BAU_900_Onar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Onar";
	guild 		= GIL_BAU;
	id 			= 900;
	voice 		= 14;
	flags       = NPC_FLAG_IMMORTAL;		//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Onar, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_900;
};

FUNC VOID Rtn_Start_900 ()
{
	TA_Sit_Throne			(09,00,21,00,"NW_BIGFARM_HOUSE_ONAR_SIT");
    TA_Sleep				(21,00,09,00,"NW_BIGFARM_HOUSE_UP1_04");		
};

