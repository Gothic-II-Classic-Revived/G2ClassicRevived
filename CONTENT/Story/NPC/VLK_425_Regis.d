
instance VLK_425_Regis (Npc_Default)
{
	// ------ NSC ------
	name 		= "Regis"; 
	guild 		= GIL_VLK;
	id 			= 425;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Regis, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_425;
};
FUNC VOID Rtn_Start_425 ()
{	
	TA_Sit_Bench	(05,30,19,55,"NW_CITY_REGIS");
	TA_Smalltalk	(19,55,00,30,"NW_CITY_MERCHANT_PATH_14_A");
	TA_Sit_Chair	(00,30,05,30,"NW_CITY_TAVERN_IN_04");
};
