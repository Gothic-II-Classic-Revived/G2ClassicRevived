func void B_BerzerkFullStop(var C_NPC slf)
{
	Npc_ClearAIQueue(slf);

	if (!Npc_HasBodyFlag(slf, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(slf);
	}
	else
	{
		AI_StandUpQuick(slf);
	};
};

func void B_BerzerkAttackTarget(var C_NPC slf, var C_NPC oth)
{
	slf.aivar[AIV_BerzerkStateTime] = Npc_GetStateTime(slf);

	if (slf.aivar[AIV_BerzerkStateTime] < 1)
	{
		slf.aivar[AIV_BerzerkStateTime] = 1;
	};

	Npc_SetTarget(slf, oth);

	if (slf.guild < GIL_SEPERATOR_HUM)
	{
		B_Attack(slf, oth, AR_NONE, 0);
	}
	else
	{
		AI_StartState(slf, ZS_MM_Attack, 0, "");
	};
};

func int C_BerzerkCanAttack(var C_NPC oth)
{
	if (Hlp_IsValidNpc(oth))
	&& (!C_NpcIsDown(oth))
	&& (Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(self))
	&& (Hlp_GetInstanceID(oth) != self.aivar[AIV_BerzerkIgnoreTarget])
	&& (oth.aivar[AIV_INVINCIBLE] == FALSE)
	{
		return TRUE;
	};

	return FALSE;
};

func void B_BerzerkIgnoreIfDown(var C_NPC slf, var C_NPC oth)
{
	if (Hlp_IsValidNpc(oth))
	&& (!Npc_IsPlayer(oth))
	&& (C_NpcIsDown(oth))
	{
		slf.aivar[AIV_BerzerkIgnoreTarget] = Hlp_GetInstanceID(oth);
	};
};

func void B_BerzerkSound(var C_NPC slf)
{
	var int rnd;

	if (slf.guild < GIL_SEPERATOR_HUM)
	{
		rnd = Hlp_Random(100);

		if (rnd <= 40)
		{
			Snd_Play3D(slf, "SVM_1_BERZERK");
		}
		else if (rnd <= 80)
		{
			Snd_Play3D(slf, "SVM_2_BERZERK");
		}
		else
		{
			Snd_Play3D(slf, "SVM_3_BERZERK");
		};
	};
};

func int C_BerzerkAttackExpired(var C_NPC slf)
{
	if (Npc_WasInState(slf, ZS_Berzerk))
	&& ((slf.aivar[AIV_BerzerkStateTime] + Npc_GetStateTime(slf)) > SPL_TIME_BERZERK)
	{
		slf.aivar[AIV_BerzerkStateTime] = SPL_TIME_BERZERK + 1;
		Npc_ClearAIQueue(slf);
		AI_StandUp(slf);
		return TRUE;
	};

	return FALSE;
};

func void ZS_Berzerk()
{
	Npc_ClearAIQueue(self);

	if (self.aivar[AIV_BerzerkStateTime] > 0)
	{
		Npc_SetStateTime(self, self.aivar[AIV_BerzerkStateTime]);
	}
	else
	{
		self.aivar[AIV_Guardpassage_Status] = GP_NONE;
		Npc_SetRefuseTalk(self, 0);
		Npc_SetTempAttitude(self, Npc_GetPermAttitude(self, hero));
		B_StopLookAt(self);
		AI_StopPointAt(self);

		B_BerzerkFullStop(self);
		B_ClearPerceptions(self);
		B_BerzerkSound(self);
	};

	self.senses = SENSE_HEAR | SENSE_SEE;
	self.senses_range = PERC_DIST_ACTIVE_MAX;
	AI_SetWalkMode(self, NPC_RUN);
};

func int ZS_Berzerk_Loop()
{
	if (Npc_GetStateTime(self) > SPL_TIME_BERZERK)
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};

	self.aivar[AIV_BerzerkStateTime] = Npc_GetStateTime(self);
	Npc_PerceiveAll(self);

	if (Wld_DetectNpcEx(self, -1, NOFUNC, -1, FALSE))
	&& (C_BerzerkCanAttack(other))
	{
		B_BerzerkSound(self);
		B_BerzerkAttackTarget(self, other);
		return LOOP_CONTINUE;
	};

	B_BerzerkIgnoreIfDown(self, other);

	if (Wld_DetectNpcEx(self, -1, NOFUNC, -1, FALSE))
	&& (C_BerzerkCanAttack(other))
	{
		B_BerzerkSound(self);
		B_BerzerkAttackTarget(self, other);
		return LOOP_CONTINUE;
	};

	B_BerzerkIgnoreIfDown(self, other);

	Npc_ClearAIQueue(self);
	return LOOP_END;
};

func void ZS_Berzerk_End()
{
	self.aivar[AIV_BerzerkStateTime] = 0;
	self.aivar[AIV_BerzerkIgnoreTarget] = -1;

	Npc_ClearAIQueue(self);
	AI_StandUp(self);

	if (self.guild < GIL_SEPERATOR_HUM)
	{
		AI_Dodge(self);
		AI_Dodge(self);
		AI_PlayAni(self, "T_SEARCH");
		B_Say_Overlay(self, self, "$WHATWASSTHAT");
		AI_RemoveWeapon(self);
		AI_Wait(self, 1);
		AI_PlayAni(self, "T_DONTKNOW");
		AI_Wait(self, 0.5);
	}
	else
	{
		AI_RemoveWeapon(self);
	};
};
