instance OUT_961_GAAN (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gaan";
	guild 		= GIL_OUT;
	id 			= 961;
	voice 		= 3;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_03);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_REVIVED_ARCHER);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_961;
};

FUNC VOID Rtn_PreStart_961 ()
{	
	TA_Stand_ArmsCrossed 		 (08,00,22,00,"NW_FARM3_PATH_LEVELCHANGE_02");	 
    TA_Stand_ArmsCrossed		 (22,00,08,00,"NW_FARM3_PATH_LEVELCHANGE_02");
};

FUNC VOID Rtn_Start_961 ()
{	
	TA_Stand_ArmsCrossed 		 (08,00,22,00,"NW_FARM3_GAAN");
    TA_Sit_Campfire		 		 (22,00,08,00,"NW_FARM3_STABLE_REST_01"); 
};