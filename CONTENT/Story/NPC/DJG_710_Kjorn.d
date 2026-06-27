

instance DJG_710_Kjorn (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kjorn"; 
	guild 		= GIL_DJG;
	id 			= 710;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Kjorn, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_710;
};

FUNC VOID Rtn_PreStart_710 ()
{
	TA_Smalltalk 						(08,00,23,00,"OW_PATH_DJG_004");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_DJG_004");		
};

FUNC VOID Rtn_StartPass_710()
{
	TA_Sit_Campfire						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_005");
    TA_Sit_Campfire						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_005");
};

FUNC VOID Rtn_Start_710 ()
{
	TA_Stand_Drinking  						(08,00,23,00,"OW_PATH_056B");
    TA_Stand_Drinking						(23,00,08,00,"OW_PATH_056B");		
};