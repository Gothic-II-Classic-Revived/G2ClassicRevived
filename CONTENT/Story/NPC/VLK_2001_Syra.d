instance VLK_2001_Syra (Npc_Default)
{
	// ------ NSC ------
	name 		= "Syra";
	guild 		= GIL_VLK;
	id 			= 2001;
	voice 		= 16;
	flags       = NPC_FLAG_IMMORTAL;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	//EquipItem			(self, ITMW_REVIVED_1H_DAGGER_01);
	//EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems		(self, ITPO_REVIVED_HEALTH_02, 	1);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_PinkHair, BodyTex_N, NO_ARMOR);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2001;
};
	
FUNC VOID Rtn_start_2001 ()
{
	TA_Stand_Eating 	(22,00,06,00, "XXX");
	TA_Sleep			(06,00,22,00, "XXX");	
};
