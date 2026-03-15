instance VLK_404_Lutero (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lutero"; 
	guild 		= GIL_VLK;
	id 			= 404;
	voice 		= 13;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_P_Normal02, BodyTex_P, ITAR_REVIVED_EBR_L);	
	Mdl_SetModelFatness	(self, 3);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_404;
};
FUNC VOID Rtn_Start_404 ()
{	
	TA_Stand_ArmsCrossed	(08,00,15,00,"NW_CITY_LUTERO");
 	TA_Smalltalk			(15,00,18,00,"NW_CITY_GUARD_01");
	TA_Sit_Bench 			(18,00,20,00,"NW_CITY_GUARD_01");
	TA_Read_Bookstand		(20,00,22,00,"NW_CITY_LUTERO_READ");
	TA_Sit_Throne			(22,00,00,00,"NW_CITY_UPTOWN_HUT_04_05");
	TA_Sleep				(00,00,08,00,"NW_CITY_LUTERO_BED");

};
