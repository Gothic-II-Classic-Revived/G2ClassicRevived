
instance BDT_492_RENGARU (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rengaru"; 
	guild 		= GIL_NONE;
	id 			= 492;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50); //hat er Nagur geklaut! Muss genau 50 im Inv haben M.F. 
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Rengaru, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_492;
};

FUNC VOID Rtn_Start_492()
{	
	TA_Stand_ArmsCrossed	(05,15,20,15,"NW_CITY_MERCHANT_PATH_36_C_RENGARU");
    TA_Stand_Drinking 		(20,15,05,15,"NW_CITY_BEER_09"); 
};

FUNC VOID Rtn_RunAway_492()
{	
	TA_FleeToWP 	(08,00,23,00,"NW_CITY_HABOUR_SHIP_01");
    TA_FleeToWP		(23,00,08,00,"NW_CITY_HABOUR_SHIP_01"); 
};

FUNC VOID Rtn_Prison_492()
{	
	TA_Stand_ArmsCrossed 	(08,00,23,00,"NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
};