
instance VLK_440_Bartok (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bartok"; 
	guild 		= GIL_VLK;
	id 			= 440;
	voice 		= 4;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetMonsterAttributesForLevel(self, 30);
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITRW_REVIVED_BOW_LONG_03); 
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_HACKER_02); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItRw_Arrow,40);	
	CreateInvItems (self, ITPO_REVIVED_HEALTH_03, 5);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_Important_Arto, BodyTex_N,ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_440;
};

FUNC VOID Rtn_Start_440()
{	
	TA_Stand_Drinking		(07,00,09,15,"NW_CITY_BEER_04");
	TA_Stand_Eating			(09,15,10,45,"NW_CITY_BEER_04");
	TA_Stand_Drinking		(10,45,15,15,"NW_CITY_BEER_04");
	TA_Stand_Eating			(15,15,16,45,"NW_CITY_BEER_04");
	TA_Stand_Drinking		(16,45,20,45,"NW_CITY_BEER_04");
 	TA_Sit_Bench			(20,45,21,45,"NW_CITY_MERCHANT_TAVERN01_FRONT");
 	TA_Stand_Drinking		(21,45,00,45,"NW_CITY_MERCHANT_TAVERN01_FRONT");
 	TA_Sit_Chair			(00,45,04,45,"TAVERN02_B");
 	TA_Sit_Bench			(04,45,07,00,"NW_CITY_MERCHANT_TAVERN01_FRONT");
};

FUNC VOID Rtn_GuideMitte_440()
{	
	TA_Guide_Player		(08,00,20,00,"NW_FARM1_CITYWALL_FOREST_03");
	TA_Guide_Player		(20,00,08,00,"NW_FARM1_CITYWALL_FOREST_03");
};

FUNC VOID Rtn_GuideEnde_440()
{	
	TA_Guide_Player		(08,00,20,00,"NW_FARM1_CITYWALL_FOREST_07");
	TA_Guide_Player		(20,00,08,00,"NW_FARM1_CITYWALL_FOREST_07");
};

