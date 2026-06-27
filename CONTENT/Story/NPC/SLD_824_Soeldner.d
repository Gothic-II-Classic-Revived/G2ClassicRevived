
instance SLD_824_Soeldner (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_SOELDNER; 
	guild 		= GIL_SLD;
	id 			= 824;
	voice 		= 6;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_B_Hum_Bald2, Body_B_Hum_Naked, Body_Black, Teeth_Rotten, ITAR_REVIVED_SLD_L_02);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_824;
};

FUNC VOID Rtn_Start_824 ()
{
    TA_Sit_Chair				(08,00,22,00,"NW_BIGFARM_MERCHUT_04");
	TA_Stand_ArmsCrossed 		(22,00,08,00,"NW_BIGFARM_HOUSE_OUT_02");		
};

