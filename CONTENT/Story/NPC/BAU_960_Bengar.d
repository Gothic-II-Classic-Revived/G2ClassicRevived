

instance BAU_960_Bengar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bengar";
	guild 		= GIL_BAU;
	id 			= 960;
	voice 		= 10;
	flags       = NPC_FLAG_IMMORTAL;													//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 10);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_960;
};

FUNC VOID Rtn_Start_960 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"NW_FARM3_BENGAR");
    TA_Stand_Guarding		(22,00,08,00,"NW_FARM3_BENGAR"); 
};

FUNC VOID Rtn_MilComing_960 ()
{	
	TA_Smalltalk		(08,00,22,00,"NW_FARM3_BENGAR"); 
    TA_Smalltalk		(22,00,08,00,"NW_FARM3_BENGAR");
};



