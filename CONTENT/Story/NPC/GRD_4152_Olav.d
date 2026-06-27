
instance GRD_4152_Olav (Npc_Default)
{
	// ------ NSC ------
	name 		= "Olav"; 
	guild 		= GIL_MIL;
	id 			= 4152;
	voice 		= 4;
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
	CreateInvItems (self,ItSe_Olav,1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal40, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4152;
};

FUNC VOID Rtn_Start_4152 ()
{	
	TA_Stand_Guarding 		(08,00,23,00,"LOCATION_15_IN_2");
    TA_Stand_Guarding		(23,00,08,00,"LOCATION_15_IN_2");
};
