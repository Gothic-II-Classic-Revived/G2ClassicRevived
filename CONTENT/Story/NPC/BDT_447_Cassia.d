
instance BDT_447_CASSIA (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cassia"; 
	guild 		= GIL_NONE;
	id 			= 447;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	aivar[AIV_DropDeadAndKill] = TRUE;
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_CASSIA); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self,ITKE_Thiefguildkey_Hotel_MIS,1);
	CreateInvItems (self,ItKe_ThiefTreasure	,1);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe", Face_W_Cassia, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_VlkBabe_H);		
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_447;
};

FUNC VOID Rtn_Start_447()
{	
	TA_Read_Bookstand 	(07,00,23,00,"NW_CITY_KANAL_ROOM_05_02");
    TA_Sleep			(23,00,07,00,"NW_CITY_KANAL_ROOM_05_BED_01");
};
