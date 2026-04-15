func void B_ENTER_FREEMINE_Kapitel_1()
{
	if(EnterFM_Kapitel1 == FALSE)
	{
		EnterFM_Kapitel1 = TRUE;
	};
};

func void B_ENTER_FREEMINE_Kapitel_2()
{
	if(EnterFM_Kapitel2 == FALSE)
	{
		
		EnterFM_Kapitel2 = TRUE;
	};
};

func void B_ENTER_FREEMINE_Kapitel_3()
{
	if(EnterFM_Kapitel3 == FALSE)
	{

		EnterFM_Kapitel3 = TRUE;
	};
};

func void B_ENTER_FREEMINE_Kapitel_4()
{
	if(EnterFM_Kapitel4 == FALSE)
	{

		EnterFM_Kapitel4 = TRUE;
	};
};

func void B_ENTER_FREEMINE_Kapitel_5()
{
	if(EnterFM_Kapitel5 == FALSE)
	{

		EnterFM_Kapitel5 = TRUE;
	};
};


func void B_Enter_FREEMINE()
{
	B_InitNpcGlobals();

	if(Kapitel >= 1)
	{
		B_ENTER_FREEMINE_Kapitel_1();
	};
	if(Kapitel >= 2)
	{
		B_ENTER_FREEMINE_Kapitel_2();
	};
	if(Kapitel >= 3)
	{
		B_ENTER_FREEMINE_Kapitel_3();
	};
	if(Kapitel >= 4)
	{
		B_ENTER_FREEMINE_Kapitel_4();
	};
	if(Kapitel >= 5)
	{
		B_ENTER_FREEMINE_Kapitel_5();
	};

	CurrentLevel = FREEMINE_ZEN; 
	B_InitNpcGlobals();
};