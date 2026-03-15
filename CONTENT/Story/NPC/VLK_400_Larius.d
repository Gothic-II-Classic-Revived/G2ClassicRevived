
instance VLK_400_Larius (Npc_Default)
{
	// ------ NSC ------
	name 		= "Larius";
	guild 		= GIL_VLK;
	id 			= 400;
	voice 		= 1;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Weak_Cipher_alt, BodyTex_N, ITAR_REVIVED_EBR_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_400;
};

FUNC VOID Rtn_Start_400 ()
{	
	TA_Sit_Throne		(08,00,12,00,"NW_CITY_LARIUS");
	TA_Read_Bookstand	(12,00,15,00,"NW_CITY_LARIUS");
	TA_Sit_Throne		(15,00,19,00,"NW_CITY_LARIUS");
	TA_Sit_Throne		(19,00,22,00,"NW_CITYHALL_PRIVATE_THRONE");
    TA_Sleep			(22,00,08,00,"NW_CITY_LARIUS_BED");
};
