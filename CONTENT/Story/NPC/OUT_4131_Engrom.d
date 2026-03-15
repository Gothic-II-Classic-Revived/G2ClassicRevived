
instance VLK_4131_Engrom (Npc_Default)
{
	// ------ NSC ------
	name 		= "Engrom";
	guild 		= GIL_OUT;
	id 			= 4131;
	voice 		= 12;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart20, BodyTex_N, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4131;
};

FUNC VOID Rtn_Start_4131 ()
{	
	TA_Sit_Campfire	(08,00,23,00,"SPAWN_TALL_PATH_BANDITOS2_03");
    TA_Sit_Campfire	(23,00,08,00,"SPAWN_TALL_PATH_BANDITOS2_03");
};

FUNC VOID Rtn_Obsessed_4131 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"OW_PATH_BANDITOS01");
    TA_Stand_ArmsCrossed	(23,00,08,00,"OW_PATH_BANDITOS01");
};
