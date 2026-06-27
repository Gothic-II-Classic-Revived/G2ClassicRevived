
instance VLK_434_Borka (Npc_Default)
{
	// ------ NSC ------
	name 		= "Borka"; 
	guild 		= GIL_VLK;
	id 			= 434;
	voice 		= 11;
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
	CreateInvItems (self, ITMI_REVIVED_JOINT_REGULAR, 20);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_L_Borka, Body_L_Hum_Naked, Body_Latino, Teeth_Gold, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_434;
};

FUNC VOID Rtn_Start_434()
{	
	TA_Stand_ArmsCrossed		(08,00,22,00,"NW_CITY_HABOUR_PUFF_ENTRANCE");
    TA_Stand_ArmsCrossed		(22,00,08,00,"NW_CITY_HABOUR_PUFF_ENTRANCE");
};
FUNC VOID Rtn_Prison_434()	//nach seiner Verhaftung M.F. 
{	
	TA_Sit_Campfire		(08,00,22,00,"NW_CITY_HABOUR_KASERN_BORKA");
    TA_Sit_Campfire		(22,00,08,00,"NW_CITY_HABOUR_KASERN_BORKA");
};
