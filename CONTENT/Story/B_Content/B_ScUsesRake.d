var int   RAKEPLACE[50]; 
const int Greg_FirstSecret	= 1 ;
const int RAKE_BUDDEL_DIST_MAX = 300;
const int RAKE_BUDDEL_DIST_MIN = 200;

func void RakeTreasureSuccess (var C_ITEM itm)
{
	Wld_PlayEffect("spellFX_ItemAusbuddeln",  itm, itm, 0, 0, 0, FALSE );
	B_Say_Overlay (self, self, "$FOUNDTREASURE");
	B_GivePlayerXP (XP_Ambient);
};

FUNC VOID B_SCUsesRake(var C_NPC slf)
{
	//alte Use-Item-Funktion
};

FUNC VOID B_SCGetTreasure_S1()
{
	if 	(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))	//FixmeJoly:RAKEPLACE [1] nummerierung checken.
	{
	//NEWWORLD_ZEN
				if ((Npc_GetDistToWP(hero,							"NW_BIGFARM_LAKE_CAVE_07"	)< RAKE_BUDDEL_DIST_MIN) && (RAKEPLACE[Greg_FirstSecret]==FALSE))
				{
					Wld_InsertItem 		(ITMI_REVIVED_BLOODORE, 	"NW_BIGFARM_LAKE_CAVE_07"	); 				 			 RAKEPLACE[Greg_FirstSecret]=TRUE;	//Joly: Auftrag von GREG_NW  RAKEPLACE[1] wird als Abfrage verwendet, nicht ändern.
					RakeTreasureSuccess (ITMI_REVIVED_BLOODORE);
				}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"NW_LAKE_GREG_TREASURE_01"	)< RAKE_BUDDEL_DIST_MIN) 		&&  (RAKEPLACE[2]==FALSE)){
				Wld_InsertItem 		(ItSe_GoldPocket100, 			"NW_LAKE_GREG_TREASURE_01"	); 							 		 RAKEPLACE[2]=TRUE;
				RakeTreasureSuccess (ItSe_GoldPocket100);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"NW_FARM3_GREGTREASURE_01"	)< RAKE_BUDDEL_DIST_MIN) 		&&  (RAKEPLACE[3]==FALSE)){
				Wld_InsertItem 		(ITMI_REVIVED_WARHORN, 			"NW_FARM3_GREGTREASURE_01"	); 									 RAKEPLACE[3]=TRUE;
				RakeTreasureSuccess (ITMI_REVIVED_WARHORN);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"NW_FARM3_MOUNTAINLAKE_MONSTER_01"	)< RAKE_BUDDEL_DIST_MIN) && (RAKEPLACE[4]==FALSE)){	
				Wld_InsertItem 		(ItPl_Perm_Herb, 			"NW_FARM3_MOUNTAINLAKE_MONSTER_01"	); 							 RAKEPLACE[4]=TRUE;
				RakeTreasureSuccess (ItPl_Perm_Herb);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"NW_BIGMILL_FARM3_01"	)< RAKE_BUDDEL_DIST_MIN) 			&& 	(RAKEPLACE[5]==FALSE)){
				Wld_InsertItem 		(ITAM_REVIVED_PROT_ARROW_01, 			"NW_BIGMILL_FARM3_01"	); 						 		 		RAKEPLACE[5]=TRUE;
				RakeTreasureSuccess (ITAM_REVIVED_PROT_ARROW_01);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	//OLDWORLD_ZEN
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_WATERFALL_CAVE"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[6]==FALSE)){
				Wld_InsertItem 		(ITKE_REVIVED_GORDONRAMSAY, 		"OW_TREASURE_WATERFALL_CAVE"	); 							 			 RAKEPLACE[6]=TRUE;
				RakeTreasureSuccess (ITKE_REVIVED_GORDONRAMSAY);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_ORCTERRAIN_WATCHTOWER"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[7]==FALSE)){
				Wld_InsertItem 		(ITPO_REVIVED_BOOST_MASTER_01,		"OW_TREASURE_ORCTERRAIN_WATCHTOWER"	); 							 			 RAKEPLACE[7]=TRUE; 						 			 
				RakeTreasureSuccess (ITPO_REVIVED_BOOST_MASTER_01);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_PALLISADE_CAVE"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[8]==FALSE)){					 			
				Wld_InsertItem 		(ITAM_REVIVED_DEMON, 				"OW_TREASURE_PALLISADE_CAVE"	); 							 			 RAKEPLACE[8]=TRUE; 							 			
				RakeTreasureSuccess (ITAM_REVIVED_DEMON);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_PLATEAU_ABANDONEDMINE"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[9]==FALSE)){					 			
				Wld_InsertItem 		(ITRI_REVIVED_HP_02, 				"OW_TREASURE_PLATEAU_ABANDONEDMINE"	); 							 			 RAKEPLACE[9]=TRUE; 							 			
				RakeTreasureSuccess (ITRI_REVIVED_HP_02);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_STONEFORTRESS"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[9]==FALSE)){					 			
				Wld_InsertItem 		(ItMi_GoldNugget_Addon, 			"OW_TREASURE_STONEFORTRESS"	); 							 			 RAKEPLACE[9]=TRUE; 							 			
				RakeTreasureSuccess (ItMi_GoldNugget_Addon);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,							"OW_TREASURE_STONEHENGE"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[9]==FALSE)){					 			
				Wld_InsertItem 		(ItBe_Addon_Prot_MAGIC, 			"OW_TREASURE_STONEHENGE"	); 							 			 RAKEPLACE[9]=TRUE; 							 			
				RakeTreasureSuccess (ItBe_Addon_Prot_MAGIC);};
	};	
};

