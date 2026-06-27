
instance VLK_436_Sonja (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sonja";	
	guild 		= GIL_VLK;
	id 			= 436;
	voice 		= 16;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe6", Face_L_Sonja, Body_L_Babe_Naked, Body_Latino, Teeth_Broken, ITAR_VlkBabe_H);	

	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_436;
};

FUNC VOID Rtn_Start_436 ()
{	
	TA_Sit_Throne	(08,00,23,00,"NW_CITY_PUFF_THRONE"); 
    TA_Sit_Throne	(23,00,08,00,"NW_CITY_PUFF_THRONE");
};
