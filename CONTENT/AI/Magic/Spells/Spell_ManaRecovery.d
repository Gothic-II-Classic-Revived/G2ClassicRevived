// *************************
// SPL_ManaRecovery
// *************************

INSTANCE Spell_ManaRecovery (C_Spell_Proto)
{
	time_per_mana			= 50;
	spelltype				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_CASTER;
	canTurnDuringInvest		= 0;
};

func int Spell_Logic_ManaRecovery(var int healthInvested)
{
	var string soundprefix;

	if (healthInvested == 0)
	{
		if (self.attribute[ATR_HITPOINTS] <= SPL_ManaRecovery_MINHP)
		|| (self.attribute[ATR_MANA] == self.attribute[ATR_MANA_MAX])
		{
			return SPL_SENDSTOP;
		};

		self.aivar[AIV_SpellLevel] = 0;
		Wld_StopEffect("FOV_MORPH1");
		return SPL_NEXTLEVEL;
	};

	if (self.attribute[ATR_HITPOINTS] <= SPL_ManaRecovery_MINHP)
	|| (self.attribute[ATR_MANA] == self.attribute[ATR_MANA_MAX])
	|| (healthInvested > SPL_ManaRecovery_MAXHP)
	{
		return SPL_SENDCAST;
	};

	self.attribute[ATR_HITPOINTS] -= 1;
	Npc_ChangeAttribute(self, ATR_MANA, +SPL_ManaRecovery_RELATION);
	self.aivar[AIV_SpellLevel] += 1;

	soundprefix = ConcatStrings(ConcatStrings("SVM_", IntToString(self.voice)), "_AARGH_");

	if (self.aivar[AIV_SpellLevel] == SPL_ManaRecovery_SAYTIME)
	{
		Snd_Play3D(self, ConcatStrings(soundprefix, "1"));
	}
	else if (self.aivar[AIV_SpellLevel] == SPL_ManaRecovery_SAYTIME * 2)
	{
		Snd_Play3D(self, ConcatStrings(soundprefix, "2"));
	}
	else if (self.aivar[AIV_SpellLevel] == SPL_ManaRecovery_SAYTIME * 3)
	{
		Snd_Play3D(self, ConcatStrings(soundprefix, "3"));
		self.aivar[AIV_SpellLevel] = 0;
	};

	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_ManaRecovery()
{
	Wld_StopEffect("FOV_MORPH1");
	self.aivar[AIV_SelectSpell] += 1;
};
