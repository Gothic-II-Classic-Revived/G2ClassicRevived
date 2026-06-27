INSTANCE NOV_602_Ulf (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ulf";
	guild 		= GIL_NOV;
	id 			= 602;
	voice 		= 3;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
													
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Ulf, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_602;
};

FUNC VOID Rtn_Start_602()
{	
	TA_Stand_Drinking	(08,00,20,00,"NW_CITY_BEER_03");
   	TA_Stand_Drinking	(20,00,08,00,"NW_CITY_BEER_03");
};
FUNC VOID Rtn_Suche_602()
{	
	TA_Stand_Guarding	(08,00,20,00,"NW_TROLLAREA_PATH_42");
   	TA_Stand_Guarding	(20,00,08,00,"NW_TROLLAREA_PATH_42");
};
FUNC VOID Rtn_Wait_602()
{	
	TA_Stand_Guarding	(08,00,20,00,"NW_TROLLAREA_PATH_22");
   	TA_Stand_Guarding	(20,00,08,00,"NW_TROLLAREA_PATH_22");
};
FUNC VOID Rtn_Follow_602()
{	
	TA_Follow_Player	(08,00,20,00,"NW_TROLLAREA_PATH_13");
   	TA_Follow_Player	(20,00,08,00,"NW_TROLLAREA_PATH_13");
};


