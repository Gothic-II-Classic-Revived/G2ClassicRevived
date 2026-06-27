
instance PAL_252_Parcival (Npc_Default)
{
	// ------ NSC ------
	name 		= "Parcival";
	guild 		= GIL_PAL;
	id 			= 252;
	voice 		= 13;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_P_Parcival, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_252;
};

FUNC VOID Rtn_Start_252 ()
{	
	TA_Smalltalk			(08,00,20,00,"OCC_BARONS_GREATHALL_CENTER_LEFT");
	TA_Stand_ArmsCrossed	(20,00,22,00,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT");
    TA_Sleep				(22,00,08,00,"OCC_BARONS_UPPER_RIGHT_ROOM_BED1");
};
