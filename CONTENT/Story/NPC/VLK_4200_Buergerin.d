
instance VLK_4200_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 4200;
	voice 		= 17;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe", Face_W_Babe_Normal3, Body_W_Babe_Naked, Body_White, Teeth_Yellow, ITAR_VlkBabe_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4200;
};

FUNC VOID Rtn_Start_4200 ()
{	
	TA_Smalltalk	(08,00,22,00,"NW_CITY_MAINSTREET_05_B");
    TA_Sleep		(22,00,08,00,"NW_CITY_UPTOWN_PATH_08"); //FIXME
};
