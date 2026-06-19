// ******************************************************************
// B_AssessMagic
// -------------
// Wahrnehmung ist für ALLE NSCs IMMER aktiv
// auch für den Spieler (s.u.)
// wir aufgerufen, sobald irgendein Spruch auf einen NSC wirkt
// setzt den NSC dan in den entsprechenden ZS
// die meisten Spells führen allerdings zu keinem ZS
// (sind unten nicht berücksichtigt)
// ------------------------------------------------------------------
// Beachtem: if (Npc_GetLastHitSpellID(self) == SPL_Sleep) funzt nicht,
// weil Sleep INSTANT wirkt (d.h. sofort SENDCAST zurückliefert)
// und beim Aufruf von B_AssessMagic NICHT mehr "Active" ist!
// ******************************************************************


func void B_AssessMagic_Berzerk()
{
	// Damit andere NSCs den Angriff wahrnehmen koennen.
	Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
	Npc_ClearAIQueue(self);

	if (!Npc_IsDead(self))
	&& (!Npc_IsInState(self, ZS_Unconscious))
	{
		self.aivar[AIV_BerzerkStateTime] = 0;
		self.aivar[AIV_BerzerkIgnoreTarget] = -1;
		AI_StartState(self, ZS_Berzerk, 0, "");
	};
};

func void B_AssessMagic ()
{
	// ------ Bei ALLEN Spells. Damit andere NSCs den Angriff wahrnehmen können ------
	if (Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc	(self, PERC_ASSESSFIGHTSOUND, self, other);
	};

//###	Addon ###

	// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Whirlwind, 0, "");
		return;
	};
	// ---- Icelance ---
	// ---- Thunderstorm ----
	// ---- Geyser ----
	// ---- Waterfist ----
	// ---- SuckEnergy ----
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_SuckEnergy, 0, "");
		return;
	};
	// ---- GreenTentacle ----
	if (Npc_GetLastHitSpellID(self) == SPL_Greententacle)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState	(self, ZS_Greententacle, 0, "");
		return;

	};
	// ---- SummonGuardian ----
	// ---- Swarm ----
	if (Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_Swarm, 0, "");
		return;
	};
	// ---- SummonZombie ----
	// ---- Skull ----

	// ------ IceCube, IceWave ------
	if (Npc_GetLastHitSpellID(self) == SPL_IceCube)
	|| (Npc_GetLastHitSpellID(self) == SPL_IceWave)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicFreeze, 0, "");
		return;
	};

	// ------ FireWave ------
	if (Npc_GetLastHitSpellID(self) == SPL_FireWave)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_MagicBurn, 0, "");
		return;
	};

	// ------ ChargeZap ------
	if (Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		AI_StartState		(self, ZS_ShortZapped, 0, "");
		return;
	};

    // ------ Gothic 1 psionic Pyrokinesis ------
    if (Npc_GetLastHitSpellID(self) == SPL_Pyrokinesis)
    || (Npc_GetActiveSpell(other) == SPL_Pyrokinesis)
    {
        Npc_ClearAIQueue    (self);
        B_ClearPerceptions  (self);
        if (!Npc_IsDead(self))
        && (!Npc_IsInState(self, ZS_Unconscious))
        {
            AI_StartState   (self, ZS_Pyro, 0, "");
        };
        return;
    };

	// ------ Sequel psionic Berserk ------
	if (Npc_GetActiveSpell(other) == SPL_Berzerk)
	{
		B_AssessMagic_Berzerk();
		return;
	};

	// ------ Extricate ------
	if (Npc_GetLastHitSpellID(self) == SPL_Extricate)
	{
		if (self.guild < GIL_SEPERATOR_HUM)
		{
			Npc_ClearAIQueue(self);
			B_ClearPerceptions(self);
			Npc_SetTarget(self, other);
			B_AssessDamage();
		};

		Npc_SetTarget(self, other);
		Npc_SetTempAttitude(self, ATT_HOSTILE);
		return;
	};
	// ------ Fear ------
	if (Npc_GetLastHitSpellID(self) == SPL_Fear)
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self,	other);

		if (self.guild < GIL_SEPERATOR_HUM)
		&& (self.guild != GIL_KDF)
		&& (self.guild != GIL_PAL)
		{
			//AI_StartState	(self, ZS_Flee, 0, "");
			AI_StartState	(self, ZS_MagicFlee, 0, "");
			return;
		}
		else if (self.guild > GIL_SEPERATOR_HUM)
		&& (self.guild != GIL_DRAGON)
		&& (self.guild != GIL_TROLL)
		&& (self.guild != GIL_STONEGOLEM)
		&& (self.guild != GIL_ICEGOLEM)
		&& (self.guild != GIL_FIREGOLEM)
		&& (self.guild != GIL_SWAMPGOLEM)
		{
			AI_StartState	(self, ZS_MM_Flee, 0, "");
			return;
		};
	};

	// Firespells senden ein ASSESSMAGIC bei Kollision
	if (Npc_GetLastHitSpellID(self) == SPL_Firerain)
	{
		Npc_ClearAIQueue	(self);
		//B_ClearPerceptions	(self);	//Sonst reagiert der NPC nicht!
		AI_StartState(self, ZS_MagicBurnShort, 0, "");
		return;
	};

};


// ***************************************************
// Anmeldung der AssessMagic-Wahrnehmung beim Spieler
// (auch wenn der Spieler NICHT zustandsgesteuert ist)
// Spieler hat also IMMER PERC_ASSESSMAGIC aktiv
// ***************************************************

const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic;





