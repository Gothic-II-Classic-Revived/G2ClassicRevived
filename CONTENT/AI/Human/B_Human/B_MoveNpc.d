// *********
// B_MoveNpc
// *********

func void B_MoveNpc ()
{
	// EXIT IF...

	if (other.aivar[AIV_INVINCIBLE] == TRUE)
	{
		return;
	};

	if (Npc_IsInCutscene(self))
	|| (Npc_IsInCutscene(other))
	{
		return;
	};

	if (C_NpcIsDown(other))
	{
		return;
	};

	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	|| (self.npctype == NPCTYPE_FRIEND)
	{
		return;
	};

	if (!C_BodyStateContains(other, BS_STAND))
	{
		return;
	};

	if (Npc_GetAttitude(self, other) == ATT_HOSTILE)
	{
		B_AssessEnemy();
		return;
	};

	if (!Npc_IsPlayer(other))
	{
		return;
	};

	// FUNC

	Npc_ClearAIQueue (self);
	B_ClearPerceptions (self);

	AI_StandUp (self);
	B_TurnToNpc (self, other);
	B_LookAtNpc (self, other);

	if ((Npc_GetAttitude(self, other) == ATT_ANGRY) || (Npc_GetAttitude(self, other) == ATT_NEUTRAL))
	&& (C_NpcIsToughGuy(self))
	&& (!C_NpcIsGateGuard(self))
	&& (self.level > other.level)
	{
		AI_StartState (self, ZS_MoveNpcWait, 0, "");
		return;
	};

	AI_StartState (self, ZS_MoveNpcFriendlyWait, 0, "");
};
