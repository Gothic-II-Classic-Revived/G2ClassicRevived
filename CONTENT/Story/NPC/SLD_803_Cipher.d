
instance SLD_803_Cipher (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cipher";
	guild 		= GIL_SLD;
	id 			= 803;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);															//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_MACE_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Cipher, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_ORG_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_803;
};

FUNC VOID Rtn_Start_803 ()
{
	TA_Smalltalk	(07,35,23,35,"NW_BIGFARM_PATH_04_1A");
	TA_Sleep		(23,35,07,35,"NW_BIGFARM_MERCHUT_SLEEP_04");		
};

FUNC VOID Rtn_BeatDar_803 ()
{
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_BIGFARM_KITCHEN_CIPHER");
	TA_Smoke_Joint			(22,00,08,00,"NW_BIGFARM_KITCHEN_CIPHER");		
};

FUNC VOID Rtn_Tot_803 ()
{
	TA_Sleep		(08,00,23,00,"TOT");
    TA_Sleep		(23,00,08,00,"TOT");		
};

