
instance STRF_1117_Straefling (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_STRAEFLING; 
	guild 		= GIL_STRF;
	id 			= 1117;
	voice 		= 13;
	flags       = 0;							
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_2H_PICKAXE );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal26, Body_W_Hum_Normal1, Body_White, Teeth_Gold, ITAR_REVIVED_SFB_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1117;
};

FUNC VOID Rtn_Start_1117 ()
{	
	TA_Pick_Ore	 		(08,00,23,00,"OW_OM_PICKSLOT_029");
    TA_Sit_Campfire	 	(23,00,08,00,"OW_OM_ENTRANCE03_CAMPFIRE");
};
