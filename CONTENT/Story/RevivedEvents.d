func event GameLoop()
{
	if (Hlp_KeyToggled(KEY_U))
	&& (Npc_HasEquippedArmor(hero))
	{
		var C_Item itm; 
		itm = Npc_GetEquippedArmor(hero);

		if (Hlp_IsItem(itm, ITAR_REVIVED_PAL_L))
		|| (Hlp_IsItem(itm, ITAR_REVIVED_PAL_M))
		|| (Hlp_IsItem(itm, ITAR_REVIVED_PAL_H_02))
		{
			if (!Npc_HasItems (hero,ITHE_REVIVED_PAL))
			{
				CreateInvItems (hero, ITHE_REVIVED_PAL, 1);	
			};

			Npc_PlayAni(hero, "R_SCRATCHHEAD");
			Npc_EquipItem(hero, ITHE_REVIVED_PAL);
		};

		if (Hlp_IsItem(itm, ITAR_REVIVED_DJG_L))
		|| (Hlp_IsItem(itm, ITAR_REVIVED_DJG_M))
		{
			if (!Npc_HasItems (hero,ITHE_REVIVED_DJG_M))
			{
				CreateInvItems (hero, ITHE_REVIVED_DJG_M, 1);	
			};

			Npc_PlayAni(hero, "R_SCRATCHHEAD");
			Npc_EquipItem(hero, ITHE_REVIVED_DJG_M);
		};

		if (Hlp_IsItem(itm, ITAR_REVIVED_DJG_H))
		|| (Hlp_IsItem(itm, ITAR_REVIVED_DEMONHUNTER_02))
		{
			if (!Npc_HasItems (hero,ITHE_REVIVED_DJG_H))
			{
				CreateInvItems (hero, ITHE_REVIVED_DJG_H, 1);	
			};

			Npc_PlayAni(hero, "R_SCRATCHHEAD");
			Npc_EquipItem(hero, ITHE_REVIVED_DJG_H);
		};
	};
};