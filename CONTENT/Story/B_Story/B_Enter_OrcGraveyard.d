func void B_ENTER_ORCGRAVEYARD_Kapitel_1()
{
	if(EnterOG_Kapitel1 == FALSE)
	{
		EnterOG_Kapitel1 = TRUE;
	};
};

func void B_ENTER_ORCGRAVEYARD_Kapitel_2()
{
	if(EnterOG_Kapitel2 == FALSE)
	{
		
		EnterOG_Kapitel2 = TRUE;
	};
};

func void B_ENTER_ORCGRAVEYARD_Kapitel_3()
{
	if(EnterOG_Kapitel3 == FALSE)
	{

		EnterOG_Kapitel3 = TRUE;
	};
};

func void B_ENTER_ORCGRAVEYARD_Kapitel_4()
{
	if(EnterOG_Kapitel4 == FALSE)
	{

		EnterOG_Kapitel4 = TRUE;
	};
};

func void B_ENTER_ORCGRAVEYARD_Kapitel_5()
{
	if(EnterOG_Kapitel5 == FALSE)
	{

		EnterOG_Kapitel5 = TRUE;
	};
};


func void B_Enter_ORCGRAVEYARD()
{
	B_InitNpcGlobals();

	if(Kapitel >= 1)
	{
		B_ENTER_ORCGRAVEYARD_Kapitel_1();
	};
	if(Kapitel >= 2)
	{
		B_ENTER_ORCGRAVEYARD_Kapitel_2();
	};
	if(Kapitel >= 3)
	{
		B_ENTER_ORCGRAVEYARD_Kapitel_3();
	};
	if(Kapitel >= 4)
	{
		B_ENTER_ORCGRAVEYARD_Kapitel_4();
	};
	if(Kapitel >= 5)
	{
		B_ENTER_ORCGRAVEYARD_Kapitel_5();
	};

	CurrentLevel = ORCGRAVEYARD_ZEN; 
	B_InitNpcGlobals();
};