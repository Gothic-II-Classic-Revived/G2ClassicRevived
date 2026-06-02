var int EVT_TEMPLE_OPENSARG_HowMuch;
var int EVT_TEMPLE_OPENSARG_Check01;
var int EVT_TEMPLE_OPENSARG_Check02;
var int EVT_TEMPLE_OPENSARG_Check03;
var int EVT_TEMPLE_OPENSARG_Check04;
var int EVT_TEMPLE_OPENSARG_Check05;
var int EVT_TEMPLE_OPENSARG_Check06;


func void EVT_TEMPLE_OPENSARG ()
{
	if (EVT_TEMPLE_OPENSARG_HowMuch <= 1)
	{
		Wld_InsertNpc 	(Lesser_Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(Lesser_Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(Lesser_Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(Lesser_Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(Lesser_Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_004");

		Snd_Play ("SKE_AMBIENT");
	}
	else if (EVT_TEMPLE_OPENSARG_HowMuch == 2)
	{
		Wld_InsertNpc 	(Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(Skeleton, 		"EVT_TEMPLE_SARG_SPAWN_004");

		Snd_Play ("SKE_AMBIENT_A1");
	}
	else if (EVT_TEMPLE_OPENSARG_HowMuch == 3)
	{
		Wld_InsertNpc 	(Zombie01, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(Zombie02, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(Zombie03, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(Zombie04, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(Zombie01, 		"EVT_TEMPLE_SARG_SPAWN_004");

		Snd_Play ("SKE_AMBIENT_A1");
	}
	else if (EVT_TEMPLE_OPENSARG_HowMuch == 4)
	{
		Wld_InsertNpc 	(Pal_Zombie01, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(Pal_Zombie02, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(Pal_Zombie03, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(Pal_Zombie04, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(Pal_Zombie01, 		"EVT_TEMPLE_SARG_SPAWN_004");

		Snd_Play ("SKE_AMBIENT_A2");
	}
	else if (EVT_TEMPLE_OPENSARG_HowMuch == 5)
	{
		Wld_InsertNpc 	(MayaZombie01, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(MayaZombie02, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(MayaZombie03, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(MayaZombie04, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(MayaZombie01, 		"EVT_TEMPLE_SARG_SPAWN_004");

		Snd_Play ("SKE_AMBIENT_A2");
	}
	else if (EVT_TEMPLE_OPENSARG_HowMuch == 6)
	{
		Wld_InsertNpc 	(UndeadOrcWarrior, 		"EVT_TEMPLE_SARG_SPAWN_000");
		Wld_InsertNpc 	(UndeadOrcWarrior, 		"EVT_TEMPLE_SARG_SPAWN_001");
		Wld_InsertNpc 	(UndeadOrcWarrior, 		"EVT_TEMPLE_SARG_SPAWN_002");
		Wld_InsertNpc 	(UndeadOrcWarrior, 		"EVT_TEMPLE_SARG_SPAWN_003");
		Wld_InsertNpc 	(UndeadOrcWarrior, 		"EVT_TEMPLE_SARG_SPAWN_004");
		Wld_InsertNpc 	(SkeletonMage, 			"EVT_TEMPLE_SARG_SPAWN_005");

		Snd_Play ("DEM_Ambient");
	};
};

func void EVT_TEMPLE_OPENSARG_01_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check01 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check01 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};
func void EVT_TEMPLE_OPENSARG_02_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check02 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check02 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};
func void EVT_TEMPLE_OPENSARG_03_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check03 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check03 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};
func void EVT_TEMPLE_OPENSARG_04_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check04 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check04 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};
func void EVT_TEMPLE_OPENSARG_05_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check05 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check05 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};
func void EVT_TEMPLE_OPENSARG_06_S1 ()
{
	if(EVT_TEMPLE_OPENSARG_Check06 != TRUE)
	{
		EVT_TEMPLE_OPENSARG_HowMuch = EVT_TEMPLE_OPENSARG_HowMuch + 1;
		EVT_TEMPLE_OPENSARG_Check06 = TRUE;

		EVT_TEMPLE_OPENSARG();
	};
};