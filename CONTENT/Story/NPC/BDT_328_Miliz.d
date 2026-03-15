
instance BDT_328_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Wache;	
	guild 		= GIL_NONE;
	id 			= 328;
	voice 		= 8;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ AIVARS ------
	aivar[AIV_DropDeadAndKill] 	= TRUE;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 13);																		
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_1H_SWORD_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItKe_Storage,1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart17, BodyTex_N, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_328;
};

FUNC VOID Rtn_Start_328()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_HABOUR_HUT_03_IN_05");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_HABOUR_HUT_03_IN_05");
};
