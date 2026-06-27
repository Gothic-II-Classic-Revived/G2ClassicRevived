instance STRF_1155_Leiche (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Straefling;
	guild 		= GIL_STRF;
	id 			= 1155;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal30, Body_W_Hum_Normal2, Body_White, Teeth_Yellow, ITAR_REVIVED_SFB_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1155;
};

FUNC VOID Rtn_Start_1155 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SILVESTROMINE_000");
    TA_Stand_Guarding		(23,00,08,00,"OW_SILVESTROMINE_000");
};
