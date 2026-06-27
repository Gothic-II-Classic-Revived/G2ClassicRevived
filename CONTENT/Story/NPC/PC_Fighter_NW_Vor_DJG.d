INSTANCE PC_Fighter_NW_vor_DJG (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gorn";
	guild 		= GIL_SLD;
	id 			= 813;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_AXE_GORN);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Gorn, Body_B_Hum_Naked, Body_Black, Teeth_Gold, ITAR_REVIVED_SLD_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_813;
};

//-------------------------------------
FUNC VOID Rtn_Start_813 ()
{	
	TA_Sit_Chair			(08,00,23,00,"NW_BIGFARM_HOUSE_14"); 
    TA_Sit_Chair			(23,00,08,00,"NW_BIGFARM_HOUSE_14");
};
FUNC VOID Rtn_Tot_813 ()
{	
	TA_Sit_Campfire			(08,00,23,00,"TOT");
    TA_Sit_Campfire			(23,00,08,00,"TOT");
};
