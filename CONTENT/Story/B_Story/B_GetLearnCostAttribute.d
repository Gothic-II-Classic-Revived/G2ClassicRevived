// ***********************************************************
// B_GetLearnCostAttribute
// -----------------------
// ermittelt die Kosten eines Attributspunktes (abh. v. Gilde)
// ***********************************************************
	
func int B_GetLearnCostAttribute (var C_NPC oth, var int attribut)
{
	var int kosten; kosten = 0;
	var int realAttribute; realAttribute = B_GetRealAttribute (oth, attribut);

	if (attribut == ATR_STRENGTH)
	|| (attribut == ATR_DEXTERITY)
	|| (attribut == ATR_MANA_MAX)
	{
		if (realAttribute >= 120)     { kosten = 5; }
		else if (realAttribute >= 90) { kosten = 4; }
		else if (realAttribute >= 60) { kosten = 3; }
		else if (realAttribute >= 30) { kosten = 2; }
		else                          { kosten = 1; };
	};

	// Guild preference shifts the whole Addon tier curve by one LP.
	if(kosten >= 2)
	{
		if ((oth.guild == GIL_KDF) || (oth.guild == GIL_NOV))
		{
			if (attribut == ATR_MANA_MAX)
			{
				kosten = kosten - 1;
			};
		}
		else if ((oth.guild == GIL_DJG) || (oth.guild == GIL_SLD))
		{
			if (attribut == ATR_DEXTERITY)
			{
				kosten = kosten - 1;
			};
		}
		else if ((oth.guild == GIL_PAL) || (oth.guild == GIL_MIL))
		{
			if (attribut == ATR_STRENGTH)
			{
				kosten = kosten - 1;
			};
		};
	};

	return kosten;
};
