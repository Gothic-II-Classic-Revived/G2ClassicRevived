instance BDT_3000_Gomez (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gomez"; 
	guild 		= GIL_BDT;
	id 			= 3000;
	voice 		= 11;
	flags       = 0;								
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_INNOS_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITKE_REVIVED_GOMEZ, 1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Gomez, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_EBR_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	daily_routine = Rtn_Start_3000;
};	 

	FUNC VOID Rtn_Start_3000()
	{
		TA_Sit_Throne (00,00,12,00,"FORTRESS_FLOOR_BARONS_THRONE");
		TA_Sit_Throne (12,00,00,00,"FORTRESS_FLOOR_BARONS_THRONE");
	};
