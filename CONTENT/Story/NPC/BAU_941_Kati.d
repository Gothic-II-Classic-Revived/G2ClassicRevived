

instance BAU_941_Kati (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kati";
	guild 		= GIL_BAU;
	id 			= 941;
	voice 		= 16;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:nur solange Alnveres da ist!																	
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 4);																		
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Lilo, BodyTexBabe_N, ITAR_BauBabe_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_941;
};

FUNC VOID Rtn_PreStart_941 ()
{	
	TA_Stand_ArmsCrossed		(08,00,22,00,"NW_FARM2_PATH_01");
    TA_Stand_ArmsCrossed		(22,00,08,00,"NW_FARM2_PATH_01");
};

FUNC VOID Rtn_Start_941 ()
{	
	TA_Cook_Stove		(05,00,10,00,"NW_FARM2_HOUSE_IN_04");
    TA_Sit_Bench		(10,00,12,00,"NW_FARM2_BENCH_02");
   	TA_Cook_Stove		(12,00,19,55,"NW_FARM2_HOUSE_IN_04");
    TA_Roast_Scavenger 	(19,55,23,59,"NW_FARM2_BBQ");
    TA_Sleep			(23,59,05,00,"NW_FARM2_HOUSE_IN_02_C_BED");
};