INSTANCE PC_Thief_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Diego";
	guild 		= GIL_NONE;
	id 			= 31;
	voice 		= 11;
	flags       = 0;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ aivar ------
	aivar[AIV_PARTYMEMBER] = TRUE;	
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_SWORD_04);  
	EquipItem (self, ITRW_REVIVED_BOW_DIEGO); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_L_Diego, Body_L_Hum_Naked, Body_Latino, Teeth_Rotten, ITAR_REVIVED_STT_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_31;
};

FUNC VOID Rtn_Start_31()
{	
	TA_Smalltalk			(08,00,23,00,"SHIP_CREW_05");
	TA_Smalltalk			(23,00,08,00,"SHIP_CREW_05");
};

FUNC VOID Rtn_UNDEADDRAGONDEAD_31()
{	
	TA_Stand_WP 			(08,00,23,00,"WP_UNDEAD_RIGHT_DOWN_01");
	TA_Stand_WP 			(23,00,08,00,"WP_UNDEAD_RIGHT_DOWN_01");
};

FUNC VOID Rtn_SittingShipDI_31()
{	
	TA_Sit_Bench 	(08,00,23,00,"SHIP_CREW_04");
	TA_Sit_Bench 	(23,00,08,00,"SHIP_CREW_04");
};

