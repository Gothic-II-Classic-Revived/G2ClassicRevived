instance STRF_1157_Leiche (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Straefling;
	guild 		= GIL_STRF;
	id 			= 1157;
	voice 		= 8;
	flags       = 0;							
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem	(self, ITMW_REVIVED_2H_PICKAXE); 
	
	// ------ Inventory ------
	B_CreateAmbientInv (self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Hum_Normal5, Body_L_Hum_Normal5, Body_Latino, Teeth_Rotten, ITAR_REVIVED_SFB_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1157;
};

FUNC VOID Rtn_Start_1157 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SILVESTROMINE_015");
    TA_Stand_Guarding		(23,00,08,00,"OW_SILVESTROMINE_015");
};
