instance PAL_2004_Bruder  (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_PALADIN;
	guild 		= GIL_PAL;
	id 			= 2004;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);								
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	B_CreateAmbientInv 	(self);
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_PALADIN_02); 

	// ------ Inventory ------
	CreateInvItems (self,ItRu_PalLight,1);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2004;
};

FUNC VOID Rtn_Start_2004 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SPAWN_BRUDER");
    TA_Stand_Guarding		(23,00,08,00,"OW_SPAWN_BRUDER");
};
