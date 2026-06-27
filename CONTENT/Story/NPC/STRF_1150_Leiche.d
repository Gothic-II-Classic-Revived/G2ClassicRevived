instance STRF_1150_Leiche (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Straefling;
	guild 		= GIL_STRF;
	id 			= 1150;
	voice 		= 8;
	flags       = 0;							
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	
	// ------ Inventory ------
	B_CreateAmbientInv (self); 

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal27, Body_W_Hum_Normal2, Body_White, Teeth_Rotten, ITAR_REVIVED_SFB_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1150;
};

FUNC VOID Rtn_Start_1150 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SPAWN_TRACK_LEICHE_01");
    TA_Stand_Guarding		(23,00,08,00,"OW_SPAWN_TRACK_LEICHE_01");
};
