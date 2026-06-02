// ****************
// B_AssessCaster
// ****************

func void B_AssessCaster ()
{
	// EXIT IF...

	if (!Npc_IsPlayer(other))
	{
		return;
	};

	if (other.aivar[AIV_INVINCIBLE] == TRUE)
	{
		return;
	};

	if (C_NpcIsDown(other))
	{
		return;
	};

	if (Npc_IsInState(self, ZS_Attack))
	|| (Npc_IsInState(self, ZS_ReactToWeapon))
	|| (Npc_IsInState(self, ZS_Flee))
	{
		return;
	};

	if (Npc_GetDistToNpc(self, other) > PERC_DIST_ACTIVE_MAX)
	{
		return;
	};

	if (!Npc_CanSeeNpc(self, other))
	{
		return;
	};

	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	|| (self.npctype == NPCTYPE_FRIEND)
	|| (Npc_GetAttitude(self, other) == ATT_FRIENDLY)
	{
		return;
	};

	if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
	{
		B_AssessEnemy();
		return;
	};

	if (Npc_GetActiveSpellCat(other) != SPELL_BAD)
	{
		if (C_NpcIsGateGuard(self))
		&& ((Npc_GetActiveSpell(other) == SPL_Sleep) || (Npc_GetActiveSpell(other) == SPL_Charm))
		{
			B_Attack(self, other, AR_ReactToWeapon, 0);
		};

		return;
	};

	if (!C_NpcIsBotheredByWeapon(self, other))
	&& (!C_NpcIsGateGuard(self))
	{
		return;
	};

	// FUNC

	var int oldAttackReason;
	oldAttackReason = self.aivar[AIV_ATTACKREASON];
	self.aivar[AIV_ATTACKREASON] = AR_ReactToWeapon;

	if (C_WantToFlee(self, other))
	{
		self.aivar[AIV_LastPlayerAR] = AR_ReactToWeapon;

		Npc_ClearAIQueue(self);
		Npc_SetTarget(self, other);
		B_ClearPerceptions(self);
		AI_StartState(self, ZS_Flee, 0, "");
		return;
	};

	self.aivar[AIV_ATTACKREASON] = oldAttackReason;

	Npc_ClearAIQueue(self);
	B_ClearPerceptions(self);
	AI_StartState(self, ZS_ReactToWeapon, 0, "");
};
