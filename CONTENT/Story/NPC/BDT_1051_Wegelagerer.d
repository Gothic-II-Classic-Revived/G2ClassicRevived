instance BDT_1051_Wegelagerer (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_HIGHWAYMAN; 
	guild 		= GIL_BDT;
	id 			= 1051;
	voice 		= 7;
	flags       = 0;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_EnemyOverride] = TRUE;     
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 25);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal23, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_BDT_H);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA ------
	start_aistate = ZS_Smalltalk;
};
