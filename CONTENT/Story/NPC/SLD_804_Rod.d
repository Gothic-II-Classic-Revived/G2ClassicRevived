
instance SLD_804_Rod (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rod";
	guild 		= GIL_SLD;
	id 			= 804;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_ROD);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Rod, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_SLD_M);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_804;
};

FUNC VOID Rtn_Start_804 ()
{
	TA_Smalltalk	(07,55,22,55,"NW_BIGFARM_BIGTREE_SMALLTALK_STABLE_01");
    TA_Sleep		(22,55,07,55,"NW_BIGFARM_MERCHUT_SLEEP_06");
};


FUNC VOID Rtn_Tot_804 ()
{
	TA_Sleep		(08,00,23,00,"TOT");
    TA_Sleep		(23,00,08,00,"TOT");		
};
