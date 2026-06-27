
instance VLK_483_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 483;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe4", Face_W_Babe_Normal11, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_VlkBabe_M);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_483;
};

FUNC VOID Rtn_Start_483 ()
{	
	TA_Smalltalk	(08,00,22,00,"NW_CITY_HABOUR_KASERN_05_01");
	TA_Smalltalk	(22,00,08,00,"NW_CITY_HABOUR_KASERN_05_01");
};
