
//****************************
// 	EVT_OC_MAINGATE_FUNC (Funktion, die bei öffnen des Haupttores der Burg ausgeführt wird. Kapitel 5)
//****************************
func void EVT_OC_MAINGATE_FUNC_S1 ()
{
	if (MIS_OCGateOpen == FALSE)
	{
		Wld_InsertNpc		(OrcElite_Roam,"OCC_CENTER_1");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_CENTER_1");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_CENTER_1");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_CENTER_1");
		Wld_InsertNpc		(OrcShaman_Sit,"OCC_CENTER_1");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_CENTER_1");
		Wld_InsertNpc		(Warg,"OCC_WALLCRACK");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_WALLCRACK");
		Wld_InsertNpc		(Warg,"OCC_WALLCRACK");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_WALLCRACK");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_GATE_INSIDE");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_GATE_INSIDE");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_GATE_INSIDE");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_GATE_INSIDE");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_CONVOY_01");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_CONVOY_01");
		Wld_InsertNpc		(Warg,"OCC_CONVOY_01");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_CELLAR_HALL");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_CELLAR_HALL");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_BARONS_HALLWAY_FRONT");
		Wld_InsertNpc		(Warg,"OCC_BARONS_HALLWAY_FRONT");
		Wld_InsertNpc		(Warg,"OCC_BARONS_HALLWAY_FRONT");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_BARONS_HALLWAY_FRONT");
		Wld_InsertNpc		(OrcShaman_Sit,"OCC_BARONS_HALLWAY_FRONT");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_DOOR");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_DOOR");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_DOOR");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCC_BARONS_GREATHALL_CENTER_LEFT");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_BARONS_GREATHALL_CENTER_LEFT");
		Wld_InsertNpc		(OrcShaman_Sit,"OCC_BARONS_GREATHALL_CENTER_LEFT");
		Wld_InsertNpc		(OrcElite_Roam,"OCC_BARONS_GREATHALL_CENTER_LEFT");
		
		//Joly: Palisadenwachen killen, damit sie, nach OrcSturm, nicht wieder rumzumpelderweise versuchen, auf ihren Posten zu kommen.
		
		B_KillNpc     	(GRD_4143_HaupttorWache);
		B_KillNpc     	(GRD_4145_Waffenknecht);
		B_KillNpc     	(GRD_4146_Waffenknecht);
		B_KillNpc     	(GRD_4147_Waffenknecht);
		B_KillNpc     	(GRD_4101_Waffenknecht);
		B_KillNpc     	(GRD_4102_Waffenknecht);
		B_KillNpc     	(GRD_4103_Waffenknecht);
		B_KillNpc     	(GRD_4104_Waffenknecht);
		B_KillNpc     	(GRD_4105_Waffenknecht);
		B_KillNpc     	(GRD_4108_Engor);

		Garond.flags = 0;
		Brutus.flags = NPC_FLAG_IMMORTAL;

		PlayVideo ("ORCATTACK.BIK");  

		MIS_OCGateOpen = TRUE;
	};
};

