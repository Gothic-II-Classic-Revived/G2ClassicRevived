

instance BAU_940_Akil (Npc_Default)
{
	// ------ NSC ------
	name 		= "Akil";
	guild 		= GIL_BAU;
	id 			= 940;
	voice 		= 13;
	flags       = NPC_FLAG_IMMORTAL;		//Joly:nur solange Alnveres da ist!																	
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 7);	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart_Grim, BodyTex_N, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_940;
};

FUNC VOID Rtn_PreStart_940 ()
{	
	TA_Smalltalk		(08,00,22,00,"NW_FARM2_PATH_02");
    TA_Smalltalk		(22,00,08,00,"NW_FARM2_PATH_02");
};

FUNC VOID Rtn_Start_940 ()
{	
	TA_Sit_Bench		(05,00,10,00,"NW_FARM2_BENCH_02");
    TA_Stand_Guarding 	(10,00,12,00,"NW_FARM2_PATH_01_B");
    TA_Pick_FP			(12,00,14,00,"NW_FARM2_HUT2_002");
    TA_Stand_Guarding 	(14,00,16,00,"NW_FARM2_OUT_01");
   	TA_Sit_Chair		(16,00,17,00,"NW_FARM2_HOUSE_IN_07");
   	TA_Sit_Bench		(17,00,20,00,"NW_FARM2_OUT_11");
   	TA_Stand_Guarding	(20,00,00,00,"NW_FARM2_PATH_01");
    TA_Sleep			(00,00,05,00,"NW_FARM2_HOUSE_IN_02_B_BED");
};