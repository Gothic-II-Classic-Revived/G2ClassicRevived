
instance Mil_313_Boltan (Npc_Default)
{
	// ------ NSC ------
	name 		= "Boltan";	
	guild 		= GIL_MIL;
	id 			= 313;
	voice 		= 5;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Boltan, Body_B_Hum_Naked, Body_Black, Teeth_Gold, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_313;
};

FUNC VOID Rtn_Start_313 ()
{	
	TA_Sit_Chair			(06,55,21,00,"NW_CITY_HABOUR_KASERN_PRISON_SIT");
  	TA_Stand_Guarding		(21,00,06,55,"NW_CITY_HABOUR_KASERN_PRISON_02");
};
