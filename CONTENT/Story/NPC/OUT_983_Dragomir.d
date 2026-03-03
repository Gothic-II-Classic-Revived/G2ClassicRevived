INSTANCE OUT_983_DRAGOMIR (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dragomir";
	guild 		= GIL_OUT;
	id 			= 983;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem 	(self,ITRW_REVIVED_CROSSBOW_LIGHT_02); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Tough_Lee_ähnlich, BodyTex_N, ITAR_REVIVED_ARCHER);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_983;
};

FUNC VOID Rtn_Start_983 ()
{	
	TA_Sit_Bench 		(08,00,23,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_01"); 
    TA_Sit_Bench			(23,00,08,00,"NW_TAVERNE_TROLLAREA_MONSTER_02_01");
};
