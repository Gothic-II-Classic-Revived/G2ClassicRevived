
instance VLK_428_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 428;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe4", Face_W_Babe_Normal6, Body_W_Babe_Naked, Body_White, Teeth_Yellow, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_428;
};

FUNC VOID Rtn_Start_428 ()
{	
	TA_Stand_ArmsCrossed	(05,10,20,17,"NW_CITY_MERCHANT_PATH_14_C");
    TA_Smalltalk			(20,17,05,10,"NW_CITY_MERCHANT_PATH_32");
};

FUNC VOID Rtn_VatrasAway_428 ()
{	
	TA_Smalltalk			(05,10,20,17,"NW_CITY_MERCHANT_PATH_14_A");
    TA_Smalltalk			(20,17,05,10,"NW_CITY_MERCHANT_PATH_32");
};
