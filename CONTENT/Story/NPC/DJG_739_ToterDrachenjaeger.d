

instance DJG_739_ToterDrachenjaeger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ToterDrachenjaeger; 
	guild 		= GIL_DJG;
	id 			= 739;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal37, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_739;
};

FUNC VOID Rtn_Start_739 ()
{
	TA_Sit_Bench						(08,00,23,00,"OW_PATH_WARAN06_SPAWN01");	//Joly: Turm in Nähe der Newmine
    TA_Sit_Bench						(23,00,08,00,"OW_PATH_WARAN06_SPAWN01");		
};



