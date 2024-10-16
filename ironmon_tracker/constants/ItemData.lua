ItemData = {}

ItemData.ITEMS = {}

ItemData.HEALING_TYPE = MiscUtils.readOnly({CONSTANT = 0, PERCENTAGE = 1})
ItemData.NATURE_SPECIFIC_BERRIES = {
    ["Baie Figuy"] = {
        Modest = true,
        Timid = true,
        Calm = true,
        Bold = true
    },
    ["Baie Papaya"] = {
        Lonely = true,
        Mild = true,
        Gentle = true,
        Hasty = true
    },
    ["Baie Wiki"] = {
        Adamant = true,
        Jolly = true,
        Careful = true,
        Impish = true
    },
    ["Baie Gowav"] = {
        Naughty = true,
        Rash = true,
        Naive = true,
        Lax = true
    },
    ["Baie Mago"] = {
        Brave = true,
        Quiet = true,
        Sassy = true,
        Relaxed = true
    }
}
ItemData.STATUS_ID_SORT_ORDER = {23, 591, 27, 36, 42, 157, 54, 19, 152, 156, 153, 20, 219, 149, 22, 18, 151, 21, 150}
ItemData.STATUS_ITEMS =
    MiscUtils.readOnly(
    {
        [23] = {
            name = "Guérison",
            status = MiscData.STATUS_TYPE.ALL
        },
        [591] = {
            name = "Glace Volute",
            status = MiscData.STATUS_TYPE.ALL
        },
        [27] = {
            name = "Total Soin",
            status = MiscData.STATUS_TYPE.ALL
        },
        [36] = {
            name = "Poudre Soin",
            status = MiscData.STATUS_TYPE.ALL
        },
        [42] = {
            name = "Lava Cookie",
            status = MiscData.STATUS_TYPE.ALL
        },
        [157] = {
            name = "Baie Prine",
            status = MiscData.STATUS_TYPE.ALL
        },
        [54] = {
            name = "Vieux Gâteau",
            status = MiscData.STATUS_TYPE.ALL
        },
        [19] = {
            name = "Anti-Brûle",
            status = MiscData.STATUS_TYPE.BURN
        },
        [152] = {
            name = "Baie Fraive",
            status = MiscData.STATUS_TYPE.BURN
        },
        [156] = {
            name = "Baie Kika",
            status = MiscData.STATUS_TYPE.CONFUSE
        },
        [153] = {
            name = "Baie Willia",
            status = MiscData.STATUS_TYPE.FREEZE
        },
        [20] = {
            name = "Antigel",
            status = MiscData.STATUS_TYPE.FREEZE
        },
        [219] = {
            name = "Herbe Mental",
            status = MiscData.STATUS_TYPE.INFATUATION
        },
        [149] = {
            name = "Baie Ceriz",
            status = MiscData.STATUS_TYPE.PARALYZE
        },
        [22] = {
            name = "Anti-Para",
            status = MiscData.STATUS_TYPE.PARALYZE
        },
        [18] = {
            name = "Antidote",
            status = MiscData.STATUS_TYPE.POISON
        },
        [151] = {
            name = "Baie Pecha",
            status = MiscData.STATUS_TYPE.POISON
        },
        [21] = {
            name = "Réveil",
            status = MiscData.STATUS_TYPE.SLEEP
        },
        [150] = {
            name = "Baie Maron",
            status = MiscData.STATUS_TYPE.SLEEP
        }
    }
)
ItemData.HEALING_ID_SORT_ORDER = {
    23,
    24,
    158,
    162,
    208,
    159,
    163,
    161,
    160,
    35,
    25,
    33,
    32,
    31,
    26,
    34,
    30,
    43,
    17,
    504,
    134,
    155
}
ItemData.HEALING_ITEMS =
    MiscUtils.readOnly(
    {
        [23] = {
            name = "Guérison",
            amount = 100,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [24] = {
            name = "Potion Max",
            amount = 100,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [158] = {
            name = "Baie Sitrus",
            amount = 25,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [162] = {
            name = "Baie Gowav",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [208] = {
            name = "Baie Enigma",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [159] = {
            name = "Baie Figuy",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [163] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [161] = {
            name = "Baie Mago",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [160] = {
            name = "Baie Wiki",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [35] = {
            name = "Racinenergie",
            amount = 200,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [25] = {
            name = "Hyper Potion",
            amount = 200,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [33] = {
            name = "Lait Meumeu",
            amount = 100,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [32] = {
            name = "Limonade",
            amount = 80,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [31] = {
            name = "Soda Cool",
            amount = 60,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [26] = {
            name = "Super Potion",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [34] = {
            name = "Poudrenergie",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [30] = {
            name = "Eau Fraîche",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [43] = {
            name = "Jus de Baie",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [17] = {
            name = "Potion",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [504] = {
            name = "Bonbon Rage",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [134] = {
            name = "Chococoeur",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [155] = {
            name = "Baie Oran",
            amount = 10,
            type = ItemData.HEALING_TYPE.CONSTANT
        }
    }
)

ItemData.PP_ID_SORT_ORDER = { 41, 40, 39, 38, 154 }
ItemData.PP_ITEMS =
    MiscUtils.readOnly(
    {
        [38] = {
			name = "Ether",
			amount = 10,
			type = ItemData.HEALING_TYPE.CONSTANT
		},
		[39] = {
			name = "Max Ether",
			amount = 100,
			type = ItemData.HEALING_TYPE.PERCENTAGE
		},
		[40] = {
			name = "Elixir",
			amount = 10,
			type = ItemData.HEALING_TYPE.CONSTANT
		},
		[41] = {
			name = "Max Elixir",
			amount = 100,
			type = ItemData.HEALING_TYPE.PERCENTAGE
		},
		[154] = {
			name = "Leppa Berry",
			amount = 10,
			type = ItemData.HEALING_TYPE.CONSTANT
		},
    }
)

ItemData.GEN_4_ITEMS = {
    [1] = {
        name = "Master Ball",
        description = "Catches a wild Pokémon every time."
    },
    [2] = {
        name = "Hyper Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 2x."
    },
    [3] = {
        name = "Super Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 1.5x."
    },
    [4] = {
        name = "Poké Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [5] = {
        name = "Safari Ball",
        description = "Tries to catch a wild Pokmon in the Great Marsh or Safari Zone. Success rate is 1.5x."
    },
    [6] = {
        name = "Filet Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3x for water and bug Pokemon."
    },
    [7] = {
        name = "Scuba Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.5x when underwater, fishing, or surfing."
    },
    [8] = {
        name = "Faiblo Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.9x for level 1 Pokemon, and drops steadily to 1x at level 30."
    },
    [9] = {
        name = "Bis Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3x for previously-caught Pokemon."
    },
    [10] = {
        name = "Chrono Ball",
        description = "Tries to catch a wild Pokemon. Success rate increases by 0.1x (Gen V: 0.3x) every turn, to a max of 4x."
    },
    [11] = {
        name = "Luxury Ball",
        description = "Tries to catch a wild Pokemon. Caught Pok" .. Chars.accentedE .. "mon start with 200 happiness."
    },
    [12] = {
        name = "Honor Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [13] = {
        name = "Sombre Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.5x at night and in caves."
    },
    [14] = {
        name = "Soin Ball",
        description = "Tries to catch a wild Pokemon. Caught Pokémon are immediately healed."
    },
    [15] = {
        name = "Rapide Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 4x (Gen V: 5x), but only on the first turn."
    },
    [16] = {
        name = "Mémoire Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [17] = {
        name = "Potion",
        description = "Restores 20 HP."
    },
    [18] = {
        name = "Antidote",
        description = "Cures poison."
    },
    [19] = {
        name = "Anti-Brûle",
        description = "Cures a burn."
    },
    [20] = {
        name = "Antigel",
        description = "Cures freezing."
    },
    [21] = {
        name = "Réveil",
        description = "Cures sleep."
    },
    [22] = {
        name = "Anti-Para",
        description = "Cures paralysis."
    },
    [23] = {
        name = "Guérison",
        description = "Restores HP to full and cures any status ailment and confusion."
    },
    [24] = {
        name = "Potion Max",
        description = "Restores HP to full."
    },
    [25] = {
        name = "Hyper Potion",
        description = "Restores 200 HP."
    },
    [26] = {
        name = "Super Potion",
        description = "Restores 50 HP."
    },
    [27] = {
        name = "Total Soin",
        description = "Cures any status ailment and confusion."
    },
    [28] = {
        name = "Rappel",
        description = "Rappels with half HP."
    },
    [29] = {
        name = "Max Rappel",
        description = "Rappels with full HP."
    },
    [30] = {
        name = "Eau Fraîche",
        description = "Restores 50 HP."
    },
    [31] = {
        name = "Soda Cool",
        description = "Restores 60 HP."
    },
    [32] = {
        name = "Limonade",
        description = "Restores 80 HP."
    },
    [33] = {
        name = "Lait Meumeu",
        description = "Restores 100 HP."
    },
    [34] = {
        name = "Poudrenergie",
        description = "Restores 50 HP, but lowers happiness."
    },
    [35] = {
        name = "Racinenergie",
        description = "Restores 200 HP, but lowers happiness."
    },
    [36] = {
        name = "Poudre Soin",
        description = "Cures any status ailment, but lowers happiness."
    },
    [37] = {
        name = "Herbe Rappel",
        description = "Rappels with full HP, but lowers happiness."
    },
    [38] = {
        name = "Huile",
        description = "Restores 10 PP for one move."
    },
    [39] = {
        name = "Max Huile",
        description = "Restores PP to full for one move."
    },
    [40] = {
        name = "Élixir",
        description = "Restores 10 PP for each move."
    },
    [41] = {
        name = "Max Élixir",
        description = "Restores PP to full for each move."
    },
    [42] = {
        name = "Lava Cookie",
        description = "Cures any status ailment and confusion."
    },
    [43] = {
        name = "Jus de Baie",
        description = "Restores 20 HP."
    },
    [44] = {
        name = "Cendres Sacrées",
        description = "Rappels all fainted Pokémon with full HP."
    },
    [45] = {
        name = "Hp Up",
        description = "Raises HP effort and happiness."
    },
    [46] = {
        name = "Proteinee",
        description = "Raises Attack effort and happiness."
    },
    [47] = {
        name = "Fer",
        description = "Raises Defense effort and happiness."
    },
    [48] = {
        name = "Carbone",
        description = "Raises Speed effort and happiness."
    },
    [49] = {
        name = "Calcium",
        description = "Raises Special Attack effort and happiness."
    },
    [50] = {
        name = "Super Bonbon",
        description = "Causes a level-up and raises happiness."
    },
    [51] = {
        name = "PP Up",
        description = "Raises a move's max PP by 20%."
    },
    [52] = {
        name = "Zinc",
        description = "Raises Special Defense and happiness."
    },
    [53] = {
        name = "PP Max",
        description = "Raises a move's max PP by 60%."
    },
    [54] = {
        name = "Vieux Gâteau",
        description = "Cures any status ailment and confusion."
    },
    [55] = {
        name = "Garde-Stats",
        description = "Prevents stat changes in battle for five turns in battle. Raises happiness."
    },
    [56] = {
        name = "Muscle +",
        description = "Increases the chance of a critical hit in battle. Raises happiness."
    },
    [57] = {
        name = "Attaque +",
        description = "Raises Attack by one stage in battle. Raises happiness."
    },
    [58] = {
        name = "Défense +",
        description = "Raises Defense by one stage in battle. Raises happiness."
    },
    [59] = {
        name = "Vitesse +",
        description = "Raises Speed by one stage in battle. Raises happiness."
    },
    [60] = {
        name = "Précision +",
        description = "Raises accuracy by one stage in battle. Raises happiness."
    },
    [61] = {
        name = "X Sp-atk",
        description = "Raises Special Attack by one stage in battle. Raises happiness."
    },
    [62] = {
        name = "X Sp-def",
        description = "Raises Special Defense by one stage in battle. Raises happiness."
    },
    [63] = {
        name = "Poké Poupée",
        description = "Ends a wild battle."
    },
    [64] = {
        name = "Queue Skitty",
        description = "Ends a wild battle."
    },
    [65] = {
        name = "Flûte Bleue",
        description = "Cures sleep."
    },
    [66] = {
        name = "Flûte Jaune",
        description = "Cures confusion."
    },
    [67] = {
        name = "Flûte Rouge",
        description = "Cures attraction."
    },
    [68] = {
        name = "Flûte Noire",
        description = "Halves the wild Pokémon encounter rate."
    },
    [69] = {
        name = "Flûte Blanche ",
        description = "Doubles the wild Pokémon encounter rate."
    },
    [70] = {
        name = "Sel Tréfonds",
        description = "No effect. "
    },
    [71] = {
        name = "Co. Tréfonds",
        description = "No effect. "
    },
    [72] = {
        name = "Tesson Rouge",
        description = "No effect. Can be traded for items or moves."
    },
    [73] = {
        name = "Tesson Blue",
        description = "No effect. Can be traded for items or moves."
    },
    [74] = {
        name = "Tesson Jaun",
        description = "No effect. Can be traded for items or moves."
    },
    [75] = {
        name = "Tesson Vert",
        description = "No effect. Can be traded for items or moves."
    },
    [76] = {
        name = "Superepousse",
        description = "For 200 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [77] = {
        name = "Repousse Max",
        description = "For 250 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [78] = {
        name = "Corde Sortie",
        description = "Transports user to the outside entrance of a cave."
    },
    [79] = {
        name = "Repousse",
        description = "For 100 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [80] = {
        name = "Pierresoleil",
        description = "Evolves a Cottonee into Whimsicott, a Gloom into Bellossom, a Petilil into Lilligant, or a Sunkern into Sunflora."
    },
    [81] = {
        name = "Moon Stone",
        description = "Evolves a Clefairy into Clefable, a Jigglypuff into Wigglytuff, a Munna into Musharna, a Nidorina into Nidoqueen, a Nidorino into Nidoking, or a Skitty into Delcatty."
    },
    [82] = {
        name = "Pierre Feu",
        description = "Evolves an Eevee into Flareon, a Growlithe into Arcanine, a Pansear into Simisear, or a Vulpix into Ninetales."
    },
    [83] = {
        name = "Pierre Foudre",
        description = "Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu."
    },
    [84] = {
        name = "Pierre Eau",
        description = "Evolves an Eevee into Vaporeon, a Lombre into Ludicolo, a Panpour into Simipour, a Poliwhirl into Poliwrath, a Shellder into Cloyster, or a Staryu into Starmie."
    },
    [85] = {
        name = "Pierre Plante",
        description = "Evolves an Exeggcute into Exeggutor, a Gloom into Vileplume, a Nuzleaf into Shiftry, a Pansage into Simisage, or a Weepinbell into Victreebel."
    },
    [86] = {
        name = "Petit Champi",
        description = "Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokedollars, or to Hungry Maid for 500 Pokedollars."
    },
    [87] = {
        name = "Gros Champi",
        description = "Fire Red and Leaf Green: Trade for prior Level-up moves. Sell for 2500 Pokedollars, or to Hungry Maid for 5000 Pokedollars."
    },
    [88] = {
        name = "Pearl",
        description = "Sell for 700 Pokedollars, or to Ore Collector for 1400 Pokedollars."
    },
    [89] = {
        name = "Grande Perle",
        description = "Sell for 3750 Pokedollars, or to Ore Collector for 7500 Pokedollars."
    },
    [90] = {
        name = "Pouss Étoile",
        description = "Sell for 1000 Pokedollars, or to Ore Collector for 2000 Pokedollars."
    },
    [91] = {
        name = "Morc. Étoile",
        description = "Platinum: Trade for one of each color Shard. Black and White: Trade for PP Up. Sell for 4900 Pokedollars, or to Ore Collector for 9800 Pokedollars."
    },
    [92] = {
        name = "Pépite",
        description = "Sell for 5000 Pokedollars, or to Ore Collector for 10000 Pokedollars."
    },
    [93] = {
        name = "Écaillecoeur",
        description = "No effect. Can be traded for prior Level-up moves."
    },
    [94] = {
        name = "Miel",
        description = "Used to attract wild Pokémon."
    },
    [95] = {
        name = "Fertipousse",
        description = "Growing time of berries is reduced, but the soil dries out faster."
    },
    [96] = {
        name = "Fertihumide",
        description = "Growing time of berries is increased, but the soil dries out slower."
    },
    [97] = {
        name = "Fertistable",
        description = "Berries stay on the plant for longer than their usual time."
    },
    [98] = {
        name = "Fertiglu",
        description = "Berries regrow from dead plants an increased number of times."
    },
    [99] = {
        name = "Foss. Racine",
        description = "Can be revived into a Lileep."
    },
    [100] = {
        name = "Foss. Griffe",
        description = "Can be revived into an Anorith."
    },
    [101] = {
        name = "Nautile",
        description = "Can be revived into an Omanyte."
    },
    [102] = {
        name = "Fossile Dôme",
        description = "Can be revived into a Kabuto."
    },
    [103] = {
        name = "Vieil Ambre",
        description = "Can be revived into an Aerodactyl."
    },
    [104] = {
        name = "Foss. Armure",
        description = "Can be revived into a Shieldon."
    },
    [105] = {
        name = "Foss. Crâne",
        description = "Can be revived into a Cranidos."
    },
    [106] = {
        name = "Os Rare",
        description = "Sell for 5000 Pokedollars, or to Bone Man for 10000 Pokedollars."
    },
    [107] = {
        name = "Pierre Éclat",
        description = "Evolves a Minccino into Cinccino, a Roselia into Roserade, or a Togetic into Togekiss."
    },
    [108] = {
        name = "Pierre Nuit",
        description = "Evolves a Lampent into Chandelure, a Misdreavus into Mismagius, or a Murkrow into Honchkrow."
    },
    [109] = {
        name = "Pierre Aube",
        description = "Evolves a male Kirlia into Gallade or a female Snorunt into Froslass."
    },
    [110] = {
        name = "Pierre Ovale",
        description = "Level-up during Day on a Happiny: Holder evolves into Chansey."
    },
    [111] = {
        name = "Clé de Voûte",
        description = "Use on the tower on Route 209 to encounter Spiritomb if you have at least 32 Underground greetings."
    },
    [135] = {
        name = "Orbe Adamant",
        description = "Boosts the damage from Dialga's Dragon-type and Steel-type moves by 20%."
    },
    [136] = {
        name = "Orbe Perlé",
        description = "Boosts the damage from Palkia's Dragon-type and Water-type moves by 20%."
    },
    [137] = {
        name = "Grass Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [138] = {
        name = "Flame Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [139] = {
        name = "Bubble Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [140] = {
        name = "Bloom Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [141] = {
        name = "Tunnel Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [142] = {
        name = "Steel Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [143] = {
        name = "Heart Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [144] = {
        name = "Snow Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [145] = {
        name = "Space Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [146] = {
        name = "Air Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [147] = {
        name = "Mosaic Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [148] = {
        name = "Brick Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [149] = {
        name = "Baie Ceriz",
        description = "Consumed when paralyzed to cure paralysis."
    },
    [150] = {
        name = "Baie Maron",
        description = "Consumed when asleep to cure sleep."
    },
    [151] = {
        name = "Baie Pecha",
        description = "Consumed when poisoned to cure poison."
    },
    [152] = {
        name = "Baie Fraive",
        description = "Consumed when burned to cure a burn."
    },
    [153] = {
        name = "Baie Willia",
        description = "Consumed when frozen to cure frozen."
    },
    [154] = {
        name = "Baie Mepo",
        description = "Consumed when a move runs out of PP to restore its PP by 10."
    },
    [155] = {
        name = "Baie Oran",
        description = "Consumed at 1/2 max HP to recover 10 HP."
    },
    [156] = {
        name = "Baie Kika",
        description = "Consumed when confused to cure confusion."
    },
    [157] = {
        name = "Baie Prine",
        description = "Consumed to cure any status condition or confusion."
    },
    [158] = {
        name = "Baie Sitrus",
        description = "Consumed at 1/2 max HP to recover 1/4 max HP."
    },
    [159] = {
        name = "Baie Figuy",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike spicy flavor."
    },
    [160] = {
        name = "Baie Wiki",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike dry flavor."
    },
    [161] = {
        name = "Baie Mago",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike sweet flavor."
    },
    [162] = {
        name = "Baie Gowav",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike bitter flavor."
    },
    [163] = {
        name = "Baie Papaya",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike sour flavor."
    },
    [164] = {
        name = "Baie Framby",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [165] = {
        name = "Baie Remu",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [166] = {
        name = "Baie Nanab",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [167] = {
        name = "Baie Repoi",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [168] = {
        name = "Baie Nanana",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [169] = {
        name = "Baie Grena",
        description = "Drops HP Effort Values by 10 and raises happiness."
    },
    [170] = {
        name = "Baie Alga",
        description = "Drops Attack Effort Values by 10 and raises happiness."
    },
    [171] = {
        name = "Baie Qualot",
        description = "Drops Defense Effort Values by 10 and raises happiness."
    },
    [172] = {
        name = "Baie Lonme",
        description = "Drops Special Attack Effort Values by 10 and raises happiness."
    },
    [173] = {
        name = "Baie Résin",
        description = "Drops Special Defense Effort Values by 10 and raises happiness."
    },
    [174] = {
        name = "Baie Tamato",
        description = "Drops Speed Effort Values by 10 and raises happiness."
    },
    [175] = {
        name = "Baie Siam",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [176] = {
        name = "Baie Mangou",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [177] = {
        name = "Baie Rabuta",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [178] = {
        name = "Baie Tronci",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [179] = {
        name = "Baie Kiwan",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [180] = {
        name = "Baie Palma",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [181] = {
        name = "Baie Stekpa",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [182] = {
        name = "Baie Durin",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [183] = {
        name = "Baie Myrte",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [184] = {
        name = "Baie Chocco",
        description = "Consumed when struck by a super-effective Fire-type attack to halve the damage."
    },
    [185] = {
        name = "Baie Pocpoc",
        description = "Consumed when struck by a super-effective Water-type attack to halve the damage."
    },
    [186] = {
        name = "Baie Parma",
        description = "Consumed when struck by a super-effective Electric-type attack to halve the damage."
    },
    [187] = {
        name = "Baie Ratam",
        description = "Consumed when struck by a super-effective Grass-type attack to halve the damage."
    },
    [188] = {
        name = "Baie Nanone",
        description = "Consumed when struck by a super-effective Ice-type attack to halve the damage."
    },
    [189] = {
        name = "Baie Pomroz",
        description = "Consumed when struck by a super-effective Fighting-type attack to halve the damage."
    },
    [190] = {
        name = "Baie Kébia",
        description = "Consumed when struck by a super-effective Poison-type attack to halve the damage."
    },
    [191] = {
        name = "Baie Jouca",
        description = "Consumed when struck by a super-effective Ground-type attack to halve the damage."
    },
    [192] = {
        name = "Baie Cobaba",
        description = "Consumed when struck by a super-effective Flying-type attack to halve the damage."
    },
    [193] = {
        name = "Baie Yapap",
        description = "Consumed when struck by a super-effective Psychic-type attack to halve the damage."
    },
    [194] = {
        name = "Baie Panga",
        description = "Consumed when struck by a super-effective Bug-type attack to halve the damage."
    },
    [195] = {
        name = "Baie Charti",
        description = "Consumed when struck by a super-effective Rock-type attack to halve the damage."
    },
    [196] = {
        name = "Baie Sédra",
        description = "Consumed when struck by a super-effective Ghost-type attack to halve the damage."
    },
    [197] = {
        name = "Baie Fraigo",
        description = "Consumed when struck by a super-effective Dragon-type attack to halve the damage."
    },
    [198] = {
        name = "Baie Lampou",
        description = "Consumed when struck by a super-effective Dark-type attack to halve the damage."
    },
    [199] = {
        name = "Baie Babiri",
        description = "Consumed when struck by a super-effective Steel-type attack to halve the damage."
    },
    [200] = {
        name = "Baie Zalis",
        description = "Consumed when struck by a Normal-type attack to halve the damage."
    },
    [201] = {
        name = "Baie Lichii",
        description = "Consumed at 1/4 max HP to boost Attack."
    },
    [202] = {
        name = "Baie Lingan",
        description = "Consumed at 1/4 max HP to boost Defense."
    },
    [203] = {
        name = "Baie Sailak",
        description = "Consumed at 1/4 max HP to boost Speed."
    },
    [204] = {
        name = "Baie Pitaye",
        description = "Consumed at 1/4 max HP to boost Special Attack."
    },
    [205] = {
        name = "Baie Abriko",
        description = "Consumed at 1/4 max HP to boost Special Defense."
    },
    [206] = {
        name = "Baie Lansat",
        description = "Consumed at 1/4 max HP to boost critical hit ratio by two stages."
    },
    [207] = {
        name = "Baie Frista",
        description = "Consumed at 1/4 max HP to boost a random stat by two stages."
    },
    [208] = {
        name = "Baie Enigma",
        description = "Consumed when struck by a super-effective attack to restore 1/4 max HP."
    },
    [209] = {
        name = "Baie Micle",
        description = "Consumed at 1/4 max HP to give the next move perfect accuracy."
    },
    [210] = {
        name = "Baie Chérim",
        description = "Consumed at 1/4 max HP when using a move to go first."
    },
    [211] = {
        name = "Baie Jaboca",
        description = "Consumed to deal 1/8 attacker's max HP when holder is struck by a physical attack."
    },
    [212] = {
        name = "Baie Pommo",
        description = "Consumed to deal 1/8 attacker's max HP when holder is struck by a special attack."
    },
    [213] = {
        name = "Poudre Claire",
        description = "Increases the holder's evasion by 1/9 (11 1/9%)."
    },
    [214] = {
        name = "Herbe Blanche",
        description = "Resets all lowered stats to normal at end of turn. Consumed after use."
    },
    [215] = {
        name = "Bracelet Macho",
        description = "Holder gains double effort values from battles, but has halved Speed in battle."
    },
    [216] = {
        name = "Exp Share",
        description = "Half the experience from a battle is split between Pok" .. Chars.accentedE .. "mon holding this item."
    },
    [217] = {
        name = "Vive Griffe",
        description = "Holder has a 3/16 (18.75%) chance to move first."
    },
    [218] = {
        name = "Grelot Zen",
        description = "Doubles the happiness earned by the holder."
    },
    [219] = {
        name = "Herbe Mental",
        description = "Consumed to cure infatuation. Gen V: Also removes Taunt, Encore, Torment, Disable, and Cursed Body."
    },
    [220] = {
        name = "Bandeau Choix",
        description = "Increases Attack by 50%, but restricts the holder to only one move."
    },
    [221] = {
        name = "Roche Royale",
        description = "Damaging moves gain a 10% chance to make their target flinch. Traded on a Poliwhirl: Holder evolves into Politoed. Traded on a Slowpoke: Holder evolves into Slowking."
    },
    [222] = {
        name = "Poudre Arg.",
        description = "Bug-Type moves from holder do 20% more damage."
    },
    [223] = {
        name = "Pièce Rune",
        description = "Doubles the money earned from a battle. Does not stack with Encens Veine."
    },
    [224] = {
        name = "Rune Purifiante",
        description = "Prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [225] = {
        name = "Rosée Âme",
        description = "Raises Latias and Latios's Special Attack and Special Defense by 50%."
    },
    [226] = {
        name = "DeepSeaTooth",
        displayName = "Deep Sea Tooth",
        description = "Doubles Clamperl's Special Attack. Traded on a Clamperl: Holder evolves into Huntail."
    },
    [227] = {
        name = "DeepSeaScale",
        displayName = "Deep Sea Scale",
        description = "Doubles Clamperl's Special Defense. Traded on a Clamperl: Holder evolves into Gorebyss."
    },
    [228] = {
        name = "Boule Fumée",
        description = "Allows the Holder to escape from any wild battle."
    },
    [229] = {
        name = "Pierre Stase",
        description = "Prevents level-based evolution from occuring."
    },
    [230] = {
        name = "Bandeau",
        description = "Holder has 10% chance to survive attacks or self-inflicted damage at 1 HP."
    },
    [231] = {
        name = "oeuf Chance",
        description = "Increases EXP earned in battle by 50%."
    },
    [232] = {
        name = "Lentilscope",
        description = "Raises the holder's critical hit ratio by one stage."
    },
    [233] = {
        name = "Peau Métal",
        description = "Steel-Type moves from holder do 20% more damage."
    },
    [234] = {
        name = "Restes",
        description = "Restores 1/16 (6.25%) holder's max HP at the end of each turn."
    },
    [235] = {
        name = "Écaille Draco",
        description = "Traded on a Seadra: Holder evolves into Kingdra."
    },
    [236] = {
        name = "Balle Lumière",
        description = "Doubles Pikachu's Attack and Special Attack. Breed on Pikachu or Raichu: Pichu Egg will have Volt Tackle."
    },
    [237] = {
        name = "Sable Doux",
        description = "Ground-Type moves from holder do 20% more damage."
    },
    [238] = {
        name = "Pierre Dure",
        description = "Rock-Type moves from holder do 20% more damage."
    },
    [239] = {
        name = "Graine Miracle",
        description = "Grass-Type moves from holder do 20% more damage."
    },
    [240] = {
        name = "Lunettes Noires",
        description = "Dark-Type moves from holder do 20% more damage."
    },
    [241] = {
        name = "Black Belt",
        description = "Fighting-Type moves from holder do 20% more damage."
    },
    [242] = {
        name = "Aimant",
        description = "Electric-Type moves from holder do 20% more damage."
    },
    [243] = {
        name = "Eau Mystique",
        description = "Water-Type moves from holder do 20% more damage."
    },
    [244] = {
        name = "Bec Pointu",
        description = "Flying-Type moves from holder do 20% more damage."
    },
    [245] = {
        name = "Pic Venin",
        description = "Poison-Type moves from holder do 20% more damage."
    },
    [246] = {
        name = "Never Melt-ice",
        description = "Ice-Type moves from holder do 20% more damage."
    },
    [247] = {
        name = "Rune Sort",
        description = "Ghost-Type moves from holder do 20% more damage."
    },
    [248] = {
        name = "Cuillère Tordue",
        description = "Psychic-Type moves from holder do 20% more damage."
    },
    [249] = {
        name = "Charbon",
        description = "Fire-Type moves from holder do 20% more damage."
    },
    [250] = {
        name = "Croc Dragon",
        description = "Dragon-Type moves from holder do 20% more damage."
    },
    [251] = {
        name = "Mouchoir Soie",
        description = "Normal-Type moves from holder do 20% more damage."
    },
    [252] = {
        name = "Up Grade",
        description = "Traded on a Porygon: Holder evolves into Porygon2."
    },
    [253] = {
        name = "Grelot Coque",
        description = "Holder receives 1/8 of the damage it deals when attacking."
    },
    [254] = {
        name = "Encens Mer",
        description = "Water-Type moves from holder do 20% more damage. Breeding: Marill or Azumarill beget an Azurill Egg."
    },
    [255] = {
        name = "Encens Doux",
        description = "Holder's evasion is increased by 5%. Breeding: Wobbuffet begets a Wynaut Egg."
    },
    [256] = {
        name = "Poing Chance",
        description = "Raises Chansey's critical hit ratio by two stages."
    },
    [257] = {
        name = "Poudre Metal",
        description = "Raises Ditto's Defense and Special Defense by 50%. The boost is lost after transforming."
    },
    [258] = {
        name = "Masse Os",
        description = "Doubles Cubone or Marowak's Attack."
    },
    [259] = {
        name = "Poireau",
        description = "Raises Farfetch'd's critical hit ratio by two stages."
    },
    [260] = {
        name = "Foulard Rouge",
        description = "Raises the holder's Coolness while in a contest."
    },
    [261] = {
        name = "Foulard Bleu",
        description = "Raises the holder's Beauty while in a contest."
    },
    [262] = {
        name = "Foulard Rose",
        description = "Raises the holder's Cuteness while in a contest."
    },
    [263] = {
        name = "Foulard Vert",
        description = "Raises the holder's Smartness while in a contest."
    },
    [264] = {
        name = "Foulard Jaune",
        description = "Raises the holder's Toughness while in a contest."
    },
    [265] = {
        name = "Loupe",
        description = "Provides a 1/10 (10%) boost in accuracy to the holder."
    },
    [266] = {
        name = "Band. Muscle",
        description = "Boosts the damage of physical moves used by the holder by 10%."
    },
    [267] = {
        name = "Lunettes Sages",
        description = "Boosts the damage of special moves used by the holder by 1/10 (10%)."
    },
    [268] = {
        name = "Ceinture Pro",
        description = "Holder's Super Effective moves do 20% extra damage."
    },
    [269] = {
        name = "Lumargile",
        description = "Light Screen and Reflect used by the holder last 8 rounds instead of 5."
    },
    [270] = {
        name = "Orbe Vie",
        description = "Holder's moves inflict 30% extra damage, but cost 10% max HP."
    },
    [271] = {
        name = "Herbe Pouvoir",
        description = "Both turns of a two-turn charge move happen at once. Consumed upon use."
    },
    [272] = {
        name = "Orbe Toxique",
        description = "Inflicts Toxic on the holder at the end of the turn. Activates after Poison damage would occur."
    },
    [273] = {
        name = "Orbe Flamme",
        description = "Inflicts Burn on the holder at the end of the turn. Activates after Burn damage would occur."
    },
    [274] = {
        name = "Poudre Vite",
        description = "Doubles Ditto's Speed when held. The boost is lost after transforming."
    },
    [275] = {
        name = "Ceint. Force",
        description = "Holder survives any single-hit attack at 1 HP if at max HP, then the item is consumed."
    },
    [276] = {
        name = "Lentil. Zoom",
        description = "Provides a 1/5 (20%) boost in accuracy if the holder moves after the target."
    },
    [277] = {
        name = "Metronome",
        description = "Consectutive uses of the same attack have a cumulative damage boost of 10%. Maximum 100% boost."
    },
    [278] = {
        name = "Fer Ball",
        description = "Holder's Speed is halved. Negates all Ground-type immunities, and makes Flying-types take neutral damage from Ground-type moves. Arena Trap. Spikes, and Toxic Spikes affect the holder."
    },
    [279] = {
        name = "Ralentiqueue",
        description = "Holder moves last in its priority bracket."
    },
    [280] = {
        name = "Noeud Destin",
        description = "Infatuates opposing Pok" .. Chars.accentedE .. "mon when holder is inflicted with infatuation."
    },
    [281] = {
        name = "Boue Noire",
        description = "Poison-type holder recovers 1/16 (6.25%) max HP each turn. Non-Poison-Types take 1/8 (12.5%) max HP damage."
    },
    [282] = {
        name = "Roche Glace",
        description = "Hail by the holder lasts 8 rounds instead of 5."
    },
    [283] = {
        name = "Roche Lisse",
        description = "Sandstorm by the holder lasts 8 rounds instead of 5."
    },
    [284] = {
        name = "Roche Chaude",
        description = "Sunny Day by the holder lasts 8 rounds instead of 5."
    },
    [285] = {
        name = "Roche Humide",
        description = "Rain Dance by the holder lasts 8 rounds instead of 5."
    },
    [286] = {
        name = "Accro Griffe",
        description = "Holder's multi-turn trapping moves last 5 turns."
    },
    [287] = {
        name = "Mouchoir Choix",
        description = "Increases Speed by 50%, but restricts the holder to only one move."
    },
    [288] = {
        name = "Poireauy Barb",
        description = "Holder takes 1/8 (12.5%) its max HP at the end of each turn. When the holder is hit by a contact move, the attacking Pokmon takes 1/8 its max HP in damage and receive the item if not holding one."
    },
    [289] = {
        name = "Poignet Pouvoir",
        description = "Holder gains 4 Attack effort values, but has halved Speed in battle."
    },
    [290] = {
        name = "Ceinture Pouvoir",
        description = "Holder gains 4 Defense effort values, but has halved Speed in battle."
    },
    [291] = {
        name = "Lentille Pouvoir",
        description = "Holder gains 4 Special Attack effort values, but has halved Speed in battle."
    },
    [292] = {
        name = "Bandeau Pouvoir",
        description = "Holder gains 4 Special Defense effort values, but has halved Speed in battle."
    },
    [293] = {
        name = "Chaîne Pouvoir",
        description = "Holder gains 4 Speed effort values, but has halved Speed in battle."
    },
    [294] = {
        name = "Poids Pouvoir",
        description = "Holder gains 4 HP effort values, but has halved Speed in battle."
    },
    [295] = {
        name = "Carapace Mue",
        description = "Holder can bypass all trapping effects and switch out. Multi-turn moves still cannot be switched out of."
    },
    [296] = {
        name = "Grosse Racine",
        description = "Increases HP recovered from draining moves, Ingrain, and Aqua Ring by 3/10 (30%)."
    },
    [297] = {
        name = "Lunettes Choix",
        description = "Increases Special Attack by 50%, but restricts the holder to only one move."
    },
    [298] = {
        name = "Plaque Flamme",
        description = "Fire-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Fire."
    },
    [299] = {
        name = "Plaque Hydro",
        description = "Water-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Water."
    },
    [300] = {
        name = "Plaque Volt",
        description = "Electric-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Electric."
    },
    [301] = {
        name = "Plaque Herbe",
        description = "Grass-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Grass."
    },
    [302] = {
        name = "Plaque Glace",
        description = "Ice-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ice."
    },
    [303] = {
        name = "Plaque Poing",
        description = "Fighting-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Fighting."
    },
    [304] = {
        name = "Plaque Toxicité",
        description = "Posion-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Posion."
    },
    [305] = {
        name = "Plaque Terre",
        description = "Ground-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ground."
    },
    [306] = {
        name = "Plaque Ciel",
        description = "Flying-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Flying."
    },
    [307] = {
        name = "Plaque Esprit",
        description = "Psychic-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Psychic."
    },
    [308] = {
        name = "Plaque Insecte",
        description = "Bug-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Bug."
    },
    [309] = {
        name = "Plaque Roc",
        description = "Rock-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Rock."
    },
    [310] = {
        name = "Plaque Fantô",
        description = "Ghost-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ghost."
    },
    [311] = {
        name = "Plaque Draco",
        description = "Dragon-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Dragon."
    },
    [312] = {
        name = "Plaque Ombre",
        description = "Dark-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Dark."
    },
    [313] = {
        name = "Fer Plate",
        description = "Steel-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Steel."
    },
    [314] = {
        name = "Encens Bizarre",
        description = "Psychic-Type moves from holder do 20% more damage. Breeding: Mr. Mime begets a Mime Jr. Egg."
    },
    [315] = {
        name = "Encens Roc",
        description = "Rock-Type moves from holder do 20% more damage. Breeding: Sudowoodo begets a Bonsly Egg."
    },
    [316] = {
        name = "Encens Plein",
        description = "Holder moves last in its priority bracket. Breeding: Snorlax begets a Munchlax Egg."
    },
    [317] = {
        name = "Encens Vague",
        description = "Water-Type moves from holder do 20% more damage. Breeding: Mantine begets a Mantyke Egg."
    },
    [318] = {
        name = "Encens Fleur",
        description = "Grass-Type moves from holder do 20% more damage. Breeding: Roselia or Roserade beget a Budew Egg."
    },
    [319] = {
        name = "Encens Veine",
        description = "Doubles the money earned from a battle. Does not stack with Pièce Rune. Breeding: Chansey and Blissey beget a Happiny Egg."
    },
    [320] = {
        name = "Encens Pur",
        description = "Prevents wild encounters of level lower than your party's lead Pokemon. Breeding: Chimecho begets a Chingling Egg."
    },
    [321] = {
        name = "Protecteur",
        description = "Traded on a Rhydon: Holder evolves into Rhyperior."
    },
    [322] = {
        name = "Électriseur",
        description = "Traded on an Electabuzz: Holder evolves into Electivire."
    },
    [323] = {
        name = "Magmariseur",
        description = "Traded on a Magmar: Holder evolves into Magmortar."
    },
    [324] = {
        name = "CD Douteux",
        description = "Traded on a Porygon2: Holder evolves into Porygon-Z."
    },
    [325] = {
        name = "Tissu Fauche",
        description = "Traded on a Dusclops: Holder evolves into Dusknoir."
    },
    [326] = {
        name = "Griffe Rasoir",
        description = "Raises the holder's critical hit ratio by one stage. Held by a Sneasel while levelling up at night: Holder evolves into Weavile."
    },
    [327] = {
        name = "Croc Rasoir",
        description = "Damaging moves gain a 10% chance to make their target flinch. Held by a Gligar while levelling up: Holder evolves into Gliscor."
    },
    [328] = {
        name = "TM01",
        description = "Teaches a move to a compatible Pokemon."
    },
    [329] = {
        name = "TM02",
        description = "Teaches a move to a compatible Pokemon."
    },
    [330] = {
        name = "TM03",
        description = "Teaches a move to a compatible Pokemon."
    },
    [331] = {
        name = "TM04",
        description = "Teaches a move to a compatible Pokemon."
    },
    [332] = {
        name = "TM05",
        description = "Teaches a move to a compatible Pokemon."
    },
    [333] = {
        name = "TM06",
        description = "Teaches a move to a compatible Pokemon."
    },
    [334] = {
        name = "TM07",
        description = "Teaches a move to a compatible Pokemon."
    },
    [335] = {
        name = "TM08",
        description = "Teaches a move to a compatible Pokemon."
    },
    [336] = {
        name = "TM09",
        description = "Teaches a move to a compatible Pokemon."
    },
    [337] = {
        name = "TM10",
        description = "Teaches a move to a compatible Pokemon."
    },
    [338] = {
        name = "TM11",
        description = "Teaches a move to a compatible Pokemon."
    },
    [339] = {
        name = "TM12",
        description = "Teaches a move to a compatible Pokemon."
    },
    [340] = {
        name = "TM13",
        description = "Teaches a move to a compatible Pokemon."
    },
    [341] = {
        name = "TM14",
        description = "Teaches a move to a compatible Pokemon."
    },
    [342] = {
        name = "TM15",
        description = "Teaches a move to a compatible Pokemon."
    },
    [343] = {
        name = "TM16",
        description = "Teaches a move to a compatible Pokemon."
    },
    [344] = {
        name = "TM17",
        description = "Teaches a move to a compatible Pokemon."
    },
    [345] = {
        name = "TM18",
        description = "Teaches a move to a compatible Pokemon."
    },
    [346] = {
        name = "TM19",
        description = "Teaches a move to a compatible Pokemon."
    },
    [347] = {
        name = "TM20",
        description = "Teaches a move to a compatible Pokemon."
    },
    [348] = {
        name = "TM21",
        description = "Teaches a move to a compatible Pokemon."
    },
    [349] = {
        name = "TM22",
        description = "Teaches a move to a compatible Pokemon."
    },
    [350] = {
        name = "TM23",
        description = "Teaches a move to a compatible Pokemon."
    },
    [351] = {
        name = "TM24",
        description = "Teaches a move to a compatible Pokemon."
    },
    [352] = {
        name = "TM25",
        description = "Teaches a move to a compatible Pokemon."
    },
    [353] = {
        name = "TM26",
        description = "Teaches a move to a compatible Pokemon."
    },
    [354] = {
        name = "TM27",
        description = "Teaches a move to a compatible Pokemon."
    },
    [355] = {
        name = "TM28",
        description = "Teaches a move to a compatible Pokemon."
    },
    [356] = {
        name = "TM29",
        description = "Teaches a move to a compatible Pokemon."
    },
    [357] = {
        name = "TM30",
        description = "Teaches a move to a compatible Pokemon."
    },
    [358] = {
        name = "TM31",
        description = "Teaches a move to a compatible Pokemon."
    },
    [359] = {
        name = "TM32",
        description = "Teaches a move to a compatible Pokemon."
    },
    [360] = {
        name = "TM33",
        description = "Teaches a move to a compatible Pokemon."
    },
    [361] = {
        name = "TM34",
        description = "Teaches a move to a compatible Pokemon."
    },
    [362] = {
        name = "TM35",
        description = "Teaches a move to a compatible Pokemon."
    },
    [363] = {
        name = "TM36",
        description = "Teaches a move to a compatible Pokemon."
    },
    [364] = {
        name = "TM37",
        description = "Teaches a move to a compatible Pokemon."
    },
    [365] = {
        name = "TM38",
        description = "Teaches a move to a compatible Pokemon."
    },
    [366] = {
        name = "TM39",
        description = "Teaches a move to a compatible Pokemon."
    },
    [367] = {
        name = "TM40",
        description = "Teaches a move to a compatible Pokemon."
    },
    [368] = {
        name = "TM41",
        description = "Teaches a move to a compatible Pokemon."
    },
    [369] = {
        name = "TM42",
        description = "Teaches a move to a compatible Pokemon."
    },
    [370] = {
        name = "TM43",
        description = "Teaches a move to a compatible Pokemon."
    },
    [371] = {
        name = "TM44",
        description = "Teaches a move to a compatible Pokemon."
    },
    [372] = {
        name = "TM45",
        description = "Teaches a move to a compatible Pokemon."
    },
    [373] = {
        name = "TM46",
        description = "Teaches a move to a compatible Pokemon."
    },
    [374] = {
        name = "TM47",
        description = "Teaches a move to a compatible Pokemon."
    },
    [375] = {
        name = "TM48",
        description = "Teaches a move to a compatible Pokemon."
    },
    [376] = {
        name = "TM49",
        description = "Teaches a move to a compatible Pokemon."
    },
    [377] = {
        name = "TM50",
        description = "Teaches a move to a compatible Pokemon."
    },
    [378] = {
        name = "TM51",
        description = "Teaches a move to a compatible Pokemon."
    },
    [379] = {
        name = "TM52",
        description = "Teaches a move to a compatible Pokemon."
    },
    [380] = {
        name = "TM53",
        description = "Teaches a move to a compatible Pokemon."
    },
    [381] = {
        name = "TM54",
        description = "Teaches a move to a compatible Pokemon."
    },
    [382] = {
        name = "TM55",
        description = "Teaches a move to a compatible Pokemon."
    },
    [383] = {
        name = "TM56",
        description = "Teaches a move to a compatible Pokemon."
    },
    [384] = {
        name = "TM57",
        description = "Teaches a move to a compatible Pokemon."
    },
    [385] = {
        name = "TM58",
        description = "Teaches a move to a compatible Pokemon."
    },
    [386] = {
        name = "TM59",
        description = "Teaches a move to a compatible Pokemon."
    },
    [387] = {
        name = "TM60",
        description = "Teaches a move to a compatible Pokemon."
    },
    [388] = {
        name = "TM61",
        description = "Teaches a move to a compatible Pokemon."
    },
    [389] = {
        name = "TM62",
        description = "Teaches a move to a compatible Pokemon."
    },
    [390] = {
        name = "TM63",
        description = "Teaches a move to a compatible Pokemon."
    },
    [391] = {
        name = "TM64",
        description = "Teaches a move to a compatible Pokemon."
    },
    [392] = {
        name = "TM65",
        description = "Teaches a move to a compatible Pokemon."
    },
    [393] = {
        name = "TM66",
        description = "Teaches a move to a compatible Pokemon."
    },
    [394] = {
        name = "TM67",
        description = "Teaches a move to a compatible Pokemon."
    },
    [395] = {
        name = "TM68",
        description = "Teaches a move to a compatible Pokemon."
    },
    [396] = {
        name = "TM69",
        description = "Teaches a move to a compatible Pokemon."
    },
    [397] = {
        name = "TM70",
        description = "Teaches a move to a compatible Pokemon."
    },
    [398] = {
        name = "TM71",
        description = "Teaches a move to a compatible Pokemon."
    },
    [399] = {
        name = "TM72",
        description = "Teaches a move to a compatible Pokemon."
    },
    [400] = {
        name = "TM73",
        description = "Teaches a move to a compatible Pokemon."
    },
    [401] = {
        name = "TM74",
        description = "Teaches a move to a compatible Pokemon."
    },
    [402] = {
        name = "TM75",
        description = "Teaches a move to a compatible Pokemon."
    },
    [403] = {
        name = "TM76",
        description = "Teaches a move to a compatible Pokemon."
    },
    [404] = {
        name = "TM77",
        description = "Teaches a move to a compatible Pokemon."
    },
    [405] = {
        name = "TM78",
        description = "Teaches a move to a compatible Pokemon."
    },
    [406] = {
        name = "TM79",
        description = "Teaches a move to a compatible Pokemon."
    },
    [407] = {
        name = "TM80",
        description = "Teaches a move to a compatible Pokemon."
    },
    [408] = {
        name = "TM81",
        description = "Teaches a move to a compatible Pokemon."
    },
    [409] = {
        name = "TM82",
        description = "Teaches a move to a compatible Pokemon."
    },
    [410] = {
        name = "TM83",
        description = "Teaches a move to a compatible Pokemon."
    },
    [411] = {
        name = "TM84",
        description = "Teaches a move to a compatible Pokemon."
    },
    [412] = {
        name = "TM85",
        description = "Teaches a move to a compatible Pokemon."
    },
    [413] = {
        name = "TM86",
        description = "Teaches a move to a compatible Pokemon."
    },
    [414] = {
        name = "TM87",
        description = "Teaches a move to a compatible Pokemon."
    },
    [415] = {
        name = "TM88",
        description = "Teaches a move to a compatible Pokemon."
    },
    [416] = {
        name = "TM89",
        description = "Teaches a move to a compatible Pokemon."
    },
    [417] = {
        name = "TM90",
        description = "Teaches a move to a compatible Pokemon."
    },
    [418] = {
        name = "TM91",
        description = "Teaches a move to a compatible Pokemon."
    },
    [419] = {
        name = "TM92",
        description = "Teaches a move to a compatible Pokemon."
    },
    [420] = {
        name = "HM01",
        description = "Teaches a move to a compatible Pokemon."
    },
    [421] = {
        name = "HM02",
        description = "Teaches a move to a compatible Pokemon."
    },
    [422] = {
        name = "HM03",
        description = "Teaches a move to a compatible Pokemon."
    },
    [423] = {
        name = "HM04",
        description = "Teaches a move to a compatible Pokemon."
    },
    [424] = {
        name = "HM05",
        description = "Teaches a move to a compatible Pokemon."
    },
    [425] = {
        name = "HM06",
        description = "Teaches a move to a compatible Pokemon."
    },
    [426] = {
        name = "HM07",
        description = "Teaches a move to a compatible Pokemon."
    },
    [427] = {
        name = "HM08",
        description = "Teaches a move to a compatible Pokemon."
    },
    [428] = {
        name = "Explorer Kit",
        description = "Allows visiting the Underground."
    },
    [429] = {
        name = "Loot Sack",
        description = "Carries coal mine loot."
    },
    [430] = {
        name = "Rule Book",
        description = "List of battle types and their rules."
    },
    [431] = {
        name = "Poké Radar",
        description = "Use to track down rare or shiny Pokemon. 50 steps to recharge."
    },
    [432] = {
        name = "Carte à Points",
        description = "Keeps count of Battle Points earned."
    },
    [433] = {
        name = "Notes d'Aventure",
        description = "Records prior significant activities the player took."
    },
    [434] = {
        name = "Boîte à Sceaux",
        description = "Stores Seals that can be applied to Poké Ball capsules."
    },
    [435] = {
        name = "Coffret Mode",
        description = "Holds Pokémon Accessories for use in Contests."
    },
    [436] = {
        name = "Seal Bag",
        description = "Holds ten Seals for Poké Balls."
    },
    [437] = {
        name = "Pal Pad",
        description = "Use to record Friend Codes and check your own."
    },
    [438] = {
        name = "Clé Parc Éolien",
        description = "Grants access to Valley Windworks."
    },
    [439] = {
        name = "Vieux Grigri",
        description = "Trade to Cynthia's grandmother in Celestic Town for HM04 (Surf)."
    },
    [440] = {
        name = "Galactic Key",
        description = "Grants access to Galactic HQ in Veilstone City."
    },
    [441] = {
        name = "Chaîne Rouge",
        description = "Used to bind Palkia and Dialga."
    },
    [442] = {
        name = "Carte",
        description = "Use to see the overworld map."
    },
    [443] = {
        name = "Cherch'Combat",
        description = "Allows rebattling of on-screen trainers. 100 steps to recharge."
    },
    [444] = {
        name = "Boite Jetons",
        description = "Holds coins for the Game Corner."
    },
    [445] = {
        name = "Canne à Pêche Ultime",
        description = "Used to catch Pokémon in bodies of water."
    },
    [446] = {
        name = "Super Canne",
        description = "Used to catch Pokémon in bodies of water."
    },
    [447] = {
        name = "Méga Canne",
        description = "Used to catch Pokémon in bodies of water."
    },
    [448] = {
        name = "Kwakarrosoir",
        description = "Used to water berries."
    },
    [449] = {
        name = "Boîte à Poffins",
        description = "Holds Poffins."
    },
    [450] = {
        name = "Bicyclette",
        description = "Use for fast transit."
    },
    [451] = {
        name = "Clé de Chambre",
        description = "Opens a locked building in the Lakeside Resort."
    },
    [452] = {
        name = "Lettre Chen",
        description = "Allows access to Seabreak path, Flower Paradise, and Shaymin."
    },
    [453] = {
        name = "Plume Lune",
        description = "Cures sailor's son of nightmares in Canalave City."
    },
    [454] = {
        name = "Carte Membre",
        description = "Allows access to Newmoon Island and Darkrai."
    },
    [455] = {
        name = "Flûte Azur",
        description = "Allows entry into the Hall of Origin. Unreleased."
    },
    [456] = {
        name = "Ss Ticket",
        description = "Ticket for a ship. (RSE: S.S. Tidal LF: S.S. Anne HG: S.S. Aqua)"
    },
    [457] = {
        name = "Passeeconcour",
        description = "Allows participation in Pokémon Contests."
    },
    [458] = {
        name = "Pierre Magma",
        description = "Magma is sealed inside."
    },
    [459] = {
        name = "Colis",
        description = "Given to the trainer's rival in Jubilife City. Contains Cartes."
    },
    [460] = {
        name = "Bon 1",
        description = "The first of three tickets used to obtain a Poketch."
    },
    [461] = {
        name = "Bon 2",
        description = "The second of three tickets used to obtain a Poketch."
    },
    [462] = {
        name = "Bon 3",
        description = "The last of three tickets used to obtain a Poketch."
    },
    [463] = {
        name = "Storage Key",
        description = "Grants access to the Team Galactic warehouse in Veilstone City."
    },
    [464] = {
        name = "Remède Secret",
        description = "Used to heal the Ampharos at the top of Olivine Lighthouse."
    },
    [112] = {
        name = "Orbe Platiné",
        description = "Boosts the damage from Giratina's Dragon-type and Ghost-type moves by 20%, and transforms it into Origin Forme."
    },
    [465] = {
        name = "Vs Recorder",
        description = "Records wireless, Wi-Fi, or Battle Frontier battles, and stores points."
    },
    [466] = {
        name = "Gracidée",
        description = "Changes an unfrozen Shaymin to Sky Forme in the day."
    },
    [467] = {
        name = "Secret Key",
        description = "Gen IV: The key to Rotom's appliance room. "
    },
    [468] = {
        name = "Apricorn Box",
        description = "Holds Apricorns."
    },
    [470] = {
        name = "Plante Baies",
        description = "Allows portable berry growing."
    },
    [477] = {
        name = "Carapuce à ",
        description = "Use on Sudowoodo blocking the path on Route 36. Also waters berries."
    },
    [494] = {
        name = "Appât Ball",
        description = "3x effectiveness while fishing. Made from Blu Apricorn."
    },
    [493] = {
        name = "Niveau Ball",
        description = "Success rate based off of fraction target Pokmon is of user's Pokemon. Made from Noigrume Rouge ."
    },
    [498] = {
        name = "Lune Ball",
        description = "4x effectiveness on familes of Pokmon with a Moon Stone evolution. Made from Ylw Apricorn."
    },
    [495] = {
        name = "Masse Ball",
        description = "Has flat bonus or penalty to catch rate depending on weight class of target. Made from Blk Apricorn."
    },
    [492] = {
        name = "Speed Ball",
        description = "4x effectiveness on Pokmon with 100 or greater base speed. Made from Wht Apricorn."
    },
    [497] = {
        name = "Copain Ball",
        description = "Caught Pokémon start with 200 happiness. Made from Grn Apricorn."
    },
    [496] = {
        name = "Love Ball",
        description = "8x effectiveness on opposite sex, same species targets of the Active Pokemon. Made from Pnk Apricorn."
    },
    [500] = {
        name = "Parc Ball",
        description = "Catches Pokémon in the Pal Park every time."
    },
    [499] = {
        name = "Parc Ball",
        description = "Tries to catch a Pok" .. Chars.accentedE .. "mon in the Bug-Catching contest in National Park. "
    },
    [485] = {
        name = "Noigrume Rouge ",
        description = "Used to make a Niveau Ball."
    },
    [487] = {
        name = "Noigrume Bleu ",
        description = "Used to make a Appât Ball."
    },
    [486] = {
        name = "Noigrume Jaune ",
        description = "Used to make a Lune Ball."
    },
    [488] = {
        name = "Noigrume Vert ",
        description = "Used to make a Copain Ball."
    },
    [489] = {
        name = "Noigrume Rose",
        description = "Used to make a Love Ball."
    },
    [490] = {
        name = "Noigrume Blanc",
        description = "Used to make a Speed Ball."
    },
    [491] = {
        name = "Noigrume Noir",
        description = "Used to make a Masse Ball."
    },
    [471] = {
        name = "Cherch'Objet",
        description = "Use to find hidden items on the field. AKA Itemfinder."
    },
    [504] = {
        name = "Bonbon Rage",
        description = "Traded for TM64."
    },
    [534] = {
        name = "Gemme Rouge",
        description = "Summons Groudon to the Embedded Tower."
    },
    [535] = {
        name = "Gemme Bleue",
        description = "Summons Kyogre to the Embedded Tower."
    },
    [532] = {
        name = "Orbe Vert",
        description = "Summons Rayquaza to the Embedded Tower."
    },
    [536] = {
        name = "Mystécristal",
        description = "S: Summons Latias H: Summons Latios."
    },
    [469] = {
        name = "Carnet Zarbi",
        description = "Keeps track of Unown types caught."
    },
    [472] = {
        name = "Carte Bleue",
        description = "Keeps track of points from Buena's show."
    },
    [473] = {
        name = "Queueramolos",
        description = "A tasty tail that sells for a high price."
    },
    [474] = {
        name = "Glas Transparent",
        description = "HS: Allows Kimono-girls to summon Ho-oh. C: Summons Suicune to the Tin Tower."
    },
    [475] = {
        name = "Card Key",
        description = "HS: Opens doors in the Radio Tower. "
    },
    [476] = {
        name = "Basement Key",
        description = "HS: Key to the tunnel under Goldenrod City. "
    },
    [478] = {
        name = "Écaille Rouge",
        description = "Trade to Mr. Pokémon for an Exp. Share."
    },
    [479] = {
        name = "Objet perdu",
        description = "A Poké Poupée lost by the Copycat who lives in Saffron City. Trade for a Passe."
    },
    [480] = {
        name = "Passe",
        description = "Grants access to ride the Aimant Train between Goldenrod City and Saffron City."
    },
    [481] = {
        name = "Partie Mach.",
        description = "Must be replaced in the Power Plant to power the Aimant Train."
    },
    [482] = {
        name = "Argent'Aile",
        description = "Summons Lugia to the Whirl Islands."
    },
    [483] = {
        name = "Plume Arc-en-ciel",
        description = "Summons Ho-Oh at the top of the Bell Tower."
    },
    [484] = {
        name = "oeuf Mystère",
        description = "Deliver to Professor Elm."
    },
    [502] = {
        name = "Gb Sounds",
        description = "Use to listen to GameBoy era audio."
    },
    [503] = {
        name = "Glas Tempête",
        description = "Allows Kimono-girls to summon Lugia."
    },
    [505] = {
        name = "Data Card-01",
        description = "Records the number of times the trainer has come in first place overall in the Pokeathlon."
    },
    [506] = {
        name = "Data Card-02",
        description = "Records the number of times the trainer has come in last place overall in the Pokeathlon."
    },
    [507] = {
        name = "Data Card-03",
        description = "Records the number of times the trainer's Pokmon have dashed in the Pokeathlon."
    },
    [508] = {
        name = "Data Card-04",
        description = "Records the number of times the trainer's Pokmon have jumped in the Pokeathlon."
    },
    [509] = {
        name = "Data Card-05",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Hurdle Dash."
    },
    [510] = {
        name = "Data Card-06",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Relay Run."
    },
    [511] = {
        name = "Data Card-07",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Pennant Capture."
    },
    [512] = {
        name = "Data Card-08",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Block Smash."
    },
    [513] = {
        name = "Data Card-09",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Disc Catch."
    },
    [514] = {
        name = "Data Card-10",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Snow Throw."
    },
    [515] = {
        name = "Data Card-11",
        description = "Records the number of points the trainer has earned in the Pokeathlon."
    },
    [516] = {
        name = "Data Card-12",
        description = "Records the number of times the trainer's Pokmon have messed up in the Pokeathlon."
    },
    [517] = {
        name = "Data Card-13",
        description = "Records the number of times the trainer's Pokmon have defeated themselves in the Pokeathlon."
    },
    [518] = {
        name = "Data Card-14",
        description = "Records the number of times the trainer's Pokmon have tackled in the Pokeathlon."
    },
    [519] = {
        name = "Data Card-15",
        description = "Records the number of times the trainer's Pokmon have fallen in the Pokeathlon."
    },
    [520] = {
        name = "Data Card-16",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Ring Drop."
    },
    [521] = {
        name = "Data Card-17",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Lamp Jump."
    },
    [522] = {
        name = "Data Card-18",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Circle Push."
    },
    [523] = {
        name = "Data Card-19",
        description = "Records the number of times the trainer has come in first place overall in the Pokeathlon over wirelss."
    },
    [524] = {
        name = "Data Card-20",
        description = "Records the number of times the trainer has come in last place overall in the Pokeathlon over wireless."
    },
    [525] = {
        name = "Data Card-21",
        description = "Records the number of times the trainer has come in first across all Pokeathlon events."
    },
    [526] = {
        name = "Data Card-22",
        description = "Records the number of times the trainer has come in last across all Pokeathlon events."
    },
    [527] = {
        name = "Data Card-23",
        description = "Records the number of times the trainer has switched Pokmon in the Pokeathlon."
    },
    [528] = {
        name = "Data Card-24",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Goal Roll."
    },
    [529] = {
        name = "Data Card-25",
        description = "Records the number of times the trainer's Pokmon received prizes in the Pokeathlon."
    },
    [530] = {
        name = "Data Card-26",
        description = "Records the number of times the trainer has instructed Pokmon in the Pokeathlon."
    },
    [531] = {
        name = "Data Card-27",
        description = "Records the total time spent in the Pokeathlon."
    },
    [533] = {
        name = "Poké Écrin",
        description = "Contains TM95 (Snarl)."
    },
    [501] = {
        name = "Photo Album",
        description = "Stores photos from your adventure."
    }
}

ItemData.GEN_5_ITEMS = {
    [0] = {
        name = "---",
        description = ""
    },
    [1] = {
        name = "Master Ball",
        description = "Catches a wild Pokémon every time."
    },
    [2] = {
        name = "Hyper Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 2x."
    },
    [3] = {
        name = "Super Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 1.5x."
    },
    [4] = {
        name = "Poké Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [5] = {
        name = "Safari Ball",
        description = "Tries to catch a wild Pokmon in the Great Marsh or Safari Zone. Success rate is 1.5x."
    },
    [6] = {
        name = "Filet Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3x for water and bug Pokemon."
    },
    [7] = {
        name = "Scuba Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.5x when underwater, fishing, or surfing."
    },
    [8] = {
        name = "Faiblo Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.9x for level 1 Pokemon, and drops steadily to 1x at level 30."
    },
    [9] = {
        name = "Bis Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3x for previously-caught Pokemon."
    },
    [10] = {
        name = "Chrono Ball",
        description = "Tries to catch a wild Pokemon. Success rate increases by 0.1x (Gen V: 0.3x) every turn, to a max of 4x."
    },
    [11] = {
        name = "Luxe Ball",
        description = "Tries to catch a wild Pokemon. Caught Pok" .. Chars.accentedE .. "mon start with 200 happiness."
    },
    [12] = {
        name = "Honor Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [13] = {
        name = "Sombre Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 3.5x at night and in caves."
    },
    [14] = {
        name = "Soin Ball",
        description = "Tries to catch a wild Pokemon. Caught Pokémon are immediately healed."
    },
    [15] = {
        name = "Rapide Ball",
        description = "Tries to catch a wild Pokemon. Success rate is 4x (Gen V: 5x), but only on the first turn."
    },
    [16] = {
        name = "Mémoire Ball",
        description = "Tries to catch a wild Pokemon."
    },
    [17] = {
        name = "Potion",
        description = "Restores 20 HP."
    },
    [18] = {
        name = "Antidote",
        description = "Cures poison."
    },
    [19] = {
        name = "Anti-Brûle",
        description = "Cures a burn."
    },
    [20] = {
        name = "Antigel",
        description = "Cures freezing."
    },
    [21] = {
        name = "Réveil",
        description = "Cures sleep."
    },
    [22] = {
        name = "Anti-Para",
        description = "Cures paralysis."
    },
    [23] = {
        name = "Guérison",
        description = "Restores HP to full and cures any status ailment and confusion."
    },
    [24] = {
        name = "Potion Max",
        description = "Restores HP to full."
    },
    [25] = {
        name = "Hyper Potion",
        description = "Restores 200 HP."
    },
    [26] = {
        name = "Super Potion",
        description = "Restores 50 HP."
    },
    [27] = {
        name = "Total Soin",
        description = "Cures any status ailment and confusion."
    },
    [28] = {
        name = "Rappel",
        description = "Rappels with half HP."
    },
    [29] = {
        name = "Max Rappel",
        description = "Rappels with full HP."
    },
    [30] = {
        name = "Eau Fraîche",
        description = "Restores 50 HP."
    },
    [31] = {
        name = "Soda Cool",
        description = "Restores 60 HP."
    },
    [32] = {
        name = "Limonade",
        description = "Restores 80 HP."
    },
    [33] = {
        name = "Lait Meumeu",
        description = "Restores 100 HP."
    },
    [34] = {
        name = "Poudrenergie",
        description = "Restores 50 HP, but lowers happiness."
    },
    [35] = {
        name = "Racinenergie",
        description = "Restores 200 HP, but lowers happiness."
    },
    [36] = {
        name = "Poudre Soin",
        description = "Cures any status ailment, but lowers happiness."
    },
    [37] = {
        name = "Herbe Rappel",
        description = "Rappels with full HP, but lowers happiness."
    },
    [38] = {
        name = "Huile",
        description = "Restores 10 PP for one move."
    },
    [39] = {
        name = "Max Huile",
        description = "Restores PP to full for one move."
    },
    [40] = {
        name = "Élixir",
        description = "Restores 10 PP for each move."
    },
    [41] = {
        name = "Max Élixir",
        description = "Restores PP to full for each move."
    },
    [42] = {
        name = "Lava Cookie",
        description = "Cures any status ailment and confusion."
    },
    [43] = {
        name = "Jus de Baie",
        description = "Restores 20 HP."
    },
    [44] = {
        name = "Cendres Sacrées",
        description = "Rappels all fainted Pokémon with full HP."
    },
    [45] = {
        name = "Hp Up",
        description = "Raises HP effort and happiness."
    },
    [46] = {
        name = "Proteinee",
        description = "Raises Attack effort and happiness."
    },
    [47] = {
        name = "Fer",
        description = "Raises Defense effort and happiness."
    },
    [48] = {
        name = "Carbone",
        description = "Raises Speed effort and happiness."
    },
    [49] = {
        name = "Calcium",
        description = "Raises Special Attack effort and happiness."
    },
    [50] = {
        name = "Super Bonbon",
        description = "Causes a level-up and raises happiness."
    },
    [51] = {
        name = "PP Up",
        description = "Raises a move's max PP by 20%."
    },
    [52] = {
        name = "Zinc",
        description = "Raises Special Defense and happiness."
    },
    [53] = {
        name = "PP Max",
        description = "Raises a move's max PP by 60%."
    },
    [54] = {
        name = "Vieux Gâteau",
        description = "Cures any status ailment and confusion."
    },
    [55] = {
        name = "Garde-Stats",
        description = "Prevents stat changes in battle for five turns in battle. Raises happiness."
    },
    [56] = {
        name = "Muscle +",
        description = "Increases the chance of a critical hit in battle. Raises happiness."
    },
    [57] = {
        name = "Attaque +",
        description = "Raises Attack by one stage in battle. Raises happiness."
    },
    [58] = {
        name = "Défense +",
        description = "Raises Defense by one stage in battle. Raises happiness."
    },
    [59] = {
        name = "Vitesse +",
        description = "Raises Speed by one stage in battle. Raises happiness."
    },
    [60] = {
        name = "Précision +",
        description = "Raises accuracy by one stage in battle. Raises happiness."
    },
    [61] = {
        name = "X Sp-atk",
        description = "Raises Special Attack by one stage in battle. Raises happiness."
    },
    [62] = {
        name = "X Sp-def",
        description = "Raises Special Defense by one stage in battle. Raises happiness."
    },
    [63] = {
        name = "Poké Poupée",
        description = "Ends a wild battle."
    },
    [64] = {
        name = "Queue Skitty",
        description = "Ends a wild battle."
    },
    [65] = {
        name = "Flûte Bleue",
        description = "Cures sleep."
    },
    [66] = {
        name = "Flûte Jaune",
        description = "Cures confusion."
    },
    [67] = {
        name = "Flûte Rouge",
        description = "Cures attraction."
    },
    [68] = {
        name = "Flûte Noire",
        description = "Halves the wild Pokémon encounter rate."
    },
    [69] = {
        name = "Flûte Blanche ",
        description = "Doubles the wild Pokémon encounter rate."
    },
    [70] = {
        name = "Sel Tréfonds",
        description = "No effect. "
    },
    [71] = {
        name = "Co. Tréfonds",
        description = "No effect. "
    },
    [72] = {
        name = "Tesson Rouge",
        description = "No effect. Can be traded for items or moves."
    },
    [73] = {
        name = "Tesson Blue",
        description = "No effect. Can be traded for items or moves."
    },
    [74] = {
        name = "Tesson Jaun",
        description = "No effect. Can be traded for items or moves."
    },
    [75] = {
        name = "Tesson Vert",
        description = "No effect. Can be traded for items or moves."
    },
    [76] = {
        name = "Superepousse",
        description = "For 200 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [77] = {
        name = "Repousse Max",
        description = "For 250 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [78] = {
        name = "Corde Sortie",
        description = "Transports user to the outside entrance of a cave."
    },
    [79] = {
        name = "Repousse",
        description = "For 100 steps, prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [80] = {
        name = "Pierresoleil",
        description = "Evolves a Cottonee into Whimsicott, a Gloom into Bellossom, a Petilil into Lilligant, or a Sunkern into Sunflora."
    },
    [81] = {
        name = "Moon Stone",
        description = "Evolves a Clefairy into Clefable, a Jigglypuff into Wigglytuff, a Munna into Musharna, a Nidorina into Nidoqueen, a Nidorino into Nidoking, or a Skitty into Delcatty."
    },
    [82] = {
        name = "Pierre Feu",
        description = "Evolves an Eevee into Flareon, a Growlithe into Arcanine, a Pansear into Simisear, or a Vulpix into Ninetales."
    },
    [83] = {
        name = "Pierre Foudre",
        description = "Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu."
    },
    [84] = {
        name = "Pierre Eau",
        description = "Evolves an Eevee into Vaporeon, a Lombre into Ludicolo, a Panpour into Simipour, a Poliwhirl into Poliwrath, a Shellder into Cloyster, or a Staryu into Starmie."
    },
    [85] = {
        name = "Pierre Plante",
        description = "Evolves an Exeggcute into Exeggutor, a Gloom into Vileplume, a Nuzleaf into Shiftry, a Pansage into Simisage, or a Weepinbell into Victreebel."
    },
    [86] = {
        name = "Petit Champi",
        description = "Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokedollars, or to Hungry Maid for 500 Pokedollars."
    },
    [87] = {
        name = "Gros Champi",
        description = "Fire Red and Leaf Green: Trade for prior Level-up moves. Sell for 2500 Pokedollars, or to Hungry Maid for 5000 Pokedollars."
    },
    [88] = {
        name = "Pearl",
        description = "Sell for 700 Pokedollars, or to Ore Collector for 1400 Pokedollars."
    },
    [89] = {
        name = "Grande Perle",
        description = "Sell for 3750 Pokedollars, or to Ore Collector for 7500 Pokedollars."
    },
    [90] = {
        name = "Pouss Étoile",
        description = "Sell for 1000 Pokedollars, or to Ore Collector for 2000 Pokedollars."
    },
    [91] = {
        name = "Morc. Étoile",
        description = "Platinum: Trade for one of each color Shard. Black and White: Trade for PP Up. Sell for 4900 Pokedollars, or to Ore Collector for 9800 Pokedollars."
    },
    [92] = {
        name = "Pépite",
        description = "Sell for 5000 Pokedollars, or to Ore Collector for 10000 Pokedollars."
    },
    [93] = {
        name = "Écaillecoeur",
        description = "No effect. Can be traded for prior Level-up moves."
    },
    [94] = {
        name = "Miel",
        description = "Used to attract Wild Pokémon."
    },
    [95] = {
        name = "Fertipousse",
        description = "Growing time of berries is reduced, but the soil dries out faster."
    },
    [96] = {
        name = "Fertihumide",
        description = "Growing time of berries is increased, but the soil dries out slower."
    },
    [97] = {
        name = "Fertistable",
        description = "Berries stay on the plant for longer than their usual time."
    },
    [98] = {
        name = "Fertiglu",
        description = "Berries regrow from dead plants an increased number of times."
    },
    [99] = {
        name = "Foss. Racine",
        description = "Can be revived into a Lileep."
    },
    [100] = {
        name = "Foss. Griffe",
        description = "Can be revived into an Anorith."
    },
    [101] = {
        name = "Nautile",
        description = "Can be revived into an Omanyte."
    },
    [102] = {
        name = "Fossile Dôme",
        description = "Can be revived into a Kabuto."
    },
    [103] = {
        name = "Vieil Ambre",
        description = "Can be revived into an Aerodactyl."
    },
    [104] = {
        name = "Foss. Armure",
        description = "Can be revived into a Shieldon."
    },
    [105] = {
        name = "Foss. Crâne",
        description = "Can be revived into a Cranidos."
    },
    [106] = {
        name = "Os Rare",
        description = "Sell for 5000 Pokedollars, or to Bone Man for 10000 Pokedollars."
    },
    [107] = {
        name = "Pierre Éclat",
        description = "Evolves a Minccino into Cinccino, a Roselia into Roserade, or a Togetic into Togekiss."
    },
    [108] = {
        name = "Pierre Nuit",
        description = "Evolves a Lampent into Chandelure, a Misdreavus into Mismagius, or a Murkrow into Honchkrow."
    },
    [109] = {
        name = "Pierre Aube",
        description = "Evolves a male Kirlia into Gallade or a female Snorunt into Froslass."
    },
    [110] = {
        name = "Pierre Ovale",
        description = "Level-up during Day on a Happiny: Holder evolves into Chansey."
    },
    [111] = {
        name = "Clé de Voûte",
        description = "Use on the tower on Route 209 to encounter Spiritomb if you have at least 32 Underground greetings."
    },
    [135] = {
        name = "Orbe Adamant",
        description = "Boosts the damage from Dialga's Dragon-type and Steel-type moves by 20%."
    },
    [136] = {
        name = "Orbe Perlé",
        description = "Boosts the damage from Palkia's Dragon-type and Water-type moves by 20%."
    },
    [149] = {
        name = "Baie Ceriz",
        description = "Consumed when paralyzed to cure paralysis."
    },
    [150] = {
        name = "Baie Maron",
        description = "Consumed when asleep to cure sleep."
    },
    [151] = {
        name = "Baie Pecha",
        description = "Consumed when poisoned to cure poison."
    },
    [152] = {
        name = "Baie Fraive",
        description = "Consumed when burned to cure a burn."
    },
    [153] = {
        name = "Baie Willia",
        description = "Consumed when frozen to cure frozen."
    },
    [154] = {
        name = "Baie Mepo",
        description = "Consumed when a move runs out of PP to restore its PP by 10."
    },
    [155] = {
        name = "Baie Oran",
        description = "Consumed at 1/2 max HP to recover 10 HP."
    },
    [156] = {
        name = "Baie Kika",
        description = "Consumed when confused to cure confusion."
    },
    [157] = {
        name = "Baie Prine",
        description = "Consumed to cure any status condition or confusion."
    },
    [158] = {
        name = "Baie Sitrus",
        description = "Consumed at 1/2 max HP to recover 1/4 max HP."
    },
    [159] = {
        name = "Baie Figuy",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike spicy flavor."
    },
    [160] = {
        name = "Baie Wiki",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike dry flavor."
    },
    [161] = {
        name = "Baie Mago",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike sweet flavor."
    },
    [162] = {
        name = "Baie Gowav",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike bitter flavor."
    },
    [163] = {
        name = "Baie Papaya",
        description = "Consumed at 1/2 max HP to restore 1/8 max HP. Confuses Pokmon that dislike sour flavor."
    },
    [164] = {
        name = "Baie Framby",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [165] = {
        name = "Baie Remu",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [166] = {
        name = "Baie Nanab",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [167] = {
        name = "Baie Repoi",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [168] = {
        name = "Baie Nanana",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [169] = {
        name = "Baie Grena",
        description = "Drops HP Effort Values by 10 and raises happiness."
    },
    [170] = {
        name = "Baie Alga",
        description = "Drops Attack Effort Values by 10 and raises happiness."
    },
    [171] = {
        name = "Baie Qualot",
        description = "Drops Defense Effort Values by 10 and raises happiness."
    },
    [172] = {
        name = "Baie Lonme",
        description = "Drops Special Attack Effort Values by 10 and raises happiness."
    },
    [173] = {
        name = "Baie Résin",
        description = "Drops Special Defense Effort Values by 10 and raises happiness."
    },
    [174] = {
        name = "Baie Tamato",
        description = "Drops Speed Effort Values by 10 and raises happiness."
    },
    [175] = {
        name = "Baie Siam",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [176] = {
        name = "Baie Mangou",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [177] = {
        name = "Baie Rabuta",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [178] = {
        name = "Baie Tronci",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [179] = {
        name = "Baie Kiwan",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [180] = {
        name = "Baie Palma",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [181] = {
        name = "Baie Stekpa",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [182] = {
        name = "Baie Durin",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [183] = {
        name = "Baie Myrte",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [184] = {
        name = "Baie Chocco",
        description = "Consumed when struck by a super-effective Fire-type attack to halve the damage."
    },
    [185] = {
        name = "Baie Pocpoc",
        description = "Consumed when struck by a super-effective Water-type attack to halve the damage."
    },
    [186] = {
        name = "Baie Parma",
        description = "Consumed when struck by a super-effective Electric-type attack to halve the damage."
    },
    [187] = {
        name = "Baie Ratam",
        description = "Consumed when struck by a super-effective Grass-type attack to halve the damage."
    },
    [188] = {
        name = "Baie Nanone",
        description = "Consumed when struck by a super-effective Ice-type attack to halve the damage."
    },
    [189] = {
        name = "Baie Pomroz",
        description = "Consumed when struck by a super-effective Fighting-type attack to halve the damage."
    },
    [190] = {
        name = "Baie Kébia",
        description = "Consumed when struck by a super-effective Poison-type attack to halve the damage."
    },
    [191] = {
        name = "Baie Jouca",
        description = "Consumed when struck by a super-effective Ground-type attack to halve the damage."
    },
    [192] = {
        name = "Baie Cobaba",
        description = "Consumed when struck by a super-effective Flying-type attack to halve the damage."
    },
    [193] = {
        name = "Baie Yapap",
        description = "Consumed when struck by a super-effective Psychic-type attack to halve the damage."
    },
    [194] = {
        name = "Baie Panga",
        description = "Consumed when struck by a super-effective Bug-type attack to halve the damage."
    },
    [195] = {
        name = "Baie Charti",
        description = "Consumed when struck by a super-effective Rock-type attack to halve the damage."
    },
    [196] = {
        name = "Baie Sédra",
        description = "Consumed when struck by a super-effective Ghost-type attack to halve the damage."
    },
    [197] = {
        name = "Baie Fraigo",
        description = "Consumed when struck by a super-effective Dragon-type attack to halve the damage."
    },
    [198] = {
        name = "Baie Lampou",
        description = "Consumed when struck by a super-effective Dark-type attack to halve the damage."
    },
    [199] = {
        name = "Baie Babiri",
        description = "Consumed when struck by a super-effective Steel-type attack to halve the damage."
    },
    [200] = {
        name = "Baie Zalis",
        description = "Consumed when struck by a Normal-type attack to halve the damage."
    },
    [201] = {
        name = "Baie Lichii",
        description = "Consumed at 1/4 max HP to boost Attack."
    },
    [202] = {
        name = "Baie Lingan",
        description = "Consumed at 1/4 max HP to boost Defense."
    },
    [203] = {
        name = "Baie Sailak",
        description = "Consumed at 1/4 max HP to boost Speed."
    },
    [204] = {
        name = "Baie Pitaye",
        description = "Consumed at 1/4 max HP to boost Special Attack."
    },
    [205] = {
        name = "Baie Abriko",
        description = "Consumed at 1/4 max HP to boost Special Defense."
    },
    [206] = {
        name = "Baie Lansat",
        description = "Consumed at 1/4 max HP to boost critical hit ratio by two stages."
    },
    [207] = {
        name = "Baie Frista",
        description = "Consumed at 1/4 max HP to boost a random stat by two stages."
    },
    [208] = {
        name = "Baie Enigma",
        description = "Consumed when struck by a super-effective attack to restore 1/4 max HP."
    },
    [209] = {
        name = "Baie Micle",
        description = "Consumed at 1/4 max HP to boost accuracy of next move by 20%."
    },
    [210] = {
        name = "Baie Chérim",
        description = "Consumed at 1/4 max HP when using a move to go first."
    },
    [211] = {
        name = "Baie Jaboca",
        description = "Consumed to deal 1/8 attacker's max HP when holder is struck by a physical attack."
    },
    [212] = {
        name = "Baie Pommo",
        description = "Consumed to deal 1/8 attacker's max HP when holder is struck by a special attack."
    },
    [213] = {
        name = "Poudre Claire",
        description = "Increases the holder's evasion by 1/9 (11 1/9%)."
    },
    [214] = {
        name = "Herbe Blanche",
        description = "Resets all lowered stats to normal at end of turn. Consumed after use."
    },
    [215] = {
        name = "Bracelet Macho",
        description = "Holder gains double effort values from battles, but has halved Speed in battle."
    },
    [216] = {
        name = "Multi Exp",
        description = "Half the experience from a battle is split between Pok" .. Chars.accentedE .. "mon holding this item."
    },
    [217] = {
        name = "Vive Griffe",
        description = "Holder has a 3/16 (18.75%) chance to move first."
    },
    [218] = {
        name = "Grelot Zen",
        description = "Doubles the happiness earned by the holder."
    },
    [219] = {
        name = "Herbe Mental",
        description = "Consumed to cure infatuation. Gen V: Also removes Taunt, Encore, Torment, Disable, and Cursed Body."
    },
    [220] = {
        name = "Bandeau Choix",
        description = "Increases Attack by 50%, but restricts the holder to only one move."
    },
    [221] = {
        name = "Roche Royale",
        description = "Damaging moves gain a 10% chance to make their target flinch. Traded on a Poliwhirl: Holder evolves into Politoed. Traded on a Slowpoke: Holder evolves into Slowking."
    },
    [222] = {
        name = "Poudre Arg.",
        description = "Bug-Type moves from holder do 20% more damage."
    },
    [223] = {
        name = "Pièce Rune",
        description = "Doubles the money earned from a battle. Does not stack with Encens Veine."
    },
    [224] = {
        name = "Rune Purifiante",
        description = "Prevents wild encounters of level lower than your party's lead Pokemon."
    },
    [225] = {
        name = "Rosée Âme",
        description = "Raises Latias and Latios's Special Attack and Special Defense by 50%."
    },
    [226] = {
        name = "Dent Océan",
        description = "Double l'Attaque Spéciale de Coquiperl."
    },
    [227] = {
        name = "Écaille Océan",
        description = "Double la Défense Spéciale de Coquiperl."
    },
    [228] = {
        name = "Boule Fumée",
        description = "Allows the Holder to escape from any wild battle."
    },
    [229] = {
        name = "Pierre Stase",
        description = "Prevents level-based evolution from occuring."
    },
    [230] = {
        name = "Bandeau",
        description = "Holder has 10% chance to survive attacks or self-inflicted damage at 1 HP."
    },
    [231] = {
        name = "oeuf Chance",
        description = "Increases EXP earned in battle by 50%."
    },
    [232] = {
        name = "Lentilscope",
        description = "Raises the holder's critical hit ratio by one stage."
    },
    [233] = {
        name = "Peau Métal",
        description = "Steel-Type moves from holder do 20% more damage."
    },
    [234] = {
        name = "Restes",
        description = "Restores 1/16 (6.25%) holder's max HP at the end of each turn."
    },
    [235] = {
        name = "Écaille Draco",
        description = "Traded on a Seadra: Holder evolves into Kingdra."
    },
    [236] = {
        name = "Balle Lumière",
        description = "Doubles Pikachu's Attack and Special Attack. Breed on Pikachu or Raichu: Pichu Egg will have Volt Tackle."
    },
    [237] = {
        name = "Sable Doux",
        description = "Ground-Type moves from holder do 20% more damage."
    },
    [238] = {
        name = "Pierre Dure",
        description = "Rock-Type moves from holder do 20% more damage."
    },
    [239] = {
        name = "Graine Miracle",
        description = "Grass-Type moves from holder do 20% more damage."
    },
    [240] = {
        name = "Lunettes Noires",
        description = "Dark-Type moves from holder do 20% more damage."
    },
    [241] = {
        name = "Black Belt",
        description = "Fighting-Type moves from holder do 20% more damage."
    },
    [242] = {
        name = "Aimant",
        description = "Electric-Type moves from holder do 20% more damage."
    },
    [243] = {
        name = "Eau Mystique",
        description = "Water-Type moves from holder do 20% more damage."
    },
    [244] = {
        name = "Bec Pointu",
        description = "Flying-Type moves from holder do 20% more damage."
    },
    [245] = {
        name = "Pic Venin",
        description = "Poison-Type moves from holder do 20% more damage."
    },
    [246] = {
        name = "Glacéternel",
        description = "Ice-Type moves from holder do 20% more damage."
    },
    [247] = {
        name = "Rune Sort",
        description = "Ghost-Type moves from holder do 20% more damage."
    },
    [248] = {
        name = "Cuillère Tordue",
        description = "Psychic-Type moves from holder do 20% more damage."
    },
    [249] = {
        name = "Charbon",
        description = "Fire-Type moves from holder do 20% more damage."
    },
    [250] = {
        name = "Croc Dragon",
        description = "Dragon-Type moves from holder do 20% more damage."
    },
    [251] = {
        name = "Mouchoir Soie",
        description = "Normal-Type moves from holder do 20% more damage."
    },
    [252] = {
        name = "Améliorator",
        description = "Traded on a Porygon: Holder evolves into Porygon2."
    },
    [253] = {
        name = "Grelot Coque",
        description = "Holder receives 1/8 of the damage it deals when attacking."
    },
    [254] = {
        name = "Encens Mer",
        description = "Water-Type moves from holder do 20% more damage. Breeding: Marill or Azumarill beget an Azurill Egg."
    },
    [255] = {
        name = "Encens Doux",
        description = "Holder's evasion is increased by 5%. Breeding: Wobbuffet begets a Wynaut Egg."
    },
    [256] = {
        name = "Poing Chance",
        description = "Raises Chansey's critical hit ratio by two stages."
    },
    [257] = {
        name = "Poudre Metal",
        description = "Raises Ditto's Defense and Special Defense by 50%. The boost is lost after transforming."
    },
    [258] = {
        name = "Masse Os",
        description = "Doubles Cubone or Marowak's Attack."
    },
    [259] = {
        name = "Poireau",
        description = "Raises Farfetch'd's critical hit ratio by two stages."
    },
    [260] = {
        name = "Foulard Rouge",
        description = "Raises the holder's Coolness while in a contest."
    },
    [261] = {
        name = "Foulard Bleu",
        description = "Raises the holder's Beauty while in a contest."
    },
    [262] = {
        name = "Foulard Rose",
        description = "Raises the holder's Cuteness while in a contest."
    },
    [263] = {
        name = "Foulard Vert",
        description = "Raises the holder's Smartness while in a contest."
    },
    [264] = {
        name = "Foulard Jaune",
        description = "Raises the holder's Toughness while in a contest."
    },
    [265] = {
        name = "Loupe",
        description = "Provides a 1/10 (10%) boost in accuracy to the holder."
    },
    [266] = {
        name = "Band. Muscle",
        description = "Boosts the damage of physical moves used by the holder by 10%."
    },
    [267] = {
        name = "Lunettes Sages",
        description = "Boosts the damage of special moves used by the holder by 1/10 (10%)."
    },
    [268] = {
        name = "Ceinture Pro",
        description = "Holder's Super Effective moves do 20% extra damage."
    },
    [269] = {
        name = "Lumargile",
        description = "Light Screen and Reflect used by the holder last 8 rounds instead of 5."
    },
    [270] = {
        name = "Orbe Vie",
        description = "Holder's moves inflict 30% extra damage, but cost 10% max HP."
    },
    [271] = {
        name = "Herbe Pouvoir",
        description = "Both turns of a two-turn charge move happen at once. Consumed upon use."
    },
    [272] = {
        name = "Orbe Toxique",
        description = "Inflicts Toxic on the holder at the end of the turn. Activates after Poison damage would occur."
    },
    [273] = {
        name = "Orbe Flamme",
        description = "Inflicts Burn on the holder at the end of the turn. Activates after Burn damage would occur."
    },
    [274] = {
        name = "Poudre Vite",
        description = "Doubles Ditto's Speed when held. The boost is lost after transforming."
    },
    [275] = {
        name = "Ceint. Force",
        description = "Holder survives any single-hit attack at 1 HP if at max HP, then the item is consumed."
    },
    [276] = {
        name = "Lentil. Zoom",
        description = "Provides a 1/5 (20%) boost in accuracy if the holder moves after the target."
    },
    [277] = {
        name = "Metronome",
        description = "Consectutive uses of the same attack have a cumulative damage boost of 10%. Maximum 100% boost."
    },
    [278] = {
        name = "Fer Ball",
        description = "Holder's Speed is halved. Negates all Ground-type immunities, and makes Flying-types take neutral damage from Ground-type moves. Arena Trap. Spikes, and Toxic Spikes affect the holder."
    },
    [279] = {
        name = "Ralentiqueue",
        description = "Holder moves last in its priority bracket."
    },
    [280] = {
        name = "Noeud Destin",
        description = "Infatuates opposing Pok" .. Chars.accentedE .. "mon when holder is inflicted with infatuation."
    },
    [281] = {
        name = "Boue Noire",
        description = "Poison-type holder recovers 1/16 (6.25%) max HP each turn. Non-Poison-Types take 1/8 (12.5%) max HP damage."
    },
    [282] = {
        name = "Roche Glace",
        description = "Hail by the holder lasts 8 rounds instead of 5."
    },
    [283] = {
        name = "Roche Lisse",
        description = "Sandstorm by the holder lasts 8 rounds instead of 5."
    },
    [284] = {
        name = "Roche Chaude",
        description = "Sunny Day by the holder lasts 8 rounds instead of 5."
    },
    [285] = {
        name = "Roche Humide",
        description = "Rain Dance by the holder lasts 8 rounds instead of 5."
    },
    [286] = {
        name = "Accro Griffe",
        description = "Holder's multi-turn trapping moves last 5 turns."
    },
    [287] = {
        name = "Mouchoir Choix",
        description = "Increases Speed by 50%, but restricts the holder to only one move."
    },
    [288] = {
        name = "Poireauy Barb",
        description = "Holder takes 1/8 (12.5%) its max HP at the end of each turn. When the holder is hit by a contact move, the attacking Pokmon takes 1/8 its max HP in damage and receive the item if not holding one."
    },
    [289] = {
        name = "Poignet Pouvoir",
        description = "Holder gains 4 Attack effort values, but has halved Speed in battle."
    },
    [290] = {
        name = "Ceinture Pouvoir",
        description = "Holder gains 4 Defense effort values, but has halved Speed in battle."
    },
    [291] = {
        name = "Lentille Pouvoir",
        description = "Holder gains 4 Special Attack effort values, but has halved Speed in battle."
    },
    [292] = {
        name = "Bandeau Pouvoir",
        description = "Holder gains 4 Special Defense effort values, but has halved Speed in battle."
    },
    [293] = {
        name = "Chaîne Pouvoir",
        description = "Holder gains 4 Speed effort values, but has halved Speed in battle."
    },
    [294] = {
        name = "Poids Pouvoir",
        description = "Holder gains 4 HP effort values, but has halved Speed in battle."
    },
    [295] = {
        name = "Carapace Mue",
        description = "Holder can bypass all trapping effects and switch out. Multi-turn moves still cannot be switched out of."
    },
    [296] = {
        name = "Grosse Racine",
        description = "Increases HP recovered from draining moves, Ingrain, and Aqua Ring by 3/10 (30%)."
    },
    [297] = {
        name = "Lunettes Choix",
        description = "Increases Special Attack by 50%, but restricts the holder to only one move."
    },
    [298] = {
        name = "Plaque Flamme",
        description = "Fire-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Fire."
    },
    [299] = {
        name = "Plaque Hydro",
        description = "Water-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Water."
    },
    [300] = {
        name = "Plaque Volt",
        description = "Electric-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Electric."
    },
    [301] = {
        name = "Plaque Herbe",
        description = "Grass-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Grass."
    },
    [302] = {
        name = "Plaque Glace",
        description = "Ice-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ice."
    },
    [303] = {
        name = "Plaque Poing",
        description = "Fighting-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Fighting."
    },
    [304] = {
        name = "Plaque Toxicité",
        description = "Posion-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Posion."
    },
    [305] = {
        name = "Plaque Terre",
        description = "Ground-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ground."
    },
    [306] = {
        name = "Plaque Ciel",
        description = "Flying-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Flying."
    },
    [307] = {
        name = "Plaque Esprit",
        description = "Psychic-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Psychic."
    },
    [308] = {
        name = "Plaque Insecte",
        description = "Bug-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Bug."
    },
    [309] = {
        name = "Plaque Roc",
        description = "Rock-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Rock."
    },
    [310] = {
        name = "Plaque Fantô",
        description = "Ghost-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Ghost."
    },
    [311] = {
        name = "Plaque Draco",
        description = "Dragon-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Dragon."
    },
    [312] = {
        name = "Plaque Ombre",
        description = "Dark-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Dark."
    },
    [313] = {
        name = "Fer Plate",
        description = "Steel-Type moves from holder do 20% more damage. Changes Arceus's and Judgment's type to Steel."
    },
    [314] = {
        name = "Encens Bizarre",
        description = "Psychic-Type moves from holder do 20% more damage. Breeding: Mr. Mime begets a Mime Jr. Egg."
    },
    [315] = {
        name = "Encens Roc",
        description = "Rock-Type moves from holder do 20% more damage. Breeding: Sudowoodo begets a Bonsly Egg."
    },
    [316] = {
        name = "Encens Plein",
        description = "Holder moves last in its priority bracket. Breeding: Snorlax begets a Munchlax Egg."
    },
    [317] = {
        name = "Encens Vague",
        description = "Water-Type moves from holder do 20% more damage. Breeding: Mantine begets a Mantyke Egg."
    },
    [318] = {
        name = "Encens Fleur",
        description = "Grass-Type moves from holder do 20% more damage. Breeding: Roselia or Roserade beget a Budew Egg."
    },
    [319] = {
        name = "Encens Veine",
        description = "Doubles the money earned from a battle. Does not stack with Pièce Rune. Breeding: Chansey and Blissey beget a Happiny Egg."
    },
    [320] = {
        name = "Encens Pur",
        description = "Prevents wild encounters of level lower than your party's lead Pokemon. Breeding: Chimecho begets a Chingling Egg."
    },
    [321] = {
        name = "Protecteur",
        description = "Traded on a Rhydon: Holder evolves into Rhyperior."
    },
    [322] = {
        name = "Électriseur",
        description = "Traded on an Electabuzz: Holder evolves into Electivire."
    },
    [323] = {
        name = "Magmariseur",
        description = "Traded on a Magmar: Holder evolves into Magmortar."
    },
    [324] = {
        name = "CD Douteux",
        description = "Traded on a Porygon2: Holder evolves into Porygon-Z."
    },
    [325] = {
        name = "Tissu Fauche",
        description = "Traded on a Dusclops: Holder evolves into Dusknoir."
    },
    [326] = {
        name = "Griffe Rasoir",
        description = "Raises the holder's critical hit ratio by one stage. Held by a Sneasel while levelling up at night: Holder evolves into Weavile."
    },
    [327] = {
        name = "Croc Rasoir",
        description = "Damaging moves gain a 10% chance to make their target flinch. Held by a Gligar while levelling up: Holder evolves into Gliscor."
    },
    [328] = {
        name = "TM01",
        description = "Teaches a move to a compatible Pokemon."
    },
    [329] = {
        name = "TM02",
        description = "Teaches a move to a compatible Pokemon."
    },
    [330] = {
        name = "TM03",
        description = "Teaches a move to a compatible Pokemon."
    },
    [331] = {
        name = "TM04",
        description = "Teaches a move to a compatible Pokemon."
    },
    [332] = {
        name = "TM05",
        description = "Teaches a move to a compatible Pokemon."
    },
    [333] = {
        name = "TM06",
        description = "Teaches a move to a compatible Pokemon."
    },
    [334] = {
        name = "TM07",
        description = "Teaches a move to a compatible Pokemon."
    },
    [335] = {
        name = "TM08",
        description = "Teaches a move to a compatible Pokemon."
    },
    [336] = {
        name = "TM09",
        description = "Teaches a move to a compatible Pokemon."
    },
    [337] = {
        name = "TM10",
        description = "Teaches a move to a compatible Pokemon."
    },
    [338] = {
        name = "TM11",
        description = "Teaches a move to a compatible Pokemon."
    },
    [339] = {
        name = "TM12",
        description = "Teaches a move to a compatible Pokemon."
    },
    [340] = {
        name = "TM13",
        description = "Teaches a move to a compatible Pokemon."
    },
    [341] = {
        name = "TM14",
        description = "Teaches a move to a compatible Pokemon."
    },
    [342] = {
        name = "TM15",
        description = "Teaches a move to a compatible Pokemon."
    },
    [343] = {
        name = "TM16",
        description = "Teaches a move to a compatible Pokemon."
    },
    [344] = {
        name = "TM17",
        description = "Teaches a move to a compatible Pokemon."
    },
    [345] = {
        name = "TM18",
        description = "Teaches a move to a compatible Pokemon."
    },
    [346] = {
        name = "TM19",
        description = "Teaches a move to a compatible Pokemon."
    },
    [347] = {
        name = "TM20",
        description = "Teaches a move to a compatible Pokemon."
    },
    [348] = {
        name = "TM21",
        description = "Teaches a move to a compatible Pokemon."
    },
    [349] = {
        name = "TM22",
        description = "Teaches a move to a compatible Pokemon."
    },
    [350] = {
        name = "TM23",
        description = "Teaches a move to a compatible Pokemon."
    },
    [351] = {
        name = "TM24",
        description = "Teaches a move to a compatible Pokemon."
    },
    [352] = {
        name = "TM25",
        description = "Teaches a move to a compatible Pokemon."
    },
    [353] = {
        name = "TM26",
        description = "Teaches a move to a compatible Pokemon."
    },
    [354] = {
        name = "TM27",
        description = "Teaches a move to a compatible Pokemon."
    },
    [355] = {
        name = "TM28",
        description = "Teaches a move to a compatible Pokemon."
    },
    [356] = {
        name = "TM29",
        description = "Teaches a move to a compatible Pokemon."
    },
    [357] = {
        name = "TM30",
        description = "Teaches a move to a compatible Pokemon."
    },
    [358] = {
        name = "TM31",
        description = "Teaches a move to a compatible Pokemon."
    },
    [359] = {
        name = "TM32",
        description = "Teaches a move to a compatible Pokemon."
    },
    [360] = {
        name = "TM33",
        description = "Teaches a move to a compatible Pokemon."
    },
    [361] = {
        name = "TM34",
        description = "Teaches a move to a compatible Pokemon."
    },
    [362] = {
        name = "TM35",
        description = "Teaches a move to a compatible Pokemon."
    },
    [363] = {
        name = "TM36",
        description = "Teaches a move to a compatible Pokemon."
    },
    [364] = {
        name = "TM37",
        description = "Teaches a move to a compatible Pokemon."
    },
    [365] = {
        name = "TM38",
        description = "Teaches a move to a compatible Pokemon."
    },
    [366] = {
        name = "TM39",
        description = "Teaches a move to a compatible Pokemon."
    },
    [367] = {
        name = "TM40",
        description = "Teaches a move to a compatible Pokemon."
    },
    [368] = {
        name = "TM41",
        description = "Teaches a move to a compatible Pokemon."
    },
    [369] = {
        name = "TM42",
        description = "Teaches a move to a compatible Pokemon."
    },
    [370] = {
        name = "TM43",
        description = "Teaches a move to a compatible Pokemon."
    },
    [371] = {
        name = "TM44",
        description = "Teaches a move to a compatible Pokemon."
    },
    [372] = {
        name = "TM45",
        description = "Teaches a move to a compatible Pokemon."
    },
    [373] = {
        name = "TM46",
        description = "Teaches a move to a compatible Pokemon."
    },
    [374] = {
        name = "TM47",
        description = "Teaches a move to a compatible Pokemon."
    },
    [375] = {
        name = "TM48",
        description = "Teaches a move to a compatible Pokemon."
    },
    [376] = {
        name = "TM49",
        description = "Teaches a move to a compatible Pokemon."
    },
    [377] = {
        name = "TM50",
        description = "Teaches a move to a compatible Pokemon."
    },
    [378] = {
        name = "TM51",
        description = "Teaches a move to a compatible Pokemon."
    },
    [379] = {
        name = "TM52",
        description = "Teaches a move to a compatible Pokemon."
    },
    [380] = {
        name = "TM53",
        description = "Teaches a move to a compatible Pokemon."
    },
    [381] = {
        name = "TM54",
        description = "Teaches a move to a compatible Pokemon."
    },
    [382] = {
        name = "TM55",
        description = "Teaches a move to a compatible Pokemon."
    },
    [383] = {
        name = "TM56",
        description = "Teaches a move to a compatible Pokemon."
    },
    [384] = {
        name = "TM57",
        description = "Teaches a move to a compatible Pokemon."
    },
    [385] = {
        name = "TM58",
        description = "Teaches a move to a compatible Pokemon."
    },
    [386] = {
        name = "TM59",
        description = "Teaches a move to a compatible Pokemon."
    },
    [387] = {
        name = "TM60",
        description = "Teaches a move to a compatible Pokemon."
    },
    [388] = {
        name = "TM61",
        description = "Teaches a move to a compatible Pokemon."
    },
    [389] = {
        name = "TM62",
        description = "Teaches a move to a compatible Pokemon."
    },
    [390] = {
        name = "TM63",
        description = "Teaches a move to a compatible Pokemon."
    },
    [391] = {
        name = "TM64",
        description = "Teaches a move to a compatible Pokemon."
    },
    [392] = {
        name = "TM65",
        description = "Teaches a move to a compatible Pokemon."
    },
    [393] = {
        name = "TM66",
        description = "Teaches a move to a compatible Pokemon."
    },
    [394] = {
        name = "TM67",
        description = "Teaches a move to a compatible Pokemon."
    },
    [395] = {
        name = "TM68",
        description = "Teaches a move to a compatible Pokemon."
    },
    [396] = {
        name = "TM69",
        description = "Teaches a move to a compatible Pokemon."
    },
    [397] = {
        name = "TM70",
        description = "Teaches a move to a compatible Pokemon."
    },
    [398] = {
        name = "TM71",
        description = "Teaches a move to a compatible Pokemon."
    },
    [399] = {
        name = "TM72",
        description = "Teaches a move to a compatible Pokemon."
    },
    [400] = {
        name = "TM73",
        description = "Teaches a move to a compatible Pokemon."
    },
    [401] = {
        name = "TM74",
        description = "Teaches a move to a compatible Pokemon."
    },
    [402] = {
        name = "TM75",
        description = "Teaches a move to a compatible Pokemon."
    },
    [403] = {
        name = "TM76",
        description = "Teaches a move to a compatible Pokemon."
    },
    [404] = {
        name = "TM77",
        description = "Teaches a move to a compatible Pokemon."
    },
    [405] = {
        name = "TM78",
        description = "Teaches a move to a compatible Pokemon."
    },
    [406] = {
        name = "TM79",
        description = "Teaches a move to a compatible Pokemon."
    },
    [407] = {
        name = "TM80",
        description = "Teaches a move to a compatible Pokemon."
    },
    [408] = {
        name = "TM81",
        description = "Teaches a move to a compatible Pokemon."
    },
    [409] = {
        name = "TM82",
        description = "Teaches a move to a compatible Pokemon."
    },
    [410] = {
        name = "TM83",
        description = "Teaches a move to a compatible Pokemon."
    },
    [411] = {
        name = "TM84",
        description = "Teaches a move to a compatible Pokemon."
    },
    [412] = {
        name = "TM85",
        description = "Teaches a move to a compatible Pokemon."
    },
    [413] = {
        name = "TM86",
        description = "Teaches a move to a compatible Pokemon."
    },
    [414] = {
        name = "TM87",
        description = "Teaches a move to a compatible Pokemon."
    },
    [415] = {
        name = "TM88",
        description = "Teaches a move to a compatible Pokemon."
    },
    [416] = {
        name = "TM89",
        description = "Teaches a move to a compatible Pokemon."
    },
    [417] = {
        name = "TM90",
        description = "Teaches a move to a compatible Pokemon."
    },
    [418] = {
        name = "TM91",
        description = "Teaches a move to a compatible Pokemon."
    },
    [419] = {
        name = "TM92",
        description = "Teaches a move to a compatible Pokemon."
    },
    [420] = {
        name = "HM01",
        description = "Teaches a move to a compatible Pokemon."
    },
    [421] = {
        name = "HM02",
        description = "Teaches a move to a compatible Pokemon."
    },
    [422] = {
        name = "HM03",
        description = "Teaches a move to a compatible Pokemon."
    },
    [423] = {
        name = "HM04",
        description = "Teaches a move to a compatible Pokemon."
    },
    [424] = {
        name = "HM05",
        description = "Teaches a move to a compatible Pokemon."
    },
    [425] = {
        name = "HM06",
        description = "Teaches a move to a compatible Pokemon."
    },
    [428] = {
        name = "Explorer Kit",
        description = "Allows visiting the Underground."
    },
    [429] = {
        name = "Loot Sack",
        description = "Carries coal mine loot."
    },
    [430] = {
        name = "Rule Book",
        description = "List of battle types and their rules."
    },
    [431] = {
        name = "Poké Radar",
        description = "Use to track down rare or shiny Pokemon. 50 steps to recharge."
    },
    [432] = {
        name = "Carte à Points",
        description = "Keeps count of Battle Points earned."
    },
    [433] = {
        name = "Notes d'Aventure",
        description = "Records prior significant activities the player took."
    },
    [434] = {
        name = "Boîte à Sceaux",
        description = "Stores Seals that can be applied to Poké Ball capsules."
    },
    [435] = {
        name = "Coffret Mode",
        description = "Holds Pokémon Accessories for use in Contests."
    },
    [436] = {
        name = "Seal Bag",
        description = "Holds ten Seals for Poké Balls."
    },
    [437] = {
        name = "Pal Pad",
        description = "Use to record Friend Codes and check your own."
    },
    [438] = {
        name = "Clé Parc Éolien",
        description = "Grants access to Valley Windworks."
    },
    [439] = {
        name = "Vieux Grigri",
        description = "Trade to Cynthia's grandmother in Celestic Town for HM04 (Surf)."
    },
    [440] = {
        name = "Galactic Key",
        description = "Grants access to Galactic HQ in Veilstone City."
    },
    [441] = {
        name = "Chaîne Rouge",
        description = "Used to bind Palkia and Dialga."
    },
    [442] = {
        name = "Carte",
        description = "Use to see the overworld map."
    },
    [443] = {
        name = "Cherch'Combat",
        description = "Allows rebattling of on-screen trainers. 100 steps to recharge."
    },
    [444] = {
        name = "Boite Jetons",
        description = "Holds coins for the Game Corner."
    },
    [445] = {
        name = "Canne à Pêche Ultime",
        description = "Used to catch Pokémon in bodies of water."
    },
    [446] = {
        name = "Super Canne",
        description = "Used to catch Pokémon in bodies of water."
    },
    [447] = {
        name = "Méga Canne",
        description = "Used to catch Pokémon in bodies of water."
    },
    [448] = {
        name = "Kwakarrosoir",
        description = "Used to water berries."
    },
    [449] = {
        name = "Boîte à Poffins",
        description = "Holds Poffins."
    },
    [450] = {
        name = "Bicyclette",
        description = "Use for fast transit."
    },
    [451] = {
        name = "Clé de Chambre",
        description = "Opens a locked building in the Lakeside Resort."
    },
    [452] = {
        name = "Lettre Chen",
        description = "Allows access to Seabreak path, Flower Paradise, and Shaymin."
    },
    [453] = {
        name = "Plume Lune",
        description = "Cures sailor's son of nightmares in Canalave City."
    },
    [454] = {
        name = "Carte Membre",
        description = "Allows access to Newmoon Island and Darkrai."
    },
    [455] = {
        name = "Flûte Azur",
        description = "Allows entry into the Hall of Origin. Unreleased."
    },
    [456] = {
        name = "Ss Ticket",
        description = "Ticket for a ship. (RSE: S.S. Tidal LF: S.S. Anne HG: S.S. Aqua)"
    },
    [457] = {
        name = "Passeeconcour",
        description = "Allows participation in Pokémon Contests."
    },
    [458] = {
        name = "Pierre Magma",
        description = "Magma is sealed inside."
    },
    [459] = {
        name = "Colis",
        description = "Given to the trainer's rival in Jubilife City. Contains Cartes."
    },
    [460] = {
        name = "Bon 1",
        description = "The first of three tickets used to obtain a Poketch."
    },
    [461] = {
        name = "Bon 2",
        description = "The second of three tickets used to obtain a Poketch."
    },
    [462] = {
        name = "Bon 3",
        description = "The last of three tickets used to obtain a Poketch."
    },
    [463] = {
        name = "Storage Key",
        description = "Grants access to the Team Galactic warehouse in Veilstone City."
    },
    [464] = {
        name = "Remède Secret",
        description = "Used to heal the Ampharos at the top of Olivine Lighthouse."
    },
    [112] = {
        name = "Orbe Platiné",
        description = "Boosts the damage from Giratina's Dragon-type and Ghost-type moves by 20%, and transforms it into Origin Forme."
    },
    [465] = {
        name = "Vs Recorder",
        description = "Records wireless, Wi-Fi, or Battle Frontier battles, and stores points."
    },
    [466] = {
        name = "Gracidée",
        description = "Changes an unfrozen Shaymin to Sky Forme in the day."
    },
    [467] = {
        name = "Secret Key",
        description = "Gen IV: The key to Rotom's appliance room. "
    },
    [468] = {
        name = "Apricorn Box",
        description = "Holds Apricorns."
    },
    [470] = {
        name = "Plante Baies",
        description = "Allows portable berry growing."
    },
    [477] = {
        name = "Carapuce à O",
        description = "Use on Sudowoodo blocking the path on Route 36. Also waters berries."
    },
    [494] = {
        name = "Appât Ball",
        description = "3x effectiveness while fishing. Made from Blu Apricorn."
    },
    [493] = {
        name = "Niveau Ball",
        description = "Success rate based off of fraction target Pokmon is of user's Pokemon. Made from Noigrume Rouge ."
    },
    [498] = {
        name = "Lune Ball",
        description = "4x effectiveness on familes of Pokmon with a Moon Stone evolution. Made from Ylw Apricorn."
    },
    [495] = {
        name = "Masse Ball",
        description = "Has flat bonus or penalty to catch rate depending on weight class of target. Made from Blk Apricorn."
    },
    [492] = {
        name = "Speed Ball",
        description = "4x effectiveness on Pokmon with 100 or greater base speed. Made from Wht Apricorn."
    },
    [497] = {
        name = "Copain Ball",
        description = "Caught Pokémon start with 200 happiness. Made from Grn Apricorn."
    },
    [496] = {
        name = "Love Ball",
        description = "8x effectiveness on opposite sex, same species targets of the Active Pokemon. Made from Pnk Apricorn."
    },
    [500] = {
        name = "Parc Ball",
        description = "Catches Pokémon in the Pal Park every time."
    },
    [499] = {
        name = "Parc Ball",
        description = "Tries to catch a Pok" .. Chars.accentedE .. "mon in the Bug-Catching contest in National Park."
    },
    [485] = {
        name = "Noigrume Rouge ",
        description = "Used to make a Niveau Ball."
    },
    [486] = {
        name = "Noigrume Bleu ",
        description = "Used to make a Appât Ball."
    },
    [487] = {
        name = "Noigrume Jaune ",
        description = "Used to make a Lune Ball."
    },
    [488] = {
        name = "Noigrume Vert ",
        description = "Used to make a Copain Ball."
    },
    [489] = {
        name = "Noigrume Rose",
        description = "Used to make a Love Ball."
    },
    [490] = {
        name = "Noigrume Blanc",
        description = "Used to make a Speed Ball."
    },
    [491] = {
        name = "Noigrume Noir",
        description = "Used to make a Masse Ball."
    },
    [471] = {
        name = "Cherch'Objet",
        description = "Use to find hidden items on the field. AKA Itemfinder."
    },
    [504] = {
        name = "Bonbon Rage",
        description = "Acts as a Potion."
    },
    [534] = {
        name = "Gemme Rouge",
        description = "Summons Groudon to the Embedded Tower."
    },
    [535] = {
        name = "Gemme Bleue",
        description = "Summons Kyogre to the Embedded Tower."
    },
    [532] = {
        name = "Orbe Vert",
        description = "Summons Rayquaza to the Embedded Tower."
    },
    [536] = {
        name = "Mystécristal",
        description = "S: Summons Latias H: Summons Latios."
    },
    [469] = {
        name = "Carnet Zarbi",
        description = "Keeps track of Unown types caught."
    },
    [472] = {
        name = "Carte Bleue",
        description = "Keeps track of points from Buena's show."
    },
    [473] = {
        name = "Queueramolos",
        description = "A tasty tail that sells for a high price."
    },
    [474] = {
        name = "Glas Transparent",
        description = "HS: Allows Kimono-girls to summon Ho-oh. C: Summons Suicune to the Tin Tower."
    },
    [475] = {
        name = "Card Key",
        description = "HS: Opens doors in the Radio Tower. "
    },
    [476] = {
        name = "Basement Key",
        description = "HS: Key to the tunnel under Goldenrod City. "
    },
    [478] = {
        name = "Écaille Rouge",
        description = "Trade to Mr. Pokémon for an Exp. Share."
    },
    [479] = {
        name = "Objet perdu",
        description = "A Poké Poupée lost by the Copycat who lives in Saffron City. Trade for a Passe."
    },
    [480] = {
        name = "Passe",
        description = "Grants access to ride the Aimant Train between Goldenrod City and Saffron City."
    },
    [481] = {
        name = "Partie Mach.",
        description = "Must be replaced in the Power Plant to power the Aimant Train."
    },
    [482] = {
        name = "Argent'Aile",
        description = "Summons Lugia to the Whirl Islands."
    },
    [483] = {
        name = "Plume Arc-en-ciel",
        description = "Summons Ho-Oh at the top of the Bell Tower."
    },
    [484] = {
        name = "oeuf Mystère",
        description = "Deliver to Professor Elm."
    },
    [502] = {
        name = "Gb Sounds",
        description = "Use to listen to GameBoy era audio."
    },
    [503] = {
        name = "Glas Tempête",
        description = "Allows Kimono-girls to summon Lugia."
    },
    [505] = {
        name = "Data Card-01",
        description = "Records the number of times the trainer has come in first place overall in the Pokeathlon."
    },
    [506] = {
        name = "Data Card-02",
        description = "Records the number of times the trainer has come in last place overall in the Pokeathlon."
    },
    [507] = {
        name = "Data Card-03",
        description = "Records the number of times the trainer's Pokmon have dashed in the Pokeathlon."
    },
    [508] = {
        name = "Data Card-04",
        description = "Records the number of times the trainer's Pokmon have jumped in the Pokeathlon."
    },
    [509] = {
        name = "Data Card-05",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Hurdle Dash."
    },
    [510] = {
        name = "Data Card-06",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Relay Run."
    },
    [511] = {
        name = "Data Card-07",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Pennant Capture."
    },
    [512] = {
        name = "Data Card-08",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Block Smash."
    },
    [513] = {
        name = "Data Card-09",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Disc Catch."
    },
    [514] = {
        name = "Data Card-10",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Snow Throw."
    },
    [515] = {
        name = "Data Card-11",
        description = "Records the number of points the trainer has earned in the Pokeathlon."
    },
    [516] = {
        name = "Data Card-12",
        description = "Records the number of times the trainer's Pokmon have messed up in the Pokeathlon."
    },
    [517] = {
        name = "Data Card-13",
        description = "Records the number of times the trainer's Pokmon have defeated themselves in the Pokeathlon."
    },
    [518] = {
        name = "Data Card-14",
        description = "Records the number of times the trainer's Pokmon have tackled in the Pokeathlon."
    },
    [519] = {
        name = "Data Card-15",
        description = "Records the number of times the trainer's Pokmon have fallen in the Pokeathlon."
    },
    [520] = {
        name = "Data Card-16",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Ring Drop."
    },
    [521] = {
        name = "Data Card-17",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Lamp Jump."
    },
    [522] = {
        name = "Data Card-18",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Circle Push."
    },
    [523] = {
        name = "Data Card-19",
        description = "Records the number of times the trainer has come in first place overall in the Pokeathlon over wirelss."
    },
    [524] = {
        name = "Data Card-20",
        description = "Records the number of times the trainer has come in last place overall in the Pokeathlon over wireless."
    },
    [525] = {
        name = "Data Card-21",
        description = "Records the number of times the trainer has come in first across all Pokeathlon events."
    },
    [526] = {
        name = "Data Card-22",
        description = "Records the number of times the trainer has come in last across all Pokeathlon events."
    },
    [527] = {
        name = "Data Card-23",
        description = "Records the number of times the trainer has switched Pokmon in the Pokeathlon."
    },
    [528] = {
        name = "Data Card-24",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Goal Roll."
    },
    [529] = {
        name = "Data Card-25",
        description = "Records the number of times the trainer's Pokmon received prizes in the Pokeathlon."
    },
    [530] = {
        name = "Data Card-26",
        description = "Records the number of times the trainer has instructed Pokmon in the Pokeathlon."
    },
    [531] = {
        name = "Data Card-27",
        description = "Records the total time spent in the Pokeathlon."
    },
    [533] = {
        name = "Poké Écrin",
        description = "Contains TM95 (Snarl)."
    },
    [501] = {
        name = "Photo Album",
        description = "Stores photos from your adventure."
    },
    [116] = {
        name = "Douse Drive",
        description = "Grants Genesect a blue, Water-type Techno Blast."
    },
    [117] = {
        name = "Shock Drive",
        description = "Grants Genesect a yellow, Electric-type Techno Blast."
    },
    [118] = {
        name = "Burn Drive",
        description = "Grants Genesect a red, Fire-type Techno Blast."
    },
    [119] = {
        name = "Chill Drive",
        description = "Grants Genesect a white, Ice-type Techno Blast."
    },
    [134] = {
        name = "Chococoeur",
        description = "Restores 20 HP."
    },
    [137] = {
        name = "Greet Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [138] = {
        name = "Favored Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [139] = {
        name = "Rsvp Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [140] = {
        name = "Thanks Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [141] = {
        name = "Inquiry Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [142] = {
        name = "Like Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [143] = {
        name = "Reply Mail",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [144] = {
        name = "Bridge Mail-s",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [145] = {
        name = "Bridge Mail-d",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [146] = {
        name = "Bridge Mail-t",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [147] = {
        name = "Bridge Mail-v",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [148] = {
        name = "Bridge Mail-m",
        description = "Lets a Trainer write a message and send it via Pokémon trade."
    },
    [537] = {
        name = "Prism Scale",
        description = "Traded on a Feebas: Holder evolves into Milotic."
    },
    [538] = {
        name = "Eviolite",
        description = "Holder has 1.5x Defense and Special Defense, as long as it's not fully evolved."
    },
    [539] = {
        name = "Float Stone",
        description = "Holder has 0.5x weight."
    },
    [540] = {
        name = "Rocky Helmet",
        description = "When the holder is hit by a contact move, the attacking Pokmon takes 1/6 its max HP in damage."
    },
    [541] = {
        name = "Air Balloon",
        description = "Grants immunity to Ground-type moves, Spikes, and Toxic Spikes. Consumed when the holder takes damage from a move."
    },
    [542] = {
        name = "Red Card",
        description = "When the holder takes damage from a move, the opponent switches out for another random party Pokemon. Consumed after use."
    },
    [543] = {
        name = "Ring Target",
        description = "Negates the holder's type immunities. Ability immunities are not removed."
    },
    [544] = {
        name = "Binding Band",
        description = "Doubles the per-turn damage of multi-turn trapping moves."
    },
    [545] = {
        name = "Absorb Bulb",
        description = "Raises the holder's Special Attack by one stage when it takes Water-type damage."
    },
    [546] = {
        name = "Cell Battery",
        description = "Raises the holder's Attack by one stage when it takes Electric-type damage."
    },
    [547] = {
        name = "Eject Button",
        description = "When the holder takes damage from a move, it switches out for a party Pokmon of the Trainer's choice."
    },
    [548] = {
        name = "Fire Gem",
        description = "When the holder uses a damaging fire-type move, the move has 1.5x power and this item is consumed."
    },
    [549] = {
        name = "Water Gem",
        description = "When the holder uses a damaging water-type move, the move has 1.5x power and this item is consumed."
    },
    [550] = {
        name = "Electric Gem",
        description = "When the holder uses a damaging electric-type move, the move has 1.5x power and this item is consumed."
    },
    [551] = {
        name = "Grass Gem",
        description = "When the holder uses a damaging grass-type move, the move has 1.5x power and this item is consumed."
    },
    [552] = {
        name = "Ice Gem",
        description = "When the holder uses a damaging ice-type move, the move has 1.5x power and this item is consumed."
    },
    [553] = {
        name = "Fighting Gem",
        description = "When the holder uses a damaging fighting-type move, the move has 1.5x power and this item is consumed."
    },
    [554] = {
        name = "Poison Gem",
        description = "When the holder uses a damaging poison-type move, the move has 1.5x power and this item is consumed."
    },
    [555] = {
        name = "Ground Gem",
        description = "When the holder uses a damaging ground-type move, the move has 1.5x power and this item is consumed."
    },
    [556] = {
        name = "Flying Gem",
        description = "When the holder uses a damaging flying-type move, the move has 1.5x power and this item is consumed."
    },
    [557] = {
        name = "Psychic Gem",
        description = "When the holder uses a damaging psychic-type move, the move has 1.5x power and this item is consumed."
    },
    [558] = {
        name = "Bug Gem",
        description = "When the holder uses a damaging bug-type move, the move has 1.5x power and this item is consumed."
    },
    [559] = {
        name = "Rock Gem",
        description = "When the holder uses a damaging rock-type move, the move has 1.5x power and this item is consumed."
    },
    [560] = {
        name = "Ghost Gem",
        description = "When the holder uses a damaging ghost-type move, the move has 1.5x power and this item is consumed."
    },
    [561] = {
        name = "Dragon Gem",
        description = "When the holder uses a damaging dragon-type move, the move has 1.5x power and this item is consumed."
    },
    [562] = {
        name = "Dark Gem",
        description = "When the holder uses a damaging dark-type move, the move has 1.5x power and this item is consumed."
    },
    [563] = {
        name = "Steel Gem",
        description = "When the holder uses a damaging steel-type move, the move has 1.5x power and this item is consumed."
    },
    [564] = {
        name = "Normal Gem",
        description = "When the holder uses a damaging normal-type move, the move has 1.5x power and this item is consumed."
    },
    [565] = {
        name = "Health Wing",
        description = "Increases HP effort by 1."
    },
    [566] = {
        name = "Muscle Wing",
        description = "Increases Attack effort by 1."
    },
    [567] = {
        name = "Resist Wing",
        description = "Increases Defense effort by 1."
    },
    [568] = {
        name = "Genius Wing",
        description = "Increases Special Attack effort by 1."
    },
    [569] = {
        name = "Clever Wing",
        description = "Increases Special Defense effort by 1."
    },
    [570] = {
        name = "Swift Wing",
        description = "Increases Speed effort by 1."
    },
    [571] = {
        name = "Pretty Wing",
        description = "Sell for 100 Pokedollars."
    },
    [572] = {
        name = "Cover Fossil",
        description = "Can be revived into a tirtouga."
    },
    [573] = {
        name = "Plume Fossil",
        description = "Can be revived into a archen."
    },
    [574] = {
        name = "Liberty Passe",
        description = "Allows access to Liberty Garden and Victini."
    },
    [575] = {
        name = "Passe Orb",
        description = "Activates Passe Powers."
    },
    [576] = {
        name = "Dream Ball",
        description = "Catches Pokémon found in the Dream World."
    },
    [577] = {
        name = "Poke Toy",
        description = "Ends a wild battle."
    },
    [578] = {
        name = "Prop Case",
        description = "Stores props for the Pokémon Musical."
    },
    [579] = {
        name = "Dragon Skull",
        description = "Return to the museum in Nacrene City."
    },
    [580] = {
        name = "Balm Mushroom",
        description = "Sell to Hungry Maid for 25000 Pokedollars."
    },
    [581] = {
        name = "Big Pépite",
        description = "Sell to Ore Collector for 30000 Pokedollars."
    },
    [582] = {
        name = "Pearl String",
        description = "Sell to Ore Collector for 25000 Pokedollars."
    },
    [583] = {
        name = "Comet Shard",
        description = "Sell to Ore Collector for 60000 Pokedollars."
    },
    [584] = {
        name = "Relic Copper",
        description = "Sell to Villa Owner for 1000 Pokedollars."
    },
    [585] = {
        name = "Relic Silver",
        description = "Sell to Villa Owner 5000 Pokedollars."
    },
    [586] = {
        name = "Relic Gold",
        description = "Sell to Villa Owner 10000 Pokedollars."
    },
    [587] = {
        name = "Relic Vase",
        description = "Sell to Villa Owner 50000 Pokedollars."
    },
    [588] = {
        name = "Relic Band",
        description = "Sell to Villa Owner for 100000 Pokedollars."
    },
    [589] = {
        name = "Relic Statue",
        description = "Sell to Villa Owner 200000 Pokedollars."
    },
    [590] = {
        name = "Relic Crown",
        description = "Sell to Villa Owner for 300000 Pokedollars."
    },
    [591] = {
        name = "Glace Volute",
        description = "Cures any status ailment and confusion."
    },
    [592] = {
        name = "Muscle +-2",
        description = "Raises critical hit rate by two stages in battle. Wonder Launcher only."
    },
    [593] = {
        name = "Vitesse +-2",
        description = "Raises Speed by two stages in battle. Wonder Launcher only."
    },
    [594] = {
        name = "X Sp-atk-2",
        description = "Raises Special Attack by two stages in battle. Wonder Launcher only."
    },
    [595] = {
        name = "X Sp-def-2",
        description = "Raises Special Defense by two stages in battle. Wonder Launcher only."
    },
    [596] = {
        name = "Défense +-2",
        description = "Raises Defense by two stages in battle. Wonder Launcher only."
    },
    [597] = {
        name = "Attaque +-2",
        description = "Raises Attack by two stages in battle. Wonder Launcher only."
    },
    [598] = {
        name = "Précision +-2",
        description = "Raises accuracy by two stages in battle. Wonder Launcher only."
    },
    [599] = {
        name = "Vitesse +-3",
        description = "Raises Speed by three stages in battle. Wonder Launcher only."
    },
    [600] = {
        name = "X Sp-atk-3",
        description = "Raises Special Attack by three stages in battle. Wonder Launcher only."
    },
    [601] = {
        name = "X Sp-def-3",
        description = "Raises Special Defense by three stages in battle. Wonder Launcher only."
    },
    [602] = {
        name = "Défense +-3",
        description = "Raises Defense by three stages in battle. Wonder Launcher only."
    },
    [603] = {
        name = "Attaque +-3",
        description = "Raises Attack by three stages in battle. Wonder Launcher only."
    },
    [604] = {
        name = "Précision +-3",
        description = "Raises accuracy by three stages in battle. Wonder Launcher only."
    },
    [605] = {
        name = "Vitesse +-6",
        description = "Raises Speed by six stages in battle. Wonder Launcher only."
    },
    [606] = {
        name = "X Sp-atk-6",
        description = "Raises Special Attack by six stages in battle. Wonder Launcher only."
    },
    [607] = {
        name = "X Sp-def-6",
        description = "Raises Special Defense by six stages in battle. Wonder Launcher only."
    },
    [608] = {
        name = "Défense +-6",
        description = "Raises Defense by six stages in battle. Wonder Launcher only."
    },
    [609] = {
        name = "Attaque +-6",
        description = "Raises Attack by six stages in battle. Wonder Launcher only."
    },
    [610] = {
        name = "Précision +-6",
        description = "Raises accuracy by six stages in battle. Wonder Launcher only."
    },
    [611] = {
        name = "Ability Urge",
        description = "Forcibly activates a friendly Pokemon's ability."
    },
    [612] = {
        name = "Item Drop",
        description = "Forces a friendly Pokémon to drop its held item."
    },
    [613] = {
        name = "Item Urge",
        description = "Forcibly activates a friendly Pokemon's held item."
    },
    [614] = {
        name = "Reset Urge",
        description = "Resets a friendly Pokemon's stat changes."
    },
    [615] = {
        name = "Muscle +-3",
        description = "Raises critical hit rate by three stages in battle. Wonder Launcher only."
    },
    [616] = {
        name = "Light Stone",
        description = "Summons Reshiram for the final battle against N."
    },
    [617] = {
        name = "Dark Stone",
        description = "Summons Zekrom for the final battle against N."
    },
    [618] = {
        name = "TM93",
        description = "Teaches a move to a compatible Pokemon."
    },
    [619] = {
        name = "TM94",
        description = "Teaches a move to a compatible Pokemon."
    },
    [620] = {
        name = "TM95",
        description = "Teaches a move to a compatible Pokemon."
    },
    [621] = {
        name = "Xtransceiver",
        description = "Makes four-way video calls."
    },
    [622] = {
        name = "God Stone",
        description = "Unknown. Currently unused."
    },
    [623] = {
        name = "Gram 1",
        description = "Part of a sidequest to obtain tm89."
    },
    [624] = {
        name = "Gram 2",
        description = "Part of a sidequest to obtain tm89."
    },
    [625] = {
        name = "Gram 3",
        description = "Part of a sidequest to obtain tm89."
    }
}
