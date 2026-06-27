
instance VLK_433_Bromor (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bromor"; 
	guild 		= GIL_VLK;
	id 			= 433;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_DAGGER_02); 

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self,ItKE_Bromor,1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Bromor, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self,1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_433;
};

//Joly: NIE AUF EINE BANK ODER THRON SETZEN
FUNC VOID Rtn_Start_433()
{	
	TA_Stand_ArmsCrossed	(08,00,20,00,"NW_CITY_PUFF_COUNTER");
    TA_Stand_ArmsCrossed	(20,00,08,00,"NW_CITY_PUFF_COUNTER");
};
