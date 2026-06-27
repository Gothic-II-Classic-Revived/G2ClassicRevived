
instance VLK_417_Constantino (Npc_Default)
{
	// ------ NSC ------
	name 		= "Constantino";	
	guild 		= GIL_VLK;
	id 			= 417;
	voice 		= 10;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_WALKINGSTICK_01);
	EquipItem (self, ITHE_REVIVED_SPECTACLES_02);
	
	// ------ Inventory ------
	// Händler
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Psionic.", Face_W_Constantino, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_SMITH);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_417;
};

FUNC VOID Rtn_Start_417 ()
{	
	TA_Potion_Alchemy	(08,00,22,00,"NW_CITY_ALCHEMY_VELAX");
    TA_Sleep			(22,00,08,00,"NW_CITY_BED_VELAX");
};
