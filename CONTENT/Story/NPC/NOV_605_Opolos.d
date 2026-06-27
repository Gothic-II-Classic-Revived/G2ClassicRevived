INSTANCE NOV_605_Opolos (Npc_Default)
{
	// ------ NSC ------
	name 		= "Opolos";
	guild 		= GIL_NOV;
	id 			= 605;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Opolos, Body_B_Hum_Naked, Body_Black, Teeth_Broken, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_605;
};

FUNC VOID Rtn_Start_605()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_MONASTERY_SHEEP_OPOLOS");
    TA_Stand_Guarding	(23,00,08,00,"NW_MONASTERY_SHEEP_OPOLOS");
};

FUNC VOID Rtn_Favour_605()
{	
	TA_Read_Bookstand	(08,00,23,00,"NW_MONASTERY_RUNEMAKER_07");
    TA_Read_Bookstand	(23,00,08,00,"NW_MONASTERY_RUNEMAKER_07");
};
