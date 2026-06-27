
instance VLK_419_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 419;
	voice 		= 1;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_07);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																		
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald.", Face_W_Hum_Normal37, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_VLK_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_419;
};

FUNC VOID Rtn_Start_419 ()
{	
	TA_Sit_Bench 		(07,00,11,00,"NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking	(11,00,12,30,"NW_CITY_UPTOWN_HUT_02_ENTRY");
	TA_Stand_Eating		(12,30,15,00,"NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Bench 		(15,00,18,00,"NW_CITY_UPTOWN_PATH_23");
	TA_Stand_Drinking	(18,00,20,00,"NW_CITY_UPTOWN_PATH_17");
	TA_Sit_Chair		(20,00,23,00,"NW_CITY_UPTOWN_HUT_03_IN");
	TA_Sleep			(23,00,07,00,"NW_CITY_UPTOWN_HUT_03_BED");	
};
