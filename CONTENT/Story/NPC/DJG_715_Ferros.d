
instance DJG_715_Ferros (Npc_Default)
{
	// ------ NSC ------
	name 		= "Feros"; 
	guild 		= GIL_DJG;
	id 			= 715;
	voice 		= 1;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_01);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Orik, BodyTex_B, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_715;
};

FUNC VOID Rtn_Start_715 ()
{
	TA_Stand_Eating						(08,00,12,00,"OCC_SHADOWS_CORNER_BENCH");
	TA_Smalltalk						(12,00,22,00,"OCC_SHADOWS_CORNER_SMALLTALK");
	TA_Sleep							(22,00,08,00,"OCC_MERCS_LEFT_ROOM_BED6");	
};

FUNC VOID Rtn_Smith_715 ()
{
	TA_Smith_Sharp			(08,00,20,00,"OCC_STABLE_LEFT_FRONT");
    TA_Sleep				(20,00,08,00,"OCC_MERCS_LEFT_ROOM_BED6");
};