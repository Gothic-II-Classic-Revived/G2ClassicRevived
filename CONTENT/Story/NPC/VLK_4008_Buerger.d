
instance VLK_4008_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 4008;
	voice 		= 1;
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self,ItMw_ElBastardo);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Hum_Normal35, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4008;
};

FUNC VOID Rtn_Start_4008()
{	
	TA_Smalltalk	(08,00,20,00,"NW_CITY_BEER_07");
	TA_Smalltalk	(20,00,08,00,"NW_CITY_BEER_07");
};