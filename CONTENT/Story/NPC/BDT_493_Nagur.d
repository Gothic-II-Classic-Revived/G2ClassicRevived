
instance BDT_493_NAGUR (Npc_Default)
{
	// ------ NSC ------
	name 		= "Nagur"; 
	guild 		= GIL_NONE;
	id 			= 493;
	voice 		= 8;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Nagur, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_493;
};

FUNC VOID Rtn_Start_493()
{	
	TA_Sit_Chair		(08,00,23,00,"NW_CITY_HABOUR_TAVERN01_02");
    TA_Sit_Chair		(23,00,08,00,"NW_CITY_HABOUR_TAVERN01_02"); 
};
FUNC VOID Rtn_Prison_493()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_CITY_HABOUR_KASERN_NAGUR");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_CITY_HABOUR_KASERN_NAGUR"); 
};
