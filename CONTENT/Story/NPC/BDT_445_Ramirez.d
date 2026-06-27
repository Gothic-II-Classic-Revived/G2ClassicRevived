
instance BDT_445_RAMIREZ (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ramirez"; 
	guild 		= GIL_NONE;
	id 			= 445;
	voice 		= 14;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	aivar[AIV_DropDeadAndKill] = TRUE;
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);														
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_BANDIT_02); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Ramirez, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_445;
};

FUNC VOID Rtn_Start_445()
{	
	TA_Stand_ArmsCrossed	(07,00,23,00,"NW_CITY_KANAL_ROOM_04_01");
    TA_Sit_Throne			(23,00,07,00,"NW_CITY_KANAL_ROOM_05_02");
};
