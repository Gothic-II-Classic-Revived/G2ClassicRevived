
instance VLK_470_Sarah (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sarah";	
	guild 		= GIL_VLK;
	id 			= 470;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_1H_SWORD_07);
		
	// ------ Inventory ------
	// Händler
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe", Face_W_Sarah, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_470;
};

FUNC VOID Rtn_Start_470 ()
{	
	TA_Stand_ArmsCrossed	(05,15,20,15,"NW_CITY_SARAH"); 
    TA_Sleep				(20,15,05,15,"NW_CITY_HOTEL_BED_08");
};

FUNC VOID Rtn_Knast_470 ()
{	
	TA_Stand_ArmsCrossed	(08,00,20,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
    TA_Stand_ArmsCrossed	(20,00,08,00,"NW_CITY_HABOUR_KASERN_RENGARU");
};
FUNC VOID Rtn_Taverne_470 ()
{
	TA_Stand_ArmsCrossed	(08,00,20,00,"NW_TAVERNE_GREGSBENCH");
	TA_Sit_Bench			(20,00,08,00,"NW_TAVERNE_GREGSBENCH");
};
FUNC VOID Rtn_Tot_470 ()
{	
	TA_Stand_ArmsCrossed	(05,15,20,15,"TOT"); 
    TA_Sleep				(20,15,05,15,"TOT");
};
