FUNC VOID ZS_Pray_Innos ()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);

	AI_SetWalkmode 	(self, NPC_WALK);		
	
	if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    {
		AI_GotoWP	(self, self.wp);
	};
};

FUNC int ZS_Pray_Innos_Loop ()
{
	// ------ Hmmern ------
	if (!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	&& (Wld_IsMobAvailable(self,"Innos"))
	{
		AI_UseMob (self, "Innos", 1);
	};
	
	// ------ Random-Ani beim Hmmern ------
	if (Npc_GetStateTime(self) > 5)
	&& (C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
    {
  
    	Npc_SetStateTime (self, 0);
    };
	
	return LOOP_CONTINUE;
};

FUNC VOID ZS_Pray_Innos_End ()
{
	AI_UseMob (self, "Innos", -1);
};
