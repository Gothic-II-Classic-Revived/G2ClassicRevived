func void REV_SetObjectRoutine_Fire (var STRING mobName)
{
	Wld_SetObjectRoutine (00,00, mobName, 1);
	Wld_SetObjectRoutine (20,00, mobName, 1);
	Wld_SetObjectRoutine (05,00, mobName, 0);
};


func string REV_BuildTradeString (var int itemInstance)
{
	var string concatText;
	var string armorName;
	var string protEdge;
	var string protPoint;
	var string protMagic;
	var string value;

	if(itemInstance == ITAR_REVIVED_ARCHER)
	{
		armorName	= "Archer's Suit";
		protEdge	= IntToString(REV_Prot_Edge_ARCHER);
		protPoint	= IntToString(REV_Prot_Point_ARCHER);
		protMagic	= IntToString(REV_Prot_Magic_ARCHER);
		value		= IntToString(REV_Value_ARCHER);
	}
	else if(itemInstance == ITAR_REVIVED_LEATHER_H)
	{
		armorName	= "Demon Hunter Armor";
		protEdge	= IntToString(REV_Prot_Edge_LEATHER_H);
		protPoint	= IntToString(REV_Prot_Point_LEATHER_H);
		protMagic	= IntToString(REV_Prot_Magic_LEATHER_H);
		value		= IntToString(REV_Value_LEATHER_H);
	}
	else if(itemInstance == ITAR_REVIVED_GRD_M)
	{
		armorName	= "Guard's Armor";
		protEdge	= IntToString(REV_Prot_Edge_GRD_M);
		protPoint	= IntToString(REV_Prot_Point_GRD_M);
		protMagic	= IntToString(REV_Prot_Magic_GRD_M);
		value		= IntToString(REV_Value_GRD_M);
	}
	else if(itemInstance == ITAR_REVIVED_GRD_H)
	{
		armorName	= "H. Guard's Armor";
		protEdge	= IntToString(REV_Prot_Edge_GRD_H);
		protPoint	= IntToString(REV_Prot_Point_GRD_H);
		protMagic	= IntToString(REV_Prot_Magic_GRD_H);
		value		= IntToString(REV_Value_GRD_H);
	}
	else if(itemInstance == ITAR_REVIVED_SLD_M)
	{
		armorName	= "Mercenary's Armor";
		protEdge	= IntToString(REV_Prot_Edge_SLD_M);
		protPoint	= IntToString(REV_Prot_Point_SLD_M);
		protMagic	= IntToString(REV_Prot_Magic_SLD_M);
		value		= IntToString(REV_Value_SLD_M);
	}
	else if(itemInstance == ITAR_REVIVED_SLD_H)
	{
		armorName	= "H. Mercenary's Armor";
		protEdge	= IntToString(REV_Prot_Edge_SLD_H);
		protPoint	= IntToString(REV_Prot_Point_SLD_H);
		protMagic	= IntToString(REV_Prot_Magic_SLD_H);
		value		= IntToString(REV_Value_SLD_H);
	}
	else if(itemInstance == ITAR_REVIVED_DJG_M)
	{
		armorName	= "M. Dragon Hunter's Armor";
		protEdge	= IntToString(REV_Prot_Edge_DJG_M);
		protPoint	= IntToString(REV_Prot_Point_DJG_M);
		protMagic	= IntToString(REV_Prot_Magic_DJG_M);
		value		= IntToString(REV_Value_DJG_M);
	}
	else if(itemInstance == ITAR_REVIVED_DJG_H)
	{
		armorName	= "H. Dragon Hunter's Armor";
		protEdge	= IntToString(REV_Prot_Edge_DJG_H);
		protPoint	= IntToString(REV_Prot_Point_DJG_H);
		protMagic	= IntToString(REV_Prot_Magic_DJG_H);
		value		= IntToString(REV_Value_DJG_H);
	}
	else if(itemInstance == ITAR_REVIVED_DEMONHUNTER)
	{
		armorName	= "Demon Hunter Armor";
		protEdge	= IntToString(REV_Prot_Edge_DEMONHUNTER);
		protPoint	= IntToString(REV_Prot_Point_DEMONHUNTER);
		protMagic	= IntToString(REV_Prot_Magic_DEMONHUNTER);
		value		= IntToString(REV_Value_DEMONHUNTER);
	};
	
	concatText = ConcatStrings (ConcatStrings(armorName, " (Weapon Prot. "), protEdge);
	concatText = ConcatStrings (concatText, ConcatStrings(", Arrow Prot. ", protPoint));
	concatText = ConcatStrings (concatText, ConcatStrings(", Magic Prot. ", protMagic));
	concatText = ConcatStrings (concatText, ConcatStrings("): ", value));
	concatText = ConcatStrings (concatText, " gold.");
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
