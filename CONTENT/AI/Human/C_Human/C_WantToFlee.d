// ************
// C_WantToFlee
// ************

func int C_WantToFlee (var C_NPC slf, var C_NPC oth)
{
	// EXIT IF...

	// ------ Npctype_Friend flieht nie ------
	if (slf.npctype == NPCTYPE_FRIEND)
	{
		return FALSE;
	};

	// ------ Partymember flieht nie ------
	if (slf.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return FALSE;
	};

	// ------ Story-NSCs fliehen nicht aus gescripteten Kaempfen ------
	if (slf.npctype == NPCTYPE_MAIN)
	|| (slf.npctype == NPCTYPE_OCMAIN)
	|| (slf.npctype == NPCTYPE_BL_MAIN)
	|| (slf.npctype == NPCTYPE_BAUOUT_MAIN)
	|| (slf.npctype == NPCTYPE_SLDOUT_MAIN)
	|| (slf.npctype == NPCTYPE_MILOUT_MAIN)
	{
		return FALSE;
	};

	// ------ GateGuards fliehen nie ------
	if (C_NpcIsGateGuard (slf))
	{
		return FALSE;
	};

	// ------ Toetungsgruende sollen nicht in Flucht umkippen ------
	if (slf.aivar[AIV_ATTACKREASON] == AR_KILL)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_GuildEnemy)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_HumanMurderedHuman)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_GuardStopsIntruder)
	|| (slf.aivar[AIV_ATTACKREASON] == AR_GuardCalledToKill)
	{
		return FALSE;
	};

	// ------ Nur der Spieler loest diese Angstlogik aus ------
	if (!Npc_IsPlayer(oth))
	{
		return FALSE;
	};

	// ------ Nur schwache Zivilisten/Arbeiter reagieren wie G1-Worker ------
	if (slf.fight_tactic != FAI_HUMAN_COWARD)
	{
		return FALSE;
	};

	if (C_NpcIsToughGuy(slf))
	{
		return FALSE;
	};

	// FUNC

	// ------ Flucht, wenn der Spieler self schon besiegt hat ------
	if (slf.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		return TRUE;
	};

	// ------ Gothic 1: self ist schwach, wenn other mindestens doppelt so stark ist ------
	if ((2*slf.level) <= oth.level)
	{
		return TRUE;
	};

	// ------ Feige Zivilisten brechen verletzte Kaempfe ab ------
	if (slf.attribute[ATR_HITPOINTS] < (slf.attribute[ATR_HITPOINTS_MAX] / 2))
	{
		return TRUE;
	};

	return FALSE;
};
