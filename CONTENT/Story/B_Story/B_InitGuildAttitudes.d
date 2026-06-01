// *****************************************************
// B_InitGuildAttitudes
// --------------------
// WICHTIG für ALLE Init-Funktionen in der Startup.d !!!
// *****************************************************

func void B_InitGuildAttitudes ()
{
	// GUILDLESS
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_NEUTRAL,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_NONE,	ATT_HOSTILE,	GIL_BOUNT	);

	// PALADIN
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_FRIENDLY,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_FRIENDLY,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_ANGRY,		GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_ANGRY,		GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_PAL,	ATT_HOSTILE,	GIL_BOUNT	);

	// MILITIA
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_FRIENDLY,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_FRIENDLY,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_ANGRY,		GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_ANGRY,		GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_MIL,	ATT_HOSTILE,	GIL_BOUNT	);

	// CITIZEN
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_ANGRY,		GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_ANGRY,		GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_VLK,	ATT_HOSTILE,	GIL_BOUNT	);

	// FIRE MAGE
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_KDF,	ATT_HOSTILE,	GIL_BOUNT	);

	// FIRE NOVICE
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_NOV,	ATT_HOSTILE,	GIL_BOUNT	);

	// DRAGON HUNTER
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_NEUTRAL,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_DJG,	ATT_HOSTILE,	GIL_BOUNT	);

	// MERCENARY
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_ANGRY,		GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_ANGRY,		GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_NEUTRAL,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_SLD,	ATT_HOSTILE,	GIL_BOUNT	);

	// FARMER
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_ANGRY,		GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_ANGRY,		GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_FRIENDLY,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_BAU,	ATT_HOSTILE,	GIL_BOUNT	);

	// BANDIT
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_FRIENDLY,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_HOSTILE,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_BDT,	ATT_FRIENDLY,	GIL_BOUNT	);

	// PRISONER
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_NEUTRAL,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_STRF,	ATT_HOSTILE,	GIL_BOUNT	);

	// OUTLANDER
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_OUT,	ATT_HOSTILE,	GIL_BOUNT	);

	// PIRATE
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_ANGRY,		GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_FRIENDLY,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_NEUTRAL,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_PIR,	ATT_HOSTILE,	GIL_BOUNT	);

	// WATER MAGE
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_NONE	);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_PAL		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_MIL		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_VLK		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_FRIENDLY,	GIL_KDF		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_NOV		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_DJG		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_SLD		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_BAU		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_HOSTILE,	GIL_BDT		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_STRF	);
		//GIL_DMT nicht
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_NEUTRAL,	GIL_OUT		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_HOSTILE,	GIL_PIR		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_FRIENDLY,	GIL_KDW		);
		Wld_SetGuildAttitude	(GIL_KDW,	ATT_HOSTILE,	GIL_BOUNT	);
};
