
instance VLK_456_Abuyin (Npc_Default)
{
	// ------ NSC ------
	name 		= "Abuyin"; 
	guild 		= GIL_VLK;
	id 			= 456;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Abuyin, Body_B_Hum_Naked, Body_Black, Teeth_Gold, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	//Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_456;
};

FUNC VOID Rtn_Start_456()
{	
	TA_Stand_ArmsCrossed 		(07,20,01,20,"NW_CITY_SMOKE_05");
    TA_Sleep					(01,20,07,20,"NW_CITY_HOTEL_BED_05");
};
