

instance BAU_903_Bodo (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bodo";
	guild 		= GIL_BAU;
	id 			= 903;
	voice 		= 12;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SCYTHE_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Bodo, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_BAU_M);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_903;
};

FUNC VOID Rtn_Start_903 ()
{	
	TA_Smalltalk		(07,45,21,45,"NW_BIGFARM_BIGTREE_SMALLTALK_STABLE_02");
    TA_Sit_Bench		(21,45,07,45,"NW_BIGFARM_PATH_03");
};

