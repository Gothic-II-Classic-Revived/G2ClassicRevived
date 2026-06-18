// ********************
// Alle Teleport Spells
// ********************

const int SPL_Cost_Teleport		= 10;

// ****************************************
// Print, wenn im falschen Level aktiviert
// ****************************************

func void B_PrintTeleportTooFarAway (var int Level)
{
	if (Level != CurrentLevel)
	{
		PrintScreen	(PRINT_TeleportTooFarAway ,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
	};
};

// ------ Instanz für alle Teleport-Spells ------
INSTANCE Spell_Teleport (C_Spell_Proto)
{
	time_per_mana			= 0;
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_CASTER;
	canTurnDuringInvest		= 0;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


func int Spell_Logic_TeleportAlle (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		if (manaInvested == 0) { return SPL_NEXTLEVEL; };
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		if (manaInvested == 0) { return SPL_NEXTLEVEL; };
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};


// ------ zum Paladin-Secret ------
func void Spell_Cast_PalTeleportSecret()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NW_PAL_SECRETCHAMBER");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};


// ------ zur Hafen-Stadt ------
func void Spell_Cast_TeleportSeaport()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NW_CITY_MERCHANT_TEMPLE_IN");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zum Kloster ------
func void Spell_Cast_TeleportMonastery()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NW_MONASTERY_CHAPELL_01");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zum Bauernhof ------
func void Spell_Cast_TeleportFarm()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NW_BIGFARM_CHAPEL_004");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zu Xardas ------
func void Spell_Cast_TeleportXardas()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NW_XARDAS_STARTPOINT"); 
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zum Pass in der NW ------
func void Spell_Cast_TeleportPassNW()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	var int random;	random = Hlp_Random (2);
	if (random == 0)
	{
		AI_Teleport		(self, "NW_FARM3_PATH_11_SMALLRIVER_13");
	}
	else if (random == 1)
	{
		AI_Teleport		(self, "NW_FARM3_BIGWOOD_TO_VALLEY");
	};
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zum Pass in der OW ------
func void Spell_Cast_TeleportPassOW()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	var int random;	random = Hlp_Random (2);
	if (random == 0)
	{
		AI_Teleport		(self, "OW_PATH_ORETRAIL_2_DJGCAMP_03");
	}
	else if (random == 1)
	{
		AI_Teleport		(self, "SPAWN_MOLERAT02_SPAWN01");
	};
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ zum Old Camp ------
func void Spell_Cast_TeleportOC()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "OCC_CHAPEL_UPSTAIRS");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ in den OW Dämonentower ------
func void Spell_Cast_TeleportOWDemonTower()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "DT_E2_06");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ Zur Taverne ------
func void Spell_Cast_TeleportTaverne ()
{
	B_PrintTeleportTooFarAway (NEWWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	var int random;	random = Hlp_Random (4);
	if (random == 0)
	{
		AI_Teleport		(self, "NW_TAVERNE_03");
	}
	else if (random == 1)
	{
		AI_Teleport		(self, "NW_TAVERNE_07");
	} 
	else if (random == 2)
	{
		AI_Teleport		(self, "NW_TAVERNE_05");
	} 
	else if (random == 3)
	{
		AI_Teleport		(self, "NW_TAVERNE_BIGFARM_04");
	};

	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ Zur Orc Camp ------
func void Spell_Cast_TeleportOrc ()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "OW_ORC_BOSS4_016");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ Zur Neuer Camp ------
func void Spell_Cast_TeleportNC ()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "NC_KDW_CAVE_CENTER");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ------ Zur Sleeper Camp ------
func void Spell_Cast_TeleportPsi ()
{
	B_PrintTeleportTooFarAway (OLDWORLD_ZEN);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};

	AI_Teleport		(self, "PSI_TEMPLE_COURT_GURU");
	AI_PlayAni		(self, "T_HEASHOOT_2_STAND" );
};

// ----- neu 1.21 Verteiler für die Cast-Funcs -------
func void Spell_Cast_Teleport()
{
	if (Npc_GetActiveSpell(self) == SPL_PalTeleportSecret	)	{	Spell_Cast_PalTeleportSecret	(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportSeaport		)	{	Spell_Cast_TeleportSeaport		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportMonastery	)	{	Spell_Cast_TeleportMonastery	(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportFarm		)	{	Spell_Cast_TeleportFarm			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportXardas		)	{	Spell_Cast_TeleportXardas		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportPassNW		)	{	Spell_Cast_TeleportPassNW		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportPassOW		)	{	Spell_Cast_TeleportPassOW		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportOC			)	{	Spell_Cast_TeleportOC			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportOWDemonTower)	{	Spell_Cast_TeleportOWDemonTower (); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportTaverne		)	{	Spell_Cast_TeleportTaverne		(); };
//	if (Npc_GetActiveSpell(self) == SPL_Teleport_3			)	{	Spell_Cast_XXX					(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportOrc			)	{	Spell_Cast_TeleportOrc			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportNC			)	{	Spell_Cast_TeleportNC			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportPsi			)	{	Spell_Cast_TeleportPsi			(); };

};






