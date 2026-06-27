
instance OUT_4110_JERGAN (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jergan";
	guild 		= GIL_OUT;
	id 			= 4110;
	voice 		= 13;
	flags       = 0;							
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-------------
	aivar[AIV_ToughGuy] = TRUE; 

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);			
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------			
	EquipItem			(self, ITMW_REVIVED_1H_AXE_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------					
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Jergan, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_ORG_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4110;
};

FUNC VOID Rtn_Start_4110 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"OW_SPAWN_SCOUT");
    TA_Smoke_Joint			(23,00,08,00,"OW_SPAWN_SCOUT");
};
FUNC VOID Rtn_Silvestro_4110 ()
{
	TA_Pray_Innos			(08,00,23,00,"OW_SILVESTROMINE_CAMP");
	TA_Pray_Innos			(08,00,23,00,"OW_SILVESTROMINE_CAMP");
};
FUNC VOID Rtn_OldMine_4110 ()
{
	TA_Stand_Eating			(08,00,23,00,"OW_OM_ENTRANCE03_003");
	TA_Stand_Drinking		(08,00,23,00,"OW_OM_ENTRANCE03_003");
};
FUNC VOID Rtn_Fajeth_4110 ()
{	
	TA_Sit_Bench			(08,00,23,00,"LOCATION_23_CAVE_1_IN");
	TA_Stand_Guarding		(23,00,08,00,"LOCATION_23_CAVE_1_IN");
};