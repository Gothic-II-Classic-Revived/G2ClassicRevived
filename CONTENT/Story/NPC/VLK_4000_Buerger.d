
instance VLK_4000_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 4000;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self,ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal31, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4000;
};

FUNC VOID Rtn_Start_4000()
{	
	TA_Sleep		(22,00,08,00,"NW_CITY_UPTOWN_HUT_05_BED_01");
	TA_Smalltalk	(08,00,12,00,"NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench	(12,00,15,00,"NW_CITY_UPTOWN_PATH_27");
	TA_Smalltalk	(15,00,18,00,"NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench	(18,00,22,00,"NW_CITY_UPTOWN_PATH_27");
};
