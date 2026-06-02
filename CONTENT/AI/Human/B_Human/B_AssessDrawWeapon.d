// ***************************************************************
// B_AssessDrawWeapon
// ------------------
// wird durch PERC_DRAWWEAPON 
// und durch B_AssessPlayer aufgerufen
// Reichweite ist über Wahrnehmung eingestellt (PERC_DIST_DIALOG)
// ***************************************************************

func int B_AssessDrawWeapon()
{
	// EXIT IF...
	
	// ------ Spieler hat keine Waffe gezogen ------
	if (Npc_IsInFightMode (other, FMODE_NONE))
	{
		return FALSE;
	};	

	// ------ DISTANZ zu Täter größer als PERC_DIST_DIALOG ------
	if (Npc_GetDistToNpc(self, other) > PERC_DIST_DIALOG)
	{
		return FALSE;
	};
	
	// ------ die Waffe ist dem NSC egal ------
	if (!C_NpcIsBotheredByWeapon (self, other))
	{
		return FALSE;
	};

	// ------ nicht nochmal aufrufen ------
	if (Npc_IsInState(self, ZS_ReactToWeapon))
	{
		return FALSE;
	};
	
	if (Npc_IsInState(self, ZS_ObservePlayer))
	&& (Npc_WasInState(self, ZS_WatchFight))
	{
		return FALSE;
	};
	
	// ------ NSC kann SC mit Waffe nicht sehen ------
	if (!Npc_CanSeeNpc(self, other))
	{	
		return FALSE;
	};

	
	// FUNC
	
	var int oldAttackReason;
	oldAttackReason = self.aivar[AIV_ATTACKREASON];
	self.aivar[AIV_ATTACKREASON] = AR_ReactToWeapon;

	// ------ Schwache NSCs fliehen sofort vor gezogener Waffe ------
	if (C_WantToFlee(self, other))
	{
		if (Npc_IsPlayer(other))
		{
			self.aivar[AIV_LastPlayerAR] = AR_ReactToWeapon;
		};

		Npc_ClearAIQueue	(self);
		Npc_SetTarget		(self, other);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_Flee, 0, "");
		return TRUE;
	};

	self.aivar[AIV_ATTACKREASON] = oldAttackReason;

	Npc_ClearAIQueue	(self);
	B_ClearPerceptions	(self);
	AI_StartState 		(self, ZS_ReactToWeapon, 0, "");
	return TRUE;
};
