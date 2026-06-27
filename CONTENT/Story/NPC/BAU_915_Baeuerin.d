

instance BAU_915_Baeuerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BAEUERIN; 
	guild 		= GIL_BAU;
	id 			= 915;
	voice 		= 16;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 4);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe4", Face_W_Babe_Makeup2, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_BauBabe_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_915;
};

FUNC VOID Rtn_Start_915 ()
{	
	TA_Pick_FP 			(06,00,22,00,"NW_BIGFARM_FIELD_01");
    TA_Sleep			(22,00,06,00,"NW_BIGFARM_STABLE_SLEEP_03");
};