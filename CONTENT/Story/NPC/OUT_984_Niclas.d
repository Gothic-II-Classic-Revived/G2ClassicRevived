INSTANCE OUT_984_NICLAS (Npc_Default)
{
	// ------ NSC ------
	name 		= "Niclas";
	guild 		= GIL_OUT;
	id 			= 984;
	voice 		= 03;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem 	(self,ITRW_REVIVED_BOW_LONG_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_NormalBart12, BodyTex_N, ITAR_Leather_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_984;
};

FUNC VOID Rtn_Start_984 ()
{	
	TA_Sit_Bench 		(08,00,23,00,"NW_CITY_JAEGER_SIT"); 
    TA_Sit_Bench		(23,00,08,00,"NW_CITY_JAEGER_SIT");
};
