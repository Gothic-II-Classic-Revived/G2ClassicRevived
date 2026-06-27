instance GRD_4151_Leiche (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_WAFFENKNECHT; 
	guild 		= GIL_MIL;
	id 			= 4151;
	voice 		= 1;
	flags       = 0;							
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------	
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_03); 															
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Beard22, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4151;
};

FUNC VOID Rtn_Start_4151 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"OW_PATH_151");
    TA_Stand_Guarding		(22,00,08,00,"OW_PATH_151");
};
