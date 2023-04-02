ItemData = {}
ItemData.ITEMS = {}
ItemData.HEALING_TYPE = MiscUtils.readOnly({CONSTANT = 0, PERCENTAGE = 1})
ItemData.NATURE_SPECIFIC_BERRIES = {
    ["Figy Berry"] = {
        Modest = true,
        Timid = true,
        Calm = true,
        Bold = true
    },
    ["Iapapa Berry"] = {
        Lonely = true,
        Mild = true,
        Gentle = true,
        Hasty = true
    },
    ["Wiki Berry"] = {
        Adamant = true,
        Jolly = true,
        Careful = true,
        Impish = true
    },
    ["Aguav Berry"] = {
        Naughty = true,
        Rash = true,
        Naive = true,
        Lax = true
    },
    ["Mago Berry"] = {
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
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [591] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [27] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [36] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [42] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [157] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [54] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.ALL
        },
        [19] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.BURN
        },
        [152] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.BURN
        },
        [156] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.CONFUSE
        },
        [153] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.FREEZE
        },
        [20] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.FREEZE
        },
        [219] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.INFATUATION
        },
        [149] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.PARALYZE
        },
        [22] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.PARALYZE
        },
        [18] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.POISON
        },
        [151] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.POISON
        },
        [21] = {
            name = "Baie Papaya",
            status = MiscData.STATUS_TYPE.SLEEP
        },
        [150] = {
            name = "Baie Papaya",
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
            name = "Baie Papaya",
            amount = 100,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [24] = {
            name = "Baie Papaya",
            amount = 100,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [158] = {
            name = "Baie Papaya",
            amount = 25,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [162] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [208] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [159] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [163] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [161] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [160] = {
            name = "Baie Papaya",
            amount = 12.5,
            type = ItemData.HEALING_TYPE.PERCENTAGE
        },
        [35] = {
            name = "Baie Papaya",
            amount = 200,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [25] = {
            name = "Baie Papaya",
            amount = 200,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [33] = {
            name = "Baie Papaya",
            amount = 100,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [32] = {
            name = "Baie Papaya",
            amount = 80,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [31] = {
            name = "Baie Papaya",
            amount = 60,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [26] = {
            name = "Baie Papaya",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [34] = {
            name = "Baie Papaya",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [30] = {
            name = "Baie Papaya",
            amount = 50,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [43] = {
            name = "Baie Papaya",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [17] = {
            name = "Baie Papaya",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [504] = {
            name = "Baie Papaya",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [134] = {
            name = "Baie Papaya",
            amount = 20,
            type = ItemData.HEALING_TYPE.CONSTANT
        },
        [155] = {
            name = "Baie Papaya",
            amount = 10,
            type = ItemData.HEALING_TYPE.CONSTANT
        }
    }
)
ItemData.GEN_4_ITEMS = {
    [1] = {
        name = "Baie Papaya",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [2] = {
        name = "Hyper Ball",
        description = "Une Ball ultraperformante dont le taux de réussite est supérieur à celui de la Super Ball."
    },
    [3] = {
        name = "Super Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [4] = {
        name = "Poke Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [5] = {
        name = "Safari Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [6] = {
        name = "Filet Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [7] = {
        name = "Scuba Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [8] = {
        name = "Faiblo Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [9] = {
        name = "Bis Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [10] = {
        name = "Chrono Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [11] = {
        name = "Luxe Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [12] = {
        name = "Honor Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [13] = {
        name = "Sombre Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [14] = {
        name = "Soin Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [15] = {
        name = "Rapide Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [16] = {
        name = "Mémoire Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [17] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [18] = {
        name = "Antidote",
        description = "Un médicament sous forme de spray. Guérit un Pokémon empoisonné."
    },
    [19] = {
        name = "Anti-Brûle",
        description = "Un médicament sous forme de spray. Soigne les brûlures d’un Pokémon."
    },
    [20] = {
        name = "Antigel",
        description = "Un médicament sous forme de spray. Réchauffe un Pokémon gelé."
    },
    [21] = {
        name = "Réveil",
        description = "Un médicament sous forme de spray. Réveille un Pokémon endormi."
    },
    [22] = {
        name = "Anti-Para",
        description = "Un médicament sous forme de spray. Soigne un Pokémon de la paralysie."
    },
    [23] = {
        name = "Guérison",
        description = "Un médicament qui restaure tous les PV d’un Pokémon et soigne tous ses problèmes de statut."
    },
    [24] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [25] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [26] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [27] = {
        name = "Total Soin",
        description = "Un médicament sous forme de spray. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [28] = {
        name = "Rappel",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [29] = {
        name = "Rappel",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [30] = {
        name = "Eau Fraîche",
        description = "Une eau riche en minéraux. Restaure 50 PV à un Pokémon."
    },
    [31] = {
        name = "Soda Cool",
        description = "Une boisson pétillante. Restaure 60 PV à un Pokémon."
    },
    [32] = {
        name = "Limonade",
        description = "Une boisson très sucrée. Restaure 80 PV à un Pokémon."
    },
    [33] = {
        name = "Lait Meumeu",
        description = "Un lait très nourrissant. Restaure 100 PV à un Pokémon."
    },
    [34] = {
        name = "Energy Powder",
        description = "Restores 50 HP, but lowers happiness."
    },
    [35] = {
        name = "Racinénergie",
        description = "Une racine très amère. Restaure 200 PV à un Pokémon."
    },
    [36] = {
        name = "Poudre Soin",
        description = "Une poudre médicinale très amère. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [37] = {
        name = "Herbe Rappel",
        description = "Une herbe médicinale très amère. Ranime un Pokémon K.O. et restaure tous ses PV."
    },
    [38] = {
        name = "Huile",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [39] = {
        name = "Huile",
        description = "Restaure jusqu’à 10 PP d’une capacité sélectionnée."
    },
    [40] = {
        name = "Élixir",
        description = "Restaure 10 PP de toutes les capacités d’un Pokémon."
    },
    [41] = {
        name = "Max Élixir",
        description = "Restaure tous les PP de toutes les capacités d’un Pokémon."
    },
    [42] = {
        name = "Lava Cookie",
        description = "La spécialité de la ville de Vermilava. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [43] = {
        name = "Jus de Baie",
        description = "Une boisson 100% pur jus de Baies. Restaure 20 PV à un Pokémon."
    },
    [44] = {
        name = "Cendresacrée",
        description = "Ranime tous les Pokémon K.O. et restaure tous leurs PV."
    },
    [45] = {
        name = "Hp Up",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [46] = {
        name = "Protéine",
        description = "Une boisson très nutritive qui monte l’Attaque de base d’un Pokémon."
    },
    [47] = {
        name = "Fer",
        description = "Une boisson très nutritive qui monte la Défense de base d’un Pokémon."
    },
    [48] = {
        name = "Carbone",
        description = "Une boisson très nutritive qui monte la Vitesse de base d’un Pokémon."
    },
    [49] = {
        name = "Calcium",
        description = "Une boisson très nutritive qui monte l’Attaque Spéciale de base d’un Pokémon."
    },
    [50] = {
        name = "Super Bonbon",
        description = "Un bonbon plein d’énergie. Il permet à un Pokémon de gagner un niveau d’expérience."
    },
    [51] = {
        name = "Pp Up",
        description = "Raises a move's max PP by 20%."
    },
    [52] = {
        name = "Zinc",
        description = "Une boisson très nutritive qui monte la Défense Spéciale d’un Pokémon."
    },
    [53] = {
        name = "Pp Max",
        description = "Raises a move's max PP by 60%."
    },
    [54] = {
        name = "Vieux Gâteau",
        description = "Spécialité du Vieux Château. Il soigne tous les problèmes de statut d’un Pokémon."
    },
    [55] = {
        name = "Défense Spéc",
        description = "Empêche la réduction des stats de tous les Pokémon de l’équipe pendant 5 tours."
    },
    [56] = {
        name = "Muscle +",
        description = "Monte fortement le taux de critiques. Utilisable une seule fois. L’effet disparaît si le Pokémon se retire."
    },
    [57] = {
        name = "Attaque +",
        description = "Monte l’Attaque pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [58] = {
        name = "Défense +",
        description = "Monte la Défense pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [59] = {
        name = "Vitesse +",
        description = "Monte la Vitesse pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [60] = {
        name = "Précision +",
        description = "Monte la Précision pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [61] = {
        name = "Spécial +",
        description = "onte l’Attaque Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [62] = {
        name = "Déf. Spé. +",
        description = "Monte la Défense Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [63] = {
        name = "Poke Doll",
        description = "Ends a wild battle."
    },
    [64] = {
        name = "Queue Skitty",
        description = "Objet qui attire les Pokémon. Permet de s’enfuir d’un combat contre un Pokémon sauvage."
    },
    [65] = {
        name = "Blue Flute",
        description = "Cures sleep."
    },
    [66] = {
        name = "Yellow Flute",
        description = "Cures confusion."
    },
    [67] = {
        name = "Red Flute",
        description = "Cures attraction."
    },
    [68] = {
        name = "Flûte Noire",
        description = "Jouet en forme de flûte en verre noir. Les amateurs en donnent un bon prix."
    },
    [69] = {
        name = "Flûteblanche",
        description = "Jouet en forme de flûte en verre blanc. Les amateurs en donnent un bon prix."
    },
    [70] = {
        name = "Shoal Salt",
        description = "No effect."
    },
    [71] = {
        name = "Shoal Shell",
        description = "No effect."
    },
    [72] = {
        name = "Red Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [73] = {
        name = "Blue Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [74] = {
        name = "Yellow Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [75] = {
        name = "Green Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [76] = {
        name = "Superepousse",
        description = "Repousse les Pokémon sauvages faibles pendant 200 pas."
    },
    [77] = {
        name = "Max Repousse",
        description = "Repousse les Pokémon sauvages faibles pendant 250 pas."
    },
    [78] = {
        name = "Corde Sortie",
        description = "Une corde longue et solide permettant de sortir rapidement d’une grotte ou d’un donjon."
    },
    [79] = {
        name = "Repousse",
        description = "Repousse les Pokémon sauvages faibles pendant 100 pas."
    },
    [80] = {
        name = "Pierresoleil",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est rouge comme le soleil."
    },
    [81] = {
        name = "Pierre Lune",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [82] = {
        name = "Pierre Feu",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est jaune et orange."
    },
    [83] = {
        name = "Thunder Stone",
        description = "Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu."
    },
    [84] = {
        name = "Pierre Eau",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est de couleur bleue."
    },
    [85] = {
        name = "Pierreplante",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Une feuille est dessinée dessus."
    },
    [86] = {
        name = "Tiny Mushroom",
        description = "Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokedollars, or to Hungry Maid for 500 Pokedollars."
    },
    [87] = {
        name = "Gros Champi",
        description = "Un grand champignon plutôt rare. Il est très populaire parmi certains fans dévoués."
    },
    [88] = {
        name = "Perle",
        description = "Une petite perle qui brille d’une jolie couleur argent. Peut être vendue à bas prix aux magasins."
    },
    [89] = {
        name = "Grande Perle",
        description = "Une grande perle qui brille d’une jolie couleur argent. Peut être vendue à bon prix aux magasins."
    },
    [90] = {
        name = "Pouss.Étoile",
        description = "Sable rouge ravissant, aux grains très fins. Peut être vendu à bon prix aux magasins."
    },
    [91] = {
        name = "Morc. Étoile",
        description = "Fragment de gemme qui brille d’un éclat rouge. Peut se vendre à bon prix aux magasins."
    },
    [92] = {
        name = "Pépite",
        description = "Pépite d’or pur qui brille magnifiquement. Peut être vendue à bon prix aux magasins."
    },
    [93] = {
        name = "Heart Scale",
        description = "No effect. Can be traded for prior Level-up moves."
    },
    [94] = {
        name = "Honey",
        description = "Used to attract wild Pok" .. Chars.accentedE .. "mon."
    },
    [95] = {
        name = "Fertipousse",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [96] = {
        name = "Fertihumide",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [97] = {
        name = "Fertistable",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [98] = {
        name = "Fertiglu",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [99] = {
        name = "Root Fossil",
        description = "Can be revived into a Lileep."
    },
    [100] = {
        name = "Claw Fossil",
        description = "Can be revived into an Anorith."
    },
    [101] = {
        name = "Helix Fossil",
        description = "Can be revived into an Omanyte."
    },
    [102] = {
        name = "Dome Fossil",
        description = "Can be revived into a Kabuto."
    },
    [103] = {
        name = "Old Amber",
        description = "Can be revived into an Aerodactyl."
    },
    [104] = {
        name = "Armor Fossil",
        description = "Can be revived into a Shieldon."
    },
    [105] = {
        name = "Skull Fossil",
        description = "Can be revived into a Cranidos."
    },
    [106] = {
        name = "Os Rare",
        description = "Un os d’une grande valeur pour l’archéologie Pokémon. Peut être vendu à bon prix aux magasins."
    },
    [107] = {
        name = "Pierre Éclat",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle brille d’une lumière aveuglante."
    },
    [108] = {
        name = "Pierre Nuit",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est sombre comme une nuit sans lune."
    },
    [109] = {
        name = "Pierre Aube",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle brille comme un œil."
    },
    [110] = {
        name = "Pierre Ovale",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle a la forme d’un œuf."
    },
    [111] = {
        name = "Odd Keystone",
        description = "Use on the tower on Route 209 to encounter Spiritomb if you have at least 32 Underground greetings."
    },
    [135] = {
        name = "Orbe Adamant",
        description = "Orbe très brillant destiné à Dialga. Augmente la puissance des capacités de type Dragon et Acier."
    },
    [136] = {
        name = "Orbe Perlé",
        description = "Bel orbe luisant destiné à Palkia. Augmente la puissance des capacités de type Dragon et Eau."
    },
    [137] = {
        name = "Grass Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [138] = {
        name = "Flame Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [139] = {
        name = "Bubble Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [140] = {
        name = "Bloom Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [141] = {
        name = "Tunnel Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [142] = {
        name = "Steel Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [143] = {
        name = "Heart Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [144] = {
        name = "Snow Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [145] = {
        name = "Space Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [146] = {
        name = "Air Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [147] = {
        name = "Mosaic Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [148] = {
        name = "Brick Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [149] = {
        name = "Baie Ceriz",
        description = "Baie qui soigne la paralysie lorsqu’elle est tenue par un Pokémon."
    },
    [150] = {
        name = "Baie Maron",
        description = "Baie qui soigne le sommeil lorsqu’elle est tenue par un Pokémon."
    },
    [151] = {
        name = "Baie Pêcha",
        description = "Baie qui soigne l’empoisonnement lorsqu’elle est tenue par un Pokémon."
    },
    [152] = {
        name = "Baie Fraive",
        description = "Baie qui soigne les brûlures lorsqu’elle est tenue par un Pokémon."
    },
    [153] = {
        name = "Baie Willia",
        description = "Baie qui soigne le gel lorsqu’elle est tenue par un Pokémon."
    },
    [154] = {
        name = "Baie Mepo",
        description = "Baie qui restaure 10 PP lorsqu’elle est tenue par un Pokémon."
    },
    [155] = {
        name = "Baie Oran",
        description = "Baie qui restaure 10 PV lorsqu’elle est tenue par un Pokémon."
    },
    [156] = {
        name = "Baie Kika",
        description = "Baie qui soigne la confusion lorsqu’elle est tenue par un Pokémon."
    },
    [157] = {
        name = "Baie Prine",
        description = "Baie qui soigne tous les problèmes de statut lorsqu’elle est tenue par un Pokémon."
    },
    [158] = {
        name = "Baie Sitrus",
        description = "Baie qui restaure quelques PV lorsqu’elle est tenue par un Pokémon."
    },
    [159] = {
        name = "Baie Figuy",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [160] = {
        name = "Baie Wiki",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [161] = {
        name = "Baie Mago",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [162] = {
        name = "Baie Gowav",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [163] = {
        name = "Baie Papaya",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [164] = {
        name = "Razz Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [165] = {
        name = "Bluk Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [166] = {
        name = "Nanab Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [167] = {
        name = "Wepear Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [168] = {
        name = "Pinap Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [169] = {
        name = "Baie Grena",
        description = "Rend les Pokémon plus amicaux, mais baisse leurs PV de base."
    },
    [170] = {
        name = "Baie Alga",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Attaque de base."
    },
    [171] = {
        name = "Baie Qualot",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Défense de base."
    },
    [172] = {
        name = "Baie Lonme",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Attaque Spéciale de base."
    },
    [173] = {
        name = "Baie Résin",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Défense Spéciale de base."
    },
    [174] = {
        name = "Baie Tamato",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Vitesse de base."
    },
    [175] = {
        name = "Cornn Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [176] = {
        name = "Magost Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [177] = {
        name = "Rabuta Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [178] = {
        name = "Nomel Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [179] = {
        name = "Spelon Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [180] = {
        name = "Pamtre Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [181] = {
        name = "Watmel Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [182] = {
        name = "Durin Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [183] = {
        name = "Belue Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [184] = {
        name = "Baie Chocco",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Feu."
    },
    [185] = {
        name = "Baie Pocpoc",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Eau."
    },
    [186] = {
        name = "Baie Parma",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Électrik."
    },
    [187] = {
        name = "Baie Ratam",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Plante."
    },
    [188] = {
        name = "Baie Nanone",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Glace."
    },
    [189] = {
        name = "Baie Pomroz",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Combat."
    },
    [190] = {
        name = "Baie Kébia",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Poison."
    },
    [191] = {
        name = "Baie Jouca",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Sol."
    },
    [192] = {
        name = "Baie Cobaba",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Vol."
    },
    [193] = {
        name = "Baie Yapap",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Psy."
    },
    [194] = {
        name = "Baie Panga",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Insecte."
    },
    [195] = {
        name = "Baie Charti",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Roche."
    },
    [196] = {
        name = "Baie Sédra",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Spectre."
    },
    [197] = {
        name = "Baie Fraigo",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Dragon."
    },
    [198] = {
        name = "Baie Lampou",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Ténèbres."
    },
    [199] = {
        name = "Baie Babiri",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Acier."
    },
    [200] = {
        name = "Baie Zalis",
        description = "Tenue, cette Baie affaiblit une attaque ennemie de type Normal."
    },
    [201] = {
        name = "Baie Lichii",
        description = "Tenue, cette Baie monte l’Attaque en cas de besoin."
    },
    [202] = {
        name = "Baie Lingan",
        description = "Tenue, cette Baie monte la Défense en cas de besoin."
    },
    [203] = {
        name = "Baie Sailak",
        description = "Tenue, cette Baie monte la Vitesse en cas de besoin."
    },
    [204] = {
        name = "Baie Pitaye",
        description = "Tenue, cette Baie monte l’Atq. Spé. en cas de besoin."
    },
    [205] = {
        name = "Baie Abriko",
        description = "Tenue, cette Baie monte la Déf. Spé. en cas de besoin."
    },
    [206] = {
        name = "Baie Lansat",
        description = "Tenue, cette Baie monte le taux de critiques en cas de besoin."
    },
    [207] = {
        name = "Baie Frista",
        description = "Tenue, cette Baie monte beaucoup une des stats en cas de besoin."
    },
    [208] = {
        name = "Baie Enigma",
        description = "Tenue, cette Baie restaure les PV du Pokémon s’il subit une attaque super efficace."
    },
    [209] = {
        name = "Baie Micle",
        description = "Tenue, cette Baie augmente une fois la Précision d’une capacité en cas de besoin."
    },
    [210] = {
        name = "Baie Chérim",
        description = "Tenue, cette Baie permet d’attaquer en premier une fois en cas de besoin."
    },
    [211] = {
        name = "Baie Jaboca",
        description = "Tenue, cette Baie inflige des dégâts à l’ennemi s’il utilise une attaque physique qui atteint son but."
    },
    [212] = {
        name = "Baie Pommo",
        description = "Tenue, cette Baie inflige des dégâts à l’ennemi s’il utilise une attaque spéciale qui atteint son but."
    },
    [213] = {
        name = "Poudreclaire",
        description = "Objet à tenir qui intimide et baisse la Précision de l’ennemi."
    },
    [214] = {
        name = "Herbeblanche",
        description = "Objet à tenir qui restaure les stats baissées. Ne peut être utilisé qu’une fois."
    },
    [215] = {
        name = "Brac. Macho",
        description = "C’est un bracelet dur et lourd qui rend le porteur plus fort, mais baisse sa Vitesse."
    },
    [216] = {
        name = "Exp Share",
        description = "Half the experience from a battle is split between Pok" .. Chars.accentedE .. "mon holding this item."
    },
    [217] = {
        name = "Vive Griffe",
        description = "Griffe légère mais tranchante qui permet parfois de frapper le premier."
    },
    [218] = {
        name = "Grelot Zen",
        description = "Grelot dont le carillon calme le porteur et favorise l’amitié."
    },
    [219] = {
        name = "Herbe Mental",
        description = "Objet à tenir qui annule l’attirance d’un Pokémon. Ne peut être utilisé qu’une fois."
    },
    [220] = {
        name = "Band. Choix",
        description = "Ce bandeau monte l’Attaque, mais ne permet d’utiliser qu’une seule capacité par combat."
    },
    [221] = {
        name = "Roche Royale",
        description = "Peut apeurer l’ennemi lorsque le porteur lui inflige des dégâts."
    },
    [222] = {
        name = "Poudre Arg.",
        description = "Poudre d’argent brillante qui monte la puissance des capacités de type Insecte."
    },
    [223] = {
        name = "Pièce Rune",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [224] = {
        name = "Rune Purif.",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [225] = {
        name = "Rosée Âme",
        description = "Orbe prodigieux à faire tenir à Latios ou Latias qui monte leur Attaque Spéciale et leur Défense Spéciale."
    },
    [226] = {
        name = "Dent Océan",
        description = "Objet à faire tenir à Coquiperl. Dent de couleur argent montant son Attaque Spéciale."
    },
    [227] = {
        name = "Écailleocéan",
        description = "Objet à faire tenir à Coquiperl. Écaille de couleur rose montant sa Défense Spéciale."
    },
    [228] = {
        name = "Boule Fumée",
        description = "Permet au porteur de s’enfuir à coup sûr face à un Pokémon sauvage."
    },
    [229] = {
        name = "Pierre Stase",
        description = "Pierre merveilleuse empêchant l’évolution."
    },
    [230] = {
        name = "Bandeau",
        description = "Objet à tenir pouvant parfois empêcher d’être mis K.O., ne laissant qu’un PV."
    },
    [231] = {
        name = "Œuf Chance",
        description = "Œuf rempli de joie qui augmente le nombre de points Exp. gagnés au combat."
    },
    [232] = {
        name = "Lentilscope",
        description = "Lentille qui augmente le taux de critiques du porteur."
    },
    [233] = {
        name = "Peau Métal",
        description = "Pellicule métallique spéciale qui monte la puissance des capacités de type Acier."
    },
    [234] = {
        name = "Restes",
        description = "Objet à tenir permettant de restaurer les PV du porteur graduellement durant le combat."
    },
    [235] = {
        name = "Écailledraco",
        description = "Une écaille épaisse et dure tenue parfois par les Pokémon de type Dragon quand ils sont attrapés."
    },
    [236] = {
        name = "Ballelumière",
        description = "Objet à faire tenir par Pikachu. Orbe énigmatique qui monte son Attaque et son Attaque Spéciale."
    },
    [237] = {
        name = "Sable Doux",
        description = "Sable fin et soyeux montant la puissance des capacités de type Sol."
    },
    [238] = {
        name = "Pierre Dure",
        description = "Pierre incassable qui monte la puissance des capacités de type Roche."
    },
    [239] = {
        name = "Grain Miracl",
        description = "Graine remplie de vie qui monte la puissance des capacités de type Plante."
    },
    [240] = {
        name = "BlackGlasses",
        description = "Dark-Type moves from holder do 20% more damage."
    },
    [241] = {
        name = "Ceint.Noire",
        description = "Ceinture qui augmente la détermination et la puissance des capacités de type Combat."
    },
    [242] = {
        name = "Aimant",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [243] = {
        name = "Eau Mystique",
        description = "Gemme en forme de goutte d’eau montant la puissance des capacités de type Eau."
    },
    [244] = {
        name = "Bec Pointu",
        description = "Bec long et pointu montant la puissance des capacités de type Vol."
    },
    [245] = {
        name = "Pic Venin",
        description = "Petit pic empoisonné montant la puissance des capacités de type Poison."
    },
    [246] = {
        name = "Glacéternel",
        description = "Morceau de glace qui réfléchit la chaleur et monte la puissance des capacités de type Glace."
    },
    [247] = {
        name = "Rune Sort",
        description = "Plaque sinistre et étrange montant la puissance des capacités de type Spectre."
    },
    [248] = {
        name = "Cuillertordu",
        description = "Cuillère contenant un pouvoir télékinésique montant la puissance des capacités de type Psy."
    },
    [249] = {
        name = "Charbon",
        description = "Combustible montant la puissance des capacités de type Feu."
    },
    [250] = {
        name = "Croc Dragon",
        description = "Croc dur et pointu montant la puissance des capacités de type Dragon."
    },
    [251] = {
        name = "Mouch. Soie",
        description = "Mouchoir somptueux montant la puissance des capacités de type Normal."
    },
    [252] = {
        name = "Améliorator",
        description = "Dispositif transparent rempli de données diverses et variées. Fabriqué par la Sylphe SARL."
    },
    [253] = {
        name = "Grelot Coque",
        description = "Restaure un peu les PV du porteur à chaque fois qu’il inflige des dégâts."
    },
    [254] = {
        name = "Encens Mer",
        description = "Encens au parfum curieux qui augmente la puissance des capacités de type Eau."
    },
    [255] = {
        name = "Encens Doux",
        description = "Le parfum trompeur de cet encens baisse la Précision de l’ennemi."
    },
    [256] = {
        name = "Poing Chance",
        description = "Objet à faire tenir à Leveinard. Paire de gants montant son taux de critiques."
    },
    [257] = {
        name = "Poudre Métal",
        description = "Objet à faire tenir à Métamorph. Cette poudre étrange, très fine mais résistante, booste sa Défense."
    },
    [258] = {
        name = "Masse Os",
        description = "Objet à faire tenir à Osselait ou Ossatueur. Os dur qui monte leur Attaque."
    },
    [259] = {
        name = "Bâton",
        description = "Objet à faire tenir à Canarticho. Poireau très long et solide qui monte son taux de critiques."
    },
    [260] = {
        name = "Red Scarf",
        description = "Raises the holder's Coolness while in a contest."
    },
    [261] = {
        name = "Blue Scarf",
        description = "Raises the holder's Beauty while in a contest."
    },
    [262] = {
        name = "Pink Scarf",
        description = "Raises the holder's Cuteness while in a contest."
    },
    [263] = {
        name = "Green Scarf",
        description = "Raises the holder's Smartness while in a contest."
    },
    [264] = {
        name = "Yellow Scarf",
        description = "Raises the holder's Toughness while in a contest."
    },
    [265] = {
        name = "Loupe",
        description = "Magnifique loupe augmentant un peu la Précision des capacités."
    },
    [266] = {
        name = "Band. Muscle",
        description = "Bandeau augmentant légèrement la puissance des attaques physiques."
    },
    [267] = {
        name = "Lunet. Sages",
        description = "Paire de lunettes épaisses augmentant un peu la puissance des attaques spéciales."
    },
    [268] = {
        name = "Ceinture Pro",
        description = "Ceinture usée augmentant légèrement la puissance des capacités super efficaces."
    },
    [269] = {
        name = "Lumargile",
        description = "Objet à tenir augmentant la durée de capacités barrières telles que Mur Lumière et Protection."
    },
    [270] = {
        name = "Orbe Vie",
        description = "Objet à tenir augmentant la puissance des capacités, mais qui dépense des PV à chaque coup."
    },
    [271] = {
        name = "Herbe Pouv.",
        description = "Objet à tenir et à usage unique. Permet d’utiliser immédiatement une capacité qui devrait se charger au premier tour."
    },
    [272] = {
        name = "Orbe Toxique",
        description = "Orbe bizarre empoisonnant gravement son porteur durant le combat."
    },
    [273] = {
        name = "Orbe Flamme",
        description = "Orbe bizarre brûlant son porteur durant le combat."
    },
    [274] = {
        name = "Poudre Vite",
        description = "Objet à faire tenir à Métamorph. Cette poudre étrange, très fine mais résistante, augmente sa Vitesse."
    },
    [275] = {
        name = "Ceint. Force",
        description = "Objet à tenir permettant au porteur, s’il a ses PV pleins, d’éviter un potentiel K.O. en conservant un PV."
    },
    [276] = {
        name = "Lentil. Zoom",
        description = "Augmente la Précision du porteur s’il attaque après l’ennemi."
    },
    [277] = {
        name = "Métronome",
        description = "Objet à tenir boostant une capacité utilisée à répétition. L’effet s’annule si une autre capacité est utilisée."
    },
    [278] = {
        name = "Balle Fer",
        description = "Objet à tenir réduisant la Vitesse. Rend les porteurs de type Vol et lévitant sensibles aux capacités de type Sol."
    },
    [279] = {
        name = "Ralentiqueue",
        description = "Objet à tenir extrêmement lourd qui ralentit le porteur."
    },
    [280] = {
        name = "Nœud Destin",
        description = "Un long fil rouge vif à faire tenir à un Pokémon. Si le porteur succombe à l’attirance, l’ennemi aussi."
    },
    [281] = {
        name = "Boue Noire",
        description = "Objet à tenir restaurant peu à peu les PV des Pokémon de type Poison. Inflige des dégâts à tous les autres types."
    },
    [282] = {
        name = "Roche Glace",
        description = "Objet à tenir augmentant la durée de la capacité Grêle utilisée par le porteur."
    },
    [283] = {
        name = "Roche Lisse",
        description = "Objet à tenir augmentant la durée de la capacité Tempêtesable utilisée par le porteur."
    },
    [284] = {
        name = "Roche Chaude",
        description = "Objet à tenir augmentant la durée de la capacité Zénith utilisée par le porteur."
    },
    [285] = {
        name = "Roche Humide",
        description = "Objet à tenir augmentant la durée de la capacité Danse Pluie utilisée par le porteur."
    },
    [286] = {
        name = "Accro Griffe",
        description = "Objet à tenir augmentant la durée des attaques à tours multiples telles que Ligotage et Étreinte."
    },
    [287] = {
        name = "Mouch. Choix",
        description = "Objet à tenir augmentant la Vitesse, mais ne permettant d’utiliser qu’une seule capacité par combat."
    },
    [288] = {
        name = "Piquants",
        description = "Objet à tenir blessant le porteur à chaque tour. Peut s’accrocher aux ennemis qui attaquent le porteur."
    },
    [289] = {
        name = "Poign. Pouv.",
        description = "Objet à tenir augmentant l’Attaque lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [290] = {
        name = "Ceint. Pouv.",
        description = "Objet à tenir augmentant la Défense lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [291] = {
        name = "Lent. Pouv.",
        description = "Objet à tenir augmentant l’Attaque Spéciale lors des montées de niveau mais réduisant la Vitesse pendant le combat."
    },
    [292] = {
        name = "Band. Pouv.",
        description = "Objet à tenir augmentant la Défense Spéciale lors des montées de niveau mais réduisant la Vitesse pendant le combat."
    },
    [293] = {
        name = "Chaîne Pouv.",
        description = "Il augmente la Vitesse lors des montées de niveau mais réduit la Vitesse pendant le combat."
    },
    [294] = {
        name = "Poids Pouv.",
        description = "Objet à tenir augmentant les PV lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [295] = {
        name = "Carapace Mue",
        description = "Carapace dure qui permet au porteur de se retirer même s’il est affecté par une attaque immobilisante."
    },
    [296] = {
        name = "Grosseracine",
        description = "Objet à tenir augmentant la puissance des attaques volant des PV."
    },
    [297] = {
        name = "Lunet. Choix",
        description = "Objet à tenir augmentant l’Attaque Spéciale, mais ne permettant d’utiliser qu’une seule capacité par combat."
    },
    [298] = {
        name = "Plaque Flam",
        description = "Tablette en pierre augmentant la puissance des capacités de type Feu."
    },
    [299] = {
        name = "Plaque Hydro",
        description = "Tablette en pierre augmentant la puissance des capacités de type Eau."
    },
    [300] = {
        name = "Plaque Volt",
        description = "Tablette en pierre augmentant la puissance des capacités de type Électrik."
    },
    [301] = {
        name = "Plaque Herbe",
        description = "Tablette en pierre augmentant la puissance des capacités de type Plante."
    },
    [302] = {
        name = "Plaque Glace",
        description = "Tablette en pierre augmentant la puissance des capacités de type Glace."
    },
    [303] = {
        name = "Plaque Poing",
        description = "Tablette en pierre augmentant la puissance des capacités de type Combat."
    },
    [304] = {
        name = "Plaque Toxic",
        description = "Tablette en pierre augmentant la puissance des capacités de type Poison."
    },
    [305] = {
        name = "Plaque Terre",
        description = "Tablette en pierre augmentant la puissance des capacités de type Sol."
    },
    [306] = {
        name = "Plaque Ciel",
        description = "Tablette en pierre augmentant la puissance des capacités de type Vol."
    },
    [307] = {
        name = "Plaquesprit",
        description = "Tablette en pierre augmentant la puissance des capacités de type Psy."
    },
    [308] = {
        name = "Plaquinsect",
        description = "Tablette en pierre augmentant la puissance des capacités de type Insecte."
    },
    [309] = {
        name = "Plaque Roc",
        description = "Tablette en pierre augmentant la puissance des capacités de type Roche."
    },
    [310] = {
        name = "Plaque Fantô",
        description = "Tablette en pierre augmentant la puissance des capacités de type Spectre."
    },
    [311] = {
        name = "Plaque Draco",
        description = "Tablette en pierre augmentant la puissance des capacités de type Dragon."
    },
    [312] = {
        name = "Plaque Ombre",
        description = "Tablette en pierre augmentant la puissance des capacités de type Ténèbres."
    },
    [313] = {
        name = "Plaque Fer",
        description = "Tablette en pierre augmentant la puissance des capacités de type Acier."
    },
    [314] = {
        name = "Bizar.Encens",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Psy."
    },
    [315] = {
        name = "Encens Roc",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Roche."
    },
    [316] = {
        name = "Encens Plein",
        description = "Encens au parfum exotique gonflant son porteur et le faisant se déplacer lentement."
    },
    [317] = {
        name = "Encens Vague",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Eau."
    },
    [318] = {
        name = "Encens Fleur",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Plante."
    },
    [319] = {
        name = "Encens Veine",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [320] = {
        name = "Encens Pur",
        description = "Aide à repousser les Pokémon sauvages si le porteur est le premier Pokémon de l’équipe."
    },
    [321] = {
        name = "Protecteur",
        description = "Objet protecteur très dur et très lourd, apprécié d’un certain Pokémon."
    },
    [322] = {
        name = "Électiriseur",
        description = "Une boîte remplie d’une énorme quantité d’énergie électrique. Appréciée d’un certain Pokémon."
    },
    [323] = {
        name = "Magmariseur",
        description = "Une boîte remplie d’une énorme quantité d’énergie magmatique. Appréciée d’un certain Pokémon."
    },
    [324] = {
        name = "CD Douteux",
        description = "Appareil transparent rempli de données douteuses. Son fabricant n’est pas connu."
    },
    [325] = {
        name = "Tissu Fauche",
        description = "Un tissu imprégné d’une énergie spirituelle horriblement puissante. Apprécié d’un certain Pokémon."
    },
    [326] = {
        name = "Grif. Rasoir",
        description = "Griffe crochue et pointue augmentant le taux de critiques."
    },
    [327] = {
        name = "Croc Rasoir",
        description = "Objet à tenir pouvant apeurer l’ennemi quand le porteur lui inflige des dégâts."
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
        name = "Poke Radar",
        description = "Use to track down rare or shiny Pokemon. 50 steps to recharge."
    },
    [432] = {
        name = "Point Card",
        description = "Keeps count of Battle Points earned."
    },
    [433] = {
        name = "Journal",
        description = "Records prior significant activities the player took."
    },
    [434] = {
        name = "Seal Case",
        description = "Stores Seals that can be applied to Poke Ball capsules."
    },
    [435] = {
        name = "Fashion Case",
        description = "Holds Pok" .. Chars.accentedE .. "mon Accessories for use in Contests."
    },
    [436] = {
        name = "Seal Bag",
        description = "Holds ten Seals for Poke Balls."
    },
    [437] = {
        name = "Pal Pad",
        description = "Use to record Friend Codes and check your own."
    },
    [438] = {
        name = "Works Key",
        description = "Grants access to Valley Windworks."
    },
    [439] = {
        name = "Old Charm",
        description = "Trade to Cynthia's grandmother in Celestic Town for HM04 (Surf)."
    },
    [440] = {
        name = "Galactic Key",
        description = "Grants access to Galactic HQ in Veilstone City."
    },
    [441] = {
        name = "Red Chain",
        description = "Used to bind Palkia and Dialga."
    },
    [442] = {
        name = "Town Map",
        description = "Use to see the overworld map."
    },
    [443] = {
        name = "Vs Seeker",
        description = "Allows rebattling of on-screen trainers. 100 steps to recharge."
    },
    [444] = {
        name = "Coin Case",
        description = "Holds coins for the Game Corner."
    },
    [445] = {
        name = "Old Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [446] = {
        name = "Good Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [447] = {
        name = "Super Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [448] = {
        name = "Sprayduck",
        description = "Used to water berries."
    },
    [449] = {
        name = "Poffin Case",
        description = "Holds Poffins."
    },
    [450] = {
        name = "Bicycle",
        description = "Use for fast transit."
    },
    [451] = {
        name = "Suite Key",
        description = "Opens a locked building in the Lakeside Resort."
    },
    [452] = {
        name = "Oaks Letter",
        description = "Allows access to Seabreak path, Flower Paradise, and Shaymin."
    },
    [453] = {
        name = "Lunar Wing",
        description = "Cures sailor's son of nightmares in Canalave City."
    },
    [454] = {
        name = "Member Card",
        description = "Allows access to Newmoon Island and Darkrai."
    },
    [455] = {
        name = "Azure Flute",
        description = "Allows entry into the Hall of Origin. Unreleased."
    },
    [456] = {
        name = "Ss Ticket",
        description = "Ticket for a ship. (RSE: S.S. Tidal LF: S.S. Anne HG: S.S. Aqua)"
    },
    [457] = {
        name = "Contest Pass",
        description = "Allows participation in Pok" .. Chars.accentedE .. "mon Contests."
    },
    [458] = {
        name = "Magma Stone",
        description = "Magma is sealed inside."
    },
    [459] = {
        name = "Parcel",
        description = "Given to the trainer's rival in Jubilife City. Contains Town Maps."
    },
    [460] = {
        name = "Coupon 1",
        description = "The first of three tickets used to obtain a Poketch."
    },
    [461] = {
        name = "Coupon 2",
        description = "The second of three tickets used to obtain a Poketch."
    },
    [462] = {
        name = "Coupon 3",
        description = "The last of three tickets used to obtain a Poketch."
    },
    [463] = {
        name = "Storage Key",
        description = "Grants access to the Team Galactic warehouse in Veilstone City."
    },
    [464] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [112] = {
        name = "Orbe Platiné",
        description = "Mystérieux objet destiné à Giratina. Améliore les capacités de type Dragon et Spectre."
    },
    [465] = {
        name = "Vs Recorder",
        description = "Records wireless, Wi-Fi, or Battle Frontier battles, and stores points."
    },
    [466] = {
        name = "Gracidea",
        description = "Changes an unfrozen Shaymin to Sky Forme in the day."
    },
    [467] = {
        name = "Secret Key",
        description = "Gen IV: The key to Rotom's appliance room."
    },
    [468] = {
        name = "Apricorn Box",
        description = "Holds Apricorns."
    },
    [470] = {
        name = "Berry Pots",
        description = "Allows portable berry growing."
    },
    [477] = {
        name = "Squirt Bottle",
        description = "Use on Sudowoodo blocking the path on Route 36. Also waters berries."
    },
    [494] = {
        name = "Lure Ball",
        description = "3x effectiveness while fishing. Made from Blu Apricorn."
    },
    [493] = {
        name = "Level Ball",
        description = "Success rate based off of fraction target Pok" .. Chars.accentedE .. "mon is of user's Pokemon. Made from Red Apricorn."
    },
    [498] = {
        name = "Moon Ball",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [495] = {
        name = "Pierre Lune",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [492] = {
        name = "Fast Ball",
        description = "4x effectiveness on Pok" .. Chars.accentedE .. "mon with 100 or greater base speed. Made from Wht Apricorn."
    },
    [497] = {
        name = "Friend Ball",
        description = "Caught Pok" .. Chars.accentedE .. "mon start with 200 happiness. Made from Grn Apricorn."
    },
    [496] = {
        name = "Love Ball",
        description = "8x effectiveness on opposite sex, same species targets of the Active Pokemon. Made from Pnk Apricorn."
    },
    [500] = {
        name = "Parc Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [499] = {
        name = "Compét'Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [485] = {
        name = "Red Apricorn",
        description = "Used to make a Level Ball."
    },
    [487] = {
        name = "Blue Apricorn",
        description = "Used to make a Lure Ball."
    },
    [486] = {
        name = "Yellow Apricorn",
        description = "Used to make a Moon Ball."
    },
    [488] = {
        name = "Green Apricorn",
        description = "Used to make a Friend Ball."
    },
    [489] = {
        name = "Pink Apricorn",
        description = "Used to make a Love Ball."
    },
    [490] = {
        name = "White Apricorn",
        description = "Used to make a Fast Ball."
    },
    [491] = {
        name = "Black Apricorn",
        description = "Used to make a Heavy Ball."
    },
    [471] = {
        name = "Dowsing Machine",
        description = "Use to find hidden items on the field. AKA Itemfinder."
    },
    [504] = {
        name = "RageCandyBar",
        description = "Traded for TM64."
    },
    [534] = {
        name = "Red Orb",
        description = "Summons Groudon to the Embedded Tower."
    },
    [535] = {
        name = "Blue Orb",
        description = "Summons Kyogre to the Embedded Tower."
    },
    [532] = {
        name = "Jade Orb",
        description = "Summons Rayquaza to the Embedded Tower."
    },
    [536] = {
        name = "Enigma Stone",
        description = "S: Summons Latias H: Summons Latios."
    },
    [469] = {
        name = "Unown Report",
        description = "Keeps track of Unown types caught."
    },
    [472] = {
        name = "Blue Card",
        description = "Keeps track of points from Buena's show."
    },
    [473] = {
        name = "Slowpoke Tail",
        description = "A tasty tail that sells for a high price."
    },
    [474] = {
        name = "Clear Bell",
        description = "HS: Allows Kimono-girls to summon Ho-oh. C: Summons Suicune to the Tin Tower."
    },
    [475] = {
        name = "Card Key",
        description = "HS: Opens doors in the Radio Tower."
    },
    [476] = {
        name = "Basement Key",
        description = "HS: Key to the tunnel under Goldenrod City."
    },
    [478] = {
        name = "Red Scale",
        description = "Le porteur reçoit une partie des points Exp. du combat sans avoir à combattre."
    },
    [479] = {
        name = "Lost Item",
        description = "Le porteur reçoit une partie des points Exp. du combat sans avoir à combattre."
    },
    [480] = {
        name = "Pass",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [481] = {
        name = "Machine Part",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [482] = {
        name = "Silver Wing",
        description = "Summons Lugia to the Whirl Islands."
    },
    [483] = {
        name = "Rainbow Wing",
        description = "Summons Ho-Oh at the top of the Bell Tower."
    },
    [484] = {
        name = "Mystery Egg",
        description = "Deliver to Professor Elm."
    },
    [502] = {
        name = "Gb Sounds",
        description = "Use to listen to GameBoy era audio."
    },
    [503] = {
        name = "Tidal Bell",
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
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have dashed in the Pokeathlon."
    },
    [508] = {
        name = "Data Card-04",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have jumped in the Pokeathlon."
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
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have messed up in the Pokeathlon."
    },
    [517] = {
        name = "Data Card-13",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have defeated themselves in the Pokeathlon."
    },
    [518] = {
        name = "Data Card-14",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have tackled in the Pokeathlon."
    },
    [519] = {
        name = "Data Card-15",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have fallen in the Pokeathlon."
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
        description = "Records the number of times the trainer has switched Pok" .. Chars.accentedE .. "mon in the Pokeathlon."
    },
    [528] = {
        name = "Data Card-24",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Goal Roll."
    },
    [529] = {
        name = "Data Card-25",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon received prizes in the Pokeathlon."
    },
    [530] = {
        name = "Data Card-26",
        description = "Records the number of times the trainer has instructed Pok" .. Chars.accentedE .. "mon in the Pokeathlon."
    },
    [531] = {
        name = "Data Card-27",
        description = "Records the total time spent in the Pokeathlon."
    },
    [533] = {
        name = "Lock Capsule",
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
        description = "Assurément la Ball la plus performante. Elle permet de capturer à coup sûr un Pokémon sauvage."
    },
    [2] = {
        name = "Hyper Ball",
        description = "Une Ball ultraperformante dont le taux de réussite est supérieur à celui de la Super Ball."
    },
    [3] = {
        name = "Super Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [4] = {
        name = "Poke Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [5] = {
        name = "Safari Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [6] = {
        name = "Filet Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [7] = {
        name = "Scuba Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [8] = {
        name = "Faiblo Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [9] = {
        name = "Bis Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [10] = {
        name = "Chrono Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [11] = {
        name = "Luxe Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [12] = {
        name = "Honor Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [13] = {
        name = "Sombre Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [14] = {
        name = "Soin Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [15] = {
        name = "Rapide Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [16] = {
        name = "Mémoire Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [17] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [18] = {
        name = "Antidote",
        description = "Un médicament sous forme de spray. Guérit un Pokémon empoisonné."
    },
    [19] = {
        name = "Anti-Brûle",
        description = "Un médicament sous forme de spray. Soigne les brûlures d’un Pokémon."
    },
    [20] = {
        name = "Antigel",
        description = "Un médicament sous forme de spray. Réchauffe un Pokémon gelé."
    },
    [21] = {
        name = "Réveil",
        description = "Un médicament sous forme de spray. Réveille un Pokémon endormi."
    },
    [22] = {
        name = "Anti-Para",
        description = "Un médicament sous forme de spray. Soigne un Pokémon de la paralysie."
    },
    [23] = {
        name = "Guérison",
        description = "Un médicament qui restaure tous les PV d’un Pokémon et soigne tous ses problèmes de statut."
    },
    [24] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [25] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [26] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [27] = {
        name = "Total Soin",
        description = "Un médicament sous forme de spray. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [28] = {
        name = "Rappel",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [29] = {
        name = "Rappel",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [30] = {
        name = "Eau Fraîche",
        description = "Une eau riche en minéraux. Restaure 50 PV à un Pokémon."
    },
    [31] = {
        name = "Soda Cool",
        description = "Une boisson pétillante. Restaure 60 PV à un Pokémon."
    },
    [32] = {
        name = "Limonade",
        description = "Une boisson très sucrée. Restaure 80 PV à un Pokémon."
    },
    [33] = {
        name = "Lait Meumeu",
        description = "Un lait très nourrissant. Restaure 100 PV à un Pokémon."
    },
    [34] = {
        name = "Energy Powder",
        description = "Restores 50 HP, but lowers happiness."
    },
    [35] = {
        name = "Racinénergie",
        description = "Une racine très amère. Restaure 200 PV à un Pokémon."
    },
    [36] = {
        name = "Poudre Soin",
        description = "Une poudre médicinale très amère. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [37] = {
        name = "Herbe Rappel",
        description = "Une herbe médicinale très amère. Ranime un Pokémon K.O. et restaure tous ses PV."
    },
    [38] = {
        name = "Huile",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [39] = {
        name = "Huile",
        description = "Restaure jusqu’à 10 PP d’une capacité sélectionnée."
    },
    [40] = {
        name = "Élixir",
        description = "Restaure 10 PP de toutes les capacités d’un Pokémon."
    },
    [41] = {
        name = "Max Élixir",
        description = "Restaure tous les PP de toutes les capacités d’un Pokémon."
    },
    [42] = {
        name = "Lava Cookie",
        description = "La spécialité de la ville de Vermilava. Soigne tous les problèmes de statut d’un Pokémon."
    },
    [43] = {
        name = "Jus de Baie",
        description = "Une boisson 100% pur jus de Baies. Restaure 20 PV à un Pokémon."
    },
    [44] = {
        name = "Cendresacrée",
        description = "Ranime tous les Pokémon K.O. et restaure tous leurs PV."
    },
    [45] = {
        name = "Hp Up",
        description = "Un médicament qui ranime un Pokémon K.O. et restaure la moitié de ses PV max."
    },
    [46] = {
        name = "Protéine",
        description = "Une boisson très nutritive qui monte l’Attaque de base d’un Pokémon."
    },
    [47] = {
        name = "Fer",
        description = "Une boisson très nutritive qui monte la Défense de base d’un Pokémon."
    },
    [48] = {
        name = "Carbone",
        description = "Une boisson très nutritive qui monte la Vitesse de base d’un Pokémon."
    },
    [49] = {
        name = "Calcium",
        description = "Une boisson très nutritive qui monte l’Attaque Spéciale de base d’un Pokémon."
    },
    [50] = {
        name = "Super Bonbon",
        description = "Un bonbon plein d’énergie. Il permet à un Pokémon de gagner un niveau d’expérience."
    },
    [51] = {
        name = "Pp Up",
        description = "Raises a move's max PP by 20%."
    },
    [52] = {
        name = "Zinc",
        description = "Une boisson très nutritive qui monte la Défense Spéciale d’un Pokémon."
    },
    [53] = {
        name = "Pp Max",
        description = "Raises a move's max PP by 60%."
    },
    [54] = {
        name = "Vieux Gâteau",
        description = "Spécialité du Vieux Château. Il soigne tous les problèmes de statut d’un Pokémon."
    },
    [55] = {
        name = "Défense Spéc",
        description = "Empêche la réduction des stats de tous les Pokémon de l’équipe pendant 5 tours."
    },
    [56] = {
        name = "Muscle +",
        description = "Monte fortement le taux de critiques. Utilisable une seule fois. L’effet disparaît si le Pokémon se retire."
    },
    [57] = {
        name = "Attaque +",
        description = "Monte l’Attaque pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [58] = {
        name = "Défense +",
        description = "Monte la Défense pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [59] = {
        name = "Vitesse +",
        description = "Monte la Vitesse pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [60] = {
        name = "Précision +",
        description = "Monte la Précision pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [61] = {
        name = "Spécial +",
        description = "Monte l’Attaque Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [62] = {
        name = "Déf. Spé. +",
        description = "Monte la Défense Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [63] = {
        name = "Poke Doll",
        description = "Ends a wild battle."
    },
    [64] = {
        name = "Queue Skitty",
        description = "Objet qui attire les Pokémon. Permet de s’enfuir d’un combat contre un Pokémon sauvage."
    },
    [65] = {
        name = "Blue Flute",
        description = "Cures sleep."
    },
    [66] = {
        name = "Yellow Flute",
        description = "Cures confusion."
    },
    [67] = {
        name = "Red Flute",
        description = "Cures attraction."
    },
    [68] = {
        name = "Flûte Noire",
        description = "Jouet en forme de flûte en verre noir. Les amateurs en donnent un bon prix."
    },
    [69] = {
        name = "Flûteblanche",
        description = "Jouet en forme de flûte en verre blanc. Les amateurs en donnent un bon prix."
    },
    [70] = {
        name = "Shoal Salt",
        description = "No effect."
    },
    [71] = {
        name = "Shoal Shell",
        description = "No effect."
    },
    [72] = {
        name = "Red Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [73] = {
        name = "Blue Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [74] = {
        name = "Yellow Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [75] = {
        name = "Green Shard",
        description = "Pas d'effet. Peut être échangé contre des objets ou des capacités"
    },
    [76] = {
        name = "Superepousse",
        description = "Repousse les Pokémon sauvages faibles pendant 200 pas."
    },
    [77] = {
        name = "Max Repousse",
        description = "Repousse les Pokémon sauvages faibles pendant 250 pas."
    },
    [78] = {
        name = "Corde Sortie",
        description = "Une corde longue et solide permettant de sortir rapidement d’une grotte ou d’un donjon."
    },
    [79] = {
        name = "Repousse",
        description = "Repousse les Pokémon sauvages faibles pendant 100 pas."
    },
    [80] = {
        name = "Pierresoleil",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est rouge comme le soleil."
    },
    [81] = {
        name = "Pierre Lune",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [82] = {
        name = "Pierre Feu",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est jaune et orange."
    },
    [83] = {
        name = "Thunder Stone",
        description = "Evolves an Eelektrik into Eelektross, an Eevee into Jolteon, or a Pikachu into Raichu."
    },
    [84] = {
        name = "Pierre Eau",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est de couleur bleue."
    },
    [85] = {
        name = "Pierreplante",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Une feuille est dessinée dessus."
    },
    [86] = {
        name = "Tiny Mushroom",
        description = "Fire Red and Leaf Green: Trade two for prior Level-up moves. Sell for 250 Pokedollars, or to Hungry Maid for 500 Pokedollars."
    },
    [87] = {
        name = "Gros Champi",
        description = "Un grand champignon plutôt rare. Il est très populaire parmi certains fans dévoués."
    },
    [88] = {
        name = "Perle",
        description = "Une petite perle qui brille d’une jolie couleur argent. Peut être vendue à bas prix aux magasins."
    },
    [89] = {
        name = "Grande Perle",
        description = "Une grande perle qui brille d’une jolie couleur argent. Peut être vendue à bon prix aux magasins."
    },
    [90] = {
        name = "Pouss.Étoile",
        description = "Sable rouge ravissant, aux grains très fins. Peut être vendu à bon prix aux magasins."
    },
    [91] = {
        name = "Morc. Étoile",
        description = "Fragment de gemme qui brille d’un éclat rouge. Peut se vendre à bon prix aux magasins."
    },
    [92] = {
        name = "Pépite",
        description = "Pépite d’or pur qui brille magnifiquement. Peut être vendue à bon prix aux magasins."
    },
    [93] = {
        name = "Heart Scale",
        description = "No effect. Can be traded for prior Level-up moves."
    },
    [94] = {
        name = "Honey",
        description = "Used to attract Wild Pok" .. Chars.accentedE .. "mon."
    },
    [95] = {
        name = "Fertipousse",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [96] = {
        name = "Fertihumide",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [97] = {
        name = "Fertistable",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [98] = {
        name = "Fertiglu",
        description = "Un engrais utilisé sur sol meuble. Les amateurs en donnent un bon prix."
    },
    [99] = {
        name = "Root Fossil",
        description = "Can be revived into a Lileep."
    },
    [100] = {
        name = "Claw Fossil",
        description = "Can be revived into an Anorith."
    },
    [101] = {
        name = "Helix Fossil",
        description = "Can be revived into an Omanyte."
    },
    [102] = {
        name = "Dome Fossil",
        description = "Can be revived into a Kabuto."
    },
    [103] = {
        name = "Old Amber",
        description = "Can be revived into an Aerodactyl."
    },
    [104] = {
        name = "Armor Fossil",
        description = "Can be revived into a Shieldon."
    },
    [105] = {
        name = "Skull Fossil",
        description = "Can be revived into a Cranidos."
    },
    [106] = {
        name = "Os Rare",
        description = "Un os d’une grande valeur pour l’archéologie Pokémon. Peut être vendu à bon prix aux magasins."
    },
    [107] = {
        name = "Pierre Éclat",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle brille d’une lumière aveuglante."
    },
    [108] = {
        name = "Pierre Nuit",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est sombre comme une nuit sans lune."
    },
    [109] = {
        name = "Pierre Aube",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle brille comme un œil."
    },
    [110] = {
        name = "Pierre Ovale",
        description = "Pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle a la forme d’un œuf."
    },
    [111] = {
        name = "Odd Keystone",
        description = "Use on the tower on Route 209 to encounter Spiritomb if you have at least 32 Underground greetings."
    },
    [135] = {
        name = "Orbe Adamant",
        description = "Orbe très brillant destiné à Dialga. Augmente la puissance des capacités de type Dragon et Acier."
    },
    [136] = {
        name = "Orbe Perlé",
        description = "Bel orbe luisant destiné à Palkia. Augmente la puissance des capacités de type Dragon et Eau."
    },
    [149] = {
        name = "Baie Ceriz",
        description = "Baie qui soigne la paralysie lorsqu’elle est tenue par un Pokémon."
    },
    [150] = {
        name = "Baie Maron",
        description = "Baie qui soigne le sommeil lorsqu’elle est tenue par un Pokémon."
    },
    [151] = {
        name = "Baie Pêcha",
        description = "Baie qui soigne l’empoisonnement lorsqu’elle est tenue par un Pokémon."
    },
    [152] = {
        name = "Baie Fraive",
        description = "Baie qui soigne les brûlures lorsqu’elle est tenue par un Pokémon."
    },
    [153] = {
        name = "Baie Willia",
        description = "Baie qui soigne le gel lorsqu’elle est tenue par un Pokémon."
    },
    [154] = {
        name = "Baie Mepo",
        description = "Baie qui restaure 10 PP lorsqu’elle est tenue par un Pokémon."
    },
    [155] = {
        name = "Baie Oran",
        description = "Baie qui restaure 10 PV lorsqu’elle est tenue par un Pokémon."
    },
    [156] = {
        name = "Baie Kika",
        description = "Baie qui soigne la confusion lorsqu’elle est tenue par un Pokémon."
    },
    [157] = {
        name = "Baie Prine",
        description = "Baie qui soigne tous les problèmes de statut lorsqu’elle est tenue par un Pokémon."
    },
    [158] = {
        name = "Baie Sitrus",
        description = "Baie qui restaure quelques PV lorsqu’elle est tenue par un Pokémon."
    },
    [159] = {
        name = "Baie Figuy",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [160] = {
        name = "Baie Wiki",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [161] = {
        name = "Baie Mago",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [162] = {
        name = "Baie Gowav",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [163] = {
        name = "Baie Papaya",
        description = "Tenue, cette Baie restaure des PV en cas de besoin, mais rend confus si le Pokémon n’aime pas son goût."
    },
    [164] = {
        name = "Razz Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [165] = {
        name = "Bluk Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [166] = {
        name = "Nanab Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [167] = {
        name = "Wepear Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [168] = {
        name = "Pinap Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [169] = {
        name = "Baie Grena",
        description = "Rend les Pokémon plus amicaux, mais baisse leurs PV de base."
    },
    [170] = {
        name = "Baie Alga",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Attaque de base."
    },
    [171] = {
        name = "Baie Qualot",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Défense de base."
    },
    [172] = {
        name = "Baie Lonme",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Attaque Spéciale de base."
    },
    [173] = {
        name = "Baie Résin",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Défense Spéciale de base."
    },
    [174] = {
        name = "Baie Tamato",
        description = "Rend les Pokémon plus amicaux, mais baisse leur stat Vitesse de base."
    },
    [175] = {
        name = "Cornn Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [176] = {
        name = "Magost Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [177] = {
        name = "Rabuta Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [178] = {
        name = "Nomel Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [179] = {
        name = "Spelon Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [180] = {
        name = "Pamtre Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [181] = {
        name = "Watmel Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [182] = {
        name = "Durin Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [183] = {
        name = "Belue Berry",
        description = "Used for creating PokeBlocks and Poffins."
    },
    [184] = {
        name = "Baie Chocco",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Feu."
    },
    [185] = {
        name = "Baie Pocpoc",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Eau."
    },
    [186] = {
        name = "Baie Parma",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Électrik."
    },
    [187] = {
        name = "Baie Ratam",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Plante."
    },
    [188] = {
        name = "Baie Nanone",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Glace."
    },
    [189] = {
        name = "Baie Pomroz",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Combat."
    },
    [190] = {
        name = "Baie Kébia",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Poison."
    },
    [191] = {
        name = "Baie Jouca",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Sol."
    },
    [192] = {
        name = "Baie Cobaba",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Vol."
    },
    [193] = {
        name = "Baie Yapap",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Psy."
    },
    [194] = {
        name = "Baie Panga",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Insecte."
    },
    [195] = {
        name = "Baie Charti",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Roche."
    },
    [196] = {
        name = "Baie Sédra",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Spectre."
    },
    [197] = {
        name = "Baie Fraigo",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Dragon."
    },
    [198] = {
        name = "Baie Lampou",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Ténèbres."
    },
    [199] = {
        name = "Baie Babiri",
        description = "Tenue, cette Baie affaiblit une attaque ennemie super efficace de type Acier."
    },
    [200] = {
        name = "Baie Zalis",
        description = "Tenue, cette Baie affaiblit une attaque ennemie de type Normal."
    },
    [201] = {
        name = "Baie Lichii",
        description = "Tenue, cette Baie monte l’Attaque en cas de besoin."
    },
    [202] = {
        name = "Baie Lingan",
        description = "Tenue, cette Baie monte la Défense en cas de besoin."
    },
    [203] = {
        name = "Baie Sailak",
        description = "Tenue, cette Baie monte la Vitesse en cas de besoin."
    },
    [204] = {
        name = "Baie Pitaye",
        description = "Tenue, cette Baie monte l’Atq. Spé. en cas de besoin."
    },
    [205] = {
        name = "Baie Abriko",
        description = "Tenue, cette Baie monte la Déf. Spé. en cas de besoin."
    },
    [206] = {
        name = "Baie Lansat",
        description = "Tenue, cette Baie monte le taux de critiques en cas de besoin."
    },
    [207] = {
        name = "Baie Frista",
        description = "Tenue, cette Baie monte beaucoup une des stats en cas de besoin."
    },
    [208] = {
        name = "Baie Enigma",
        description = "Tenue, cette Baie restaure les PV du Pokémon s’il subit une attaque super efficace."
    },
    [209] = {
        name = "Baie Micle",
        description = "Tenue, cette Baie augmente une fois la Précision d’une capacité en cas de besoin."
    },
    [210] = {
        name = "Baie Chérim",
        description = "Tenue, cette Baie permet d’attaquer en premier une fois en cas de besoin."
    },
    [211] = {
        name = "Baie Jaboca",
        description = "Tenue, cette Baie inflige des dégâts à l’ennemi s’il utilise une attaque physique qui atteint son but."
    },
    [212] = {
        name = "Baie Pommo",
        description = "Tenue, cette Baie inflige des dégâts à l’ennemi s’il utilise une attaque spéciale qui atteint son but."
    },
    [213] = {
        name = "Poudreclaire",
        description = "Objet à tenir qui intimide et baisse la Précision de l’ennemi."
    },
    [214] = {
        name = "Herbeblanche",
        description = "Objet à tenir qui restaure les stats baissées. Ne peut être utilisé qu’une fois."
    },
    [215] = {
        name = "Brac. Macho",
        description = "C’est un bracelet dur et lourd qui rend le porteur plus fort, mais baisse sa Vitesse."
    },
    [216] = {
        name = "Exp Share",
        description = "Half the experience from a battle is split between Pok" .. Chars.accentedE .. "mon holding this item."
    },
    [217] = {
        name = "Vive Griffe",
        description = "Griffe légère mais tranchante qui permet parfois de frapper le premier."
    },
    [218] = {
        name = "Grelot Zen",
        description = "Grelot dont le carillon calme le porteur et favorise l’amitié."
    },
    [219] = {
        name = "Herbe Mental",
        description = "Objet à tenir qui annule l’attirance d’un Pokémon. Ne peut être utilisé qu’une fois."
    },
    [220] = {
        name = "Band. Choix",
        description = "Ce bandeau monte l’Attaque, mais ne permet d’utiliser qu’une seule capacité par combat."
    },
    [221] = {
        name = "Roche Royale",
        description = "Peut apeurer l’ennemi lorsque le porteur lui inflige des dégâts."
    },
    [222] = {
        name = "Poudre Arg.",
        description = "Poudre d’argent brillante qui monte la puissance des capacités de type Insecte."
    },
    [223] = {
        name = "Pièce Rune",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [224] = {
        name = "Rune Purif.",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [225] = {
        name = "Rosée Âme",
        description = "Orbe prodigieux à faire tenir à Latios ou Latias qui monte leur Attaque Spéciale et leur Défense Spéciale."
    },
    [226] = {
        name = "Dent Océan",
        description = "Objet à faire tenir à Coquiperl. Dent de couleur argent montant son Attaque Spéciale."
    },
    [227] = {
        name = "Écailleocéan",
        description = "Objet à faire tenir à Coquiperl. Écaille de couleur rose montant sa Défense Spéciale."
    },
    [228] = {
        name = "Boule Fumée",
        description = "Permet au porteur de s’enfuir à coup sûr face à un Pokémon sauvage."
    },
    [229] = {
        name = "Pierre Stase",
        description = "Pierre merveilleuse empêchant l’évolution."
    },
    [230] = {
        name = "Bandeau",
        description = "Objet à tenir pouvant parfois empêcher d’être mis K.O., ne laissant qu’un PV."
    },
    [231] = {
        name = "Œuf Chance",
        description = "Œuf rempli de joie qui augmente le nombre de points Exp. gagnés au combat."
    },
    [232] = {
        name = "Lentilscope",
        description = "Lentille qui augmente le taux de critiques du porteur."
    },
    [233] = {
        name = "Peau Métal",
        description = "Pellicule métallique spéciale qui monte la puissance des capacités de type Acier."
    },
    [234] = {
        name = "Restes",
        description = "Objet à tenir permettant de restaurer les PV du porteur graduellement durant le combat."
    },
    [235] = {
        name = "Écailledraco",
        description = "Une écaille épaisse et dure tenue parfois par les Pokémon de type Dragon quand ils sont attrapés."
    },
    [236] = {
        name = "Ballelumière",
        description = "Objet à faire tenir par Pikachu. Orbe énigmatique qui monte son Attaque et son Attaque Spéciale."
    },
    [237] = {
        name = "Sable Doux",
        description = "Sable fin et soyeux montant la puissance des capacités de type Sol."
    },
    [238] = {
        name = "Pierre Dure",
        description = "Pierre incassable qui monte la puissance des capacités de type Roche."
    },
    [239] = {
        name = "Grain Miracl",
        description = "Graine remplie de vie qui monte la puissance des capacités de type Plante."
    },
    [240] = {
        name = "BlackGlasses",
        description = "Dark-Type moves from holder do 20% more damage."
    },
    [241] = {
        name = "Ceint.Noire",
        description = "Ceinture qui augmente la détermination et la puissance des capacités de type Combat."
    },
    [242] = {
        name = "Aimant",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [243] = {
        name = "Eau Mystique",
        description = "Gemme en forme de goutte d’eau montant la puissance des capacités de type Eau."
    },
    [244] = {
        name = "Bec Pointu",
        description = "Bec long et pointu montant la puissance des capacités de type Vol."
    },
    [245] = {
        name = "Pic Venin",
        description = "Petit pic empoisonné montant la puissance des capacités de type Poison."
    },
    [246] = {
        name = "Glacéternel",
        description = "Morceau de glace qui réfléchit la chaleur et monte la puissance des capacités de type Glace."
    },
    [247] = {
        name = "Rune Sort",
        description = "Plaque sinistre et étrange montant la puissance des capacités de type Spectre."
    },
    [248] = {
        name = "Cuillertordu",
        description = "Cuillère contenant un pouvoir télékinésique montant la puissance des capacités de type Psy."
    },
    [249] = {
        name = "Charbon",
        description = "Combustible montant la puissance des capacités de type Feu."
    },
    [250] = {
        name = "Croc Dragon",
        description = "Croc dur et pointu montant la puissance des capacités de type Dragon."
    },
    [251] = {
        name = "Mouch. Soie",
        description = "Mouchoir somptueux montant la puissance des capacités de type Normal."
    },
    [252] = {
        name = "Améliorator",
        description = "Dispositif transparent rempli de données diverses et variées. Fabriqué par la Sylphe SARL."
    },
    [253] = {
        name = "Grelot Coque",
        description = "Restaure un peu les PV du porteur à chaque fois qu’il inflige des dégâts."
    },
    [254] = {
        name = "Encens Mer",
        description = "Encens au parfum curieux qui augmente la puissance des capacités de type Eau."
    },
    [255] = {
        name = "Encens Doux",
        description = "Le parfum trompeur de cet encens baisse la Précision de l’ennemi."
    },
    [256] = {
        name = "Poing Chance",
        description = "Objet à faire tenir à Leveinard. Paire de gants montant son taux de critiques."
    },
    [257] = {
        name = "Poudre Métal",
        description = "Objet à faire tenir à Métamorph. Cette poudre étrange, très fine mais résistante, booste sa Défense."
    },
    [258] = {
        name = "Masse Os",
        description = "Objet à faire tenir à Osselait ou Ossatueur. Os dur qui monte leur Attaque."
    },
    [259] = {
        name = "Bâton",
        description = "Objet à faire tenir à Canarticho. Poireau très long et solide qui monte son taux de critiques."
    },
    [260] = {
        name = "Red Scarf",
        description = "Raises the holder's Coolness while in a contest."
    },
    [261] = {
        name = "Blue Scarf",
        description = "Raises the holder's Beauty while in a contest."
    },
    [262] = {
        name = "Pink Scarf",
        description = "Raises the holder's Cuteness while in a contest."
    },
    [263] = {
        name = "Green Scarf",
        description = "Raises the holder's Smartness while in a contest."
    },
    [264] = {
        name = "Yellow Scarf",
        description = "Raises the holder's Toughness while in a contest."
    },
    [265] = {
        name = "Loupe",
        description = "Magnifique loupe augmentant un peu la Précision des capacités."
    },
    [266] = {
        name = "Band. Muscle",
        description = "Bandeau augmentant légèrement la puissance des attaques physiques."
    },
    [267] = {
        name = "Lunet. Sages",
        description = "Paire de lunettes épaisses augmentant un peu la puissance des attaques spéciales."
    },
    [268] = {
        name = "Ceinture Pro",
        description = "Ceinture usée augmentant légèrement la puissance des capacités super efficaces."
    },
    [269] = {
        name = "Lumargile",
        description = "Objet à tenir augmentant la durée de capacités barrières telles que Mur Lumière et Protection."
    },
    [270] = {
        name = "Orbe Vie",
        description = "Objet à tenir augmentant la puissance des capacités, mais qui dépense des PV à chaque coup."
    },
    [271] = {
        name = "Herbe Pouv.",
        description = "Objet à tenir et à usage unique. Permet d’utiliser immédiatement une capacité qui devrait se charger au premier tour."
    },
    [272] = {
        name = "Orbe Toxique",
        description = "Orbe bizarre empoisonnant gravement son porteur durant le combat."
    },
    [273] = {
        name = "Orbe Flamme",
        description = "Orbe bizarre brûlant son porteur durant le combat."
    },
    [274] = {
        name = "Poudre Vite",
        description = "Objet à faire tenir à Métamorph. Cette poudre étrange, très fine mais résistante, augmente sa Vitesse."
    },
    [275] = {
        name = "Ceint. Force",
        description = "Objet à tenir permettant au porteur, s’il a ses PV pleins, d’éviter un potentiel K.O. en conservant un PV."
    },
    [276] = {
        name = "Lentil. Zoom",
        description = "Augmente la Précision du porteur s’il attaque après l’ennemi."
    },
    [277] = {
        name = "Métronome",
        description = "Objet à tenir boostant une capacité utilisée à répétition. L’effet s’annule si une autre capacité est utilisée."
    },
    [278] = {
        name = "Balle Fer",
        description = "Objet à tenir réduisant la Vitesse. Rend les porteurs de type Vol et lévitant sensibles aux capacités de type Sol."
    },
    [279] = {
        name = "Ralentiqueue",
        description = "Objet à tenir extrêmement lourd qui ralentit le porteur."
    },
    [280] = {
        name = "Nœud Destin",
        description = "Un long fil rouge vif à faire tenir à un Pokémon. Si le porteur succombe à l’attirance, l’ennemi aussi."
    },
    [281] = {
        name = "Boue Noire",
        description = "Objet à tenir restaurant peu à peu les PV des Pokémon de type Poison. Inflige des dégâts à tous les autres types."
    },
    [282] = {
        name = "Roche Glace",
        description = "Objet à tenir augmentant la durée de la capacité Grêle utilisée par le porteur."
    },
    [283] = {
        name = "Roche Lisse",
        description = "Objet à tenir augmentant la durée de la capacité Tempêtesable utilisée par le porteur."
    },
    [284] = {
        name = "Roche Chaude",
        description = "Objet à tenir augmentant la durée de la capacité Zénith utilisée par le porteur."
    },
    [285] = {
        name = "Roche Humide",
        description = "Objet à tenir augmentant la durée de la capacité Danse Pluie utilisée par le porteur."
    },
    [286] = {
        name = "Accro Griffe",
        description = "Objet à tenir augmentant la durée des attaques à tours multiples telles que Ligotage et Étreinte."
    },
    [287] = {
        name = "Mouch. Choix",
        description = "Objet à tenir augmentant la Vitesse, mais ne permettant d’utiliser qu’une seule capacité par combat."
    },
    [288] = {
        name = "Piquants",
        description = "Objet à tenir blessant le porteur à chaque tour. Peut s’accrocher aux ennemis qui attaquent le porteur."
    },
    [289] = {
        name = "Poign. Pouv.",
        description = "Objet à tenir augmentant l’Attaque lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [290] = {
        name = "Ceint. Pouv.",
        description = "Objet à tenir augmentant la Défense lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [291] = {
        name = "Lent. Pouv.",
        description = "Objet à tenir augmentant l’Attaque Spéciale lors des montées de niveau mais réduisant la Vitesse pendant le combat."
    },
    [292] = {
        name = "Band. Pouv.",
        description = "Objet à tenir augmentant la Défense Spéciale lors des montées de niveau mais réduisant la Vitesse pendant le combat."
    },
    [293] = {
        name = "Chaîne Pouv.",
        description = "Il augmente la Vitesse lors des montées de niveau mais réduit la Vitesse pendant le combat."
    },
    [294] = {
        name = "Poids Pouv.",
        description = "Objet à tenir augmentant les PV lors des montées de niveau, mais réduisant la Vitesse pendant le combat."
    },
    [295] = {
        name = "Carapace Mue",
        description = "Carapace dure qui permet au porteur de se retirer même s’il est affecté par une attaque immobilisante."
    },
    [296] = {
        name = "Grosseracine",
        description = "Objet à tenir augmentant la puissance des attaques volant des PV."
    },
    [297] = {
        name = "Lunet. Choix",
        description = "Objet à tenir augmentant l’Attaque Spéciale, mais ne permettant d’utiliser qu’une seule capacité par combat."
    },
    [298] = {
        name = "Plaque Flam",
        description = "Tablette en pierre augmentant la puissance des capacités de type Feu."
    },
    [299] = {
        name = "Plaque Hydro",
        description = "Tablette en pierre augmentant la puissance des capacités de type Eau."
    },
    [300] = {
        name = "Plaque Volt",
        description = "Tablette en pierre augmentant la puissance des capacités de type Électrik."
    },
    [301] = {
        name = "Plaque Herbe",
        description = "Tablette en pierre augmentant la puissance des capacités de type Plante."
    },
    [302] = {
        name = "Plaque Glace",
        description = "Tablette en pierre augmentant la puissance des capacités de type Glace."
    },
    [303] = {
        name = "Plaque Poing",
        description = "Tablette en pierre augmentant la puissance des capacités de type Combat."
    },
    [304] = {
        name = "Plaque Toxic",
        description = "Tablette en pierre augmentant la puissance des capacités de type Poison."
    },
    [305] = {
        name = "Plaque Terre",
        description = "Tablette en pierre augmentant la puissance des capacités de type Sol."
    },
    [306] = {
        name = "Plaque Ciel",
        description = "Tablette en pierre augmentant la puissance des capacités de type Vol."
    },
    [307] = {
        name = "Plaquesprit",
        description = "Tablette en pierre augmentant la puissance des capacités de type Psy."
    },
    [308] = {
        name = "Plaquinsect",
        description = "Tablette en pierre augmentant la puissance des capacités de type Insecte."
    },
    [309] = {
        name = "Plaque Roc",
        description = "Tablette en pierre augmentant la puissance des capacités de type Roche."
    },
    [310] = {
        name = "Plaque Fantô",
        description = "Tablette en pierre augmentant la puissance des capacités de type Spectre."
    },
    [311] = {
        name = "Plaque Draco",
        description = "Tablette en pierre augmentant la puissance des capacités de type Dragon."
    },
    [312] = {
        name = "Plaque Ombre",
        description = "Tablette en pierre augmentant la puissance des capacités de type Ténèbres."
    },
    [313] = {
        name = "Plaque Fer",
        description = "Tablette en pierre augmentant la puissance des capacités de type Acier."
    },
    [314] = {
        name = "Bizar.Encens",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Psy."
    },
    [315] = {
        name = "Encens Roc",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Roche."
    },
    [316] = {
        name = "Encens Plein",
        description = "Encens au parfum exotique gonflant son porteur et le faisant se déplacer lentement."
    },
    [317] = {
        name = "Encens Vague",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Eau."
    },
    [318] = {
        name = "Encens Fleur",
        description = "Encens au parfum exotique augmentant la puissance des capacités de type Plante."
    },
    [319] = {
        name = "Encens Veine",
        description = "Double l’argent gagné si le porteur se joint au combat."
    },
    [320] = {
        name = "Encens Pur",
        description = "Aide à repousser les Pokémon sauvages si le porteur est le premier Pokémon de l’équipe."
    },
    [321] = {
        name = "Protecteur",
        description = "Objet protecteur très dur et très lourd, apprécié d’un certain Pokémon."
    },
    [322] = {
        name = "Électiriseur",
        description = "Une boîte remplie d’une énorme quantité d’énergie électrique. Appréciée d’un certain Pokémon."
    },
    [323] = {
        name = "Magmariseur",
        description = "Une boîte remplie d’une énorme quantité d’énergie magmatique. Appréciée d’un certain Pokémon."
    },
    [324] = {
        name = "CD Douteux",
        description = "Appareil transparent rempli de données douteuses. Son fabricant n’est pas connu."
    },
    [325] = {
        name = "Tissu Fauche",
        description = "Un tissu imprégné d’une énergie spirituelle horriblement puissante. Apprécié d’un certain Pokémon."
    },
    [326] = {
        name = "Grif. Rasoir",
        description = "Griffe crochue et pointue augmentant le taux de critiques."
    },
    [327] = {
        name = "Croc Rasoir",
        description = "Objet à tenir pouvant apeurer l’ennemi quand le porteur lui inflige des dégâts."
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
        name = "Poke Radar",
        description = "Use to track down rare or shiny Pokemon. 50 steps to recharge."
    },
    [432] = {
        name = "Point Card",
        description = "Keeps count of Battle Points earned."
    },
    [433] = {
        name = "Journal",
        description = "Records prior significant activities the player took."
    },
    [434] = {
        name = "Seal Case",
        description = "Stores Seals that can be applied to Poke Ball capsules."
    },
    [435] = {
        name = "Fashion Case",
        description = "Holds Pok" .. Chars.accentedE .. "mon Accessories for use in Contests."
    },
    [436] = {
        name = "Seal Bag",
        description = "Holds ten Seals for Poke Balls."
    },
    [437] = {
        name = "Pal Pad",
        description = "Use to record Friend Codes and check your own."
    },
    [438] = {
        name = "Works Key",
        description = "Grants access to Valley Windworks."
    },
    [439] = {
        name = "Old Charm",
        description = "Trade to Cynthia's grandmother in Celestic Town for HM04 (Surf)."
    },
    [440] = {
        name = "Galactic Key",
        description = "Grants access to Galactic HQ in Veilstone City."
    },
    [441] = {
        name = "Red Chain",
        description = "Used to bind Palkia and Dialga."
    },
    [442] = {
        name = "Town Map",
        description = "Use to see the overworld map."
    },
    [443] = {
        name = "Vs Seeker",
        description = "Allows rebattling of on-screen trainers. 100 steps to recharge."
    },
    [444] = {
        name = "Coin Case",
        description = "Holds coins for the Game Corner."
    },
    [445] = {
        name = "Old Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [446] = {
        name = "Good Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [447] = {
        name = "Super Rod",
        description = "Used to catch Pok" .. Chars.accentedE .. "mon in bodies of water."
    },
    [448] = {
        name = "Sprayduck",
        description = "Used to water berries."
    },
    [449] = {
        name = "Poffin Case",
        description = "Holds Poffins."
    },
    [450] = {
        name = "Bicycle",
        description = "Use for fast transit."
    },
    [451] = {
        name = "Suite Key",
        description = "Opens a locked building in the Lakeside Resort."
    },
    [452] = {
        name = "Oaks Letter",
        description = "Allows access to Seabreak path, Flower Paradise, and Shaymin."
    },
    [453] = {
        name = "Lunar Wing",
        description = "Cures sailor's son of nightmares in Canalave City."
    },
    [454] = {
        name = "Member Card",
        description = "Allows access to Newmoon Island and Darkrai."
    },
    [455] = {
        name = "Azure Flute",
        description = "Allows entry into the Hall of Origin. Unreleased."
    },
    [456] = {
        name = "Ss Ticket",
        description = "Ticket for a ship. (RSE: S.S. Tidal LF: S.S. Anne HG: S.S. Aqua)"
    },
    [457] = {
        name = "Contest Pass",
        description = "Allows participation in Pok" .. Chars.accentedE .. "mon Contests."
    },
    [458] = {
        name = "Magma Stone",
        description = "Magma is sealed inside."
    },
    [459] = {
        name = "Parcel",
        description = "Given to the trainer's rival in Jubilife City. Contains Town Maps."
    },
    [460] = {
        name = "Coupon 1",
        description = "The first of three tickets used to obtain a Poketch."
    },
    [461] = {
        name = "Coupon 2",
        description = "The second of three tickets used to obtain a Poketch."
    },
    [462] = {
        name = "Coupon 3",
        description = "The last of three tickets used to obtain a Poketch."
    },
    [463] = {
        name = "Storage Key",
        description = "Grants access to the Team Galactic warehouse in Veilstone City."
    },
    [464] = {
        name = "Potion",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [112] = {
        name = "Orbe Platiné",
        description = "Mystérieux objet destiné à Giratina. Améliore les capacités de type Dragon et Spectre."
    },
    [465] = {
        name = "Vs Recorder",
        description = "Records wireless, Wi-Fi, or Battle Frontier battles, and stores points."
    },
    [466] = {
        name = "Gracidea",
        description = "Changes an unfrozen Shaymin to Sky Forme in the day."
    },
    [467] = {
        name = "Secret Key",
        description = "Gen IV: The key to Rotom's appliance room."
    },
    [468] = {
        name = "Apricorn Box",
        description = "Holds Apricorns."
    },
    [470] = {
        name = "Berry Pots",
        description = "Allows portable berry growing."
    },
    [477] = {
        name = "Squirt Bottle",
        description = "Use on Sudowoodo blocking the path on Route 36. Also waters berries."
    },
    [494] = {
        name = "Lure Ball",
        description = "3x effectiveness while fishing. Made from Blu Apricorn."
    },
    [493] = {
        name = "Level Ball",
        description = "Success rate based off of fraction target Pok" .. Chars.accentedE .. "mon is of user's Pokemon. Made from Red Apricorn."
    },
    [498] = {
        name = "Moon Ball",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [495] = {
        name = "Pierre Lune",
        description = "Une pierre étrange qui fait évoluer certaines espèces de Pokémon. Elle est noire comme la nuit."
    },
    [492] = {
        name = "Fast Ball",
        description = "4x effectiveness on Pok" .. Chars.accentedE .. "mon with 100 or greater base speed. Made from Wht Apricorn."
    },
    [497] = {
        name = "Friend Ball",
        description = "Caught Pok" .. Chars.accentedE .. "mon start with 200 happiness. Made from Grn Apricorn."
    },
    [496] = {
        name = "Love Ball",
        description = "8x effectiveness on opposite sex, same species targets of the Active Pokemon. Made from Pnk Apricorn."
    },
    [500] = {
        name = "Parc Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [499] = {
        name = "Compét'Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [485] = {
        name = "Red Apricorn",
        description = "Used to make a Level Ball."
    },
    [486] = {
        name = "Blue Apricorn",
        description = "Used to make a Lure Ball."
    },
    [487] = {
        name = "Yellow Apricorn",
        description = "Used to make a Moon Ball."
    },
    [488] = {
        name = "Green Apricorn",
        description = "Used to make a Friend Ball."
    },
    [489] = {
        name = "Pink Apricorn",
        description = "Used to make a Love Ball."
    },
    [490] = {
        name = "White Apricorn",
        description = "Used to make a Fast Ball."
    },
    [491] = {
        name = "Black Apricorn",
        description = "Used to make a Heavy Ball."
    },
    [471] = {
        name = "Dowsing Machine",
        description = "Use to find hidden items on the field. AKA Itemfinder."
    },
    [504] = {
        name = "RageCandyBar",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [534] = {
        name = "Red Orb",
        description = "Un spray qui soigne les blessures. Restaure 20 PV à un Pokémon."
    },
    [535] = {
        name = "Blue Orb",
        description = "Summons Kyogre to the Embedded Tower."
    },
    [532] = {
        name = "Jade Orb",
        description = "Summons Rayquaza to the Embedded Tower."
    },
    [536] = {
        name = "Enigma Stone",
        description = "S: Summons Latias H: Summons Latios."
    },
    [469] = {
        name = "Unown Report",
        description = "Keeps track of Unown types caught."
    },
    [472] = {
        name = "Blue Card",
        description = "Keeps track of points from Buena's show."
    },
    [473] = {
        name = "Slowpoke Tail",
        description = "A tasty tail that sells for a high price."
    },
    [474] = {
        name = "Clear Bell",
        description = "HS: Allows Kimono-girls to summon Ho-oh. C: Summons Suicune to the Tin Tower."
    },
    [475] = {
        name = "Card Key",
        description = "HS: Opens doors in the Radio Tower."
    },
    [476] = {
        name = "Basement Key",
        description = "HS: Key to the tunnel under Goldenrod City."
    },
    [478] = {
        name = "Red Scale",
        description = "Le porteur reçoit une partie des points Exp. du combat sans avoir à combattre."
    },
    [479] = {
        name = "Lost Item",
        description = "Le porteur reçoit une partie des points Exp. du combat sans avoir à combattre."
    },
    [480] = {
        name = "Pass",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [481] = {
        name = "Machine Part",
        description = "Aimant puissant montant la puissance des capacités de type Électrik."
    },
    [482] = {
        name = "Silver Wing",
        description = "Summons Lugia to the Whirl Islands."
    },
    [483] = {
        name = "Rainbow Wing",
        description = "Summons Ho-Oh at the top of the Bell Tower."
    },
    [484] = {
        name = "Mystery Egg",
        description = "Deliver to Professor Elm."
    },
    [502] = {
        name = "Gb Sounds",
        description = "Use to listen to GameBoy era audio."
    },
    [503] = {
        name = "Tidal Bell",
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
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have dashed in the Pokeathlon."
    },
    [508] = {
        name = "Data Card-04",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have jumped in the Pokeathlon."
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
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have messed up in the Pokeathlon."
    },
    [517] = {
        name = "Data Card-13",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have defeated themselves in the Pokeathlon."
    },
    [518] = {
        name = "Data Card-14",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have tackled in the Pokeathlon."
    },
    [519] = {
        name = "Data Card-15",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon have fallen in the Pokeathlon."
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
        description = "Records the number of times the trainer has switched Pok" .. Chars.accentedE .. "mon in the Pokeathlon."
    },
    [528] = {
        name = "Data Card-24",
        description = "Records the number of times the trainer has come in first in the Pokeathlon Goal Roll."
    },
    [529] = {
        name = "Data Card-25",
        description = "Records the number of times the trainer's Pok" .. Chars.accentedE .. "mon received prizes in the Pokeathlon."
    },
    [530] = {
        name = "Data Card-26",
        description = "Records the number of times the trainer has instructed Pok" .. Chars.accentedE .. "mon in the Pokeathlon."
    },
    [531] = {
        name = "Data Card-27",
        description = "Records the total time spent in the Pokeathlon."
    },
    [533] = {
        name = "Lock Capsule",
        description = "Contains TM95 (Snarl)."
    },
    [501] = {
        name = "Photo Album",
        description = "Stores photos from your adventure."
    },
    [116] = {
        name = "Module Aqua",
        description = "Tenu par Genesect, ce module change la capacité TechnoBuster en une capacité de type Eau."
    },
    [117] = {
        name = "Module Choc",
        description = "Tenu par Genesect, ce module change la capacité TechnoBuster en une capacité de type Électrik."
    },
    [118] = {
        name = "Module Pyro",
        description = "Tenu par Genesect, ce module change la capacité TechnoBuster en une capacité de type Feu."
    },
    [119] = {
        name = "Module Cryo",
        description = "Tenu par Genesect, ce module change la capacité TechnoBuster en une capacité de type Glace."
    },
    [134] = {
        name = "Chococœur",
        description = "Un chocolat extrêmement sucré. Restaure 20 PV à un Pokémon."
    },
    [137] = {
        name = "Greet Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [138] = {
        name = "Favored Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [139] = {
        name = "Rsvp Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [140] = {
        name = "Thanks Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [141] = {
        name = "Inquiry Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [142] = {
        name = "Like Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [143] = {
        name = "Reply Mail",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [144] = {
        name = "Bridge Mail-s",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [145] = {
        name = "Bridge Mail-d",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [146] = {
        name = "Bridge Mail-t",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [147] = {
        name = "Bridge Mail-v",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [148] = {
        name = "Bridge Mail-m",
        description = "Lets a Trainer write a message and send it via Pok" .. Chars.accentedE .. "mon trade."
    },
    [537] = {
        name = "Bel'Écaille",
        description = "Une écaille étrange qui fait évoluer certaines espèces de Pokémon. Elle a une couleur arc-en-ciel."
    },
    [538] = {
        name = "Évoluroc",
        description = "Un étrange concentré d’évolution qui augmente la Défense et la Déf. Spé. d’un Pokémon pouvant évoluer."
    },
    [539] = {
        name = "Pierrallégée",
        description = "Une pierre très légère. Elle réduit le poids du Pokémon qui la tient."
    },
    [540] = {
        name = "Casque Brut",
        description = "Tenu, cet objet inflige des dégâts à l’attaquant si ce dernier utilise une attaque physique qui atteint son but."
    },
    [541] = {
        name = "Ballon",
        description = "Tenu par un Pokémon, cet objet lui permet de flotter dans les airs. Il éclate en cas d’attaque."
    },
    [542] = {
        name = "Carton Rouge",
        description = "Carte au pouvoir mystérieux. Tenue, elle force un Pokémon touchant le porteur à se retirer du combat."
    },
    [543] = {
        name = "Pt de Mire",
        description = "Un Pokémon tenant cet objet devient sensible aux capacités autrement inefficaces en raison de son type."
    },
    [544] = {
        name = "B. Étreinte",
        description = "Objet à tenir augmentant la puissance des attaques immobilisantes telles que Ligotage ou Étreinte."
    },
    [545] = {
        name = "Bulbe",
        description = "Bulbe jetable. Tenu, il augmente la Défense Spéciale lorsque le Pokémon subit une attaque de type Eau."
    },
    [546] = {
        name = "Pile",
        description = "Pile jetable. Tenue, elle augmente l’Attaque lorsque le Pokémon subit une attaque de type Électrik."
    },
    [547] = {
        name = "Bouton Fuite",
        description = "Si le Pokémon qui le tient subit une attaque, il s’enfuit pour être remplacé par un autre membre de l’équipe."
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
        name = "Aile Santé",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu ses PV lors d’une montée de niveau."
    },
    [566] = {
        name = "Aile Force",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu son Attaque lors d’une montée de niveau."
    },
    [567] = {
        name = "Aile Armure",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu sa Défense lors d’une montée de niveau."
    },
    [568] = {
        name = "Aile Esprit",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu son Atq. Spé. lors d’une montée de niveau."
    },
    [569] = {
        name = "Aile Mental",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu sa Déf. Spé. lors d’une montée de niveau."
    },
    [570] = {
        name = "Aile Sprint",
        description = "Objet à utiliser sur un Pokémon. Il augmente un peu sa Vitesse lors d’une montée de niveau."
    },
    [571] = {
        name = "Jolie Aile",
        description = "Une plume très jolie, mais ordinaire et sans effet particulier."
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
        name = "Liberty Pass",
        description = "Allows access to Liberty Garden and Victini."
    },
    [575] = {
        name = "Offrisphère",
        description = "Sphère mystérieuse contenant l’Aura d’Unys et utilisable avec l’Offri-Aura."
    },
    [576] = {
        name = "Rêve Ball",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [577] = {
        name = "Poke Toy",
        description = "Un objet pareil à une capsule, qui capture les Pokémon sauvages. Il suffit pour cela de le jeter comme une balle."
    },
    [578] = {
        name = "Prop Case",
        description = "Stores props for the Pok" .. Chars.accentedE .. "mon Musical."
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
        name = "Pépite",
        description = "Pépite d’or pur qui brille magnifiquement. Peut être vendue à bon prix aux magasins."
    },
    [582] = {
        name = "Perle Triple",
        description = "Une très grosse perle qui brille d’une jolie couleur argent. Les amateurs en donnent un bon prix."
    },
    [583] = {
        name = "Morc. Comète",
        description = "Un fragment de comète, tombé au sol quand elle traversait l’atmosphère. Les amateurs en donnent un bon prix."
    },
    [584] = {
        name = "Vieux Sou",
        description = "Une pièce de cuivre d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [585] = {
        name = "Vieil Écu",
        description = "Une pièce d’argent d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [586] = {
        name = "Vieux Ducat",
        description = "Une pièce d’or d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [587] = {
        name = "Vieux Vase",
        description = "Un vase d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [588] = {
        name = "Vieux Bijou",
        description = "Un bijou d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [589] = {
        name = "Vieux Santon",
        description = "Une statuette d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [590] = {
        name = "Vieux Tortil",
        description = "Une couronne d’une civilisation vieille de plus de 3 000 ans. Les amateurs en donnent un bon prix."
    },
    [591] = {
        name = "Glace Volute",
        description = "Spécialité de Volucité. Elle soigne tous les problèmes de statut d’un Pokémon."
    },
    [592] = {
        name = "Muscle +",
        description = "Monte fortement le taux de critiques. Utilisable une seule fois. L’effet disparaît si le Pokémon se retire."
    },
    [593] = {
        name = "Vitesse +",
        description = "Monte la Vitesse pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [594] = {
        name = "Spécial +",
        description = "onte l’Attaque Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
	},
    [595] = {
        name = "Déf. Spé. +",
        description = "Monte la Défense Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [596] = {
        name = "Défense +",
        description = "Monte la Défense pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [597] = {
        name = "Attaque +",
        description = "Monte l’Attaque pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [598] = {
        name = "Précision +",
        description = "Monte la Précision pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [599] = {
        name = "Vitesse +",
        description = "Monte la Vitesse pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [600] = {
        name = "Spécial +",
        description = "onte l’Attaque Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [601] = {
        name = "Déf. Spé. +",
        description = "Monte la Défense Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [602] = {
        name = "Défense +",
        description = "Monte la Défense pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [603] = {
        name = "Attaque +",
        description = "Monte l’Attaque pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [604] = {
        name = "Précision +",
        description = "Monte la Précision pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [605] = {
        name = "Vitesse +",
        description = "Monte la Vitesse pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [606] = {
        name = "Spécial +",
        description = "onte l’Attaque Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [607] = {
        name = "Déf. Spé. +",
        description = "Monte la Défense Spéciale pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [608] = {
        name = "Défense +",
        description = "Monte la Défense pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [609] = {
        name = "Attaque +",
        description = "Monte l’Attaque pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [610] = {
        name = "Précision +",
        description = "Monte la Précision pendant un combat. L’effet s’estompe si le Pokémon se retire."
    },
    [611] = {
        name = "Ability Urge",
        description = "Forcibly activates a friendly Pokemon's ability."
    },
    [612] = {
        name = "Item Drop",
        description = "Forces a friendly Pok" .. Chars.accentedE .. "mon to drop its held item."
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
        name = "Muscle +",
        description = "Monte fortement le taux de critiques. Utilisable une seule fois. L’effet disparaît si le Pokémon se retire."
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