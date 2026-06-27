
instance VLK_4003_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 4003;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal2, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_VlkBabe_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4003;
};

FUNC VOID Rtn_Start_4003 ()
{	
	  TA_Sleep			(22,00,07,45,"NW_CITY_REICH02_BED_02");
	
	  TA_Cook_Stove		(07,45,10,00,"NW_CITY_REICH02_COOK");
   	  TA_Sit_Chair		(10,00,12,30,"NW_CITY_REICH02_SIT");
   	  TA_Stand_Sweeping	(12,30,14,00,"NW_CITY_REICH02_SIT");		
  	  
  	  TA_Cook_Stove		(14,00,16,00,"NW_CITY_REICH02_COOK");	
  	  TA_Sit_Chair		(16,00,18,00,"NW_CITY_REICH02_SIT");		
	  TA_Stand_Sweeping	(18,00,19,00,"NW_CITY_REICH02_SIT");	
	  
	  TA_Smalltalk		(19,00,22,00,"NW_CITY_SMALLTALK_02");
	  
};
