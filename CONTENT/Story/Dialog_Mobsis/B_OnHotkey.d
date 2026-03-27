////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Script functions for HOTKEYS (called by the engine)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_SCREEN_MAP
//

func int B_GetBestPlayerMap()
{
	if		(CurrentLevel == NEWWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_NewWorld) >= 1)
		{
			return ItWr_Map_NewWorld;
		}
		else if (Npc_HasItems(hero, ItWr_Map_Shrine_MIS) >= 1)
		{
			return ItWr_Map_Shrine_MIS;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS) >= 1)
		{
			return ItWr_Map_Caves_MIS;
		}
		else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
		{
			return ItWr_Map_NewWorld_Ornaments_Addon;
		}
		else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter) >= 1)
		{
			return ItWr_Map_NewWorld_Dexter;
		}
		else if (Npc_HasItems(hero, ItWr_ShatteredGolem_MIS) >= 1)
		{
			return ItWr_ShatteredGolem_MIS;
		}
		else if (Npc_HasItems(hero, ItWr_Map_Orcelite_MIS) >= 1)
		{
			return ItWr_Map_Orcelite_MIS;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City) >= 1)
		{
			return ItWr_Map_NewWorld_City;
		};
	}
	else if (CurrentLevel == OLDWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_OldWorld) >= 1)
		{
			return ItWr_Map_OldWorld;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS) >= 1)
		{
			return ItWr_Map_OldWorld_Oremines_MIS;
		};
	}
	else if (CurrentLevel == DRAGONISLAND_ZEN)
	{
		// none
	}
	else if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_AddonWorld) >= 1)
		{
			return ItWr_Map_AddonWorld;
		}
		else if (Npc_HasItems(hero, ItWr_Addon_TreasureMap) >= 1)
		{
			return ItWr_Addon_TreasureMap;
		};
	};
	
	return 0;
};

func int B_GetAnyPlayerMap()
{
	if		(Npc_HasItems(hero, ItWr_Map_NewWorld) >= 1)
	{
		return ItWr_Map_NewWorld;
	}
	else if (Npc_HasItems(hero, ItWr_Map_Shrine_MIS) >= 1)
	{
		return ItWr_Map_Shrine_MIS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS) >= 1)
	{
		return ItWr_Map_Caves_MIS;
	}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
	{
		return ItWr_Map_NewWorld_Ornaments_Addon;
	}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter) >= 1)
	{
		return ItWr_Map_NewWorld_Dexter;
	}
	else if (Npc_HasItems(hero, ItWr_ShatteredGolem_MIS) >= 1)
	{
		return ItWr_ShatteredGolem_MIS;
	}
	else if (Npc_HasItems(hero, ItWr_Map_Orcelite_MIS) >= 1)
	{
		return ItWr_Map_Orcelite_MIS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City) >= 1)
	{
		return ItWr_Map_NewWorld_City;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld) >= 1)
	{
		return ItWr_Map_OldWorld;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS) >= 1)
	{
		return ItWr_Map_OldWorld_Oremines_MIS;
	}
	else if	(Npc_HasItems(hero, ITWR_REVIVED_MAP_VALLEY) >= 1)
	{
		return ITWR_REVIVED_MAP_VALLEY;
	}
	else if	(Npc_HasItems(hero, ITWR_REVIVED_MAP_VALLEY_GAROND) >= 1)
	{
		return ITWR_REVIVED_MAP_VALLEY_GAROND;
	}
	else if	(Npc_HasItems(hero, ITWR_REVIVED_MAP_VALLEY_DRAGONS) >= 1)
	{
		return ITWR_REVIVED_MAP_VALLEY_DRAGONS;
	}
	else if	(Npc_HasItems(hero, ITWR_REVIVED_MAP_VALLEY_CAVES) >= 1)
	{
		return ITWR_REVIVED_MAP_VALLEY_CAVES;
	}
	else if	(Npc_HasItems(hero, ITWR_REVIVED_MAP_FOCUS) >= 1)
	{
		return ITWR_REVIVED_MAP_FOCUS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_AddonWorld) >= 1)
	{
		return ItWr_Map_AddonWorld;
	}
	else if (Npc_HasItems(hero, ItWr_Addon_TreasureMap) >= 1)
	{
		return ItWr_Addon_TreasureMap;
	};

	return 0;
};

func int PLAYER_HOTKEY_SCREEN_MAP()
{
	var int OldInstance;
	OldInstance = B_GetPlayerMap();
	
	////////////////////////////////////////////////////////////
	// Check if the current map is in the inventory

	if ((OldInstance > 0) && (Npc_HasItems(hero, OldInstance) < 1))
	{
		OldInstance = 0;
	};
	B_SetPlayerMap(OldInstance);

	var int NewInstance;
	NewInstance = OldInstance;

	////////////////////////////////////////////////////////////
	// Check if the current map is for another level

	if (CurrentLevel != NEWWORLD_ZEN)
	{
		if ((OldInstance == ItWr_Map_Caves_MIS)					||
			(OldInstance == ItWr_Map_NewWorld)					||
			(OldInstance == ItWr_Map_NewWorld_City)				||
			(OldInstance == ItWr_Map_NewWorld_Dexter)			||
			(OldInstance == ItWr_Map_NewWorld_Ornaments_Addon)	||
			(OldInstance == ItWr_Map_Orcelite_MIS)				||
			(OldInstance == ItWr_Map_Shrine_MIS)				||
			(OldInstance == ItWr_ShatteredGolem_MIS)			)
		{
			NewInstance = 0;
		};
	};
	if (CurrentLevel != OLDWORLD_ZEN)
	{
		if ((OldInstance == ITWR_REVIVED_MAP_VALLEY)			||
			(OldInstance == ITWR_REVIVED_MAP_VALLEY_GAROND)		||
			(OldInstance == ITWR_REVIVED_MAP_VALLEY_DRAGONS)	||
			(OldInstance == ITWR_REVIVED_MAP_VALLEY_CAVES)		||
			(OldInstance == ITWR_REVIVED_MAP_FOCUS)				)//||
			//(OldInstance == ItWr_Map_OldWorld)					||
			//(OldInstance == ItWr_Map_OldWorld_Oremines_MIS)		)
			
		{
			NewInstance = 0;
		};
	};
	if (CurrentLevel != DRAGONISLAND_ZEN)
	{
		// none
	};
	if (CurrentLevel != ADDONWORLD_ZEN)
	{
		if ((OldInstance == ItWr_Map_AddonWorld)				||
			(OldInstance == ItWr_Addon_TreasureMap)				)
		{
			NewInstance = 0;
		};
	};
	
	////////////////////////////////////////////////////////////
	// Check for better maps

	if (NewInstance <= 0)
	{
		NewInstance = B_GetBestPlayerMap();
	};
	if ((NewInstance <= 0) && (OldInstance <= 0))
	{
		NewInstance = B_GetAnyPlayerMap();
	};

	////////////////////////////////////////////////////////////
	// Return the map to use

	if (NewInstance > 0)
	{
		B_SetPlayerMap(NewInstance);
		return NewInstance;
	}
	else
	{
		return OldInstance;
	};
};


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_LAME_POTION / GAME_LAME_HEAL
//

func void B_LameSchlork ()
{
	Snd_Play ("DRINKBOTTLE");
};

func void PLAYER_HOTKEY_LAME_POTION()
{
	if (Npc_IsInState (hero,ZS_Dead) == FALSE)
	{	
		if (Npc_HasItems (hero,ITPO_REVIVED_MANA_03))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= Mana_Elixier)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	Mana_Elixier);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_03);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ITPO_REVIVED_MANA_02))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= MANA_Extrakt)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Extrakt);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_02);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ITPO_REVIVED_MANA_01))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= MANA_Essenz)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Essenz);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_01);
			B_LameSchlork ();
		}
		else if ((hero.attribute[ATR_MANA_MAX])!=(hero.attribute[ATR_MANA]))
		{
				if (Npc_HasItems (hero,ITPO_REVIVED_MANA_01))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	Mana_Essenz);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_01);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ITPO_REVIVED_MANA_02))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Extrakt);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_02);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ITPO_REVIVED_MANA_03))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Elixier);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_MANA_03);
					B_LameSchlork ();
				}
				else
				{
					Print ("Keine Manatränke vorhanden!");
				};
		 }
		 else
		 {
				Print ("Bereits Maximales Mana!");
		 };
	};
};

func void PLAYER_HOTKEY_LAME_HEAL ()
{

if (Npc_IsInState (hero,ZS_Dead)==FALSE)
	{	
		if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_03))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Elixier)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Elixier);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_03);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_02))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Extrakt)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Extrakt);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_02);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_01))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Essenz)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Essenz);
			Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_01);
			B_LameSchlork ();
		}
		else if ((hero.attribute[ATR_HITPOINTS_MAX])!=(hero.attribute[ATR_HITPOINTS]))
		{
				if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_01))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Essenz);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_01);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_02))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Extrakt);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_02);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ITPO_REVIVED_HEALTH_03))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Elixier);
					Npc_RemoveInvItem (hero,ITPO_REVIVED_HEALTH_03);
					B_LameSchlork ();
				}
				else
				{
					Print ("Keine Heiltränke vorhanden!");
				};
		 }
		 else
		 {
				Print ("Bereits Maximale Lebensenergie!");
		 };
	};
};
