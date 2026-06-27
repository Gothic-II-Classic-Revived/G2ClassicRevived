
instance VLK_406_Herold (Npc_Default)
{
	// ------ NSC ------
	name 		= "Herold";
	guild 		= GIL_VLK;
	id 			= 406;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self,ITMW_REVIVED_1H_SWORD_06);
	EquipItem	(self, ITHE_REVIVED_SPECTACLES_04); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Herold, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_EBR_L);	
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_406;
};

FUNC VOID Rtn_Start_406 ()
{	
   	TA_Announce_Herold		(08,00,20,00,"NW_CITY_HEROLD_UP");
    TA_Announce_Herold		(20,00,08,00,"NW_CITY_HEROLD_UP");
};
