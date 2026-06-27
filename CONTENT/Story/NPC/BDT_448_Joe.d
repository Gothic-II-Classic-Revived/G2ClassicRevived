
instance BDT_448_JOE (Npc_Default)
{
	// ------ NSC ------
	name 		= "Joe"; 
	guild 		= GIL_NONE;
	id 			= 448;
	voice 		= 10;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 10);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Joe, Body_P_Hum_Normal2, Body_Pale, Teeth_Normal, ITAR_REVIVED_BEGGAR);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_448;
};

FUNC VOID Rtn_PreStart_448()
{	
	TA_Sit_Campfire	(08,00,23,00,"NW_CITY_MERCHANT_TOWER_01");
    TA_Sit_Campfire	(23,00,08,00,"NW_CITY_MERCHANT_TOWER_01");
};
FUNC VOID Rtn_Start_448()
{	
	TA_Stand_Drinking	(08,00,23,00,"NW_CITY_HABOUR_TAVERN01_08");
    TA_Stand_Drinking	(23,00,08,00,"NW_CITY_HABOUR_TAVERN01_08");
};
