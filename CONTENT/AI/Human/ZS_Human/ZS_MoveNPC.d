// **********
// ZS_MoveNPC
// **********

func void ZS_MoveNpcWait ()
{
	Perception_Set_Minimal();
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFightSound);
	Npc_PercEnable (self, PERC_ASSESSWARN, B_AssessWarn);
	Npc_PercEnable (self, PERC_ASSESSTHREAT, B_AssessThreat);
	Npc_PercEnable (self, PERC_DRAWWEAPON, B_AssessDrawWeapon);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);

	B_LookAtNpc (self, other);
	B_Say (self, other, "$OUTOFMYWAY");
};

func int ZS_MoveNpcWait_Loop ()
{
	if (Npc_GetStateTime(self) > 2)
	{
		if (Npc_IsWayBlocked(self))
		&& (Npc_GetDistToNpc(self, other) < 200)
		&& (other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			B_SelectWeapon (self, other);
			B_Say (self, other, "$YOUDEAFORWHAT");
			AI_StartState (self, ZS_MoveNpcWait1, 0, "");
			return LOOP_CONTINUE;
		};

		B_StopLookAt (self);
		AI_ContinueRoutine (self);
		return LOOP_END;
	};

	AI_Wait (self, 1);
	return LOOP_CONTINUE;
};

func void ZS_MoveNpcWait_End ()
{
};

func void ZS_MoveNpcWait1 ()
{
	Perception_Set_Minimal();
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFightSound);
	Npc_PercEnable (self, PERC_ASSESSWARN, B_AssessWarn);
	Npc_PercEnable (self, PERC_ASSESSTHREAT, B_AssessThreat);
	Npc_PercEnable (self, PERC_DRAWWEAPON, B_AssessDrawWeapon);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);

	B_LookAtNpc (self, other);
};

func int ZS_MoveNpcWait1_Loop ()
{
	if (Npc_GetStateTime(self) > 2)
	{
		if (Npc_IsWayBlocked(self))
		&& (Npc_GetDistToNpc(self, other) < 200)
		&& (other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			B_Attack (self, other, AR_ReactToWeapon, 1);
			return LOOP_CONTINUE;
		};

		B_StopLookAt (self);
		AI_ContinueRoutine (self);
		return LOOP_END;
	};

	AI_Wait (self, 1);
	return LOOP_CONTINUE;
};

func void ZS_MoveNpcWait1_End ()
{
	B_StopLookAt (self);
	B_RemoveWeapon (self);
};

func void ZS_MoveNpcFriendlyWait ()
{
	Perception_Set_Minimal();
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND, B_AssessFightSound);
	Npc_PercEnable (self, PERC_ASSESSWARN, B_AssessWarn);
	Npc_PercEnable (self, PERC_ASSESSTHREAT, B_AssessThreat);
	Npc_PercEnable (self, PERC_DRAWWEAPON, B_AssessDrawWeapon);
	Npc_PercEnable (self, PERC_ASSESSTALK, B_AssessTalk);

	B_LookAtNpc (self, other);
	B_Say (self, other, "$MAKEWAY");
};

func int ZS_MoveNpcFriendlyWait_Loop ()
{
	if (!Npc_IsWayBlocked(self))
	|| (Npc_GetDistToNpc(self, other) > 200)
	{
		B_StopLookAt (self);
		AI_ContinueRoutine (self);
		return LOOP_END;
	};

	AI_Wait (self, 1);
	return LOOP_CONTINUE;
};

func void ZS_MoveNpcFriendlyWait_End ()
{
	B_StopLookAt (self);
};
