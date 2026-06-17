
instance SLD_808_Jarvis (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jarvis";
	guild 		= GIL_SLD;
	id 			= 808;
	voice 		= 4;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_MACE_WAR_03);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Torlof, BodyTex_N, ITAR_REVIVED_SLD_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_808;
};

FUNC VOID Rtn_Start_808 ()
{
    TA_Sit_Chair 		(07,05,00,05,"NW_BIGFARM_KITCHEN_09");
    TA_Sleep			(00,05,07,05,"NW_BIGFARM_HOUSE_08");
};

