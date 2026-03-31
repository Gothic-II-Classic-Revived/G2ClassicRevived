func void REV_SetObjectRoutine_Fire (var STRING mobName)
{
	Wld_SetObjectRoutine (00,00, mobName, 1);
	Wld_SetObjectRoutine (20,00, mobName, 1);
	Wld_SetObjectRoutine (05,00, mobName, 0);
};


func string REV_BuildTradeString (var int itemInstance)
{
	var string concatText;
	var C_Item itm; itm = Hlp_GetItem(itemInstance);
	
	concatText = itm.name;
	concatText = ConcatStrings (concatText, 		" (Weapon Prot. ");
	concatText = ConcatStrings (concatText, IntToString(itm.protection[PROT_EDGE]));
	concatText = ConcatStrings (concatText, 		", Arrow Prot. ");
	concatText = ConcatStrings (concatText, IntToString(itm.protection[PROT_POINT]));
	concatText = ConcatStrings (concatText, 		", Magic Prot. ");
	concatText = ConcatStrings (concatText, IntToString(itm.protection[PROT_MAGIC]));
	concatText = ConcatStrings (concatText, 		"): ");
	concatText = ConcatStrings (concatText, IntToString(itm.value));
	concatText = ConcatStrings (concatText, 		" gold.");
	
	return concatText;
};

func void REV_ChangeStatPercent (var int recover, var int recoverPercent)
{
	var int amountMax;
	var int amountDelta;

	if(recover == ATR_HITPOINTS)
	{
		amountMax = hero.attribute[ATR_HITPOINTS_MAX];
	}
	else if(recover == ATR_MANA)
	{
		amountMax = hero.attribute[ATR_MANA_MAX];
	};
	amountDelta = (amountMax * recoverPercent) / 100;

	if ((amountDelta == 0) && (recoverPercent > 0))
	{
		amountDelta = 1;
	};

	if ((amountDelta == 0) && (recoverPercent < 0))
	{
		amountDelta = -1;
	};

	Npc_ChangeAttribute (hero, recover, amountDelta);
};
