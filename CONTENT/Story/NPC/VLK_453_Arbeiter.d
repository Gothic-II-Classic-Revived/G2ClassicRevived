
instance VLK_453_Arbeiter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Arbeiter; 
	guild 		= GIL_VLK;
	id 			= 453;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_AXE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Bald2, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Bau_L);	
	Mdl_SetModelFatness	(self,2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_453;
};

FUNC VOID Rtn_Start_453()
{	
	TA_Saw	 		(05,10,06,10,"NW_CITY_POOR_SAW");
	TA_Smith_Sharp 	(06,10,07,10,"NW_CITY_POOR_SMITH_SHARP");
	TA_Saw	 		(07,10,08,10,"NW_CITY_POOR_SAW");        
	TA_Smith_Sharp 	(08,10,09,10,"NW_CITY_POOR_SMITH_SHARP");
	TA_Saw	 		(09,10,10,10,"NW_CITY_POOR_SAW");        
	TA_Smith_Sharp 	(10,10,11,10,"NW_CITY_POOR_SMITH_SHARP");	
	TA_Saw	 		(11,10,12,10,"NW_CITY_POOR_SAW");        
	TA_Smith_Sharp 	(12,10,13,10,"NW_CITY_POOR_SMITH_SHARP");    
	TA_Saw	 		(13,10,14,10,"NW_CITY_POOR_SAW");            
	TA_Smith_Sharp 	(14,10,15,10,"NW_CITY_POOR_SMITH_SHARP");    
	TA_Saw	 		(15,10,16,10,"NW_CITY_POOR_SAW");            
	TA_Smith_Sharp 	(16,10,17,10,"NW_CITY_POOR_SMITH_SHARP");    
	TA_Saw	 		(17,10,18,10,"NW_CITY_POOR_SAW");            
	TA_Smith_Sharp 	(18,10,19,10,"NW_CITY_POOR_SMITH_SHARP");    
	TA_Saw	 		(19,10,20,05,"NW_CITY_POOR_SAW");            
  	TA_Smalltalk	(20,05,22,05,"NW_CITY_HABOUR_POOR_AREA_PATH_07");
 	TA_Stand_Eating	(22,05,00,55,"NW_CITY_HABOUR_POOR_AREA_HUT_03");
	TA_Sleep 		(00,55,05,10,"NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_02");
};
