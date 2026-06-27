
instance GRD_4153_TurmWache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_TowerGuard; 
	guild 		= GIL_MIL;
	id 			= 4153;
	voice 		= 3;
	flags       = 0;
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_07);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal1, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4153;
};

FUNC VOID Rtn_Start_4153 ()
{	
	TA_Stand_Guarding			(06,00,12,00,"OCC_GREATTOWER_TOP_001");
    TA_Stand_Guarding			(12,00,18,00,"OCC_GREATTOWER_TOP_002");
    TA_Stand_Guarding			(18,00,00,00,"OCC_GREATTOWER_TOP_003");
    TA_Stand_Guarding			(00,00,06,00,"OCC_GREATTOWER_TOP_004");
};