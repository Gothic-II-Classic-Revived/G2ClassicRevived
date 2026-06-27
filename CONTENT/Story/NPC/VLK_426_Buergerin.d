
instance VLK_426_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 426;
	voice 		= 17;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Babe_Normal4, Body_W_Babe_Naked, Body_White, Teeth_Yellow, ITAR_VlkBabe_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_426;
};

FUNC VOID Rtn_Start_426 ()
{	
	TA_Stand_ArmsCrossed	(05,05,20,05,"NW_CITY_MERCHANT_PATH_15");
    TA_Smalltalk			(20,05,03,55,"NW_CITY_MERCHANT_TAVERN01_01");
    TA_Smalltalk			(03,55,05,05,"NW_CITY_TAVERN_IN_05");
};

FUNC VOID Rtn_VatrasAway_426 ()
{	
	TA_Smalltalk			(05,05,20,00,"NW_CITY_MERCHANT_STAND_01");
    TA_Smalltalk			(20,00,05,05,"NW_CITY_MERCHANT_TAVERN01_01");
};
