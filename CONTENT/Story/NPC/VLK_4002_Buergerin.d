
instance VLK_4002_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 4002;
	voice 		= 17;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal1, Body_W_Babe_Naked, Body_White, Teeth_Broken, ITAR_VlkBabe_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4002;
};

FUNC VOID Rtn_Start_4002 ()
{	
	
    TA_Cook_Stove 		(06,00,08,00,"NW_CITY_RICHTER_COOK");
    TA_Stand_Sweeping 	(08,00,10,00,"NW_CITY_UPTOWN_JUDGE_02");
    TA_Smalltalk		(10,00,14,00,"NW_CITY_UPTOWN_PATH_15");
    TA_Cook_Stove 		(14,00,16,00,"NW_CITY_RICHTER_COOK");
    TA_Sit_Chair		(16,00,18,00,"NW_CITY_RICHTER");
    TA_Stand_Sweeping 	(18,00,20,00,"NW_CITY_UPTOWN_JUDGE_02");
    TA_Sit_Throne 		(20,00,23,00,"NW_CITY_UPTOWN_JUDGE_THRONE_01");
    TA_Sleep			(23,00,06,00,"NW_CITY_RICHTER_BED_WEIB");
    
};
