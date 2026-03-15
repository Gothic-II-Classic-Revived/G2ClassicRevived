
instance OUT_4130_TALBIN (Npc_Default)
{
	// ------ NSC ------
	name 		= "Talbin";
	guild 		= GIL_OUT;
	id 			= 4130;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_FRIEND;	//Joly: flieht mit dem sc aus dem minental!
	
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
	daily_routine 		= Rtn_Start_4130;
};

FUNC VOID Rtn_Start_4130 ()
{	
	TA_Sit_Campfire	(08,00,23,00,"SPAWN_TALL_PATH_BANDITOS2_03");
    TA_Sit_Campfire	(23,00,08,00,"SPAWN_TALL_PATH_BANDITOS2_03");
};

FUNC VOID Rtn_FleePass_4130 ()
{	
	TA_RunToWP 	(08,00,23,00,"OW_PATH_1_17");
    TA_RunToWP	(23,00,08,00,"OW_PATH_1_17");
};


FUNC VOID Rtn_IntoPass_4130 ()
{	
	TA_Stand_Eating 	(08,00,23,00,"TOT");
    TA_Stand_Eating		(23,00,08,00,"TOT");
};

