MoveData = {}

-- Move categories identify the type of attack a move is: physical, special, or status
MoveData.MOVE_CATEGORIES =
	MiscUtils.readOnly(
	{
		NONE = "NONE",
		PHYSICAL = "PHYSICAL",
		SPECIAL = "SPECIAL",
		STATUS = "STATUS"
	}
)

MoveData.MOVES = {}

--Mapping of move types to move categories for gens 1-3
MoveData.TYPE_CATEGORIES =
	MiscUtils.readOnly(
	{
		[PokemonData.POKEMON_TYPES.NORMAL] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.FIGHTING] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.FLYING] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.POISON] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.GROUND] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.ROCK] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.BUG] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.GHOST] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.STEEL] = MoveData.MOVE_CATEGORIES.PHYSICAL,
		[PokemonData.POKEMON_TYPES.FIRE] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.WATER] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.GRASS] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.ELECTRIC] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.PSYCHIC] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.ICE] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.DRAGON] = MoveData.MOVE_CATEGORIES.SPECIAL,
		[PokemonData.POKEMON_TYPES.DARK] = MoveData.MOVE_CATEGORIES.SPECIAL
	}
)

MoveData.EFFECTIVE_DATA = {
	NORMAL = {ROCK = 0.5, GHOST = 0, STEEL = 0.5},
	FIRE = {FIRE = 0.5, WATER = 0.5, GRASS = 2, ICE = 2, BUG = 2, ROCK = 0.5, DRAGON = 0.5, STEEL = 2},
	WATER = {FIRE = 2, WATER = 0.5, GRASS = 0.5, GROUND = 2, ROCK = 2, DRAGON = 0.5},
	GRASS = {
		FIRE = 0.5,
		WATER = 2,
		GRASS = 0.5,
		POISON = 0.5,
		GROUND = 2,
		FLYING = 0.5,
		BUG = 0.5,
		ROCK = 2,
		DRAGON = 0.5,
		STEEL = 0.5
	},
	ELECTRIC = {WATER = 2, GRASS = 0.5, ELECTRIC = 0.5, GROUND = 0, FLYING = 2, DRAGON = 0.5},
	ICE = {FIRE = 0.5, WATER = 0.5, GRASS = 2, ICE = 0.5, GROUND = 2, FLYING = 2, DRAGON = 2, STEEL = 0.5},
	FIGHTING = {
		NORMAL = 2,
		ICE = 2,
		POISON = 0.5,
		FLYING = 0.5,
		PSYCHIC = 0.5,
		BUG = 0.5,
		ROCK = 2,
		GHOST = 0,
		DARK = 2,
		STEEL = 2
	},
	POISON = {GRASS = 2, POISON = 0.5, GROUND = 0.5, ROCK = 0.5, GHOST = 0.5, STEEL = 0},
	GROUND = {FIRE = 2, GRASS = 0.5, ELECTRIC = 2, POISON = 2, FLYING = 0, BUG = 0.5, ROCK = 2, STEEL = 2},
	FLYING = {GRASS = 2, ELECTRIC = 0.5, FIGHTING = 2, BUG = 2, ROCK = 0.5, STEEL = 0.5},
	PSYCHIC = {FIGHTING = 2, POISON = 2, PSYCHIC = 0.5, DARK = 0, STEEL = 0.5},
	BUG = {
		FIRE = 0.5,
		GRASS = 2,
		FIGHTING = 0.5,
		POISON = 0.5,
		FLYING = 0.5,
		PSYCHIC = 2,
		GHOST = 0.5,
		DARK = 2,
		STEEL = 0.5
	},
	ROCK = {FIRE = 2, ICE = 2, FIGHTING = 0.5, GROUND = 0.5, FLYING = 2, BUG = 2, STEEL = 0.5},
	GHOST = {NORMAL = 0, PSYCHIC = 2, GHOST = 2, DARK = 0.5, STEEL = 0.5},
	DRAGON = {DRAGON = 2, STEEL = 0.5},
	DARK = {FIGHTING = 0.5, PSYCHIC = 2, GHOST = 2, DARK = 0.5, STEEL = 0.5},
	STEEL = {FIRE = 0.5, WATER = 0.5, ICE = 2, ROCK = 2, STEEL = 0.5, ELECTRIC = 0.5}
}

MoveData.MOVES_MASTER_LIST = {
	{
		--- Empty entry for move ID 0
		id = "---",
		name = "---",
		type = "---",
		power = Graphics.TEXT.NO_POWER,
		pp = Graphics.TEXT.NO_PP,
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.NONE,
		description = ""
	},
	{
		-- Begin Gen 1 Moves
		id = "1",
		name = "Ecras’Face",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "2",
		name = "Poing-Karaté",
		type = {
			PokemonData.POKEMON_TYPES.NORMAL,
			PokemonData.POKEMON_TYPES.FIGHTING,
			PokemonData.POKEMON_TYPES.FIGHTING,
			PokemonData.POKEMON_TYPES.FIGHTING,
			PokemonData.POKEMON_TYPES.FIGHTING
		},
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Taux de coups critiques +1." 
	},
	{
		id = "3",
		name = "Torgnoles",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "15",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "4",
		name = "Poing Comète",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "18",
		pp = "15",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "5",
		name = "Ultimapoing",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'." 
	},
	{
		id = "6",
		name = "Jackpot",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Permet d'obtenir de l'argent à la fin du combat." 
	},
	{
		id = "7",
		name = "Poing de Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. 10% de chance de brûler la cible." 
	},
	{
		id = "8",
		name = "Poinglace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. 10% de chance de geler la cible." 
	},
	{
		id = "9",
		name = "Poing-Eclair",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "10",
		name = "Griffe",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "11",
		name = "Force Poigne",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "55",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire."  
	},
	{
		id = "12",
		name = "Guillotine",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "30",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Met K.O. en un coup. Les Pokémon ayant un niveau strictement supérieur sont immunisés." 
	},
	{
		id = "13",
		name = "Coupe-Vent",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "10",
		accuracy = {"75", "75", "100", "100", "100"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque en 2 tours. Taux de coups critiques +1."  
	},
	{
		id = "14",
		name = "Danse-Lames",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Danse'. Augmente l'Attaque du lanceur de 2 niveaux." 
	},
	{
		id = "15",
		name = "Coupe",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "50",
		pp = "30",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "16",
		name = "Tornade",
		type = {
			PokemonData.POKEMON_TYPES.NORMAL,
			PokemonData.POKEMON_TYPES.FLYING,
			PokemonData.POKEMON_TYPES.FLYING,
			PokemonData.POKEMON_TYPES.FLYING,
			PokemonData.POKEMON_TYPES.FLYING
		},
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "La puissance est doublée si la cible est dans les airs (Vol, Rebond et Chute Libre)."  
	},
	{
		id = "17",
		name = "Cru-Aile",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = {"35", "60", "60", "60", "60"},
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "18",
		name = "Cyclone",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = {"85", "100", "100", "100", "100"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité -6. Éjecte le Pokémon adverse et le remplace par un autre. Lorsqu'un Pokémon sauvage seul l'utilise, cela met fin au combat." 
	},
	{
		id = "19",
		name = "Vol",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = {"70", "70", "70", "90", "90"},
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement." 
	},
	{
		id = "20",
		name = "Etreinte",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "15",
		pp = "20",
		accuracy = {"75", "75", "75", "75", "85"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir.",
		}																																		  
	},
	{
		id = "21",
		name = "Souplesse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "20",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "22",
		name = "Fouet Lianes",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "35",
		pp = {"10", "10", "10", "15", "15"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "23",
		name = "Ecrasement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "24",
		name = "Double Pied",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "30",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 fois." 
	},
	{
		id = "25",
		name = "Ultimawashi",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "120",
		pp = "5",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "26",
		name = "Pied Sauté",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"70", "70", "70", "85", "100"},
		pp = {"25", "25", "25", "25", "10"},
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Le lanceur perd 50% des PV max de la cible s'il rate l'attaque.",
			"Le lanceur perd 50% des PV max de la cible s'il rate l'attaque.",
			"Le lanceur perd 50% des PV max de la cible s'il rate l'attaque.",
			"Le lanceur perd 50% des PV max de la cible s'il rate l'attaque.",
			"Le lanceur perd 50% de ses PV max s'il rate l'attaque."
		}
	},
	{
		id = "27",
		name = "Mawashi Geri",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "60",
		pp = "15",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance d'apeurer la cible." 
	},
	{
		id = "28",
		name = "Jet de Sable",
		type = {
			PokemonData.POKEMON_TYPES.NORMAL,
			PokemonData.POKEMON_TYPES.GROUND,
			PokemonData.POKEMON_TYPES.GROUND,
			PokemonData.POKEMON_TYPES.GROUND,
			PokemonData.POKEMON_TYPES.GROUND
		},
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Précision de la cible d'un niveau." 
	},
	{
		id = "29",
		name = "Coup d’Boule",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance d'apeurer la cible." 
	},
	{
		id = "30",
		name = "Koud’Korne",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "65",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "31",
		name = "Furie",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "32",
		name = "Empal’Korne",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "30",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Met K.O. en un coup. Les Pokémon ayant un niveau strictement supérieur sont immunisés." 
	},
	{
		id = "33",
		name = "Charge",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"35", "35", "35", "35", "50"},
		pp = "35",
		accuracy = {"95", "95", "95", "95", "100"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "34",
		name = "Plaquage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "85",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance de paralyser la cible." 
	},
	{
		id = "35",
		name = "Ligotage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "15",
		pp = "20",
		accuracy = {"85", "85", "85", "85", "90"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Ligote la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir."
		}																																		  
	},
	{
		id = "36",
		name = "Bélier",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "90",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/4 des dégâts infligés à la cible."
	},
	{
		id = "37",
		name = "Mania",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"90", "90", "90", "90", "120"},
		pp = {"20", "20", "20", "20", "10"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur se bloque sur la capacité pendant 2 à 3 tours, puis devient confus." 
	},
	{
		id = "38",
		name = "Damoclès",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"100", "120", "120", "120", "120"},
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/3 des dégâts infligés à la cible."
	},
	{
		id = "39",
		name = "Mimi-Queue",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Défense des cibles d'un niveau." 
	},
	{
		id = "40",
		name = "Dard-Venin",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "15",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance d'empoisonner la cible." 
	},
	{
		id = "41",
		name = "Double-Dard",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "25",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "20% de chance d'empoisonner la cible par coup."
	},
	{
		id = "42",
		name = "Dard-Nuée",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "14",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "43",
		name = "Groz’Yeux",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Défense des cibles d'un niveau." 
	},
	{
		id = "44",
		name = "Morsure",
		type = {
			PokemonData.POKEMON_TYPES.NORMAL,
			PokemonData.POKEMON_TYPES.DARK,
			PokemonData.POKEMON_TYPES.DARK,
			PokemonData.POKEMON_TYPES.DARK,
			PokemonData.POKEMON_TYPES.DARK
		},
		power = "60",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 30% de chance d'apeurer la cible." 
	},
	{
		id = "45",
		name = "Rugissement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Baisse l'Attaque des cibles d'un niveau." 
	},
	{
		id = "46",
		name = "Hurlement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Priorité -6. Éjecte le Pokémon adverse et le remplace par un autre. Lorsqu'un Pokémon sauvage seul l'utilise, cela met fin au combat." 
	},
	{
		id = "47",
		name = "Berceuse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "55",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Endort la cible." 
	},
	{
		id = "48",
		name = "Ultrason",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "55",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Rend confus la cible." 
	},
	{
		id = "49",
		name = "Sonicboom",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "---",
		pp = "20",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Inflige toujours 20 PV." 
	},
	{
		id = "50",
		name = "Entrave",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = {"55", "55", "55", "80", "100"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Empêche la cible d'utiliser sa dernière capacité utilisée depuis qu'elle est rentrée sur le terrain pendant 4 à 7 tours.",
			"Empêche la cible d'utiliser sa dernière capacité utilisée depuis qu'elle est rentrée sur le terrain pendant 4 à 7 tours.",
			"Empêche la cible d'utiliser sa dernière capacité utilisée depuis qu'elle est rentrée sur le terrain pendant 4 à 7 tours.",
			"Empêche la cible d'utiliser sa dernière capacité utilisée depuis qu'elle est rentrée sur le terrain pendant 4 à 7 tours.",
			"Empêche la cible d'utiliser sa dernière capacité utilisée depuis qu'elle est rentrée sur le terrain pendant 4 tours."
			}							  
	},
	{
		id = "51",
		name = "Acide",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Défense Spéciale des cibles d'un niveau." 
	},
	{
		id = "52",
		name = "Flammèche",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de brûler la cible." 
	},
	{
		id = "53",
		name = "Lance-Flamme",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de brûler la cible." 
	},
	{
		id = "54",
		name = "Brume",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée une brume qui empêche la réduction des stats durant 5 tours." 
	},
	{
		id = "55",
		name = "Pistolet à O",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "56",
		name = "Hydrocanon",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "120",
		pp = "5",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "57",
		name = "Surf",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "La puissance est doublée si la cible est sous l'eau (Plongée)."  
	},
	{
		id = "58",
		name = "Laser Glace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "95",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "59",
		name = "Blizzard",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "120",
		pp = "5",
		accuracy = {"90", "70", "70", "70", "70"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de geler la cible." 
	},
	{
		id = "60",
		name = "Rafale Psy",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de rendre confus la cible." 
	},
	{
		id = "61",
		name = "Bulles d’O",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Vitesse de la cible d'un niveau." 
	},
	{
		id = "62",
		name = "Onde Boréale",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser l'Attaque de la cible d'un niveau." 
	},
	{
		id = "63",
		name = "Ultralaser",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur doit se reposer au tour suivant." 
	},
	{
		id = "64",
		name = "Picpic",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "35",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "65",
		name = "Bec Vrille",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "80",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "66",
		name = "Sacrifice",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "80",
		pp = "25",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/4 des dégâts infligés à la cible."
	},
	{
		id = "67",
		name = "Balayage",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"50", "50", "WT", "WT", "WT"},
		pp = "20",
		accuracy = {"90", "90", "100", "100", "100"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus la cible est lourde, plus l'attaque est puissante. La puissance varie entre 20 et 120." 
	},
	{
		id = "68",
		name = "Riposte",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité -5. Inflige le double de dégâts à une cible si elle a attaqué avec une attaque physique." 
	},
	{
		id = "69",
		name = "Frappe Atlas",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Inflige des dégâts équivalents au niveau du lanceur." 
	},
	{
		id = "70",
		name = "Force",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "71",
		name = "Vol-Vie",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = 20,
		pp = {"20", "20", "20", "25", "25"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Convertit 50% des dégâts infligés à la cible en PV pour le lanceur."  
	},
	{
		id = "72",
		name = "Méga-Sangsue",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "40",
		pp = {"10", "10", "10", "15", "15"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Convertit 50% des dégâts infligés à la cible en PV pour le lanceur." 
	},
	{
		id = "73",
		name = "Vampigraine",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Infecte la cible avec des graines qui infligent 1/8 des PV max à la fin de chaque tour, et régénère le lanceur du même montant de PV."
	},
	{
		id = "74",
		name = "Croissance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Augmente l'Attaque Spéciale du lanceur d'un niveau.",
			"Augmente l'Attaque Spéciale du lanceur d'un niveau.",
			"Augmente l'Attaque Spéciale du lanceur d'un niveau.",
			"Augmente l'Attaque Spéciale du lanceur d'un niveau.",
			"Augmente l'Attaque et l'Attaque Spéciale du lanceur d'un niveau, l'effet étant doublé par temps de soleil."
		}
	},
	{
		id = "75",
		name = "Tranch’Herbe",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "55",
		pp = "25",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "76",
		name = "Lance-Soleil",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "120",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque en 2 tours. L'attaque se fait en 1 tour par temps de soleil." 
	},
	{
		id = "77",
		name = "Poudre Toxik",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "35",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empoisonne gravement la cible."  
	},
	{
		id = "78",
		name = "Para-Spore",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Poudre'. Endort la cible."  
	},
	{
		id = "79",
		name = "Poudre Dodo",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Poudre'. Endort la cible." 
	},
	{
		id = "80",
		name = "Danse-Fleur",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = {"70", "70", "70", "90", "120"},
		pp = {"20", "20", "20", "20", "10"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Danse'. Le lanceur se bloque sur la capacité pendant 2 à 3 tours, puis devient confus." 
	},
	{
		id = "81",
		name = "Sécrétion",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Vitesse des cibles d'un niveau." 
	},
	{
		id = "82",
		name = "Draco-Rage",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "---",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Inflige toujours 40 PV." 
	},
	{
		id = "83",
		name = "Danseflamme",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = {"15", "15", "15", "15", "35"},
		pp = "15",
		accuracy = {"70", "70", "70", "70", "85"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir."
		}
	},
	{
		id = "84",
		name = "Eclair",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "85",
		name = "Tonnerre",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de paralyser la cible." 
	},
	{
		id = "86",
		name = "Cage-Eclair",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "87",
		name = "Fatal-Foudre",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "120",
		pp = "10",
		accuracy = "70",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance de paralyser la cible." 
	},
	{
		id = "88",
		name = "Jet-Pierres",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "50",
		pp = "15",
		accuracy = {"65", "90", "90", "90", "90"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "89",
		name = "Séisme",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "100",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "90",
		name = "Abîme",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "30",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "91",
		name = "Tunnel",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = {"100", "60", "60", "80", "80"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement." 
	},
	{
		id = "92",
		name = "Toxik",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = {"85", "85", "85", "85", "90"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empoisonne gravement la cible." 
	},
	{
		id = "93",
		name = "Choc Mental",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de rendre confus la cible." 
	},
	{
		id = "94",
		name = "Psyko",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "95",
		name = "Hypnose",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "60",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Endort la cible." 
	},
	{
		id = "96",
		name = "Yoga",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Attaque du lanceur d'un niveau." 
	},
	{
		id = "97",
		name = "Hâte",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Vitesse du lanceur de 2 niveaux." 
	},
	{
		id = "98",
		name = "Vive-Attaque",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1." 
	},
	{
		id = "99",
		name = "Frénésie",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "20",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Augmente l'Attaque du lanceur d'un niveau à chaque coup reçu." 
	},
	{
		id = "100",
		name = "Téléport",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Aucun effet dans un combat de Dresseurs. Quand cette capacité est utilisée par un Pokémon sauvage, celui-ci fuit le combat." 
	},
	{
		id = "101",
		name = "Ténèbres",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Inflige des dégâts équivalents au niveau du lanceur." 
	},
	{
		id = "102",
		name = "Copie",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = {"100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur copie la dernière capacité utilisée par la cible et la conserve tant qu'il reste au combat." 
	},
	{
		id = "103",
		name = "Grincement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Baisse la Défense de la cible de 2 niveaux." 
	},
	{
		id = "104",
		name = "Reflet",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Esquive du lanceur d'un niveau." 
	},
	{
		id = "105",
		name = "Soin",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = {"20", "20", "20", "10", "10"},
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max." 
	},
	{
		id = "106",
		name = "Armure",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur d'un niveau." 
	},
	{
		id = "107",
		name = "Lilliput",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Augmente l'Esquive du lanceur d'un niveau.", 
			"Augmente l'Esquive du lanceur d'un niveau.", 
			"Augmente l'Esquive du lanceur d'un niveau.", 
			"Augmente l'Esquive du lanceur d'un niveau.",
			"Augmente l'Esquive du lanceur de 2 niveaux."
		}
	},
	{
		id = "108",
		name = "Brouillard",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Précision de la cible d'un niveau." 
	},
	{
		id = "109",
		name = "Onde Folie",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Rend confus la cible." 
	},
	{
		id = "110",
		name = "Repli",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur d'un niveau." 
	},
	{
		id = "111",
		name = "Boul’Armure",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur d'un niveau."  
	},
	{
		id = "112",
		name = "Bouclier",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur de 2 niveaux." 
	},
	{
		id = "113",
		name = "Mur Lumière",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée un mur qui réduit de 50% les dégâts spéciaux subis par les Pokémon de l'équipe. La réduction est de 33% en combat Duo." 
	},
	{
		id = "114",
		name = "Buée Noire",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Annule les changements de stats de tous les Pokémon au combat." 
	},
	{
		id = "115",
		name = "Protection",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée un mur qui réduit de 50% les dégâts physiques subis par les Pokémon de l'équipe. La réduction est de 33% en combat Duo." 
	},
	{
		id = "116",
		name = "Puissance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente le taux de coups critiques de 2 niveaux." 
	},
	{
		id = "117",
		name = "Patience",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1. Se concentre pendant 2 tours et renvoie le double des dégâts subis le troisième tour." 
	},
	{
		id = "118",
		name = "Métronome",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur utilise une capacité aléatoire du jeu." 
	},
	{
		id = "119",
		name = "Mimique",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Utilise la dernière capacité qui a ciblé le lanceur." 
	},
	{
		id = "120",
		name = "Destruction",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"130", "200", "200", "200", "200"},
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.",
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.",
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.",
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.",
			"Le lanceur tombe K.O. avant d'attaquer."
		}
	},
	{
		id = "121",
		name = "Bomb’Oeuf",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "100",
		pp = "10",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Bombe'." 
	},
	{
		id = "122",
		name = "Léchouille",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "20",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance de paralyser la cible." 
	},
	{
		id = "123",
		name = "Purédpois",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "20",
		pp = "20",
		accuracy = "70",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "40% de chance d'empoisonner la cible." 
	},
	{
		id = "124",
		name = "Détritus",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance d'empoisonner la cible." 
	},
	{
		id = "125",
		name = "Massd’Os",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "65",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance d'apeurer la cible." 
	},
	{
		id = "126",
		name = "Déflagration",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "120",
		pp = "5",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de brûler la cible." 
	},
	{
		id = "127",
		name = "Cascade",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "20% de chance d'apeurer la cible." 
	},
	{
		id = "128",
		name = "Claquoir",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "35",
		pp = {"10", "10", "10", "10", "15"},
		accuracy = {"75", "75", "75", "75", "85"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir.",
			}
	},
	{
		id = "129",
		name = "Météores",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "130",
		name = "Coud’Krâne",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "100",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Augmente la Défense du lanceur d'un niveau le premier tour et attaque le second tour." 
	},
	{
		id = "131",
		name = "Picanon",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "20",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "132",
		name = "Constriction",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "10",
		pp = "35",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance de baisser la Vitesse de la cible d'un niveau." 
	},
	{
		id = "133",
		name = "Amnésie",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense Spéciale du lanceur 2 niveaux." 
	},
	{
		id = "134",
		name = "Télékinésie",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Précision de la cible d'un niveau." 
	},
	{
		id = "135",
		name = "E-Coque",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max." 
	},
	{
		id = "136",
		name = "Pied Voltige",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"85", "85", "85", "100", "130"},
		pp = {"20", "20", "20", "20", "10"},
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "137",
		name = "Intimidation",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = {"75", "75", "75", "75", "90"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Paralyse la cible." 
	},
	{
		id = "138",
		name = "Dévorêve",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "100",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur mange le rêve de l'ennemi endormi et récupère en PV la moitié des dégâts infligés." 
	},
	{
		id = "139",
		name = "Gaz Toxik",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = {"55", "55", "55", "55", "80"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empoisonne gravement la cible."  
	},
	{
		id = "140",
		name = "Pilonnage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "141",
		name = "Vampirisme",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "20",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Convertit 50% des dégâts infligés à la cible en PV pour le lanceur." 
	},
	{
		id = "142",
		name = "Grobisou",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Endort la cible." 
	},
	{
		id = "143",
		name = "Pique",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. 30% de chance d'apeurer la cible. Taux de coups critiques +1."
	},
	{
		id = "144",
		name = "Morphing",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Se transforme en le Pokémon adverse, copiant toutes ses statistiques (sauf les PV), toutes ses capacités (avec 5 PP) et son talent." 
	},
	{
		id = "145",
		name = "Ecume",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "20",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "146",
		name = "Uppercut",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. 20% de chance de rendre confus la cible." 
	},
	{
		id = "147",
		name = "Spore",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Poudre'. Endort la cible." 
	},
	{
		id = "148",
		name = "Flash",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = {"70", "70", "70", "100", "100"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Précision de la cible d'un niveau." 
	},
	{
		id = "149",
		name = "Vague Psy",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Inflige des dégâts variables entre 50% et 150% du niveau du lanceur." 
	},
	{
		id = "150",
		name = "Trempette",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Sans effet." 
	},
	{
		id = "151",
		name = "Acidarmure",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur de 2 niveaux." 
	},
	{
		id = "152",
		name = "Pince-Masse",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "90",
		pp = "10",
		accuracy = {"85", "85", "85", "85", "90"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "153",
		name = "Explosion",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"170", "250", "250", "250", "250"},
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.", 
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.", 
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.", 
			"Le lanceur tombe K.O. avant d'attaquer. Lors de cette attaque, la Défense des cibles est divisée par 2.", 
			"Le lanceur tombe K.O. avant d'attaquer."
		}
	},
	{
		id = "154",
		name = "Combo-Griffe",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "18",
		pp = "15",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire."  
	},
	{
		id = "155",
		name = "Osmerang",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "50",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 fois." 
	},
	{
		id = "156",
		name = "Repos",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 100% de ses PV max et s'endort pendant 2 tours." 
	},
	{
		id = "157",
		name = "Eboulement",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "75",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "158",
		name = "Croc de Mort",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 10% de chance d'apeurer la cible." 
	},
	{
		id = "159",
		name = "Affûtage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Attaque du lanceur d'un niveau." 
	},
	{
		id = "160",
		name = "Adaptation",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur change de type pour prendre celui d'une de ses capacités choisie aléatoirement." 
	},
	{
		id = "161",
		name = "Triplattaque",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "20% de chance d'infliger une brûlure, une paralysie ou un gel (6.67% chacun)." 
	},
	{
		id = "162",
		name = "Croc Fatal",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Inflige des dégâts équivalents à 50% des PV restants de la cible." 
	},
	{
		id = "163",
		name = "Tranche",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "164",
		name = "Clonage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Sacrifie 25% des PV max du lanceur pour créer un Clone qui encaisse les dommages à la place du lanceur. Le clone est notamment immunisé aux problèmes de statut, baisses de statistiques et autres capacités de statut." 
	},
	{
		id = "165",
		name = "Lutte",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "50",
		pp = {"10", "1", "1", "1", "1"},
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Capacité par défaut lorsque le lanceur peut utiliser aucune capacité qu'il connaît. Le lanceur perd 25% de ses PV max après l'attaque." 
	},
	{
		-- Begin Gen 2 Moves
		id = "166",
		name = "Gribouille",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "1",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur copie de manière permanente la dernière capacité utilisée par la cible." 
	},
	{
		id = "167",
		name = "Triple Pied",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "10",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche jusqu'à 3 fois. Le premier coup a une puissance de 10, le second 20 et le dernier 30." 
	},
	{
		id = "168",
		name = "Larcin",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "40",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "169",
		name = "Toile",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "170",
		name = "Lire-Esprit",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur analyse la cible pour être sûr de toucher au tour suivant." 
	},
	{
		id = "171",
		name = "Cauchemar",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Plonge la cible dans un cauchemar qui inflige 1/4 de dégâts à la fin de chaque tour. Ne fonctionne que si la cible est endormie."
	},
	{
		id = "172",
		name = "Roue de Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "60",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance de brûler la cible." 
	},
	{
		id = "173",
		name = "Ronflement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque sonore. 30% de chance d'apeurer la cible. Ne fonctionne que si le lanceur est endormi." 
	},
	{
		id = "174",
		name = "Malédiction",
		type = {
			PokemonData.POKEMON_TYPES.UNKNOWN,
			PokemonData.POKEMON_TYPES.UNKNOWN,
			PokemonData.POKEMON_TYPES.UNKNOWN,
			PokemonData.POKEMON_TYPES.UNKNOWN,
			PokemonData.POKEMON_TYPES.GHOST
		},
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur sacrifie 50% de ses PV max pour maudir sa cible, ce qui lui inflige 25% de ses PV max à la fin de chaque tour." 
	},
	{
		id = "175",
		name = "Fléau",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "<HP",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus les PV du lanceur sont bas, plus l'attaque est puissante." 
	},
	{
		id = "176",
		name = "Conversion 2",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur change de type pour être résistant au type de la dernière attaque lancée par sa cible."
	},
	{
		id = "177",
		name = "Aéroblast",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "100",
		pp = "5",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "178",
		name = "Spore Coton",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = {"85", "85", "85", "85", "100"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Poudre'. Baisse la Vitesse de la cible de 2 niveaux."  
	},
	{
		id = "179",
		name = "Contre",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "<HP",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus les PV du lanceur sont bas, plus l'attaque est puissante." 
	},
	{
		id = "180",
		name = "Dépit",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Réduit les PP de la dernière capacitée utilisée par la cible de 4." 
	},
	{
		id = "181",
		name = "Poudreuse",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de geler les cibles." 
	},
	{
		id = "182",
		name = "Abri",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +3. Protège le lanceur de la plupart des attaques pendant un tour. Les chances de réussir l'attaque sont divisées par 2 à chaque utilisation consécutive." 
	},
	{
		id = "183",
		name = "Mach Punch",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Priorité +1." 
	},
	{
		id = "184",
		name = "Grimace",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = {"90", "90", "90", "90", "100"},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Vitesse de la cible de 2 niveaux." 
	},
	{
		id = "185",
		name = "Feinte",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "186",
		name = "Doux Baiser",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Rend confus la cible." 
	},
	{
		id = "187",
		name = "Cognobidon",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Sacrifie 50% des PV max pour monter le niveau d'Attaque du lanceur au maximum." 
	},
	{
		id = "188",
		name = "Bomb-Beurk",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Bombe'. 30% de chances d'empoisonner la cible." 
	},
	{
		id = "189",
		name = "Coud’Boue",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "20",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "100% de chance de baisser la Précision de la cible d'un niveau." 
	},
	{
		id = "190",
		name = "Octazooka",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "65",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Balle'. 50% de chance de baisser la Précision de la cible d'un niveau." 
	},
	{
		id = "191",
		name = "Picots",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Pose un piège sur le terrain adverse, qui inflige 12.5% des PV max aux Pokémon non volant qui entrent sur son terrain. Cumulable 3 fois, auquel cas les dégâts passent à 18.75% puis à 25% des PV max." 
	},
	{
		id = "192",
		name = "Elecanon",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = {"100", "100", "100", "120", "120"},
		pp = "5",
		accuracy = "50",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "193",
		name = "Clairvoyance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Permet de toucher un Pokémon Spectre avec des attaques Normal et Combat et d'ignorer ses augmentations d'Esquive." 
	},
	{
		id = "194",
		name = "Prlvt Destin",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Si le lanceur est mis K.O. par une capacité offensive avant sa prochaine attaque, l'assaillant tombe K.O. à son tour. Peut être répété sans échouer."
	},
	{
		id = "195",
		name = "Requiem",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Tous les Pokémon sur le terrain tombent K.O après 3 tours." 
	},
	{
		id = "196",
		name = "Vent Glace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "100% de chance de baisser la Vitesse des cibles d'un niveau." 
	},
	{
		id = "197",
		name = "Détection",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +3. Protège le lanceur de la plupart des attaques pendant un tour. Les chances de réussir l'attaque sont divisées par 2 à chaque utilisation consécutive." 
	},
	{
		id = "198",
		name = "Charge-Os",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "25",
		pp = "10",
		accuracy = {"80", "80", "80", "80", "90"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois."  
	},
	{
		id = "199",
		name = "Verrouillage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur analyse la cible pour être sûr de toucher au tour suivant." 
	},
	{
		id = "200",
		name = "Colère",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = {"90", "90", "90", "120", "120"},
		pp = {"15", "15", "15", "15", "10"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur se bloque sur la capacité pendant 2 à 3 tours, puis devient confus." 
	},
	{
		id = "201",
		name = "Tempêtesable",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée une tempête de sable de 5 tours qui blesse tous les Pokémon, sauf ceux de type Roche, Sol ou Acier, et qui augmente la Défense Spéciale des Pokémon Roche." 
	},
	{
		id = "202",
		name = "Giga-Sangsue",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = {"60", "60", "60", "60", "75"},
		pp = {"5", "5", "5", "10", "10"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Convertit 50% des dégâts infligés à la cible en PV pour le lanceur." 
	},
	{
		id = "203",
		name = "Ténacité",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +3. Le lanceur résiste aux attaques offensives avec 1 PV durant le tour. Les chances de réussir l'attaque sont divisées par 2 à chaque utilisation consécutive." 
	},
	{
		id = "204",
		name = "Charme",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse l'Attaque de la cible de 2 niveaux." 
	},
	{
		id = "205",
		name = "Roulade",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "30",
		pp = "20",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur se bloque sur la capacité pendant 5 tour ou jusqu'à que l'attaque rate. La puissance double à chaque attaque successive." 
	},
	{
		id = "206",
		name = "Faux-Chage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "40",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur retient ses coups pour que la cible garde au moins 1 PV en cas de coup normalement fatal." 
	},
	{
		id = "207",
		name = "Vantardise",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Fait enrager la cible et la plonge dans la confusion, mais augmente beaucoup son Attaque." 
	},
	{
		id = "208",
		name = "Lait à Boire",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max." 
	},
	{
		id = "209",
		name = "Etincelle",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "210",
		name = "Taillade",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = {"10", "10", "10", "10", "20"},
		pp = "20",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance de cette capacité double à chaque tour d'affilée où elle est utilisée, jusqu'à un maximum de 160." 
	},
	{
		id = "211",
		name = "Aile d’Acier",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "70",
		pp = "25",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance d'augmenter la Défense du lanceur d'un niveau." 
	},
	{
		id = "212",
		name = "Regard Noir",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empêche la cible de fuir." 
	},
	{
		id = "213",
		name = "Attraction",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Rend amoureux la cible. Ne fonctionne que sur les cibles de sexe opposé au lanceur." 
	},
	{
		id = "214",
		name = "Blabla Dodo",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur utilise une autre de ses capacités au hasard. Ne fonctionne que si le lanceur est endormi." 
	},
	{
		id = "215",
		name = "Glas de Soin",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max."  
	},
	{
		id = "216",
		name = "Retour",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = ">FR",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus le lanceur est heureux, plus l'attaque est puissante. La puissance varie entre 1 et 102." 
	},
	{
		id = "217",
		name = "Cadeau",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "RNG",
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Effectue aléatoirement une attaque à 40, 80 ou 120 de puissance, ou soigne 25% des PV max de la cible." 
	},
	{
		id = "218",
		name = "Frustration",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "<FR",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus le lanceur est malheureux, plus l'attaque est puissante. La puissance varie entre 1 et 102." 
	},
	{
		id = "219",
		name = "Rune Protect",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "25",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée un champ protecteur qui protège l'équipe du lanceur contre les problèmes de statut et la confusion pendant 5 tours." 
	},
	{
		id = "220",
		name = "Balance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = {"100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Additionne les PV du lanceur et de la cible, et redistribue la moitié à chacun." 
	},
	{
		id = "221",
		name = "Feu Sacré",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "100",
		pp = "5",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "50% de chance de brûler la cible." 
	},
	{
		id = "222",
		name = "Ampleur",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "RNG",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "223",
		name = "Dynamopoing",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "100",
		pp = "5",
		accuracy = "50",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "224",
		name = "Mégacorne",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "120",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "225",
		name = "Dracosouffle",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance de paralyser la cible." 
	},
	{
		id = "226",
		name = "Relais",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur échange sa place avec un Pokémon de l'équipe, tout en lui relayant ses changements de statistiques et certains effets." 
	},
	{
		id = "227",
		name = "Encore",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Force la cible à répéter la dernière capacité utilisée pendant 3 à 7 tours.",
			"Force la cible à répéter la dernière capacité utilisée pendant 3 à 7 tours.",
			"Force la cible à répéter la dernière capacité utilisée pendant 3 à 7 tours.",
			"Force la cible à répéter la dernière capacité utilisée pendant 3 à 7 tours.",
			"Force la cible à répéter la dernière capacité utilisée pendant 3 tours."
		}
	},
	{
		id = "228",
		name = "Poursuite",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "L'attaque devient prioritaire et double de puissance si la cible souhaite se retirer du terrain."  
	},
	{
		id = "229",
		name = "Tour Rapide",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "20",
		pp = "40",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Dissipe certains effets du côté du lanceur comme Vampigraine, Picots ou Piège de Roc."  
	},
	{
		id = "230",
		name = "Doux Parfum",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse l'Esquive des cibles d'un niveau.."  
	},
	{
		id = "231",
		name = "Queue de Fer",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "100",
		pp = "15",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance de baisser la Défense de la cible d'un niveau." 
	},
	{
		id = "232",
		name = "Griffe Acier",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "50",
		pp = "35",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance d'augmenter l'Attaque du lanceur d'un niveau."  
	},
	{
		id = "233",
		name = "Corps Perdu",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "70",
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité -1." 
	},
	{
		id = "234",
		name = "Aurore",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max, 67% sous le soleil, 25% sous les autres climats." 
	},
	{
		id = "235",
		name = "Synthèse",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max, 67% sous le soleil, 25% sous les autres climats." 
	},
	{
		id = "236",
		name = "Rayon Lune",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max, 67% sous le soleil, 25% sous les autres climats." 
	},
	{
		id = "237",
		name = "Puis. Cachée",
		type = PokemonData.POKEMON_TYPES.UNKNOWN,
		power = "VAR",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "La puissance et le type de l'attaque dépend de la parité des IV du lanceur. La puissance varie entre 30 et 70."
	},
	{
		id = "238",
		name = "Coup-Croix",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "100",
		pp = "5",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1."
	},
	{
		id = "239",
		name = "Ouragan",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "20% de chances d'apeurer les cibles." 
	},
	{
		id = "240",
		name = "Danse Pluie",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Invoque de fortes pluies pendant 5 tours, augmentant la puissance des capacités de type Eau et baissant celle des capacités de type Feu." 
	},
	{
		id = "241",
		name = "Zénith",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "242",
		name = "Mâchouille",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 20% de chance de baisser la Défense de la cible d'un niveau." 
	},
	{
		id = "243",
		name = "Voile Miroir",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Priorité -5. Inflige le double de dégâts à une cible si elle a attaqué avec une attaque spéciale." 
	},
	{
		id = "244",
		name = "Boost",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur copie la dernière capacité utilisée par la cible et la conserve tant qu'il reste au combat."  
	},
	{
		id = "245",
		name = "Vit.Extrême",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "80",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1."  
	},
	{
		id = "246",
		name = "Pouv.Antique",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance d'augmenter l'Attaque, la Défense, l'Attaque Spéciale, la Défense Spéciale et la Vitesse du lanceur d'un niveau." 
	},
	{
		id = "247",
		name = "Ball’Ombre",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Balle'. 20% de chances de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "248",
		name = "Prescience",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = {"80", "80", "80", "80", "100"},
		pp = {"15", "15", "15", "15", "10"},
		accuracy = {"90", "90", "90", "90", "100"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité."
		}																																								   
	},
	{
		id = "249",
		name = "Eclate-Roc",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"20", "20", "20", "40", "40"},
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "250",
		name = "Siphon",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = {"15", "15", "15", "15", "35"},
		pp = "15",
		accuracy = {"70", "70", "70", "70", "85"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir."
		}
	},
	{
		id = "251",
		name = "Baston",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = {"10", "10", "10", "10", "VAR"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Le lanceur appelle tous les Pokémon en forme de son équipe pour attaquer. Chaque coup porté a une puissance de 10 et n'avait pas de type." ,
			"Le lanceur appelle tous les Pokémon en forme de son équipe pour attaquer. Chaque coup porté a une puissance de 10 et n'avait pas de type." ,
			"Le lanceur appelle tous les Pokémon en forme de son équipe pour attaquer. Chaque coup porté a une puissance de 10 et n'avait pas de type." ,
			"Le lanceur appelle tous les Pokémon en forme de son équipe pour attaquer. Chaque coup porté a une puissance de 10 et n'avait pas de type." ,
			"Le lanceur appelle tous les Pokémon en forme de son équipe pour attaquer. La puissance de chaque coup dépend de l'Attaque de base du Pokémon appelé." 
		}
	},
	{
		-- Begin Gen 3 Moves
		id = "252",
		name = "Bluff",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1. 100% de chance d'apeurer la cible. Ne fonctionne qu'au premier tour." 
	},
	{
		id = "253",
		name = "Brouhaha",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"50", "50", "50", "50", "90"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Le lanceur se bloque sur l'attaque pendant 2 à 5 tours. Cela réveille les Pokémon endormis et empêche les Pokémon sur le terrain de s'endormir.",
			"Le lanceur se bloque sur l'attaque pendant 2 à 5 tours. Cela réveille les Pokémon endormis et empêche les Pokémon sur le terrain de s'endormir.",
			"Le lanceur se bloque sur l'attaque pendant 2 à 5 tours. Cela réveille les Pokémon endormis et empêche les Pokémon sur le terrain de s'endormir.",
			"Le lanceur se bloque sur l'attaque pendant 2 à 5 tours. Cela réveille les Pokémon endormis et empêche les Pokémon sur le terrain de s'endormir.",
			"Le lanceur se bloque sur l'attaque pendant 3 tours. Cela réveille les Pokémon endormis et empêche les Pokémon sur le terrain de s'endormir."
		}
	},
	{
		id = "254",
		name = "Stockage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = {"10", "10", "10", "20", "20"},
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense et la Défense Spéciale du lanceur d'un niveau, et accumule une charge de Stockage (3 maximum) qui permettent d'utiliser Avale et Relâche."  
	},
	{
		id = "255",
		name = "Relâche",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Augmente la Défense et la Défense Spéciale du lanceur d'un niveau, et accumule une charge de Stockage (3 maximum) qui permettent d'utiliser Avale et Relâche."   
	},
	{
		id = "256",
		name = "Avale",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense et la Défense Spéciale du lanceur d'un niveau, et accumule une charge de Stockage (3 maximum) qui permettent d'utiliser Avale et Relâche."  
	},
	{
		id = "257",
		name = "Canicule",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "100",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de brûler les cibles." 
	},
	{
		id = "258",
		name = "Grêle",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Invoque une tempête de grêle pendant 5 tours qui blesse tous les Pokémon, sauf ceux de type Glace." 
	},
	{
		id = "259",
		name = "Tourmente",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Inflige une tourmente à la cible, ce qui l'empêche d'utiliser 2 fois d'affilée la même capacité." 
	},
	{
		id = "260",
		name = "Flatterie",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Rend confus la cible et augmente son Attaque Spéciale de 2 niveaux." 
	},
	{
		id = "261",
		name = "Feu Follet",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Brûle la cible." 
	},
	{
		id = "262",
		name = "Souvenir",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur tombe K.O. et baisse l'Attaque et l'Attaque Spéciale de la cible de 2 niveaux." 
	},
	{
		id = "263",
		name = "Façade",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance est doublée lorsque le lanceur est empoisonné, paralysé ou brûlé." 
	},
	{
		id = "264",
		name = "Mitra-Poing",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "150",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Priorité -3. Le lanceur charge au début du tour : s'il est blessé par une capacité offensive, Mitra-Poing échoue." 
	},
	{
		id = "265",
		name = "Stimulant",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance est doublée si la cible est paralysée. Dans ce cas, cela soigne sa paralysie." 
	},
	{
		id = "266",
		name = "Par Ici",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +3. Attire l'attention des ennemis pour les forcer à n'attaquer que le lanceur." 
	},
	{
		id = "267",
		name = "Force-Nature",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le type de la capacité varie selon le terrain."  
	},
	{
		id = "268",
		name = "Chargeur",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur se charge pour doubler la puissance de sa prochaine attaque si elle est Électrik. Augmente aussi la Défense Spéciale du lanceur d'un niveau."  
	},
	{
		id = "269",
		name = "Provoc",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Provoque la cible pendant 3 à 5 tours, ce qui l'empêche d'utiliser des capacités de statut.",
			"Provoque la cible pendant 3 à 5 tours, ce qui l'empêche d'utiliser des capacités de statut.",
			"Provoque la cible pendant 3 à 5 tours, ce qui l'empêche d'utiliser des capacités de statut.",
			"Provoque la cible pendant 3 à 5 tours, ce qui l'empêche d'utiliser des capacités de statut.",
			"Provoque la cible pendant 3 tours, ce qui l'empêche d'utiliser des capacités de statut."
		}
	},
	{
		id = "270",
		name = "Coup d’Main",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +5. Augmente la puissance des capacités d'un allié de 50% jusqu'à la fin du tour." 
	},
	{
		id = "271",
		name = "Tourmagik",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange l'objet du lanceur avec celui de la cible."  
	},
	{
		id = "272",
		name = "Imitation",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur imite le talent de la cible."  
	},
	{
		id = "273",
		name = "Voeu",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Restaure 50% des PV max du Pokémon présent sur le terrain au prochain tour." 
	},
	{
		id = "274",
		name = "Assistance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur utilise une capacité aléatoire parmi les capacités des alliées." 
	},
	{
		id = "275",
		name = "Racines",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur plante ses racines et récupère 1/8 de ses PV max à chaque tour. De plus, le lanceur ne peut plus fuir."
	},
	{
		id = "276",
		name = "Surpuissance",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "120",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Baisse l'Attaque et la Défense du lanceur d'un niveau après l'attaque." 
	},
	{
		id = "277",
		name = "Reflet Magik",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +4. Renvoie la plupart des capacités de statut de l'adversaire à lui-même."  
	},
	{
		id = "278",
		name = "Recyclage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Permet de récupérer les objets utilisés, consommés, lancés avec Dégommage ou les Baies utilisées pour Don Naturel."  
	},
	{
		id = "279",
		name = "Vendetta",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité -4. La puissance est doublée si la cible a été blessée par une attaque dans le tour."  
	},
	{
		id = "280",
		name = "Casse-Brique",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Crée un mur qui réduit de 50% les dégâts spéciaux subis par les Pokémon de l'équipe. La réduction est de 33% en combat Duo."  
	},
	{
		id = "281",
		name = "Bâillement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée un mur qui réduit de 50% les dégâts spéciaux subis par les Pokémon de l'équipe. La réduction est de 33% en combat Duo."  
	},
	{
		id = "282",
		name = "Sabotage",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "20",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance augmente de 50% si la cible tient un objet et fait tomber l'objet." 
	},
	{
		id = "283",
		name = "Effort",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Si la cible possède plus de PV que le lanceur, alors l'attaque réduit les PV de la cible jusqu'au même montant que le lanceur." 
	},
	{
		id = "284",
		name = "Eruption",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "285",
		name = "Echange",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "286",
		name = "Possessif",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empêche les adversaires d'utiliser les capacités connues par le lanceur." 
	},
	{
		id = "287",
		name = "Régénération",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Soigne un empoisonnement, une paralysie ou une brûlure." 
	},
	{
		id = "288",
		name = "Rancune",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Si le lanceur est mis K.O. par une capacité offensive, les PP de cette capacité tombent à 0." 
	},
	{
		id = "289",
		name = "Saisie",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "290",
		name = "Force Cachée",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance de déclencher un effet secondaire, qui dépend du lieu."   
	},
	{
		id = "291",
		name = "Plongée",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = {"60", "60", "60", "80", "80"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement." 
	},
	{
		id = "292",
		name = "Cogne",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "15",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "293",
		name = "Camouflage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Remplace le type du lanceur par un type qui dépend du lieu." 
	},
	{
		id = "294",
		name = "Lumiqueue",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Augmente l'Attaque Spéciale du lanceur de 2 niveaux.",
			"Augmente l'Attaque Spéciale du lanceur de 2 niveaux.",
			"Augmente l'Attaque Spéciale du lanceur de 2 niveaux.",
			"Augmente l'Attaque Spéciale du lanceur de 2 niveaux.",
			"Augmente l'Attaque Spéciale du lanceur de 3 niveaux."
		}
	},
	{
		id = "295",
		name = "Lumi-Eclat",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "70",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "296",
		name = "Ball’Brume",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "70",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Crée une brume qui empêche la réduction des stats durant 5 tours."  
	},
	{
		id = "297",
		name = "Danse-Plume",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Danse'. Baisse l'Attaque de la cible de 2 niveaux." 
	},
	{
		id = "298",
		name = "Danse-Folle",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Danse'." 
	},
	{
		id = "299",
		name = "Pied Brûleur",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "85",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1. 10% de chance de brûler la cible." 
	},
	{
		id = "300",
		name = "Lance-Boue",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Réduit la puissance des attaques Électrik de 67% de tous les Pokémon jusqu'à que le lanceur est retiré." 
	},
	{
		id = "301",
		name = "Ball’Glace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "30",
		pp = "20",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Balle'. Le lanceur se bloque sur la capacité pendant 5 tour ou jusqu'à que l'attaque rate. La puissance double à chaque attaque successive." 
	},
	{
		id = "302",
		name = "Poing Dard",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "60",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. 30% de chance d'apeurer la cible." 
	},
	{
		id = "303",
		name = "Paresse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max." 
	},
	{
		id = "304",
		name = "Mégaphone",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque sonore." 
	},
	{
		id = "305",
		name = "Crochetvenin",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "50",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 30% de chance d'empoisonner gravement la cible." 
	},
	{
		id = "306",
		name = "Eclategriffe",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "75",
		pp = "10",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "307",
		name = "Rafale Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur doit se reposer au tour suivant." 
	},
	{
		id = "308",
		name = "Hydroblast",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur doit se reposer au tour suivant." 
	},
	{
		id = "309",
		name = "Poing Météor",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "100",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. 20% de chance d'augmenter l'Attaque du lanceur d'un niveau." 
	},
	{
		id = "310",
		name = "Etonnement",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "30",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "311",
		name = "Ball’Météo",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "50",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Balle'. La puissance est doublée et le type change avec la présence d'un climat." 
	},
	{
		id = "312",
		name = "Aromathérapi",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Guérit la brûlure, le gel, la paralysie, le poison et le sommeil de tous les Pokémon dans l'équipe du lanceur." 
	},
	{
		id = "313",
		name = "Croco Larme",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse la Défense Spéciale de la cible de 2 niveaux." 
	},
	{
		id = "314",
		name = "Tranch’Air",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "55",
		pp = "25",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "315",
		name = "Surchauffe",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Baisse l'Attaque Spéciale du lanceur de 2 niveaux après l'attaque." 
	},
	{
		id = "316",
		name = "Flair",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = {"100", "100", "100", Graphics.TEXT.ALWAYS_HITS, Graphics.TEXT.ALWAYS_HITS},
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Permet de toucher un Pokémon Spectre avec des attaques Normal et Combat et d'ignorer ses augmentations d'Esquive." 
	},
	{
		id = "317",
		name = "Tomberoche",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "50",
		pp = "10",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "100% de chance de baisser la vitesse de la cible d'un niveau." 
	},
	{
		id = "318",
		name = "Vent Argenté",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance d'augmenter l'Attaque, la Défense, l'Attaque Spéciale, la Défense Spéciale et la Vitesse du lanceur d'un niveau." 
	},
	{
		id = "319",
		name = "Strido-Son",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Baisse la Défense Spéciale de la cible de 2 niveaux." 
	},
	{
		id = "320",
		name = "Siffl’Herbe",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "55",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Endort la cible." 
	},
	{
		id = "321",
		name = "Chatouille",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse l'Attaque et la Défense de la cible d'un niveau." 
	},
	{
		id = "322",
		name = "Force Cosmik",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense et la Défense Spéciale du lanceur d'un niveau."  
	},
	{
		id = "323",
		name = "Giclédo",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Plus les PV du lanceur sont bas (en %), moins l'attaque est puissante." 
	},
	{
		id = "324",
		name = "Rayon Signal",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de rendre confus la cible." 
	},
	{
		id = "325",
		name = "Poing Ombre",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'." 
	},
	{
		id = "326",
		name = "Extrasenseur",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "80",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance d'apeurer la cible." 
	},
	{
		id = "327",
		name = "Stratopercut",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "85",
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'." 
	},
	{
		id = "328",
		name = "Tourbi-Sable",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = {"15", "15", "15", "15", "35"},
		pp = "15",
		accuracy = {"70", "70", "70", "70", "85"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir."
		}
	},
	{
		id = "329",
		name = "Glaciation",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = "30",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Met K.O. en un coup. Les Pokémon ayant un niveau strictement supérieur sont immunisés." 
	},
	{
		id = "330",
		name = "Ocroupi",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "95",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance de baisser la Précision des cibles d'un niveau." 
	},
	{
		id = "331",
		name = "Balle Graine",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = {"10", "10", "10", "10", "25"},
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Balle'. Touche 2 à 5 fois." 
	},
	{
		id = "332",
		name = "Aéropique",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "333",
		name = "Stalagtite",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = {"10", "10", "10", "10", "25"},
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "334",
		name = "Mur de Fer",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense du lanceur de 2 niveaux." 
	},
	{
		id = "335",
		name = "Barrage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empêche la cible de fuir." 
	},
	{
		id = "336",
		name = "Grondement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque sonore. Augmente l'Attaque du lanceur d'un niveau." 
	},
	{
		id = "337",
		name = "Dracogriffe",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "338",
		name = "Végé-Attak",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur doit se reposer au tour suivant." 
	},
	{
		id = "339",
		name = "Gonflette",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Attaque et la Défense du lanceur d'un niveau." 
	},
	{
		id = "340",
		name = "Rebond",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "85",
		pp = "5",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement. 30% de chance de paralyser la cible." 
	},
	{
		id = "341",
		name = "Tir de Boue",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "100% de chance de baisser la Vitesse de la cible d'un niveau." 
	},
	{
		id = "342",
		name = "Queue-Poison",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "10% de chance d'empoisonner la cible. Taux de coups critiques +1." 
	},
	{
		id = "343",
		name = "Implore",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"40", "40", "40", "40", "60"},
		pp = "40",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "344",
		name = "Electacle",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. 10% de chance de paralyser la cible. Les dégâts de recul sont équivalents à 1/3 des dégâts infligés à la cible." 
	},
	{
		id = "345",
		name = "Feuillemagik",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "346",
		name = "Tourniquet",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Réduit la puissance des attaques Feu de 67% de tous les Pokémon jusqu'à que le lanceur est retiré." 
	},
	{
		id = "347",
		name = "Plénitude",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Attaque Spéciale et la Défense Spéciale du lanceur d'un niveau." 
	},
	{
		id = "348",
		name = "Lame-Feuille",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = {"70", "70", "70", "90", "90"},
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "349",
		name = "Danse Draco",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Danse'. Augmente l'Attaque et la Vitesse du lanceur d'un niveau." 
	},
	{
		id = "350",
		name = "Boule Roc",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "25",
		pp = "10",
		accuracy = {"80", "80", "80", "80", "90"},
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 à 5 fois." 
	},
	{
		id = "351",
		name = "Onde de Choc",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "352",
		name = "Vibraqua",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Vibration'. 20% de chance de rendre confus la cible." 
	},
	{
		id = "353",
		name = "Carnareket",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = {"120", "120", "120", "120", "140"},
		pp = "5",
		accuracy = {"85", "85", "85", "85", "100"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité. L'attaque inflige des dégâts neutres peu importe le type de la cible.",
			"Lance une attaque qui frappera la cible 2 tours après l'utilisation de cette capacité."
		}
	},
	{
		id = "354",
		name = "Psycho Boost",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Baisse l'Attaque Spéciale du lanceur de 2 niveaux après l'attaque."   
	},
	{
		id = "355",
		name = "Atterrissage",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = Graphics.TEXT.ALWAYS_HITS,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur copie la dernière capacité utilisée par la cible et la conserve tant qu'il reste au combat."  
	},
	{
		id = "356",
		name = "Gravité",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."  
	},
	{
		id = "357",
		name = "Oeil Miracle",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "40",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement."   
	},
	{
		id = "358",
		name = "Réveil Forcé",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Inflige des dégâts équivalents au niveau du lanceur."  
	},
	{
		id = "359",
		name = "Marto-Poing",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "100",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Baisse la Vitesse du lanceur d'un niveau après l'attaque." 
	},
	{
		id = "360",
		name = "Gyroballe",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "<SP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Balle'. Plus le lanceur est lent par rapport à la cible, plus l'attaque est puissante. La puissance varie entre 1 et 150." 
	},
	{
		id = "361",
		name = "Voeu Soin",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur tombe K.O. pour soigner les PV et le statut du Pokémon qui est envoyé après lui, dans le même tour."   
	},
	{
		id = "362",
		name = "Saumure",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "65",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "La puissance est doublée si la cible possède moins de 50% de ses PV max." 
	},
	{
		id = "363",
		name = "Don Naturel",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "BRY",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance et le type dépend de la Baie tenue." 
	},
	{
		id = "364",
		name = "Ruse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"50", "50", "50", "50", "30"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = {
			"Priorité +2. Dissipe l'effet de Détection et Abri puis attaque. Ne fonctionne que si la cible se protège." ,
			"Priorité +2. Dissipe l'effet de Détection et Abri puis attaque. Ne fonctionne que si la cible se protège." ,
			"Priorité +2. Dissipe l'effet de Détection et Abri puis attaque. Ne fonctionne que si la cible se protège." ,
			"Priorité +2. Dissipe l'effet de Détection et Abri puis attaque. Ne fonctionne que si la cible se protège." ,
			"Priorité +2. Dissipe l'effet des protections comme Abri ou Garde Large puis attaque."
		}
	},
	{
		id = "365",
		name = "Picore",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Si la cible tient une Baie, le lanceur la vole et la consomme."  
	},
	{
		id = "366",
		name = "Vent Arrière",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Génère une rafale de vent qui double la Vitesse des Pokémon de l'équipe pendant 3 tours.",
			"Génère une rafale de vent qui double la Vitesse des Pokémon de l'équipe pendant 3 tours.",
			"Génère une rafale de vent qui double la Vitesse des Pokémon de l'équipe pendant 3 tours.",
			"Génère une rafale de vent qui double la Vitesse des Pokémon de l'équipe pendant 3 tours.",
			"Génère une rafale de vent qui double la Vitesse des Pokémon de l'équipe pendant 4 tours."
		}
	},
	{
		id = "367",
		name = "Acupression",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente une statistique de la cible au hasard (parmi celles qui ne sont pas au max) de 2 niveaux." 
	},
	{
		id = "368",
		name = "Fulmifer",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +0. Renvoie 150% des dégâts (physiques ou spéciaux) de la dernière capacité adverse subie durant le tour." 
	},
	{
		id = "369",
		name = "Demi-Tour",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Après l'attaque, le lanceur change de place avec un Pokémon de l'équipe." 
	},
	{
		id = "370",
		name = "Close Combat",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "120",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Baisse la Défense et la Défense Spéciale du lanceur d'un niveau après l'attaque." 
	},
	{
		id = "371",
		name = "Représailles",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "50",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance est doublée si le lanceur attaque après sa cible, ou si la cible se retire du terrain." 
	},
	{
		id = "372",
		name = "Assurance",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "50",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance est doublée si la cible a déjà été blessé durant le tour." 
	},
	{
		id = "373",
		name = "Embargo",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Met un embargo sur la cible, ce qui l'empêche d'utiliser des objets ou de bénéficier des effets des objets tenus pendant 5 tours." 
	},
	{
		id = "374",
		name = "Dégommage",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "ITM",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur envoie l'objet qu'il tient sur sa cible. La puissance et les effets dépendent de l'objet." 
	},
	{
		id = "375",
		name = "Echange Psy",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "376",
		name = "Atout",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "<PP",
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Moins la capacité possède de PP, plus l'attaque est puissante. La puissance varie entre 40 et 200." 
	},
	{
		id = "377",
		name = "Anti-Soin",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = {
			"Empêche la cible de restaurer des PV (sauf via un objet ou une capacité spéciale) et d'utiliser les capacités restaurant des PV pendant 5 tours.",
			"Empêche la cible de restaurer des PV (sauf via un objet ou une capacité spéciale) et d'utiliser les capacités restaurant des PV pendant 5 tours.",
			"Empêche la cible de restaurer des PV (sauf via un objet ou une capacité spéciale) et d'utiliser les capacités restaurant des PV pendant 5 tours.",
			"Empêche la cible de restaurer des PV (sauf via un objet ou une capacité spéciale) et d'utiliser les capacités restaurant des PV pendant 5 tours.",
			"Empêche la cible de restaurer des PV et d'utiliser les capacités restaurant des PV pendant 5 tours.",
		} 
	},
	{
		id = "378",
		name = "Essorage",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Plus la cible possède de PV restants, plus l'attaque est puissante. La puissance varie entre 1 et 121." 
	},
	{
		id = "379",
		name = "Astuce Force",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Sans effet supplémentaire."   
	},
	{
		id = "380",
		name = "Suc Digestif",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Neutralise le talent de la cible."  
	},
	{
		id = "381",
		name = "Air Veinard",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur crée un voile qui empêche l'équipe de subir de coups critiques pendant 5 tours." 
	},
	{
		id = "382",
		name = "Moi d’Abord",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Si la cible utilise une attaque offensive et que le lanceur est plus rapide, alors il lancera l'attaque adverse avec une puissance boostée de 50%." 
	},
	{
		id = "383",
		name = "Photocopie",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur utilise la dernière capacité lancée. Échoue si aucune capacité n'a été utilisée." 
	},
	{
		id = "384",
		name = "Permuforce",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange les changements d'Attaque et d'Attaque Spéciale du lanceur avec ceux de la cible."  
	},
	{
		id = "385",
		name = "Permugarde",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange les changements de Défense et de Défense Spéciale du lanceur avec ceux de la cible."  
	},
	{
		id = "386",
		name = "Punition",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "STA",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "La puissance augmente de 20 pour chaque augmentation de statistique de la cible, pour un maximum de 200." 
	},
	{
		id = "387",
		name = "Dernierecour",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = {"130", "130", "130", "130", "140"},
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Utilisable uniquement si le lanceur a déjà utilisé au moins une fois ses autres capacités. Ne fonctionne pas s'il s'agit de la seule capacité du lanceur." 
	},
	{
		id = "388",
		name = "Soucigraine",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Remplace le talent de la cible par Insomnia, ce qui l'empêche de s'endormir." 
	},
	{
		id = "389",
		name = "Coup Bas",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "80",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1. Échoue si la cible n'utilise pas une capacité offensive ou si elle attaque avant le lanceur." 
	},
	{
		id = "390",
		name = "Pics Toxik",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Empoisonne gravement la cible."  
	},
	{
		id = "391",
		name = "Permucoeur",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange les changements de stats du lanceur avec ceux de la cible."  
	},
	{
		id = "392",
		name = "Anneau Hydro",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange le talent du lanceur avec celui de la cible."  
	},
	{
		id = "393",
		name = "Vol Magnétik",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Fait léviter le lanceur pendant 5 tours, ce qui l'immunise notamment aux attaques Sol et aux pièges."  
	},
	{
		id = "394",
		name = "Boutefeu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. 10% de chance de brûler la cible. Les dégâts de recul sont équivalents à 1/3 des dégâts infligés à la cible."
	},
	{
		id = "395",
		name = "Forte-Paume",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance de paralyser la cible." 
	},
	{
		id = "396",
		name = "Aurasphère",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "90",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Balle' et attaque 'Vibration'." 
	},
	{
		id = "397",
		name = "Poliroche",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Vitesse du lanceur de 2 niveaux." 
	},
	{
		id = "398",
		name = "Direct Toxik",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "80",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Empoisonne gravement la cible."  
	},
	{
		id = "399",
		name = "Vibrobscur",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Vibration'. 20% de chance d'apeurer la cible." 
	},
	{
		id = "400",
		name = "Tranche-Nuit",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1."  
	},
	{
		id = "401",
		name = "Hydroqueue",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "90",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "402",
		name = "Canon Graine",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Bombe'." 
	},
	{
		id = "403",
		name = "Lame d’Air",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "75",
		pp = "20",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance d'apeurer la cible." 
	},
	{
		id = "404",
		name = "Plaie-Croix",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "405",
		name = "Bourdon",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque sonore. 10% de chance de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "406",
		name = "Dracochoc",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Vibration'." 
	},
	{
		id = "407",
		name = "Dracocharge",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "100",
		pp = "10",
		accuracy = "75",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "20% de chance d'apeurer la cible." 
	},
	{
		id = "408",
		name = "Rayon Gemme",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "409",
		name = "Vampipoing",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"60", "60", "60", "60", "75"},
		pp = {"5", "5", "5", "5", "10"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Convertit 50% des dégâts infligés à la cible en PV pour le lanceur." 
	},
	{
		id = "410",
		name = "Onde Vide",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Priorité +1." 
	},
	{
		id = "411",
		name = "Exploforce",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "120",
		pp = "5",
		accuracy = "70",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Balle'. 10% de chance de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "412",
		name = "Eco-Sphère",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "413",
		name = "Rapace",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/3 des dégâts infligés à la cible."
	},
	{
		id = "414",
		name = "Telluriforce",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "415",
		name = "Passe-Passe",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Échange l'objet du lanceur avec celui de la cible."  
	},
	{
		id = "416",
		name = "Giga Impact",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Le lanceur doit se reposer au tour suivant."  
	},
	{
		id = "417",
		name = "Machination",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente l'Attaque Spéciale du lanceur de 2 niveaux." 
	},
	{
		id = "418",
		name = "Pisto-Poing",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Poing'. Priorité +1." 
	},
	{
		id = "419",
		name = "Avalanche",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité -4. La puissance est doublée si la cible a blessé le lanceur avec une capacité offensive durant le tour." 
	},
	{
		id = "420",
		name = "Eclats Glace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "421",
		name = "Griffe Ombre",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1."  
	},
	{
		id = "422",
		name = "Crocs Eclair",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "65",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "423",
		name = "Crocs Givre",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "65",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 10% de chance d'apeurer et 10% de chance de geler sa cible. Effets cumulables." 
	},
	{
		id = "424",
		name = "Crocs Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "65",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Croc'. 10% de chance d'apeurer et 10% de chance de brûler sa cible. Effets cumulables." 
	},
	{
		id = "425",
		name = "Ombre Portée",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1." 
	},
	{
		id = "426",
		name = "Boue-Bombe",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "65",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque 'Bombe'. 30% de chance de baisser la Précision de la cible d'un niveau." 
	},
	{
		id = "427",
		name = "Coupe Psycho",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1."  
	},
	{
		id = "428",
		name = "Psykoud’Boul",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "80",
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "20% de chance d'apeurer la cible."  
	},
	{
		id = "429",
		name = "Miroi-Tir",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "65",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance de baisser la Précision de la cible d'un niveau." 
	},
	{
		id = "430",
		name = "Luminocanon",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Défense Spéciale de la cible d'un niveau." 
	},
	{
		id = "431",
		name = "Escalade",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "90",
		pp = "20",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "20% de chance de rendre confus la cible." 
	},
	{
		id = "432",
		name = "Anti-Brume",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Crée une brume qui empêche la réduction des stats durant 5 tours."  
	},
	{
		id = "433",
		name = "Distorsion",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "5",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité -7. Pose la Distorsion, qui inverse l'ordre d'actions des Pokémon selon leurs Vitesses pendant 5 tours. Les Pokémon les plus rapides attaquent en dernier, mais les priorités d'attaque restent les mêmes." 
	},
	{
		id = "434",
		name = "Draco Météor",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Baisse l'Attaque Spéciale du lanceur de 2 niveaux après l'attaque." 
	},
	{
		id = "435",
		name = "Coup d’Jus",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "30% de chance de paralyser les cibles." 
	},
	{
		id = "436",
		name = "Ebullilave",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "437",
		name = "Tempêteverte",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Baisse l'Attaque Spéciale du lanceur de 2 niveaux après l'attaque." 
	},
	{
		id = "438",
		name = "Mégafouet",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "120",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "439",
		name = "Roc-Boulet",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Bombe'." 
	},
	{
		id = "440",
		name = "Poison-Croix",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1. 10% de chance d'empoisonner la cible." 
	},
	{
		id = "441",
		name = "Détricanon",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "120",
		pp = "5",
		accuracy = "70",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance d'empoisonner la cible." 
	},
	{
		id = "442",
		name = "Tête de Fer",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "30% de chance d'apeurer la cible." 
	},
	{
		id = "443",
		name = "Bombaimant",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "60",
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'Bombe'." 
	},
	{
		id = "444",
		name = "Lame de Roc",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "100",
		pp = "5",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "445",
		name = "Séduction",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Baisse l'Attaque Spéciale des cibles de 2 niveaux. Ne fonctionne que si les cibles sont de sexe opposé au lanceur." 
	},
	{
		id = "446",
		name = "Piège de Roc",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Pose un piège sur le terrain adverse, qui inflige 12.5% des PV max aux Pokémon qui entrent sur son terrain. Ces dégâts sont variables selon la faiblesse ou la résistance du Pokémon adverse au type Roche." 
	},
	{
		id = "447",
		name = "Noeud Herbe",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "WT",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Plus la cible est lourde, plus l'attaque est puissante. La puissance varie entre 20 et 120." 
	},
	{
		id = "448",
		name = "Babil",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Attaque sonore. 1%, 11% ou 31% de chance de rendre confus la cible selon le volume du son enregistré.",
			"Attaque sonore. 1%, 11% ou 31% de chance de rendre confus la cible selon le volume du son enregistré.",
			"Attaque sonore. 1%, 11% ou 31% de chance de rendre confus la cible selon le volume du son enregistré.",
			"Attaque sonore. 1%, 11% ou 31% de chance de rendre confus la cible selon le volume du son enregistré.",
			"Attaque sonore. 0% ou 10% de chance de rendre confus la cible selon le volume du son enregistré."
		}
	},
	{
		id = "449",
		name = "Jugement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "100",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le type de l'attaque varie selon la Plaque tenue par le lanceur." 
	},
	{
		id = "450",
		name = "Piqûre",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Si la cible tient une Baie, le lanceur la vole et la consomme." 
	},
	{
		id = "451",
		name = "Rayon Chargé",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "50",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "70% de chance d'augmenter l'Attaque Spéciale du lanceur d'un niveau." 
	},
	{
		id = "452",
		name = "Martobois",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/3 des dégâts infligés à la cible."
	},
	{
		id = "453",
		name = "Aqua-Jet",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Priorité +1." 
	},
	{
		id = "454",
		name = "Appel Attak",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "90",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "455",
		name = "Appel Défens",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Augmente la Défense et la Défense Spéciale du lanceur d'un niveau."
	},
	{
		id = "456",
		name = "Appel Soins",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max."  
	},
	{
		id = "457",
		name = "Fracass’Tête",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "150",
		pp = "5",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque 'à contrecoup'. Les dégâts de recul sont équivalents à 1/2 des dégâts infligés à la cible."
	},
	{
		id = "458",
		name = "Coup Double",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "35",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Touche 2 fois." 
	},
	{
		id = "459",
		name = "Hurle-Temps",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Le lanceur doit se reposer au tour suivant." 
	},
	{
		id = "460",
		name = "Spatio-Rift",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "100",
		pp = "5",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Taux de coups critiques +1." 
	},
	{
		id = "461",
		name = "Danse-Lune",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Attaque 'Danse'. Le lanceur tombe K.O. pour soigner les PV, les PP et le statut du Pokémon qui est envoyé après lui, dans le même tour." 
	},
	{
		id = "462",
		name = "Presse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Plus la cible possède de PV restants, plus l'attaque est puissante. La puissance varie entre 1 et 121." 
	},
	{
		id = "463",
		name = "Vortex Magma",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "120",
		pp = "5",
		accuracy = {"70", "70", "70", "70", "75"},
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = {
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 2 à 5 tours. L'empêche aussi de fuir.",
			"Piège la cible pour lui infliger 1/16 de ses PV max à la fin de chaque tour pendant 4 à 5 tours. L'empêche aussi de fuir."
		}
	},
	{
		id = "464",
		name = "Trou Noir",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = "80",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Endort les cibles." 
	},
	{
		id = "465",
		name = "Fulmigraine",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "120",
		pp = "5",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "40% de chance de baisser la Défense Spéciale de la cible de 2 niveaux." 
	},
	{
		id = "466",
		name = "Vent Mauvais",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance d'augmenter l'Attaque, la Défense, l'Attaque Spéciale, la Défense Spéciale et la Vitesse du lanceur d'un niveau." 
	},
	{
		id = "467",
		name = "Revenant",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = "120",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement. L'attaque dissipe les protections comme Abri."  
	},
	{
		id = "468",
		name = "Aiguisage",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Priorité +3. Protège le lanceur de la plupart des attaques pendant un tour. Les chances de réussir l'attaque sont divisées par 2 à chaque utilisation consécutive." 
	},
	{
		id = "469",
		name = "Garde Large",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "470",
		name = "PartageGarde",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "471",
		name = "PartageForce",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "472",
		name = "Zone Étrange",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "473",
		name = "Choc Psy",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "474",
		name = "Choc Venin",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "65",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "475",
		name = "Allègement",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "476",
		name = "PoudreFureur",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "477",
		name = "Lévikinésie",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "478",
		name = "Zone Magique",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "479",
		name = "Anti-Air",
		type = PokemonData.POKEMON_TYPES.ROCK,
		power = "50",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "480",
		name = "Yama Arashi",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"60", "60", "60", "60", "40"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "481",
		name = "Rebondifeu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement. 30% de chance de paralyser la cible." 
	},
	{
		id = "482",
		name = "Cradovague",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "95",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "483",
		name = "Papillodanse",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "484",
		name = "Tacle Lourd",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = ">WT",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "485",
		name = "Synchropeine",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = {"120", "120", "120", "120", "70"},
		pp = {"10", "10", "10", "10", "15"},
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "486",
		name = "Boule Élek",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = ">SP",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "487",
		name = "Détrempage",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "488",
		name = "Nitrocharge",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "50",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "489",
		name = "Enroulement",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = Graphics.TEXT.NO_POWER,
		pp = "20",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "490",
		name = "Balayette",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = {"65", "65", "65", "65", "60"},
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "491",
		name = "Bombe Acide",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de baisser la Défense Spéciale des cibles d'un niveau." 
	},
	{
		id = "492",
		name = "Tricherie",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "493",
		name = "Rayon Simple",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "494",
		name = "Ten-danse",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "495",
		name = "Après Vous",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "496",
		name = "Chant Canon",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "60",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "497",
		name = "Echo",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "40",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "498",
		name = "Attrition",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "499",
		name = "Bain de Smog",
		type = PokemonData.POKEMON_TYPES.POISON,
		power = "50",
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "500",
		name = "ForceAjoutée",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "20",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "501",
		name = "Prévention",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "502",
		name = "Interversion",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "503",
		name = "Ebullition",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "504",
		name = "Exuviation",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "505",
		name = "Vibra Soin",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur récupère 50% de ses PV max." 
	},
	{
		id = "506",
		name = "Châtiment",
		type = PokemonData.POKEMON_TYPES.GHOST,
		power = {"65", "65", "65", "65", "50"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "507",
		name = "Chute Libre",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "508",
		name = "Chgt Vitesse",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "509",
		name = "Projection",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "60",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "510",
		name = "Calcination",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = {"60", "60", "60", "60", "30"},
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "511",
		name = "À la Queue",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "512",
		name = "Acrobatie",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "55",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "513",
		name = "Copie Type",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Le lanceur copie la dernière capacité utilisée par la cible et la conserve tant qu'il reste au combat." 
	},
	{
		id = "514",
		name = "Vengeance",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "70",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "515",
		name = "Tout ou Rien",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "516",
		name = "Passe-Cadeau",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "15",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = "Effectue aléatoirement une attaque à 40, 80 ou 120 de puissance, ou soigne 25% des PV max de la cible." 
	},
	{
		id = "517",
		name = "Feu d’Enfer",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "100",
		pp = "5",
		accuracy = "50",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "518",
		name = "Aire d’Eau",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = {"80", "80", "80", "80", "50"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "519",
		name = "Aire de Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = {"80", "80", "80", "80", "50"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "520",
		name = "Aire d’Herbe",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = {"80", "80", "80", "80", "50"},
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "521",
		name = "Change Éclair",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "10% de chance de paralyser la cible." 
	},
	{
		id = "522",
		name = "Survinsecte",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = {"50", "50", "50", "50", "30"},
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "523",
		name = "Piétisol",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "524",
		name = "SouffleGlacé",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = {"60", "60", "60", "60", "40"},
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "525",
		name = "Draco-Queue",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "60",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "526",
		name = "Rengorgement",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = Graphics.TEXT.NO_POWER,
		pp = "30",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "527",
		name = "Toile Élek",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = "Empêche la cible de fuir." 
	},
	{
		id = "528",
		name = "Eclair Fou",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "90",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "529",
		name = "Tunnelier",
		type = PokemonData.POKEMON_TYPES.GROUND,
		power = "80",
		pp = "10",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Attaque en 2 tours. Le lanceur est invulnérable pendant le chargement." 
	},
	{
		id = "530",
		name = "Double Baffe",
		type = PokemonData.POKEMON_TYPES.DRAGON,
		power = "40",
		pp = "15",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "531",
		name = "Crève-Coeur",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "60",
		pp = "25",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "532",
		name = "Encornebois",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "75",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "533",
		name = "Lame Sainte",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "90",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "534",
		name = "Coqui-Lame",
		type = PokemonData.POKEMON_TYPES.WATER,
		power = "75",
		pp = "10",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "535",
		name = "Tacle Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = ">WT",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "536",
		name = "Phytomixeur",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = "65",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "537",
		name = "Bulldoboule",
		type = PokemonData.POKEMON_TYPES.BUG,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "538",
		name = "Cotogarde",
		type = PokemonData.POKEMON_TYPES.GRASS,
		power = Graphics.TEXT.NO_POWER,
		pp = "10",
		accuracy = Graphics.TEXT.ALWAYS_HITS,
		category = MoveData.MOVE_CATEGORIES.STATUS,
		description = ""
	},
	{
		id = "539",
		name = "Explonuit",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "85",
		pp = "10",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "540",
		name = "Frappe Psy",
		type = PokemonData.POKEMON_TYPES.PSYCHIC,
		power = "100",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "541",
		name = "Plumo-Queue",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "25",
		pp = "10",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "542",
		name = "Vent Violent",
		type = PokemonData.POKEMON_TYPES.FLYING,
		power = "120",
		pp = "10",
		accuracy = "70",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "543",
		name = "Peignée",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "544",
		name = "Lancécrou",
		type = PokemonData.POKEMON_TYPES.STEEL,
		power = "50",
		pp = "15",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "545",
		name = "Incendie",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "100",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "546",
		name = "TechnoBuster",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "85",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "547",
		name = "ChantAntique",
		type = PokemonData.POKEMON_TYPES.NORMAL,
		power = "75",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "548",
		name = "Lame Ointe",
		type = PokemonData.POKEMON_TYPES.FIGHTING,
		power = "85",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "549",
		name = "Ereglaciaire",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "65",
		pp = "10",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "550",
		name = "ChargeFoudre",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "130",
		pp = "5",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = "Sans effet supplémentaire." 
	},
	{
		id = "551",
		name = "Flamme Bleue",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "130",
		pp = "5",
		accuracy = "85",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "552",
		name = "Danse du Feu",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "553",
		name = "Eclair Gelé",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "554",
		name = "Feu Glacé",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "555",
		name = "Aboiement",
		type = PokemonData.POKEMON_TYPES.DARK,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "556",
		name = "Chute Glace",
		type = PokemonData.POKEMON_TYPES.ICE,
		power = "85",
		pp = "10",
		accuracy = "90",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "557",
		name = "CoupVictoire",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "180",
		pp = "5",
		accuracy = "95",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	},
	{
		id = "558",
		name = "Flamme Croix",
		type = PokemonData.POKEMON_TYPES.FIRE,
		power = "100",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.SPECIAL,
		description = ""
	},
	{
		id = "559",
		name = "Eclair Croix",
		type = PokemonData.POKEMON_TYPES.ELECTRIC,
		power = "100",
		pp = "5",
		accuracy = "100",
		category = MoveData.MOVE_CATEGORIES.PHYSICAL,
		description = ""
	}
}

MoveData.TOTAL_MOVES = #MoveData.MOVES_MASTER_LIST
