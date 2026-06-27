

instance VLK_491_Vanja (Npc_Default)
{
	// ------ NSC ------
	name 		= "Vanja";
	guild 		= GIL_VLK;
	id 			= 491;
	voice 		= 17;
	flags       = 0;				
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------		
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------				
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe", Face_B_Vanja, Body_B_Babe_Naked, Body_Black, Teeth_Gold, ITAR_VlkBabe_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_491;
};

FUNC VOID Rtn_Start_491 ()
{	
	TA_Smalltalk 	(08,00,23,00,"NW_CITY_HABOUR_PUFF_VANJA");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_HABOUR_PUFF_VANJA");
};

FUNC VOID Rtn_Alone_491 ()
{	
	TA_Sweep_FP 	(08,00,23,00,"NW_CITY_HABOUR_PUFF_VANJA");
    TA_Sweep_FP		(23,00,08,00,"NW_CITY_HABOUR_PUFF_VANJA");
};

