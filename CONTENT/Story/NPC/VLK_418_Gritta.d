
instance VLK_418_Gritta (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gritta";	
	guild 		= GIL_VLK;
	id 			= 418;
	voice 		= 16;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);															
		
	// ------ Inventory ------
	CreateInvItems (self,ItMi_Gold, 100);		//für die Matteo Mission
	//KEIN AmbientInv!!!
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Gritta, Body_W_Babe_Naked, Body_White, Teeth_Broken, ITAR_VlkBabe_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_418;
};

FUNC VOID Rtn_Start_418 ()
{	
	TA_Stand_Sweeping		(08,00,12,00,"NW_CITY_MERCHANT_SHOP01_IN_02");
	TA_Cook_Stove			(12,00,14,00,"NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Stand_Sweeping		(14,00,18,00,"NW_CITY_MERCHANT_SHOP01_IN_02");
	TA_Cook_Stove			(18,00,20,00,"NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Read_Bookstand 		(20,00,23,00,"NW_CITY_MERCHANT_SHOP01_IN_02");
    TA_Sleep				(23,00,08,00,"NW_CITY_BED_GRITTA");
};
