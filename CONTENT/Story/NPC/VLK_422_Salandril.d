
instance VLK_422_Salandril (Npc_Default)
{
	// ------ NSC ------
	name 		= "Salandril"; 
	guild 		= GIL_VLK;
	id 			= 422;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_02);
	EquipItem	(self, ITHE_REVIVED_SPECTACLES_02); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Salandril, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_422;
};

FUNC VOID Rtn_Start_422 ()
{	
	TA_Stand_ArmsCrossed	(08,00,10,00,"NW_CITY_SALANDRIL");
	TA_Potion_Alchemy		(10,00,13,00,"NW_CITY_SALANDRIL");
	TA_Read_Bookstand 		(13,00,15,00,"NW_CITY_SHOP_SALANDRIL_03");
	
	TA_Stand_ArmsCrossed	(15,00,17,00,"NW_CITY_SALANDRIL");
	TA_Potion_Alchemy		(17,00,19,00,"NW_CITY_SALANDRIL");
	TA_Read_Bookstand 		(19,00,22,00,"NW_CITY_SHOP_SALANDRIL_03");
	
	TA_Sleep				(22,00,08,00,"NW_CITY_SHOP_SALANDRIL_BED");
};

FUNC VOID Rtn_KlosterUrteil_422 ()
{	
	TA_Sit_Bench	(08,00,22,00,"NW_MONASTERY_CHURCH_BENCH_001");
	TA_Sit_Bench	(22,00,08,00,"NW_MONASTERY_CHURCH_BENCH_001");
};
