MiscData = {}

MiscData.STATUS_TO_IMG_NAME = {
	[1] = "PAR",
	[2] = "SLP",
	[3] = "FRZ",
	[4] = "BRN",
	[5] = "PSN",
	[6] = ""
}

MiscData.STATUS_TYPE =
	MiscUtils.readOnly(
	{
		POISON = "Poison",
		BURN = "Brulure",
		FREEZE = "Gelure",
		SLEEP = "Sommeil",
		PARALYZE = "Paralysie",
		CONFUSE = "Confusion",
		INFATUATION = "Attraction",
		ALL = "Tous"
	}
)

MiscData.NATURES =
	MiscUtils.readOnly(
	{
		"Hardi",
		"Solo",
		"Brave",
		"Rigide",
		"Mauvais",
		"Assure",
		"Docile",
		"Relax",
		"Malin",
		"Lache",
		"Timide",
		"Presse",
		"Serieux",
		"Jovial",
		"Naif",
		"Modeste",
		"Doux",
		"Discret",
		"Pudique",
		"Foufou",
		"Calme",
		"Gentil",
		"Malpoli",
		"Prudent",
		"Bizarre"
	}
)

MiscData.NATURES_SORTED =
	MiscUtils.readOnly(
	{
		"Assure",
		"Bizarre",
		"Brave",
		"Calme",
		"Discret",
		"Docile",
		"Doux",
		"Foufou",
		"Gentil",
		"Hardi",
		"Jovial",
		"Lache",
		"Malin",
		"Malpoli",
		"Mauvais",
		"Modeste",
		"Naif",
		"Presse",
		"Prudent",
		"Pudique",
		"Relax",
		"Rigide",
		"Serieux",
		"Solo",
		"Timide"
	}
)
