instance STRF_1151_Leiche (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Straefling;
	guild 		= GIL_STRF;
	id 			= 1151;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Hum_Normal2, Body_L_Hum_Normal2, Body_Latino, Teeth_Yellow, ITAR_REVIVED_SFB_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1151;
};

FUNC VOID Rtn_Start_1151 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SPAWN_TRACK_LEICHE_03");
    TA_Stand_Guarding		(23,00,08,00,"OW_SPAWN_TRACK_LEICHE_03");
};
