
instance VLK_401_Cornelius (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cornelius";
	guild 		= GIL_NONE;		//Hoshi:Ich muss ihn umhauen können, ohne das mir die PALs auf den Sack gehen.
	id 			= 401;
	voice 		= 13;
	flags       = NPC_FLAG_IMMORTAL; //Joly: immortal Hauptstory																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_CORNELIUS);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, BodyTex_P, ITAR_REVIVED_EBR_L);	
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_401;
};

FUNC VOID Rtn_Start_401 ()
{	
	TA_Read_Bookstand	(08,00,23,00,"NW_CITY_CORNELIUS");
    TA_Read_Bookstand	(23,00,08,00,"NW_CITY_CORNELIUS");
};

FUNC VOID Rtn_Flee_401 ()
{	
	TA_FleeToWP	(08,00,23,00,"NW_XARDAS_BANDITS_LEFT");
    TA_FleeToWP	(23,00,08,00,"NW_XARDAS_BANDITS_LEFT");
};

FUNC VOID Rtn_Prison_401 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_HABOUR_KASERN_PRISON_BORKA");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_HABOUR_KASERN_PRISON_BORKA");
};
