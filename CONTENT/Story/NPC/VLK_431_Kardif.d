
instance VLK_431_Kardif (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kardif"; 
	guild 		= GIL_VLK;
	id 			= 431;
	voice 		= 14;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_CLUB_01); 
	
	// ------ Inventory ------
	// Händler

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Kardif, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_Smith);	
	Mdl_SetModelFatness	(self,2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_431;
};

FUNC VOID Rtn_Start_431 ()
{	
	TA_Stand_Sweeping		(08,00,11,00,"NW_CITY_HABOUR_TAVERN01_SMALLTALK_01"); 
	TA_Stand_ArmsCrossed	(11,00,13,00,"NW_CITY_KARDIF"); 
	TA_Stand_Sweeping		(13,00,16,00,"NW_CITY_HABOUR_TAVERN01_SMALLTALK_01"); 
	TA_Stand_ArmsCrossed	(16,00,08,00,"NW_CITY_KARDIF"); 
    
};
