
instance BDT_1025_Bandit_H (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1025;
	voice 		= 9;
	flags       = 0;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-----------------------
	aivar[AIV_EnemyOverride] = TRUE;  

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);																		//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_04);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_B_Hum_Normal3, Body_B_Hum_Naked, Body_Black, Teeth_Rotten, ITAR_REVIVED_BDT_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA ------
	daily_routine 		= Rtn_Start_1025;
};

FUNC VOID Rtn_Start_1025 ()
{	
	TA_Stand_Guarding 		(08,00,22,00,"NW_FOREST_CAVE1_02");
    TA_Stand_Guarding		(22,00,08,00,"NW_FOREST_CAVE1_02");
};


