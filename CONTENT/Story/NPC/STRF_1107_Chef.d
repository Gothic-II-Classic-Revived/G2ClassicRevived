
instance STRF_1107_Chef (Npc_Default)
{
	// ------ NSC ------
	name 		= "Koch";
	guild 		= GIL_STRF;
	id 			= 1107;
	voice 		= 1;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem (self, ITMW_REVIVED_2H_PICKAXE );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart04, BodyTex_N, ITAR_REVIVED_SFB_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1107;
};

FUNC VOID Rtn_Start_1107 ()
{	
	TA_Cook_Cauldron		(08,00,23,00,"OCC_BARONS_RIGHT_ROOM_FRONT");
    TA_Stand_Sweeping		(23,00,08,00,"OCC_BARONS_RIGHT_ROOM");
};

