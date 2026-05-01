INSTANCE OUT_4148_GESTATH (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gestath";
	guild 		= GIL_OUT;
	id 			= 4148;
	voice 		= 9;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_SWORD_LIGHT_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_B_Thorus, BodyTex_B, ITAR_REVIVED_CRAWLER);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4148;
};

FUNC VOID Rtn_Start_4148 ()
{	
	TA_Stand_Guarding			(08,00,23,00,"PATH_TO_PLATEAU03_001");
    TA_Sit_Campfire				(23,00,07,30,"PATH_TO_PLATEAU03_002");	
    TA_Pee						(07,30,08,00,"PATH_TO_PLATEAU03_003");		
};
