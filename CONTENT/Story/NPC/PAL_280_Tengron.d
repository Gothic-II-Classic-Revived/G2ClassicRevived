
instance PAL_280_Tengron (Npc_Default)
{
	// ------ NSC ------
	name 		= "Tengron";
	guild 		= GIL_PAL;
	id 			= 280;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_ToughBald01, BodyTex_L, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_280;
};

FUNC VOID Rtn_Start_280 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"LOCATION_23_CAVE_1_IN");
	TA_Pray_Innos			(23,00,08,00,"LOCATION_23_CAVE_1_OUT_PRAY");
};

FUNC VOID Rtn_RunAfterVirtualRefugee_280 ()
{	
	TA_RunToWP		(08,00,23,00,"CASTLE_8");
    TA_RunToWP		(23,00,08,00,"CASTLE_8");
};

