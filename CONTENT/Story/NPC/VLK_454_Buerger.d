
instance VLK_454_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 454;
	voice 		= 1;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self, ITMW_REVIVED_1H_SWORD_OLD_02);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Hum_Normal5, Body_P_Hum_Naked, Body_Pale, Teeth_Rotten, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_454;
};

FUNC VOID Rtn_Start_454()
{	
	TA_Stand_ArmsCrossed	(05,15,20,15,"NW_CITY_MERCHANT_PATH_14_C");
    TA_Smoke_Waterpipe		(20,15,01,15,"NW_CITY_SMOKE_02");
    TA_Sit_Chair			(01,15,05,15,"NW_CITY_TAVERN_IN_01");
};

FUNC VOID Rtn_VatrasAway_454()
{	
	TA_Sit_Chair			(05,15,20,15,"NW_CITY_TAVERN_IN_01");
    TA_Smoke_Waterpipe		(20,15,01,15,"NW_CITY_SMOKE_02");
    TA_Sit_Chair			(01,15,05,15,"NW_CITY_TAVERN_IN_01");
};
