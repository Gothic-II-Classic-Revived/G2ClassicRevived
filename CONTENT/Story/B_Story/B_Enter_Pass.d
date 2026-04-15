func void B_ENTER_Pass_Kapitel_1()
{
	if(EnterPass_Kapitel1 == FALSE)
	{
		EnterPass_Kapitel1 = TRUE;
	};
};

func void B_ENTER_Pass_Kapitel_2()
{
	if(EnterPass_Kapitel2 == FALSE)
	{
		
		EnterPass_Kapitel2 = TRUE;
	};
};

func void B_ENTER_Pass_Kapitel_3()
{
	if(EnterPass_Kapitel3 == FALSE)
	{

		EnterPass_Kapitel3 = TRUE;
	};
};

func void B_ENTER_Pass_Kapitel_4()
{
	if(EnterPass_Kapitel4 == FALSE)
	{

		EnterPass_Kapitel4 = TRUE;
	};
};

func void B_ENTER_Pass_Kapitel_5()
{
	if(EnterPass_Kapitel5 == FALSE)
	{

		EnterPass_Kapitel5 = TRUE;
	};
};


func void B_Enter_Pass()
{
	B_InitNpcGlobals();

	if(Kapitel >= 1)
	{
		B_ENTER_Pass_Kapitel_1();
	};
	if(Kapitel >= 2)
	{
		B_ENTER_Pass_Kapitel_2();
	};
	if(Kapitel >= 3)
	{
		B_ENTER_Pass_Kapitel_3();
	};
	if(Kapitel >= 4)
	{
		B_ENTER_Pass_Kapitel_4();
	};
	if(Kapitel >= 5)
	{
		B_ENTER_Pass_Kapitel_5();
	};

	CurrentLevel = PASS_ZEN; 
	B_InitNpcGlobals();
};