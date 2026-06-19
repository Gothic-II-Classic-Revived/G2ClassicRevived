// *******************
// SPL_SummonSkeletons
// *******************

const int SPL_Cost_SummonSkeletons = 90;

INSTANCE Spell_SummonSkeletons(C_Spell_Proto)
{
	time_per_mana = 0;
	targetCollectAlgo = TARGET_COLLECT_NONE;
};

INSTANCE Spell_SummonSkeletons_Data(C_SPELL_DATA)
{
	spellId = SPL_SummonSkeletons;
	spellType = SPELL_TYPE_DEFAULT;
	spellEnergyType = ATR_MANA;
	spellIsInvestSpell = FALSE;
};

func int Spell_Logic_SummonSkeletons(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_SummonSkeletons)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonSkeletons()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonSkeletons;
	};

	self.aivar[AIV_SelectSpell] += 1;

	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange(self, Summoned_Skeleton, 2, 500);
		Wld_SpawnNpcRange(self, Summoned_SkeletonWarrior, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange(self, Lesser_Skeleton, 2, 500);
		Wld_SpawnNpcRange(self, Skeleton, 1, 500);
	};
};
