func void B_ENTER_ABANDONEDMINE_Kapitel_1()
{
	if(EnterAM_Kapitel1 == FALSE)
	{
		EnterAM_Kapitel1 = TRUE;
	};
};

func void B_ENTER_ABANDONEDMINE_Kapitel_2()
{
	if(EnterAM_Kapitel2 == FALSE)
	{
		EnterAM_Kapitel2 = TRUE;
		Wld_InsertNpc(Minecrawler,"AM_051");
		Wld_InsertNpc(Minecrawler,"AM_022");
	};
};

func void B_ENTER_ABANDONEDMINE_Kapitel_3()
{
	if(EnterAM_Kapitel3 == FALSE)
	{
		Wld_InsertNpc(Minecrawler,"AM_023");
		Wld_InsertNpc(Minecrawler,"AM_024");

		Wld_InsertItem(ItMi_Nugget,"FP_AM_ITEM_02");
		Wld_InsertItem(ITAM_REVIVED_PROT_MAGIC_FIRE,"FP_AM_ITEM_03");
		Wld_InsertItem(ITRI_REVIVED_STR_DEX_01,"FP_AM_ITEM_01");

		EnterAM_Kapitel3 = TRUE;
	};
};

func void B_ENTER_ABANDONEDMINE_Kapitel_4()
{
	if(EnterAM_Kapitel4 == FALSE)
	{
		Wld_InsertNpc(Minecrawler,"AM_048");
		Wld_InsertNpc(Minecrawler,"AM_050");
		Wld_InsertNpc(MinecrawlerWarrior,"AM_035");
		Wld_InsertNpc(MinecrawlerWarrior,"AM_037");

		EnterAM_Kapitel4 = TRUE;
	};
};

func void B_ENTER_ABANDONEDMINE_Kapitel_5()
{
	if(EnterAM_Kapitel5 == FALSE)
	{
		Wld_InsertNpc(MinecrawlerWarrior,"AM_035");
		Wld_InsertNpc(MinecrawlerWarrior,"AM_038");
		Wld_InsertNpc(MinecrawlerWarrior,"AM_040");
		Wld_InsertNpc(MinecrawlerWarrior,"AM_037");

		EnterAM_Kapitel5 = TRUE;
	};
};


func void B_Enter_AbandonedMine()
{
	B_InitNpcGlobals();

	if(Kapitel >= 1)
	{
		B_ENTER_ABANDONEDMINE_Kapitel_1();
	};
	if(Kapitel >= 2)
	{
		B_ENTER_ABANDONEDMINE_Kapitel_2();
	};
	if(MIS_ReadyForChapter3 == TRUE)
	{
		B_ENTER_ABANDONEDMINE_Kapitel_3();
	};
	if(MIS_ReadyforChapter4 == TRUE)
	{
		B_ENTER_ABANDONEDMINE_Kapitel_4();
	};
	if(Kapitel >= 5)
	{
		B_ENTER_ABANDONEDMINE_Kapitel_5();
	};

	CurrentLevel = ABANDONEDMINE_ZEN; 
	B_InitNpcGlobals();
};