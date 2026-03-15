

instance BAU_963_Malak (Npc_Default)
{
	// ------ NSC ------
	name 		= "Malak";
	guild 		= GIL_BAU;
	id 			= 963;
	voice 		= 8;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																		//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal_Sly, BodyTex_N, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_963;
};

FUNC VOID Rtn_Start_963 ()
{	
	TA_Stand_Eating		(08,00,22,00,"NW_FARM3_MALAK");
    TA_Stand_Eating		(22,00,08,00,"NW_FARM3_MALAK"); 
};

FUNC VOID Rtn_FleeFromPass_963 ()
{	
	TA_Stand_Eating		(08,00,22,00,"NW_BIGMILL_MALAKSVERSTECK_MALAK");
    TA_Stand_Eating		(22,00,08,00,"NW_BIGMILL_MALAKSVERSTECK_MALAK"); 
};



