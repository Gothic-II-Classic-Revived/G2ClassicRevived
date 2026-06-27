
instance VLK_467_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 467;
	voice 		= 6;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Hum_Normal6, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_467;
};

FUNC VOID Rtn_Start_467()
{	
	TA_Stand_ArmsCrossed	(11,00,19,00,"NW_CITY_WATCH_FIGHT_02");
    TA_Smalltalk			(19,00,03,00,"NW_CITY_HABOUR_03");
    TA_Sit_Throne			(03,00,05,00,"NW_CITY_PUFF_THRONE");
    TA_Smalltalk			(05,00,11,00,"NW_CITY_WAY_TO_SHIP_01");
};
