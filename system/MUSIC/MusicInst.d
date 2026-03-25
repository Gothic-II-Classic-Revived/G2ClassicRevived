	
//////////////////////////////////////
//	
// 	Music Sytem 
//	Instance-Definitions 
//	
//////////////////////////////////////

// music config instance

INSTANCE musicSysConfig		(C_MUSICSYS_CFG)
{
	volume 				= 1;   		// 0..1
	bitResolution		= 16;		// 8 / 16
	globalReverbEnabled = 1;
	sampleRate			= 44100;	// 11050 - 44100 prefered
	numChannels			= 32;		// 1 - 16
	reverbBufferSize	= 262144;
};



// ------------------------------------------------------------------------------------------------
// jingle instances
// ------------------------------------------------------------------------------------------------


INSTANCE jingleFoundItem(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 2";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};
INSTANCE jingleLevelGain(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 1";	transSubType= TRANSITION_SUB_TYPE_MEASURE;	};
INSTANCE jingleKilledFoe(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 2";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};
INSTANCE jingleLearnTalent(C_MUSICJINGLE_DEF) {	name	    = "E-Positive 1";	transSubType= TRANSITION_SUB_TYPE_BEAT;		};


// ------------------------------------------------------------------------------------------------
// theme instances
// ------------------------------------------------------------------------------------------------

//////////////////////
// Prototypes
//////////////////////

PROTOTYPE C_MUSICTHEME_STANDARD		(C_MUSICTHEME)
{
	file				= "NewWorld_Day.mp3";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -8;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
		
};

PROTOTYPE C_MUSICTHEME_THREAT		(C_MUSICTHEME)
{
	file				= "NewWorld_Threat.mp3";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -8;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
};

PROTOTYPE C_MUSICTHEME_FIGHT		(C_MUSICTHEME)
{
	file				= "NewWorld_Fight.mp3";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_MEASURE;	
	ReverbMix			= -12;
	ReverbTime			= 9000;
	vol                 = 1;
    loop                = 1;
};




//////////////////////
// System
//////////////////////

INSTANCE SYS_Menu			(C_MUSICTHEME_DEF)
{
	file				= "Menu_Theme.mp3";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_BEAT;	
	ReverbMix			= -12;
	ReverbTime			= 8500;
};

INSTANCE SYS_Loading		(C_MUSICTHEME_DEF)
{
	file				= "Menu_Theme.mp3";
	transType			= TRANSITION_TYPE_ENDANDINTRO;
	transSubType		= TRANSITION_SUB_TYPE_BEAT;	
	ReverbMix			= -12;
	ReverbTime			= 8500;
};


// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############                NEWWORLD            MUSIC                 #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// Default
INSTANCE DEF_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "NewWorld_Day.mp3";		};
INSTANCE DEF_Thr_Std	(C_MUSICTHEME_THREAT)		{	file			= "NewWorld_Threat.mp3";		};
INSTANCE DEF_Fgt_Std	(C_MUSICTHEME_FIGHT)		{	file			= "NewWorld_Fight.mp3";		};
INSTANCE DEF_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "NewWorld_Night.mp3";		};



// XXXXX XXXXXXXXXXXXXXXX XXXXX //
// XXXXX     Khorinis     XXXXX //
// XXXXX XXXXXXXXXXXXXXXX XXXXX //
INSTANCE KHO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_Day.mp3";	};
INSTANCE KHO_Fgt_Std	(C_MUSICTHEME_FIGHT)		{	file			= "Khorinis_Fight.mp3";	};
INSTANCE KHO_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_PoorDistrict_Night.mp3";	};

// Upper City
INSTANCE OBS_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_Paladins.mp3";	};

// Garrison
INSTANCE KAS_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_Garrison.mp3";		};
INSTANCE KAS_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_Garrison.mp3";		};

// Harbour
INSTANCE PIE_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Khorinis_Harbour.mp3";	};


// XXXXX XXXXXXXXXXXXXXXX XXXXX //
// XXXXX     Monastery    XXXXX //
// XXXXX XXXXXXXXXXXXXXXX XXXXX //
INSTANCE MOO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Monastery_Road.mp3";		};
INSTANCE MOI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Monastery_Inside.mp3";		};
INSTANCE MOD_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Monastery_Dungeon.mp3";		};


// XXXXX XXXXXXXXXXXXXXXX XXXXX //
// XXXXX       Onar       XXXXX //
// XXXXX XXXXXXXXXXXXXXXX XXXXX //
INSTANCE HOF_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "BigFarm.mp3";		};
INSTANCE HOF_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "BigFarm.mp3";		};


// XXXXX XXXXXXXXXXXXXXXX XXXXX //
// XXXXX     OutsideW     XXXXX //
// XXXXX XXXXXXXXXXXXXXXX XXXXX //

// Xardas Tower
INSTANCE XAR_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "XardasTower.mp3";		};

// Woods
INSTANCE WOO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Woods.mp3";		};
INSTANCE WOO_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "Woods_Threat.mp3";		};
INSTANCE WOO_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "Woods_Fight.mp3";		};

// Caves
INSTANCE BAN_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Caves.mp3";		};
INSTANCE BAN_Fgt_Std	(C_MUSICTHEME_FIGHT)		{	file			= "Caves_Fight.mp3";		};

// Pyramids
INSTANCE MAY_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Pyramids.mp3";		};
INSTANCE MAY_Fgt_Std	(C_MUSICTHEME_FIGHT)		{	file			= "Pyramids_Fight.mp3";		};
INSTANCE POR_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Portal.mp3";		};
INSTANCE POR_Fgt_Std	(C_MUSICTHEME_FIGHT)		{	file			= "Portal_Fight.mp3";		};

// Farms
INSTANCE LOB_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Farm_Day.mp3";		};
INSTANCE LOB_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Farm_Night.mp3";		};

// Lighthouse
INSTANCE LEU_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Lighthouse.mp3";		};

// Dexter's Camp


// Troll Lair


// Graveyard
INSTANCE FRI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Graveyard.mp3";		};

// Passage
INSTANCE OWP_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "ValleyPass.mp3";		};
INSTANCE OWP_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "ValleyPass_Threat.mp3";		};
INSTANCE OWP_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "ValleyPass_Fight.mp3";		};

// Second Passage
INSTANCE PAS_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "ValleyPass.mp3";		};
INSTANCE PAS_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "ValleyPass_Threat.mp3";		};
INSTANCE PAS_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "ValleyPass_Fight.mp3";		};



// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############                OLDWORLD            MUSIC                 #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// Default
INSTANCE OWD_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "OldWorld_Day.mp3";		};
INSTANCE OWD_Day_Thr	(C_MUSICTHEME_THREAT)		{	file			= "OldWorld_Threat.mp3";		};
INSTANCE OWD_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "OldWorld_Fight.mp3";		};
INSTANCE OWD_Ngt_Std	(C_MUSICTHEME_STANDARD)		{	file			= "OldWorld_Night.mp3";		};



// Demon Tower
INSTANCE DT_Day_Std		(C_MUSICTHEME_STANDARD)		{	file			= "DemonTower.mp3";		};



// New Camp
INSTANCE NCI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "NewCamp.mp3";		};



// Stone Fortress
INSTANCE FOR_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Fortress.mp3";		};

INSTANCE BMI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Mine_Fortress.mp3";		};


// Silvestro Mine
INSTANCE SIL_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Mine_Silvestro.mp3";		};


// XXXXX XXXXXXXXXXXXXXXX XXXXX //
// XXXXX Dragon Locations XXXXX //
// XXXXX XXXXXXXXXXXXXXXX XXXXX //

// Troll Canyon
INSTANCE TRC_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "DragonLocation.mp3";		};
INSTANCE TRC_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "DragonLocation_Fight.mp3";	};

// FreeMine Camp
INSTANCE NCO_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "DragonLocation.mp3";		};
INSTANCE NCO_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "DragonLocation_Fight.mp3";	};

// Sea Monastery
INSTANCE SEA_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "DragonLocation.mp3";		};
INSTANCE SEA_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "DragonLocation_Fight.mp3";	};

// Swamp Temple
INSTANCE PSI_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "DragonLocation.mp3";		};
INSTANCE PSI_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "DragonLocation_Fight.mp3";	};



// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############                 DUNGEON            MUSIC                 #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// Abandoned Mine
INSTANCE ABM_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "AbandonedMine.mp3";	};
INSTANCE ABM_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "AbandonedMine.mp3";	};

// Free Mine
INSTANCE FRM_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "OldMine.mp3";	};
INSTANCE FRM_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "OldMine.mp3";	};

// Old Mine
INSTANCE OLM_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "OldMine.mp3";	};
INSTANCE OLM_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "OldMine.mp3";	};

// Orc Graveyard
INSTANCE OGY_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Temple.mp3";	};
INSTANCE OGY_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "Temple.mp3";	};

// Orc City
INSTANCE ORC_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Temple.mp3";	};
INSTANCE ORC_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "Temple.mp3";	};

// Orc Temple
INSTANCE TPL_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Temple.mp3";	};
INSTANCE TPL_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "Temple.mp3";	};



// ################################################################################################
// ################################################################################################
// ################################################################################################
// ###############                                                          #######################
// ###############               DRAGON ISLAND        MUSIC                 #######################
// ###############                                                          #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// Default
INSTANCE INS_Day_Std	(C_MUSICTHEME_STANDARD)		{	file			= "Temple.mp3";				};
INSTANCE INS_Day_Fgt	(C_MUSICTHEME_FIGHT)		{	file			= "Temple_Fight.mp3";		};