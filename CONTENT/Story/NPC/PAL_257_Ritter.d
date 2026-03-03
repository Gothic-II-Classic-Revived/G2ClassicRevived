
instance PAL_257_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_RITTER; 
	guild 		= GIL_PAL;
	id 			= 257;
	voice 		= 9;
	flags       = NPC_FLAG_IMMORTAL;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Swiney, BodyTex_N, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_257;
};

FUNC VOID Rtn_Start_257 ()
{	
	TA_Practice_Sword		(08,00,19,00,"OCC_FIGHTTRAINING_002");
    TA_Sit_Campfire			(19,00,08,00,"OCC_WELL_RIGHT_MOVEMENT");
};
FUNC VOID Rtn_Marcos_257 ()
{	
	TA_Stand_Guarding		(08,00,19,00,"OW_PATH_WATCHTOWER_003");
    TA_Stand_Guarding		(19,00,08,00,"OW_PATH_WATCHTOWER_003");
};
