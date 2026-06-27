
instance VLK_465_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 465;
	voice 		= 1;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Psionic", Face_W_Hum_Beard4, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_465;
};

FUNC VOID Rtn_Start_465()
{	
	TA_Stand_Eating				(08,00,22,00,"NW_CITY_HABOUR_FIREPLACE_01");
    TA_Sleep					(22,00,08,00,"NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
