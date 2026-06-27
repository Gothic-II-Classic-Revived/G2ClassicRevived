
instance GRD_4120_Bilgot_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bilgot";
	guild 		= GIL_OUT;
	id 			= 41200;
	voice 		= 5;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 4);								

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Bilgot, Body_P_Hum_Naked, Body_Pale, Teeth_Broken, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4121;
};

FUNC VOID Rtn_Start_4121 ()
{	
	TA_Sit_Campfire	 	(08,00,23,00,"NW_CASTLEMINE_TROLL_04_D");
    TA_Sleep	 		(23,00,08,00,"NW_CASTLEMINE_TROLL_04_B");
};