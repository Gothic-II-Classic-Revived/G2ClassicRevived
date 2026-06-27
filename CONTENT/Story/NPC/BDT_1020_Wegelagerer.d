
instance BDT_1020_Wegelagerer (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_HIGHWAYMAN; 
	guild 		= GIL_BDT;
	id 			= 1020;
	voice 		= 6;
	flags       = 0;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride] = TRUE;
	aivar[AIV_DropDeadAndKill] = TRUE;     
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 25);													//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_W_Hum_Normal6, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_BDT_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA ------
	TA_Guard_Passage (00,00,12,00,"NW_TROLLAREA_PATH_47");
	TA_Guard_Passage (12,00,00,00,"NW_TROLLAREA_PATH_47");
};
