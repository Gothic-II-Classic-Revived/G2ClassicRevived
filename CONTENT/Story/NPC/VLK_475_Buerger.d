
instance VLK_475_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 475;
	voice 		= 1;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ AIVARs ------
	aivar[AIV_ToughGuy] 			= TRUE;	
	aivar[AIV_ToughGuyNewsOverride] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);												
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Beard6, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_475;
};

FUNC VOID Rtn_Start_475()
{	
	TA_Stand_ArmsCrossed	(10,55,18,50,"NW_CITY_WATCH_FIGHT_02");
    TA_Smalltalk			(18,50,03,05,"NW_CITY_HABOUR_04");
    TA_Stand_Drinking		(03,05,05,05,"NW_CITY_HABOUR_PUFF_IN_01");
	TA_Smalltalk			(05,05,10,05,"NW_CITY_HABOUR_POOR_AREA_01");
};
