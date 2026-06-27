
instance DJG_709_Rethon (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rethon";
	guild 		= GIL_DJG;
	id 			= 709;
	voice 		= 12;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Rethon, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_709;
};

FUNC VOID Rtn_Start_709 ()
{
	TA_Smith_Sharp			(08,00,08,30,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(08,30,09,00,"OCC_WELL_FIGHT01");
  	TA_Practice_Sword			(09,00,09,30,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(09,30,10,00,"OCC_STABLE_LEFT_FRONT");
 	TA_Stand_Guarding			(10,00,10,30,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(10,30,11,00,"OCC_WELL_FIGHT01");
	TA_Smith_Sharp			(11,00,11,30,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(11,30,12,00,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(12,00,12,30,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(12,30,13,00,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(13,00,13,30,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(13,30,14,00,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(14,00,14,30,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(14,30,15,00,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(15,00,15,30,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(15,30,16,00,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(16,00,16,30,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(16,30,17,00,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(17,00,17,30,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(17,30,18,00,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(18,00,18,30,"OCC_WELL_FIGHT01");
    TA_Smith_Sharp			(18,30,19,00,"OCC_STABLE_LEFT_FRONT");
    TA_Stand_Guarding			(19,00,19,30,"OCC_WELL_FIGHT01");
    TA_Practice_Sword			(19,30,20,00,"OCC_WELL_FIGHT01");
    
    TA_Sit_Campfire				(20,00,08,00,"OCC_SHADOWS_CORNER");

};
