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
        description = "Invoque la pluie en combat"
    },
    {
        id = 3,
        name = "Turbo",
        description = "La vitesse de votre Pokémon augmente à chaque tour"
    },
    {
        id = 4,
        name = "Armurbaston",
        description = "Empêche les coups critiques de l'adversaire"
    },
    {
        id = 5,
        name = "Fermeté",
		description = {
            "Bloque les attaques OHKO telles que Glaciation, Empal’Korne, Guillotine et Abîme",
            "Immunise contre les capacités OHKO (Glaciation, Empal'korne, Guillotine et Abîme). Permet aussi de survivre à 1 PV si une attaque était censée mettre K.O. le Pokémon alors qu'il avait tous ses PV."
        }
    },
    {
        id = 6,
        name = "Moiteur",
        description = "Aucun Pokémon ne peut utiliser l'attaque 'Explosion' ou 'Destruction'."
    },
    {
        id = 7,
        name = "Echauffement",
        description = "Impossible de paralyser ce Pokémon"
    },
    {
        id = 8,
        name = "Voile Sable",
        description = "Augmente l'évasion s'il y a une tempête de sable."
    },
    {
        id = 9,
        name = "Statik",
        description = "Si l'ennemi vous attaque, il peut être paralysé (~30% de chances)"
    },
    {
        id = 10,
        name = "Absorb Volt",
        description = "Les attaques électriques reçues par votre Pokémon lui régénèrent 1/4 de ses PV."
    },
    {
        id = 11,
        name = "Absorb Eau",
        description = "Les attaques eau reçues par votre Pokémon lui régénèrent 1/4 de ses PV."
    },
    {
        id = 12,
        name = "Benêt",
        description = "Bloque l'attaque 'Attraction'"
    },
    {
        id = 13,
        name = "Ciel Gris",
        description = "Ignore les effets du climat"
    },
    {
        id = 14,
        name = "Oeil Composé",
        description = "Augmente la précision"
    },
    {
        id = 15,
        name = "Insomnia",
        description = "Empêche de s'endormir"
    },
    {
        id = 16,
        name = "Déguisement",
        description = "Change son type en celui de la dernière attaque employée à l'encontre de ce Pokémon"
    },
    {
        id = 17,
        name = "Vaccin",
        description = "Votre Pokémon ne peut pas être empoisonné"
    },
    {
        id = 18,
        name = "Torche",
        description = "Les attaques feu reçues par ce Pokémon sont absorbées et augmentent la puissance de ses propres attaques feu  "
    },
    {
        id = 19,
        name = "Ecran Poudre",
        description = "Empêche le cumul d'effets"
    },
    {
        id = 20,
        name = "Tempo Perso",
        description = "Empêche la confusion"
    },
    {
        id = 21,
        name = "Ventouse",
		description = {
            "Votre Pokémon ne peut pas être forcé de 'battre en retraite' par des attaques telles que Hurlement ou Cyclone",
            "Empêche le Pokémon d'être forcé de se retirer (Hurlement, Cyclone, Draco-Queue et Projection). Hors combat en tête d'équipe, augmente les chances de pêcher un Pokémon."
        }
    },
    {
        id = 22,
        name = "Intimidation",
        description = "Quand votre Pokémon démarre le combat, l'attaque du Pokémon adverse baisse d'un cran"
    },
    {
        id = 23,
        name = "Marque Ombre",
        description = "L'adversaire ne peut pas s'enfuir ou switcher de Pokémon"
    },
    {
        id = 24,
        name = "Peau Dure",
        description = "L'adversaire perd 1/16ème de ses PV max à chaque fois qu'il touche ce Pokémon."
    },
    {
        id = 25,
        name = "Garde Mystik",
        description = "Seules les attaques 'super efficaces', le climat et les altérations de statut peuvent toucher votre Pokémon"
    },
    {
        id = 26,
        name = "Lévitation",
        description = "Immunisé face aux attaques de type sol"
    },
    {
        id = 27,
        name = "Pose Spore",
        description = "Probabilité de 10% d'empoisonner, endormir ou paralyser l'adversaire après qu'il ait lancé une attaque."
    },
    {
        id = 28,
        name = "Synchro",
        description = "Transfère le statut sauf si l'adversaire y est immunisé ."
    },
    {
        id = 29,
        name = "Corps Sain",
        description = "Vos stats ne peuvent pas être baissées"
    },
    {
        id = 30,
        name = "Médic Nature",
        description = "Le Pokémon est soigné de ses altérations de statut lorsqu'il est changé au cours d'un combat"
    },
    {
        id = 31,
        name = "Paratonnerre",
		description = {
            "Attire les attaques électriques",
            "Attire les capacités Électrik en Duo/Trio. Immunise aussi contre ces dernières et augmente l'Attaque Spéciale d'un niveau s'il en encaisse une."
        }
    },
    {
        id = 32,
        name = "Sérénité",
        description = "Double la réussite aux effets des attaques lancées"
    },
    {
        id = 33,
        name = "Glissade",
        description = "Monte la vitesse quand il pleut"
    },
    {
        id = 34,
        name = "Chlorophyle",
        description = "Si le climat est ensoleillé, le Pokémon doté de Chlorophylle voit sa statistique de Vitesse multipliée par deux."
    },
    {
        id = 35,
        name = "Lumiatirance",
        description = "Un Pokémon avec Lumiattirance en tête d'équipe permet de rencontrer deux fois plus de Pokémon sauvages."
    },
    {
        id = 36,
        name = "Calque",
        description = "Calque la capacité spéciale du Pokémon adverse"
    },
    {
        id = 37,
        name = "Coloforce",
        description = "Double l'attaque du Pokémon"
    },
    {
        id = 38,
        name = "Point Poison",
        description = "Si le Pokémon adverse fait une attaque directe contre votre Pokémon, il aura 30% de chances d'être empoisonné"
    },
    {
        id = 39,
        name = "Attention",
        description = "Empêche la peur"
    },
    {
        id = 40,
        name = "Armumagma",
        description = "Votre Pokémon ne peut pas être gelé"
    },
    {
        id = 41,
        name = "Ignifu-Voile",
        description = "Votre Pokémon ne peut pas être brûlé"
    },
    {
        id = 42,
        name = "Magnépiège",
        description = "Si le Pokémon adverse est de type acier, il ne peut pas fuir"
    },
    {
        id = 43,
        name = "Anti-Bruit",
        description = "Évite les attaques sonores"
    },
    {
        id = 44,
        name = "Cuvette",
        description = "Heals for 1/16 max HP after each turn during rain."
    },
    {
        id = 45,
        name = "Sable Volant",
        description = "Le Pokémon invoque une tempête de sable dès son arrivée en jeu"
    },
    {
        id = 46,
        name = "Pression",
        description = "Le Pokémon adverse dépense deux PP au lieu d'un pour une attaque"
    },
    {
        id = 47,
        name = "Isograisse",
        description = "Les dégâts provoqués par les attaques des types Feu ou Glace sont divisés par 2"
    },
    {
        id = 48,
        name = "Matinal",
        description = "Quand votre Pokémon est endormi, il se réveillera plus vite"
    },
    {
        id = 49,
        name = "Corps Ardent",
        description = "Si votre adversaire vous attaque directement, il a 30% de chances d'être brûlé"
    },
    {
        id = 50,
        name = "Fuite",
        description = "Augmente les chances de fuite"
    },
    {
        id = 51,
        name = "Regard Vif",
        description = "Empêche une perte de précision"
    },
    {
        id = 52,
        name = "Hyper Cutter",
        description = "L'attaque de votre Pokémon ne peut pas être baissée"
    },
    {
        id = 53,
        name = "Ramassage",
		description = {
            "Octroie 10% de chance de ramasser un objet après chaque combat remporté. Les objets ramassés dépendent du niveau du Pokémon et du jeu.",
            "Octroie 10% de chance de ramasser un objet après chaque combat remporté. Les objets ramassés dépendent du niveau du Pokémon et du jeu."
        }
    },
    {
        id = 54,
        name = "Absentéisme",
        description = "Votre Pokémon n'attaque qu'un tour sur deux"
    },
    {
        id = 55,
        name = "Agitation",
        description = "Augmente votre attaque de 50% mais baisse votre précision de 20%"
    },
    {
        id = 56,
        name = "Joli Sourire",
        description = "1/3 de chances de provoquer Attraction en cas d'attaque directe d’un Pokémon du sexe opposé."
    },
    {
        id = 57,
        name = "Plus",
		description = {
            "Augmente l'attaque spéciale lorsque votre Pokémon est allié à un Pokémon possédant le talent Minus (2vs2)",
            "Augmente l'Attaque Spéciale lorsque votre Pokémon est allié à un Pokémon possédant le talent Plus ou le talent Minus."
        }
    },
    {
        id = 58,
        name = "Minus",
		description = {
            "Augmente l'attaque spéciale lorsque votre Pokémon est allié à un Pokémon possédant le talent Minus (2vs2)",
            "Augmente l'Attaque Spéciale lorsque votre Pokémon est allié à un Pokémon possédant le talent Plus ou le talent Minus."
        }
    },
    {
        id = 59,
        name = "Météo",
        description = "Change le type selon le climat"
    },
    {
        id = 60,
        name = "Glue",
        description = "Empêche le vol d'objets"
    },
    {
        id = 61,
        name = "Mue",
        description = "A chaque tour, vous avez 1/3 de chances de revenir à votre statut normal."
    },
    {
        id = 62,
        name = "Cran",
        description = "Multiplie par 1.5 l'attaque de votre Pokémon lorsque qu'il souffre d'une altération de statut"
    },
    {
        id = 63,
        name = "Ecaille Spé.",
        description = "Multiplie par 1.5 la défense de votre Pokémon lorsque qu'il souffre d'une altération de statut."
    },
    {
        id = 64,
        name = "Suintement",
        description = "Si le Pokémon adverse essaie d'absorber vos PV, c'est lui qui en perdra"
    },
    {
        id = 65,
        name = "Engrais",
        description = "Donne un bonus multiplicateur de x1.5 aux attaques plante lorsque les PV de ce Pokémon sont inférieurs à 1/3."
    },
    {
        id = 66,
        name = "Brasier",
        description = "Donne un bonus multiplicateur de x1.5 aux attaques feu lorsque les PV de ce Pokémon sont inférieurs à 1/3."
    },
    {
        id = 67,
        name = "Torrent",
        description = "Donne un bonus multiplicateur de x1.5 aux attaques eau lorsque les PV de ce Pokémon sont inférieurs à 1/3."
    },
    {
        id = 68,
        name = "Essaim",
        description = "Donne un bonus multiplicateur de x1.5 aux attaques insecte lorsque les PV de ce Pokémon sont inférieurs à 1/3."
    },
    {
        id = 69,
        name = "Tête de Roc",
        description = "Votre Pokémon ne se blesse pas en éxecutant des attaques telles que Damoclès"
    },
    {
        id = 70,
        name = "Sécheresse",
        description = "Quand votre Pokémon débute le le combat, il fait soleil"
    },
    {
        id = 71,
        name = "Piège Sable",
        description = "Empêche les Pokémon adverses d’être échangés, à moins qu’ils ne soient de type Vol, qu'ils tiennent la Carapace Mue ou qu'ils utilisent Demi-Tour, Cyclone, Hurlement, ou Téléport. Les Pokémon peuvent quitter le terrain s'ils possèdent les talents: Lévitation ou Fuite."
    },
    {
        id = 72,
        name = "Esprit Vital",
        description = "Votre Pokémon ne peut pas être endormi"
    },
    {
        id = 73,
        name = "Ecran Fumée",
        description = "Empêche les statistiques de baisser"
    },
    {
        id = 74,
        name = "Force Pure",
        description = "Double l'attaque du Pokémon"
    },
    {
        id = 75,
        name = "Coque Armure",
        description = "Bloque les coups critiques"
    },
    {
        id = 76,
        name = "Air Lock",
        description = "Ignore les effets du climat"
    },
    {
        id = 77,
        name = "Pieds Confus",
        description = "Améliore l'esquive lorsque le Pokémon devient confus"
    },
    {
        id = 78,
        name = "Motorisé",
        description = "Si votre Pokémon reçoit une attaque électrique, sa vitesse augmente"
    },
    {
        id = 79,
        name = "Rivalité",
        description = "Augmente l'Attaque du Pokémon si l'adversaire est du même sexe  " 
    },
    {
        id = 80,
        name = "Impassible",
        description = "Augmente la vitesse du Pokémon lorsqu'il perd des PV en attaquant"
    },
    {
        id = 81,
        name = "Rideau Neige",
        description = "L'esquive du Pokémon augmente lors d'une pluie de grêle"
    },
    {
        id = 82,
        name = "Gloutonnerie",
        description = "Le Pokémon utilise la baie tenue plus tôt dans le match  "
    },
    {
        id = 83,
        name = "Colérique",
        description = "Ignore les effets du climat"
    },
    {
        id = 84,
        name = "Délestage",
        description = "Si le Pokémon ne tient pas d'objet, sa vitesse augmente"
    },
    {
        id = 85,
        name = "Ignifuge",
        description = "Divise par 2 la puissance des attaques feu lancées contre ce Pokémon"
    },
    {
        id = 86,
        name = "Simple",
		description = {
            "Augmente l'efficacité des attaques ou des objets tenus",
            "Double tous les changements de statistiques du Pokémon."
        }
	},
    {
        id = 87,
        name = "Peau Sèche",
        description = "Si Zénith a été lancé, les PV du Pokémon diminuent et si Danse Pluie a été lancé, les PV du Pokémon augmentent"
    },
    {
        id = 88,
        name = "Télécharge",
        description = "En fonction de la statistique la plus élevée de l'ennemi, le Pokémon augmente sa propre statistique"
    },
    {
        id = 89,
        name = "Poing de Fer",
        description = "Les attaques 'Poing' du Pokémon voient leurs dégâts augmenter de 20%"
    },
    {
        id = 90,
        name = "Soin Poison",
        description = "Gagne des PV lorsque le statut est modifié"
    },
    {
        id = 91,
        name = "Adaptabilité",
        description = "Si ce Pokémon utilise une attaque de son type, la puissance de l'attaque est multipliée par 2 au lieu de 1.5"
    },
    {
        id = 92,
        name = "Multi-Coups",
        description = "Augmente le nombre de coups portés par les attaques en plusieurs coups"
    },
    {
        id = 93,
        name = "Hydratation",
        description = "Annule les changements de statut lorsqu'il pleut"
    },
    {
        id = 94,
        name = "Force Soleil",
        description = "Si le soleil brille, les PV du Pokémon diminuent à chaque tour, mais son Attaque spéciale est multipliée par 1.5"
    },
    {
        id = 95,
        name = "Pied Véloce",
        description = "Si un Pokémon doté de ce talent voit son statut altéré, sa Vitesse est augmentée d'un niveau, soit un gain de 50 %."
    },
    {
        id = 96,
        name = "Normalise",
        description = "Toutes les attaques de ce Pokémon sont considérées comme de type normal"
    },
    {
        id = 97,
        name = "Sniper",
        description = "La puissance des coups critiques est quadruplée"
    },
    {
        id = 98,
        name = "Garde Magik",
        description = "Seules les attaques qui infligent des dégâts fonctionnent contre ce Pokémon"
    },
    {
        id = 99,
        name = "Annule Garde",
        description = "Toutes les attaques ont une précision de 100% tant que ce Pokémon est en combat"
    },
    {
        id = 100,
        name = "Frein",
        description = "Le Pokémon est toujours plus lent que son adversaire"
    },
    {
        id = 101,
        name = "Technicien",
        description = "La puissance des attaques d'une puissance inférieure à 60 est incrémentée de 50%"
    },
    {
        id = 102,
        name = "Feuil. Garde",
        description = "Soigne les altérations de statut lorsque le soleil brille."
    },
    {
        id = 103,
        name = "Maladresse",
        description = "Ce Pokémon ne peut pas utiliser d'objet en combat"
    },
    {
        id = 104,
        name = "Brise Moule",
        description = "Annule certaines capacités spéciales du Pokémon défenseur"
    },
    {
        id = 105,
        name = "Chanceux",
        description = "Le taux de coup critique du Pokémon est augmenté d'un niveau"
    },
    {
        id = 106,
        name = "Boom Final",
        description = "Enlève 1/4 des PV de l'ennemi lorsque le Pokémon est mis KO par une attaque physique."
    },
    {
        id = 107,
        name = "Anticipation",
        description = "Alerte lorsque le Pokémon adverse possède une attaque 'super efficace' ou OHKO"
    },
    {
        id = 108,
        name = "Prédiction",
        description = "Vous permet de voir l'attaque la plus puissante du Pokémon adverse"
    },
    {
        id = 109,
        name = "Inconscient",
        description = "Les altérations de statistiques de l'adversaire sont ignorées  "
    },
    {
        id = 110,
        name = "Lentiteintée",
        description = "Si la capacité utilisée n'est pas très efficace contre le Pokémon défenseur, ses dégâts sont doublés"
    },
    {
        id = 111,
        name = "Filtre",
        description = "Divise par deux les dégâts provenant d'attaques 'super efficaces' à l'encontre de ce Pokémon"
    },
    {
        id = 112,
        name = "Début Calme",
        description = "L'attaque et la vitesse du Pokémon sont réduites de moitié durant les 5 premiers tours de combat"
    },
    {
        id = 113,
        name = "Querelleur",
        description = "Permet au Pokémon de toucher les Pokémon du type spectre avec des attaques du type normal ou combat  "
    },
    {
        id = 114,
        name = "Lavabo",
		description = {
            "Toutes les attaques eau sont attirées sur ce Pokémon",
            "Attire les capacités Eau en Duo/Trio. Immunise aussi contre ces dernières et augmente l'Attaque Spéciale d'un niveau s'il en encaisse une."
        }
    },
    {
        id = 115,
        name = "Corps Gel",
        description = "Les PV du Pokémon augmentent lorsqu'il grêle"
    },
    {
        id = 116,
        name = "Solide Roc",
        description = "Toutes les attaques 'super efficaces' sur ce Pokémon ont leurs dégâts diminués"
    },
    {
        id = 117,
        name = "Alerte Neige",
        description = "Quand ce Pokémon arrive dans le combat, la tempête de neige se déclenche"
    },
    {
        id = 118,
        name = "Cherche Miel",
        description = "Trouve du Miel après un combat"
    },
    {
        id = 119,
        name = "Fouille",
        description = "Permet de voir l'objet tenu par le Pokémon ennemi"
    },
    {
        id = 120,
        name = "Téméraire",
        description = "Tous les coups de riposte augmentent la puissance"
    },
    {
        id = 121,
        name = "Multitype",
        description = "Le type et la couleur du Pokémon changent en fonction de la plaque qu'il porte."
    },
    {
        id = 122,
        name = "Don Floral",
        description = "Change la forme et augmente l'attaque et l'attaque spéciale du Pokémon (et de son allié en combat double) en présence du soleil  "
    },
    {
        id = 123,
        name = "Mauvais Rêve",
        description = "Si le Pokémon défenseur dort, il perd des PV à chaque tour"
    },
    {
        id = 124,
        name = "Pickpocket",
        description = "Lorsqu'un Pokémon doté du talent Pickpocket se fait toucher par une capacité directe, il vole l'objet tenu de son adversaire."
    },
    {
        id = 125,
        name = "Sans Limite",
        description = "Si un Pokémon doté de ce talent utilise une capacité ayant des effets secondaires, cette capacité verra sa puissance de base augmenter de 30 %, mais les effets secondaires seront annulés en contrepartie. ."
    },
    {
        id = 126,
        name = "Contestation",
        description = "Inverts stat changes."
    },
    {
        id = 127,
        name = "Tension",
        description = "Prevents opposing Pok" .. Chars.accentedE .. "mon from eating held Berries."
    },
    {
        id = 128,
        name = "Acharné",
        description = "Raises Attack two stages upon having any stat lowered."
    },
    {
        id = 129,
        name = "Défaitiste",
        description = "Halves Attack and Special Attack at 50% max HP or less."
    },
    {
        id = 130,
        name = "Corps Maudit",
        description = "Has a 30% chance of Disabling any move that hits the Pok" .. Chars.accentedE .. "mon."
    },
    {
        id = 131,
        name = "Coeur Soin",
        description = "Has a 30% chance of curing each adjacent ally of any major status ailment after each turn."
    },
    {
        id = 132,
        name = "Garde Amie",
        description = "Decreases all direct damage taken by friendly Pok" .. Chars.accentedE .. "mon to 0.75x."
    },
    {
        id = 133,
        name = "Armurouillée",
        description = "Raises Speed and lowers Defense by one stage each upon being hit by a physical move."
    },
    {
        id = 134,
        name = "Heavy Metal",
        description = "Doubles the Pok" .. Chars.accentedE .. "mon's weight."
    },
    {
        id = 135,
        name = "Light Metal",
        description = "Halves the Pok" .. Chars.accentedE .. "mon's weight."
    },
    {
        id = 136,
        name = "Multiécaille",
        description = "Halves damage taken from full HP."
    },
    {
        id = 137,
        name = "Rage Poison",
        description = "Increases Attack to 1.5x when poisoned."
    },
    {
        id = 138,
        name = "Rage Brûlure",
        description = "Increases Special Attack to 1.5x when burned."
    },
    {
        id = 139,
        name = "Récolte",
        description = "Has a 50% chance of restoring a used Berry after each turn if the Pok" ..
            Chars.accentedE .. "mon has held no items in the meantime."
    },
    {
        id = 140,
        name = "Télépathe",
        description = "Protects against friendly Pok" .. Chars.accentedE .. "mon's damaging moves."
    },
    {
        id = 141,
        name = "Lunatique",
        description = "Raises a random stat two stages and lowers another one stage after each turn."
    },
    {
        id = 142,
        name = "Envelocape",
        description = "Protects against damage from weather."
    },
    {
        id = 143,
        name = "Toxitouche",
        description = "Has a 30% chance of poisoning target Pok" .. Chars.accentedE .. "mon upon contact."
    },
    {
        id = 144,
        name = "Régé-Force",
        description = "Heals for 1/3 max HP upon switching out."
    },
    {
        id = 145,
        name = "Coeur de Coq",
        description = "Prevents Defense from being lowered."
    },
    {
        id = 146,
        name = "Baigne Sable",
        description = "Doubles Speed during a sandstorm. Protects against sandstorm damage."
    },
    {
        id = 147,
        name = "Peau Miracle",
        description = "Lowers incoming non-damaging moves' base accuracy to exactly 50%."
    },
    {
        id = 148,
        name = "Analyste",
        description = "Strengthens moves to 1.3x their power when moving last."
    },
    {
        id = 149,
        name = "Illusion",
        description = "Takes the appearance of the last conscious party Pok" ..
            Chars.accentedE .. "mon upon being sent out until hit by a damaging move."
    },
    {
        id = 150,
        name = "Imposteur",
        description = "Transforms upon entering battle."
    },
    {
        id = 151,
        name = "Infiltration",
        description = "Bypasses Light Screen, Reflect, and Safeguard."
    },
    {
        id = 152,
        name = "Momie",
        description = "Changes attacking Pok" .. Chars.accentedE .. "mon's abilities to Mummy on contact."
    },
    {
        id = 153,
        name = "Impudence",
        description = "Raises Attack one stage upon KOing a Pok" .. Chars.accentedE .. "mon."
    },
    {
        id = 154,
        name = "Coeur Noble",
        description = "Raises Attack one stage upon taking damage from a dark move."
    },
    {
        id = 155,
        name = "Phobique",
        description = "Raises Speed one stage upon being hit by a dark, ghost, or bug move."
    },
    {
        id = 156,
        name = "Miroir Magik",
        description = "Reflects most non-damaging moves back at their user."
    },
    {
        id = 157,
        name = "Herbivore",
        description = "Absorbs grass moves, raising Attack one stage."
    },
    {
        id = 158,
        name = "Farceur",
        description = "Raises non-damaging moves' priority by one stage."
    },
    {
        id = 159,
        name = "Force Sable",
        description = "Strengthens rock, ground, and steel moves to 1.3x their power during a sandstorm. Protects against sandstorm damage."
    },
    {
        id = 160,
        name = "Epine de Fer",
        description = "Damages attacking Pok" .. Chars.accentedE .. "mon for 1/8 their max HP on contact."
    },
    {
        id = 161,
        name = "Mode Transe",
        description = "Changes Darmanitan's form after each turn depending on its HP: Zen Mode below 50% max HP, and Standard Mode otherwise."
    },
    {
        id = 162,
        name = "Victorieux",
        description = "Increases moves' accuracy to 1.1x for friendly Pok" .. Chars.accentedE .. "mon."
    },
    {
        id = 163,
        name = "Turbo Brasier",
        description = "Bypasses targets' abilities if they could hinder or prevent moves."
    },
    {
        id = 164,
        name = "Teravolt",
        description = "Bypasses targets' abilities if they could hinder or prevent moves."
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
        [221] = {7, 12, 15, 17, 20, 40, 41, 72},
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