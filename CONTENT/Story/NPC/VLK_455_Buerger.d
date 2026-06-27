
instance VLK_455_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 455;
	voice 		= 8;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Hum_Bald3, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_455;
};

FUNC VOID Rtn_Start_455()
{	
	TA_Stand_ArmsCrossed	(05,20,20,20,"NW_CITY_MERCHANT_PATH_14_C");
    TA_Smalltalk			(20,20,05,20,"NW_CITY_MERCHANT_SHOP03_FRONT_03");
};

FUNC VOID Rtn_VatrasAway_455()
{	
	TA_Sit_Bench				(07,20,20,20,"NW_CITY_MERCHANT_TAVERN01_FRONT");
    TA_Smalltalk			(20,20,07,20,"NW_CITY_MERCHANT_SHOP03_FRONT_03");
};
