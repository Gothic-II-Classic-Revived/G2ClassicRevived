
instance BDT_446_JESPER (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jesper"; 
	guild 		= GIL_NONE;
	id 			= 446;
	voice 		= 9;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	aivar[AIV_DropDeadAndKill] = TRUE;
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_BROAD_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self,ItKe_Fingers,1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Normal07, BodyTex_N,ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_446;
};

FUNC VOID Rtn_PreStart_446()
{	
	TA_Stand_ArmsCrossed	(07,00,23,00,"NW_CITY_KANAL_22");
    TA_Stand_ArmsCrossed	(23,00,07,00,"NW_CITY_KANAL_22");
};
FUNC VOID Rtn_Start_446()
{	
	TA_Cook_Stove			(07,00,14,00,"NW_CITY_KANAL_ROOM_05_03_COOK");
    TA_Sit_Throne 			(14,00,18,00,"NW_CITY_KANAL_ROOM_05_02");
    TA_Cook_Stove			(18,00,21,00,"NW_CITY_KANAL_ROOM_05_03_COOK");
    TA_Sit_Throne 			(21,00,23,00,"NW_CITY_KANAL_ROOM_05_02");
    TA_Sleep				(23,00,07,00,"NW_CITY_KANAL_ROOM_05_BED_02");
};
