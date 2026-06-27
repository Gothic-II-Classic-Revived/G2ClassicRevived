
instance VLK_462_Thorben (Npc_Default)
{
	// ------ NSC ------
	name 		= "Thorben";
	guild 		= GIL_VLK;
	id 			= 462;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic 		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------																
	EquipItem (self, ITMW_REVIVED_1H_NAILMACE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems	(self, itke_lockpick, 12);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Thorben, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_462;
};

FUNC VOID Rtn_Start_462()
{	
	TA_Saw			(06,00,09,00,"NW_CITY_MERCHANT_SHOP01_FRONT_SAW");
	TA_Repair_Hut	(09,00,13,05,"NW_CITY_MERCHANT_SHOP01_FRONT_REPAIR");
	TA_Smalltalk	(13,05,14,00,"NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Repair_Hut	(14,00,16,00,"NW_CITY_MERCHANT_SHOP01_FRONT_REPAIR");
	TA_Saw			(16,00,17,05,"NW_CITY_MERCHANT_SHOP01_FRONT_SAW");
	TA_Smalltalk	(17,05,18,00,"NW_CITY_MERCHANT_SHOP01_FRONT_01");
	TA_Saw			(18,00,19,00,"NW_CITY_MERCHANT_SHOP01_FRONT_SAW");
	TA_Repair_Hut	(19,00,20,00,"NW_CITY_MERCHANT_SHOP01_FRONT_REPAIR");
	TA_Sit_Bench	(20,00,05,30,"NW_CITY_REGIS"); 
	TA_Sleep 		(05,30,06,00,"NW_CITY_BED_THORBEN");
};
