
instance Mil_317_Ruga (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ruga";	
	guild 		= GIL_MIL;
	id 			= 317;
	voice 		= 11;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_BROAD_04);
	EquipItem 			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self,ItKe_City_Tower_03,1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_NormalBart03, BodyTex_N, ITAR_REVIVED_GRD_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_317;
};

FUNC VOID Rtn_Start_317 ()
{	
	TA_Stand_Drinking		(07,00,20,00,"KASERNE");
    TA_Sit_Chair			(20,00,07,00,"NW_CITY_HABOUR_KASERN_15_B");
   // TA_Sleep				(22,00,08,00,"NW_CITY_BARRACK01_BED_RUGA");
};
