AbilityData = {}

AbilityData.ABILITIES = {}
AbilityData.BATTLE_MSGS = {}

AbilityData.ABILITIES_MASTER_LIST = {
	{
        id = 0,
        name = "---",
        description = ""
    },
    {
        id = 1,
        name = "Puanteur",
        description = {
            "Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages.",
            "Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages. En combat, octroie 10% de chance d'apeurer."
        }
    },
    {
        id = 2,
        name = "Crachin",
        description = "Le Pokémon invoque la pluie à son entrée au combat."
    },
    {
        id = 3,
        name = "Turbo",
        description = "La Vitesse du Pokémon augmente d'un niveau à la fin de chaque tour."
    },
    {
        id = 4,
        name = "Armurbaston",
        description = "Empêche l'adversaire d'asséner des coups critiques au Pokémon."
    },
    {
        id = 5,
        name = "Fermeté",
        description = {
            "Immunise contre les capacités OHKO (Glaciation, Empal'korne, Guillotine et Abîme).",
            "Immunise contre les capacités OHKO (Glaciation, Empal'korne, Guillotine et Abîme). Permet aussi de survivre à 1 PV si une attaque était censée mettre K.O. le Pokémon alors qu'il avait tous ses PV."
        }
    },
    {
        id = 6,
        name = "Moiteur",
        description = "Empêche tous les Pokémon sur le terrain d'utiliser les capacités explosives (Explosion et Destruction)"
    },
    {
        id = 7,
        name = "Echauffement",
        description = "Immunise contre la paralysie."
    },
    {
        id = 8,
        name = "Voile Sable",
        description = "Diminue la Précision des attaques qui le ciblent de 20 % par temps de tempête de sable. Protège aussi des dégâts de la tempête de sable si ce n'était pas le cas. Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages par temps de tempête de sable."
    },
    {
        id = 9,
        name = "Statik",
        description = "Octroie 30% de chance de paralyser l'adversaire lorsqu'il attaque le Pokémon avec une capacité de contact. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon sauvage de type Électrik."
    },
    {
        id = 10,
        name = "Absorb Volt",
        description = "Immunise le Pokémon contre les capacités Électrik. Il est soigné de 25% de ses PV max s'il en encaisse une."
    },
    {
        id = 11,
        name = "Absorb Eau",
        description = "Immunise le Pokémon contre les capacités Eau. Il est soigné de 25% de ses PV max s'il en encaisse une."
    },
    {
        id = 12,
        name = "Benêt",
        description = "Protège contre le talent Joli Sourire, et les capacités Attraction et Séduction."
    },
    {
        id = 13,
        name = "Ciel Gris",
        description = "Tant que le Pokémon est sur le terrain, le climat n'a aucun effet pour tous les Pokémon."
    },
    {
        id = 14,
        name = "Oeil Composé",
        description = "Augmente la Précision de 30%. Hors combat en tête d'équipe, augmente les chances que les Pokémon sauvages recontrés tiennent un objet, s'ils le peuvent."
    },
    {
        id = 15,
        name = "Insomnia",
        description = "Immunise contre le sommeil."
    },
    {
        id = 16,
        name = "Déguisement",
        description = "Le Pokémon change son type en celui de la dernière capacité offensive encaissée."
    },
    {
        id = 17,
        name = "Vaccin",
        description = "Immunise contre l'empoisonnement et l'empoisonnement grave."
    },
    {
        id = 18,
        name = "Torche",
        description = "Immunise le Pokémon contre les capacités Feu. Augmente la puissance de ses propres capacités Feu de 50% s'il en encaisse une."
    },
    {
        id = 19,
        name = "Ecran Poudre",
        description = "Annule les effets secondaires des capacités offensives adverses qui ciblent le Pokémon."
    },
    {
        id = 20,
        name = "Tempo Perso",
        description = "Immunise contre la confusion."
    },
    {
        id = 21,
        name = "Ventouse",
        description = {
            "Empêche le Pokémon d'être forcé de se retirer (Hurlement et Cyclone). Hors combat en tête d'équipe, augmente les chances de pêcher un Pokémon.",
            "Empêche le Pokémon d'être forcé de se retirer (Hurlement, Cyclone, Draco-Queue et Projection). Hors combat en tête d'équipe, augmente les chances de pêcher un Pokémon."
        }
    },
    {
        id = 22,
        name = "Intimidation",
        description = "Diminue l'Attaque des Pokémon adverses d'un niveau lorsque le Pokémon entre au combat. Hors combat en tête d'équipe, 50% de chance d'empêcher la rencontre d'un Pokémon sauvage qui possède au moins 5 niveaux de moins que le Pokémon."
    },
    {
        id = 23,
        name = "Marque Ombre",
        description = "Empêche la fuite ou la retraite des Pokémon adverses."
    },
    {
        id = 24,
        name = "Peau Dure",
        description = "Inflige 1/8 des PV max à l'adversaire à chaque fois qu'il utilise une capacité de contact contre le Pokémon."
    },
    {
        id = 25,
        name = "Garde Mystik",
        description = "Immunise contre les capacités offensives qui ne sont pas \"super efficaces\"."
    },
    {
        id = 26,
        name = "Lévitation",
        description = "Immunise contre les capacités offensives de type Sol. Le Pokémon ne touche plus le sol."
    },
    {
        id = 27,
        name = "Pose Spore",
        description = "Octroie 30% de chance d'empoisonner, d'endormir ou de paralyser l'adversaire lorsqu'il utilise une capacité de contact contre le Pokémon."
    },
    {
        id = 28,
        name = "Synchro",
        description = "Lorsque le Pokémon subit un problème de statut d'un Pokémon, il inflige automatiquement le même problème de statut à ce dernier. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon sauvage de la même nature que lui."
    },
    {
        id = 29,
        name = "Corps Sain",
        description = "Empêche les autres Pokémon de baisser les statistiques du Pokémon."
    },
    {
        id = 30,
        name = "Médic Nature",
        description = "Soigne le Pokémon de ses problèmes de statut lorsqu'il est retiré du combat."
    },
    {
        id = 31,
        name = "Paratonnerre",
        description = {
            "Attire les capacités Électrik en Duo/Trio.",
            "Attire les capacités Électrik en Duo/Trio. Immunise aussi contre ces dernières et augmente l'Attaque Spéciale d'un niveau s'il en encaisse une."
        }
    },
    {
        id = 32,
        name = "Sérénité",
        description = "Double les chances d'activation des effets secondaires des capacités offensives."
    },
    {
        id = 33,
        name = "Glissade",
        description = "Double la Vitesse par temps de pluie."
    },
    {
        id = 34,
        name = "Chlorophyle",
        description = "Double la Vitesse par temps de soleil."
    },
    {
        id = 35,
        name = "Lumiatirance ",
        description = "Hors combat en tête d'équipe, double les chances de rencontrer des Pokémon sauvages."
    },
    {
        id = 36,
        name = "Calque",
        description = "Copie le talent du Pokémon adverse."
    },
    {
        id = 37,
        name = "Coloforce",
        description = "Double l'Attaque du Pokémon."
    },
    {
        id = 38,
        name = "Point Poison",
        description = "Octroie 30% de chance d'empoisonner l'adversaire s'il utilise une capacité de contact contre le Pokémon."
    },
    {
        id = 39,
        name = "Attention",
        description = "Immunise contre la peur."
    },
    {
        id = 40,
        name = "Armumagma",
        description = "Immunise contre le gel. Hors combat, les Œufs éclosent plus rapidement."
    },
    {
        id = 41,
        name = "Ignifu-Voile",
        description = "Immunise contre la brûlure."
    },
    {
        id = 42,
        name = "Magnépiège",
        description = "Empêche la fuite ou la retraite des Pokémon adverses de type Acier. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon sauvage de type Acier."
    },
    {
        id = 43,
        name = "Anti-Bruit",
        description = "Immunise contre les capacités sonores comme Mégaphone ou Hurlement."
    },
    {
        id = 44,
        name = "Cuvette",
        description = "Restaure 12.5% des PV max à la fin de chaque tour par temps de pluie."
    },
    {
        id = 45,
        name = "Sable Volant",
        description = "Le Pokémon invoque une tempête de sable à son entrée au combat."
    },
    {
        id = 46,
        name = "Pression",
        description = "Les capacités ciblant le Pokémon consomment 2 PP au lieu d'un. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon à son plus haut niveau."
    },
    {
        id = 47,
        name = "Isograisse",
        description = "Divise par 2 les dégâts encaissés de type Feu ou Glace."
    },
    {
        id = 48,
        name = "Matinal",
        description = "Divise par 2 le nombre de tours de sommeil (arrondi à l'inférieur)."
    },
    {
        id = 49,
        name = "Corps Ardent",
        description = "Octroie 30% de chance de brûler l'adversaire s'il utilise une capacité de contact contre le Pokémon. Hors combat, les Œufs éclosent plus rapidement."
    },
    {
        id = 50,
        name = "Fuite",
        description = "Permet de fuir à coup sûr contre un Pokémon sauvage. N'a aucun effet sur le switch."
    },
    {
        id = 51,
        name = "Regard Vif",
        description = {
            "Empêche la baisse de Précision. Hors combat en tête d'équipe, 50% de chance d'empêcher la rencontre d'un Pokémon sauvage qui possède au moins 5 niveaux de moins que le Pokémon.",
            "Empêche la baisse de Précision. Hors combat en tête d'équipe, 50% de chance d'empêcher la rencontre d'un Pokémon sauvage qui possède au moins 5 niveaux de moins que le Pokémon. Ignore les changements d'Esquive de l'adversaire."
        }
    },
    {
        id = 52,
        name = "Hyper Cutter",
        description = "Empêche la baisse d'Attaque."
    },
    {
        id = 53,
        name = "Ramassage",
        description = "Octroie 10% de chance de ramasser un objet après chaque combat remporté. Les objets ramassés dépendent du niveau du Pokémon et du jeu."
    },
    {
        id = 54,
        name = "Absentéisme",
        description = "Le Pokémon n'agit pas un tour sur deux."
    },
    {
        id = 55,
        name = "Agitation",
        description = "Augmente l'Attaque de 50% mais baisse la Précision des capacités physiques de 20%. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon à son plus haut niveau."
    },
    {
        id = 56,
        name = "Joli Sourire",
        description = "Octroie 30% de chance de rendre amoureux l'adversaire s'il est de sexe opposé et qu'il utilise une capacité de contact contre le Pokémon. Hors combat en tête d'équipe, 66.7% de chance de forcer l'apparition d'un Pokémon sauvage du sexe opposé."
    },
    {
        id = 57,
        name = "Plus",
        description = {
            "Augmente l'Attaque Spéciale de 50% en Duo/Trio lorsqu'un allié possède le talent Minus.",
            "Augmente l'Attaque Spéciale de 50% en Duo/Trio lorsqu'un allié possède le talent Plus ou le talent Minus."
        }
    },
    {
        id = 58,
        name = "Minus",
        description = {
            "Augmente l'Attaque Spéciale de 50% en Duo/Trio lorsqu'un allié possède le talent Plus.",
            "Augmente l'Attaque Spéciale de 50% en Duo/Trio lorsqu'un allié possède le talent Plus ou le talent Minus."
        }
    },
    {
        id = 59,
        name = "Météo",
        description = "Change le type du Pokémon selon le climat."
    },
    {
        id = 60,
        name = "Glue",
        description = "Empêche le Pokémon de perdre son objet (via Larcin, Tourmagik ou Sabotage par exemple). Hors combat en tête d'équipe, augmente les chances de pêcher un Pokémon."
    },
    {
        id = 61,
        name = "Mue",
        description = "Octroie 33% de chance de soigner son problème de statut à la fin de chaque tour."
    },
    {
        id = 62,
        name = "Cran",
        description = "Augmente l'Attaque de 50% si le Pokémon souffre d'un problème de statut."
    },
    {
        id = 63,
        name = "Ecaille Spé.",
        description = "Augmente la Défense de 50% si le Pokémon souffre d'un problème de statut."
    },
    {
        id = 64,
        name = "Suintement",
        description = "Les capacités adverses absorbant des PV comme Giga-Sangsue ou Vampigraine (utilisées contre le Pokémon) font perdre des PV à l'adversaire au lieu de les régénérer."
    },
    {
        id = 65,
        name = "Engrais",
        description = "Augmente la puissance des attaques Plante de 50% lorsque les PV du Pokémon sont inférieurs à 1/3 des PV max."
    },
    {
        id = 66,
        name = "Brasier",
        description = "Augmente la puissance des attaques Feu de 50% lorsque les PV du Pokémon sont inférieurs à 1/3 des PV max."
    },
    {
        id = 67,
        name = "Torrent",
        description = "Augmente la puissance des attaques Eau de 50% lorsque les PV du Pokémon sont inférieurs à 1/3 des PV max."
    },
    {
        id = 68,
        name = "Essaim",
        description = "Augmente la puissance des attaques Insecte de 50% lorsque les PV du Pokémon sont inférieurs à 1/3 des PV max."
    },
    {
        id = 69,
        name = "Tête de Roc",
        description = "Protège le Pokémon des dégâts de recul de ses capacités à contrecoups comme Damoclès ou Martobois."
    },
    {
        id = 70,
        name = "Sécheresse",
        description = "Le Pokémon invoque le soleil à son entrée au combat."
    },
    {
        id = 71,
        name = "Piège Sable",
        description = "Empêche la fuite ou la retraite des Pokémon adverses s'ils ne sont pas de type Sol ou s'ils ne possèdent pas Lévitation. Hors combat en tête d'équipe, double les chances de rencontrer des Pokémon sauvages."
    },
    {
        id = 72,
        name = "Esprit Vital",
        description = "Immunise contre le sommeil. Hors combat en tête d'équipe, 50% de chance de forcer l'apparition d'un Pokémon à son plus haut niveau."
    },
    {
        id = 73,
        name = "Ecran Fumée",
        description = "Empêche les autres Pokémon de baisser les statistiques du Pokémon. Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages"
    },
    {
        id = 74,
        name = "Force Pure",
        description = "Double l'Attaque du Pokémon."
    },
    {
        id = 75,
        name = "Coque Armure",
        description = "Empêche l'adversaire d'asséner des coups critiques au Pokémon."
    },
    {
        id = 76,
        name = "Air Lock",
        description = "Tant que le Pokémon est sur le terrain, le climat n'a aucun effet pour tous les Pokémon."
    },
    {
        id = 77,
        name = "Pieds Confus",
        description = "Augmente l'Esquive de 50% lorsque le Pokémon est confus."
    },
    {
        id = 78,
        name = "Motorisé",
        description = "Immunise le Pokémon contre les capacités Électrik. Augmente sa Vitesse d'un niveau s'il en encaisse une."
    },
    {
        id = 79,
        name = "Rivalité",
        description = "Augmente la puissance des attaques de 25% si l'adversaire est du même sexe, baisse la puissance des attaques de 25% s'il est du sexe opposé. Aucun effet si le Pokémon ou l'adversaire est asexué."
    },
    {
        id = 80,
        name = "Impassible",
        description = "Augmente la Vitesse d'un niveau lorsque le Pokémon est apeuré."
    },
    {
        id = 81,
        name = "Rideau Neige",
        description = "Diminue la Précision des attaques qui le ciblent de 20 % par temps de grêle. Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages par temps de grêle."
    },
    {
        id = 82,
        name = "Gloutonnerie",
        description = "Permet de consommer certaines Baies plus rapidement : le taux d'activation des Baies à 25% des PV max passe à 50% des PV max."
    },
    {
        id = 83,
        name = "Colérique",
        description = "Augmente l'Attaque au maximum lorsque le Pokémon subit un coup critique."
    },
    {
        id = 84,
        name = "Délestage",
        description = "Double la Vitesse si le Pokémon tenait un objet et qu'il l'a utilisé. L'effet disparaît après un switch."
    },
    {
        id = 85,
        name = "Ignifuge",
        description = "Divise par 2 les dégâts encaissés de type Feu ainsi que les dégâts occasionnés par la brûlure."
    },
    {
        id = 86,
        name = "Simple",
        description = "Double tous les changements de statistiques du Pokémon."
    },
    {
        id = 87,
        name = "Peau Sèche",
        description = "Restaure 25% des PV max si le Pokémon encaisse une capacité Eau mais augmente les dégâts subis par les capacités Feu de 25%. Restaure aussi 12.5% des PV max à la fin de chaque tour par temps de pluie mais perd 12.5% des PV max par temps de soleil."
    },
    {
        id = 88,
        name = "Télécharge",
        description = "Augmente l'Attaque ou l'Attaque Spéciale d'un niveau selon la Défense et la Défense Spéciale de l'adversaire."
    },
    {
        id = 89,
        name = "Poing de Fer",
        description = "Augmente la puissance des attaques \"Poing\" de 20%."
    },
    {
        id = 90,
        name = "Soin Poison",
        description = "Restaure 12.5% des PV max à la fin de chaque tour lorsque le Pokémon est empoisonné."
    },
    {
        id = 91,
        name = "Adaptabilité",
        description = "Le bonus de dégâts pour les capacités du même type que le Pokémon (\"STAB\") passe de x1.5 à x2."
    },
    {
        id = 92,
        name = "Multi-Coups",
        description = "Les attaques \"Multi-coups\" portent toujours le nombre maximal de coups."
    },
    {
        id = 93,
        name = "Hydratation",
        description = "Guérit des problèmes de statut à la fin de chaque tour par temps de pluie."
    },
    {
        id = 94,
        name = "Force Soleil",
        description = "Par temps de soleil, augmente l'Attaque Spéciale de 50%, mais perd 12.5% des PV max à la fin de chaque tour."
    },
    {
        id = 95,
        name = "Pied Véloce",
        description = "Augmente la Vitesse de 50% si le Pokémon souffre d'un problème de statut. Hors combat en tête d'équipe, diminue de 50% la probabilité de rencontrer des Pokémon sauvages."
    },
    {
        id = 96,
        name = "Normalise",
        description = "Toutes les capacités du Pokémon deviennent de type Normal."
    },
    {
        id = 97,
        name = "Sniper",
        description = "Augmente la puissance des coups critiques de 50%."
    },
    {
        id = 98,
        name = "Garde Magik",
        description = "Protège contre les dégâts résiduels (problèmes de statut, climats, Vampigraine, pièges, etc). Seules les capacités offensives peuvent infliger des dégâts au Pokémon."
    },
    {
        id = 99,
        name = "Annule Garde",
        description = "Toutes les capacités utilisées par le Pokémon ou ciblant le Pokémon touchent à coup sûr. Hors combat en tête d'équipe, double les chances de rencontrer des Pokémon sauvages."
    },
    {
        id = 100,
        name = "Frein",
        description = "Permet au Pokémon de toujours attaquer en dernier (pour une même priorité d'attaque que l'adversaire)."
    },
    {
        id = 101,
        name = "Technicien",
        description = "Augmente de 50% la puissance des capacités \"faibles\" (= dont la puissance de base est inférieure ou égale à 60)."
    },
    {
        id = 102,
        name = "Feuil. Garde",
        description = "Immunise contre les problèmes de statut par temps de soleil."
    },
    {
        id = 103,
        name = "Maladresse",
        description = "Empêche le Pokémon de bénéficier des effets des objets tenus en combat (sauf les effets affectant l'expérience / l'argent / les EV gagnés)"
    },
    {
        id = 104,
        name = "Brise Moule",
        description = "Ignore certains talents du Pokémon adverse lorsque le Pokémon attaque."
    },
    {
        id = 105,
        name = "Chanceux",
        description = "Augmente le taux de coups critique d'un niveau."
    },
    {
        id = 106,
        name = "Boom Final",
        description = "Si le Pokémon tombe K.O. par une capacité de contact adverse, alors l'adversaire perd 25% de ses PV max."
    },
    {
        id = 107,
        name = "Anticipation",
        description = "Affiche un message préventif lorsque l'adversaire possède une capacité \"OHKO\" ou \"super efficace\" contre le Pokémon, à son entrée au combat."
    },
    {
        id = 108,
        name = "Prédiction",
        description = "Affiche un message informant de la plus puissante capacité du Pokémon adverse, à l'entrée du Pokémon en combat."
    },
    {
        id = 109,
        name = "Inconscient",
        description = "Permet d'ignorer les changements de statistiques adverses lorsque le Pokémon attaque ou subit une attaque."
    },
    {
        id = 110,
        name = "Lentiteintée",
        description = "Double la puissance des attaques \"pas très efficaces\"."
    },
    {
        id = 111,
        name = "Filtre",
        description = "Réduit de 25% les dégâts \"super efficaces\" contre le Pokémon."
    },
    {
        id = 112,
        name = "Début Calme",
        description = "Divise par 2 l'Attaque et la Vitesse du Pokémon pendant les 5 premiers tours après qu'il soit entré en combat."
    },
    {
        id = 113,
        name = "Querelleur",
        description = "Permet au Pokémon de toucher les Pokémon Spectre avec des capacités Normal et Combat."
    },
    {
        id = 114,
        name = "Lavabo",
        description = {
            "Attire les capacités Eau en Duo/Trio.",
            "Attire les capacités Eau en Duo/Trio. Immunise aussi contre ces dernières et augmente l'Attaque Spéciale d'un niveau s'il en encaisse une."
        }
    },
    {
        id = 115,
        name = "Corps Gel",
        description = "Restaure 12.5% des PV max par temps de grêle."
    },
    {
        id = 116,
        name = "Solide Roc",
        description = "Réduit de 25% les dégâts \"super efficaces\" contre le Pokémon."
    },
    {
        id = 117,
        name = "Alerte Neige",
        description = "Le Pokémon invoque la grêle à son entrée au combat."
    },
    {
        id = 118,
        name = "Cherche Miel",
        description = "Octroie une chance de ramasser du Miel après chaque combat remporté. La chance augmente en fonction du niveau du Pokémon."
    },
    {
        id = 119,
        name = "Fouille",
        description = "Permet de voir l'objet tenu par l'adversaire, à l'entrée du Pokémon au combat."
    },
    {
        id = 120,
        name = "Téméraire",
        description = "Augmente la puissance des capacités à contrecoups de 20% (cela inclut les capacités comme Pied Voltige ou comme Damoclès)."
    },
    {
        id = 121,
        name = "Multitype",
        description = "Le type du Pokémon change en fonction de la Plaque qu'il porte."
    },
    {
        id = 122,
        name = "Don Floral",
        description = "Change la forme et augmente l'Attaque et la Défense Spéciale du Pokémon de 50% (et de ses alliés en Duo/Trio) par temps de soleil."
    },
    {
        id = 123,
        name = "Mauvais Rêve",
        description = "Inflige 12.5% des PV max de l'adversaire à la fin de chaque tour s'il est endormi."
    },
    {
        id = 124,
        name = "Pickpocket",
        description = "Vole l'objet de l'adversaire après avoir utilisé une capacité de contact (nécessite de ne pas tenir d'objet)."
    },
    {
        id = 125,
        name = "Sans Limite",
        description = "Augmente la puissance des capacités avec un effet secondaire de 30% mais les effets secondaires ne peuvent plus s'activer. Les effets secondaires ne concernent que les chances d'infliger un problème de statut ou la confusion ; de baisser des statistiques adverses ; d'augmenter des statistiques du lanceur ; d'apeurer la cible."
    },
    {
        id = 126,
        name = "Contestation",
        description = "Transforme les augmentations de stats du Pokémon en baisses de stats et inversement."
    },
    {
        id = 127,
        name = "Tension",
        description = "Empêche les Pokémon adverses de manger leur Baie tant que le Pokémon est en combat."
    },
    {
        id = 128,
        name = "Acharné",
        description = "Augmente l'Attaque de 2 niveaux lorsqu'un adversaire baisse une statistique du Pokémon."
    },
    {
        id = 129,
        name = "Défaitiste",
        description = "Divise par 2 l'Attaque et l'Attaque Spéciale lorsque les PV du Pokémon sont à 50% ou moins."
    },
    {
        id = 130,
        name = "Corps Maudit",
        description = "Octroie 30% de chance d'entraver une capacité offensive utilisée contre le Pokémon pour les 3 prochains tours."
    },
    {
        id = 131,
        name = "Coeur Soin",
        description = "Octroie 30% de chance de soigner les problèmes de statut des alliés à la fin de chaque tour (en combat Duo/Trio)."
    },
    {
        id = 132,
        name = "Garde Amie",
        description = "Diminue de 25% les dégâts subis par les alliés (en combat Duo/Trio)."
    },
    {
        id = 133,
        name = "Armurouillée",
        description = "Augmente la Vitesse de 2 niveaux et baisse la Défense d'un niveau lorsque le Pokémon subit une capacité physique. 6G- : L'augmentation de Vitesse était de 1 niveau."
    },
    {
        id = 134,
        name = "Heavy Metal",
        description = "Double le poids du Pokémon."
    },
    {
        id = 135,
        name = "Light Metal",
        description = "Divise par 2 le poids du Pokémon."
    },
    {
        id = 136,
        name = "Multiécaille",
        description = "Divise par 2 les dégâts subis si le Pokémon possède tous ses PV."
    },
    {
        id = 137,
        name = "Rage Poison",
        description = "Augmente l'Attaque de 50% si le Pokémon est empoisonné ou gravement empoisonné."
    },
    {
        id = 138,
        name = "Rage Brûlure",
        description = "Augmente l'Attaque Spéciale de 50% si le Pokémon est brûlé."
    },
    {
        id = 139,
        name = "Récolte",
        description = "Octroie 50% de chance de récupérer une Baie précédemment consommée à la fin de chaque tour. Les chances sont de 100% par temps de soleil."
    },
    {
        id = 140,
        name = "Télépathe",
        description = "Permet d'esquiver les capacités offensives de ses alliés en combat Duo/Trio (capacités offensives à cible unique ET capacités offensives de zone)."
    },
    {
        id = 141,
        name = "Lunatique",
        description = "Augmente une statistique au hasard de 2 niveaux tout en diminuant une autre au hasard de 1 niveau. Les statistiques concernées sont : l'Attaque, la Défense, l'Attaque Spéciale, la Défense Spéciale et la Vitesse. (7G-) La Précision et l'Esquive étaient aussi concernées."
    },
    {
        id = 142,
        name = "Envelocape",
        description = "Protège des dégâts causés par la tempête de sable et la grêle."
    },
    {
        id = 143,
        name = "Toxitouche",
        description = "Octroie 30% de chance d'empoisonner la cible si le Pokémon utilise une capacité de contact."
    },
    {
        id = 144,
        name = "Régé-Force",
        description = "Restaure 1/3 des PV max si le Pokémon se retire du combat."
    },
    {
        id = 145,
        name = "Coeur de Coq",
        description = "Empêche les autres Pokémon de baisser la Défense du Pokémon."
    },
    {
        id = 146,
        name = "Baigne Sable",
        description = "Double la Vitesse par temps de tempêtes de sable."
    },
    {
        id = 147,
        name = "Peau Miracle",
        description = "Divise par 2 la Précision des capacités de statut ciblant le Pokémon."
    },
    {
        id = 148,
        name = "Analyste",
        description = "Augmente la puissance de la capacité utilisée de 30% si le Pokémon attaque en dernier."
    },
    {
        id = 149,
        name = "Illusion",
        description = "Prend l'apparence du dernier Pokémon de l'équipe."
    },
    {
        id = 150,
        name = "Imposteur",
        description = "Se transforme en le Pokémon adverse à l'entrée au combat, copiant toutes ses statistiques (sauf les PV), toutes ses capacités (avec 5 PP) et son talent."
    },
    {
        id = 151,
        name = "Infiltration",
        description = "Ignore les effets adverses de Protection, Mur Lumière, Voile Aurore, Brume et Rune Protect lorsque le Pokémon attaque."
    },
    {
        id = 152,
        name = "Momie",
        description = "Lorsque l'adversaire utilise une capacité de contact contre le Pokémon, le talent de ce dernier se transforme en Momie."
    },
    {
        id = 153,
        name = "Impudence",
        description = "Augmente l'Attaque d'un niveau lorsque le Pokémon met un Pokémon K.O. (allié comme ennemi)."
    },
    {
        id = 154,
        name = "Coeur Noble",
        description = "Augmente l'Attaque d'un niveau lorsque le Pokémon encaisse une capacité Ténèbres."
    },
    {
        id = 155,
        name = "Phobique",
        description = "Augmente la Vitesse d'un niveau lorsque le Pokémon encaisse une capacité Spectre, Ténèbres ou Insecte."
    },
    {
        id = 156,
        name = "Miroir Magik",
        description = "Renvoie à l'adversaire ses capacités de statut utilisées contre le Pokémon."
    },
    {
        id = 157,
        name = "Herbivore",
        description = "Immunise le Pokémon contre les capacités Plante. Augmente l'Attaque d'un niveau s'il en encaisse une."
    },
    {
        id = 158,
        name = "Farceur",
        description = "Octroie une priorité +1 supplémentaire pour toutes les capacités de statut du Pokémon."
    },
    {
        id = 159,
        name = "Force Sable",
        description = "Augmente la puissance des capacités de type Sol, Roche et Acier de 30% par temps de tempête de sable. Protège aussi des dégâts de la tempête de sable si ce n'était pas le cas."
    },
    {
        id = 160,
        name = "Epine de Fer",
        description = "Inflige 1/8 des PV max à l'adversaire à chaque fois qu'il utilise une capacité de contact contre le Pokémon."
    },
    {
        id = 161,
        name = "Mode Transe",
        description = "Change le Pokémon de forme si ses PV tombent à 50% ou moins. Cela change son type et ses statistiques."
    },
    {
        id = 162,
        name = "Victorieux",
        description = "Augmente la Précision du Pokémon (et de ses alliés en combat Duo/Trio) de 10%."
    },
    {
        id = 163,
        name = "Turbo Brasier",
        description = "Ignore certains talents du Pokémon adverse lorsque le Pokémon attaque."
    },
    {
        id = 164,
        name = "Téra-Voltage",
        description = "Ignore certains talents du Pokémon adverse lorsque le Pokémon attaque."
    }
}

-- Map a battle message id (key) to a list of ability id's (value) that could trigger it
AbilityData.BATTLE_MSGS_MASTER_LIST = {
    -- List: https://github.com/pret/pokeheartgold/blob/448bea8e0692a2affab92739e73e80d9636b7aa0/include/constants/battle_subscript.h
    GEN4 = {
        [12] = {3, 88}, -- 3:Speed Boost, 88:Download -- TODO: Speedboost requires testing (download works)
        --[ 16]  = { 83 }, -- 83:Anger Point, -- TODO: technically works but might false trigger, removing for now
        [22] = {38}, -- 38:Poison Point, 27:Effect Spore
        --[18] = {27}, -- 27:Effect Spore
        [25] = {49}, -- 49:Flame Body
        [31] = {9}, -- 9:Static, 27:Effect Spore
        [106] = {56}, -- 56:Cute Charm
        [177] = {104}, -- 104:Mold Breaker
        [178] = {10, 11, 87}, -- 10:Volt Absorb, 11:Water Absorb, 87:Dry Skin
        [179] = {18}, -- 18:Flash Fire
        [180] = {31, 114}, -- 31:Lightningrod, 114:Storm Drain
        [181] = {43}, -- 43:Soundproof
        [182] = {78}, -- 78:Motor Drive
        [183] = {2}, -- 2:Drizzle
        [184] = {45}, -- 45:Sand Stream
        [185] = {70}, -- 70:Drought
        [186] = {22}, -- 22:Intimidate
        [187] = {36}, -- 36:Trace
        [188] = {16}, -- 16:Color Change
        [189] = {24}, -- 24:Rough Skin
        [190] = {61}, -- 61:Shed Skin
        [191] = {54}, -- 54:Truant
        [192] = {44, 87}, -- 44:Rain Dish, 87:Dry Skin
        [193] = {106}, -- 106:Aftermath
        [194] = {107}, -- 107:Anticipation
        [195] = {108}, -- 108:Forewarn
        [196] = {112}, -- 112:Slow Start
        -- 7:Limber, 12:Oblivious, 15:Insomnia, 17:Immunity, 20:Own Tempo, 40:Magma Armor, 41:Water Veil, 72:Vital Spirit,
        --Disabled for being buggy
        --[221] = {7, 12, 15, 17, 20, 40, 41, 72},
        [252] = {117}, -- 117:Snow Warning
        [253] = {119}, -- 119:Frisk
        [285] = {46} -- 46:Pressure
    }
    --[[ Ability master list to test for Gen 4
		Static, flame body, pressure, mold breaker, frisk, forewarn, anticipation, anger point,
		poison point, effect spore, insomnia, flash fire, levitate, volt absorb, motor drive,
		water absorb, intimidate, download, hyper cutter, clear body, speed boost, own tempo,
		sturdy, drought, drizzle, snow warning, sand stream, immunity, steadfast, inner focus,
		oblivious, cute charm, aftermath, rough skin, damp, color change, suction cups, wonder guard,
		trace, water veil, soundproof, rain dish, keen eye, truant, slow start, shed skin, poison heal,
		hydration, solar power, ice body, bad dreams, and magic guard

		Other notes:
		Dry Skin doesnt work with rain, Syncrhonize seems tough to trigger on (be careful)
		-Clear body, white smoke, keen eye, hyper cutter all use 2 messages
	]]
}