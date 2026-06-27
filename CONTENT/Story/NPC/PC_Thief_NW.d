INSTANCE PC_Thief_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Diego";
	guild 		= GIL_NONE;
	id 			= 21;
	voice 		= 11;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_04);  
	EquipItem (self, ITRW_REVIVED_BOW_DIEGO); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_L_Diego, Body_L_Hum_Naked, Body_Latino, Teeth_Broken, ITAR_VLK_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_21;
};

FUNC VOID Rtn_Start_21()
{	
	TA_Stand_WP	(08,00,23,00,"NW_CITY_MERCHANT_TRADE_02");	 
	TA_Stand_WP	(23,00,08,00,"NW_CITY_MERCHANT_TRADE_02");
};

FUNC VOID Rtn_Gerbrandt_21()
{	
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWN_PATH_23");	 
	TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWN_PATH_23");
};

FUNC VOID Rtn_WAITFORSHIP_21()
{	
	TA_Smalltalk	(08,00,23,00,"NW_WAITFOR_SHIP_05");	 
	TA_Smalltalk	(23,00,08,00,"NW_WAITFOR_SHIP_05");
};

FUNC VOID Rtn_SHIP_21()
{	
	TA_Smalltalk			(08,00,23,00,"SHIP_CREW_05");
	TA_Smalltalk			(23,00,08,00,"SHIP_CREW_05");
};
