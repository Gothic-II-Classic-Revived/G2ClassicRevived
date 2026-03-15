instance OUT_4130_TALBIN_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Talbin";
	guild 		= GIL_OUT;
	id 			= 41300;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_MACE_01);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Bullit, BodyTex_N, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_4132;
};

FUNC VOID Rtn_PreStart_4132 ()
{	
	TA_Stand_Eating (08,00,23,00,"NW_TO_PASS_04");
    TA_Stand_Eating	(23,00,08,00,"NW_TO_PASS_04");
};

FUNC VOID Rtn_Farm_4132 ()
{	
	TA_Sit_Bench 		(08,00,23,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_02"); 
    TA_Sit_Bench		(23,00,08,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_02");
};
