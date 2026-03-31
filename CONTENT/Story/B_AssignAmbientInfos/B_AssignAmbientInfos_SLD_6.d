// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_SLD_6_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_SLD_6_EXIT_Condition;
	information	= DIA_SLD_6_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_SLD_6_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_SLD_6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_SLD_6_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_SLD_6_JOIN_Condition;
	information	= DIA_SLD_6_JOIN_Info;
	permanent	= TRUE;
	description = "Ich will bei euch mitmachen!";
};                       

FUNC INT DIA_SLD_6_JOIN_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_SLD_6_JOIN_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_JOIN_15_00"); //Ich will bei euch mitmachen!
	
	if (MIS_Torlof_BengarMilizKlatschen == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_01"); //Ich hab von der Sache mit den Milizen gehört. Torlof sagt, du hast die Probe bestanden. Meine Stimme hast du.
	}
	else if (MIS_Torlof_HolPachtVonSekob == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_02"); //Die Bauern auszunehmen ist was anderes, als sich mit Milizen anzulegen - aber wenn Onar dich brauchen kann - mir soll's Recht sein.
	}
	else
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_03"); //Rede mit Torlof. Er wird dir schon zeigen, wo's langgeht (lacht)
	};
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_SLD_6_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_SLD_6_PEOPLE_Condition;
	information	= DIA_SLD_6_PEOPLE_Info;
	permanent	= TRUE;
	description = "Wer hat hier was zu Sagen?";
};                       

FUNC INT DIA_SLD_6_PEOPLE_Condition()
{
	if (other.guild != GIL_SLD)
	&& (other.guild != GIL_DJG)
	{
		return TRUE;
	};
};

FUNC VOID DIA_SLD_6_PEOPLE_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_PEOPLE_15_00"); //Wer hat hier was zu Sagen?
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_01"); //Der Hof gehört Onar, wenn du das meinst. Aber unser Anführer ist Lee.
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_02"); //Er war mal General in der Armee des Königs. Aber jetzt ist er nicht mehr ganz so gut auf den König zu sprechen (lacht).
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_03"); //Merk dir seinen Namen. Wenn du hier Mist baust, ist er vermutlich der einzige, der die Sache für dich regeln kann. Alle anderen ziehen dir einfach das Fell über die Ohren.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_SLD_6_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_SLD_6_LOCATION_Condition;
	information	= DIA_SLD_6_LOCATION_Info;
	permanent	= TRUE;
	description = "Bewacht ihr die Bauern?";
};                       

FUNC INT DIA_SLD_6_LOCATION_Condition()
{
	if (other.guild != GIL_SLD)
	&& (other.guild != GIL_DJG)
	{
		return TRUE;
	};
};

FUNC VOID DIA_SLD_6_LOCATION_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_LOCATION_15_00"); //Bewacht ihr die Bauern?
	AI_Output (self, other, "DIA_SLD_6_LOCATION_06_01"); //Wir bewachen nicht nur Onars Hof, sondern das ganze Tal hier.
	AI_Output (self, other, "DIA_SLD_6_LOCATION_06_02"); //Onar will, dass wir jeden, der hier Mist baut, hart rannehmen. Also benimm dich.
};

// *************************************************************************
// 									NEWS
// *************************************************************************
INSTANCE DIA_SLD_6_STANDARD(C_INFO)
{
	nr			= 1;
	condition	= DIA_SLD_6_STANDARD_Condition;
	information	= DIA_SLD_6_STANDARD_Info;
	permanent	= TRUE;
	description = "Wie steht's?";
};                       
func INT DIA_SLD_6_STANDARD_Condition()
{
	return TRUE;
};
FUNC VOID DIA_SLD_6_STANDARD_Info()
{	
	AI_Output (other, self, "DIA_SLD_6_STANDARD_15_00"); //Wie steht's?
		
	if (Kapitel <= 3)
	{
		if (EnterOW_Kapitel2 == FALSE)
		{
			if (other.guild == GIL_SLD)
			{
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_01"); //Du bist jetzt einer von uns, Kleiner!
			}
			else
			{
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_02"); //Was willst du?
			};
		}
		else
		{
			if (other.guild == GIL_SLD)
			{
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_03"); //Als ich das mit den Drachen gehört habe, wollte ich es erst gar nicht glauben.
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_04"); //Ein Drache, das wäre ein Kampf. Keine Schafe oder Miliztrottel mehr, sondern ein echter Gegner.
			}
			else
			{
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_05"); //Na, hat sich euer Lord Hagen aus Angst vor den Drachen schon in die Hose geschissen?
				AI_Output (self,other,"DIA_SLD_6_STANDARD_06_06"); //Schätze, jetzt wird er seinen feinen Hintern wohl doch noch aus der Stadt bewegen müssen.
			};
		};	
	};

	if (Kapitel == 3)
	&& (MIS_SCKnowsInnosEyeIsBroken == TRUE)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_07"); //Da kann Lord Hagen von Glück reden. Ein paar Tage länger und wir hätten Bennet selbst rausgeholt.
		}
		else
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_08"); //Wenn Bennet nicht bald aus dem Knast gelassen wird, werden wir ihn holen.
		};	
	};

	if (Kapitel == 4)
	{
		if (hero.guild == GIL_DJG)
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_09"); //Was machst du noch hier? Wolltest du nicht mit den anderen ins Tal.
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_10"); //Von mir aus braucht keiner von euch zurückkommen.
		}
		else
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_11"); //Du solltest mal ins Minental gehen. Nach dem, was ich weiß, können die armen Schweine jede Hilfe gebrauchen.
		};	
	};
	
	if (Kapitel >= 5)
	{
		if (hero.guild == GIL_DJG)
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_12"); //Als du hier aufgetaucht bist, hab ich gleich gewusst, dass du den Laden hier kräftig aufmischen wirst.
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_13"); //Aber Drachen? Respekt, mit dir wird sich so schnell niemand mehr anlegen.
		}
		else
		{
			AI_Output (self,other,"DIA_SLD_6_STANDARD_06_14"); //Respekt. Du gehörst zwar zur falschen Seite, aber Drachen töten, das kann nicht jeder.
		};	
	};
};


// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SLD_6 (var c_NPC slf)
{
	DIA_SLD_6_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_SLD_6_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_SLD_6_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_SLD_6_LOCATION.npc				= Hlp_GetInstanceID(slf);
	DIA_SLD_6_STANDARD.npc				= Hlp_GetInstanceID(slf);
};
