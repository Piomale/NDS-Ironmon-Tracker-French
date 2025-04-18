PlaythroughConstants = {}

PlaythroughConstants.PROGRESS = {
    NOWHERE = 0,
    PAST_LAB = 1,
    WON = 2
}

PlaythroughConstants.EMPTY_PAST_RUN_STATISTICS = {
    {
        "Progression globale",
        {
            {"Lab réussi", 0},
            {"1 Badge", 0},
            {"2 Badges", 0},
            {"3 Badges", 0},
            {"4 Badges", 0},
            {"5 Badges", 0},
            {"6 Badges", 0},
            {"7 Badges", 0},
            {"8 Badges", 0},
            {"Victoire", 0}
        }
    },
    {
        "Rencontre selon le BST",
        {
            {"< 300", 0},
            {"300 - 399", 0},
            {"400 - 499", 0},
            {"500+", 0}
        }
    },
    {
        "Défaite selon le BST",
        {
            {"< 300", 0},
            {"300 - 399", 0},
            {"400 - 499", 0},
            {"500+", 0}
        }
    },
    {
        "Rencontre selon le type",
        {}
    },
    {
        "Défaite selon le type",
        {}
    },
    {
        "Pokémons recontrés",
        {}
    },
    {
        "Défaite contre les pokémons",
        {}
    },
    {
        "Capacités possédées",
        {}
    },
    {
        "Capacités ennemies",
        {}
    },
    {
        "Talents possédés",
        {}
    },
    {
        "Talents ennemis",
        {}
    }
}

PlaythroughConstants.CAUSES = {
    STANDARD = 0,
    WON = 1,
    SHEDINJA = 2,
    IMPOSTER = 3,
    ENEMY_LOWER_BST = 4,
}

PlaythroughConstants.FAINT_DETECTIONS = {
    ON_FIRST_SLOT_FAINT = 0,
    ON_HIGHEST_LEVEL_FAINT = 1,
    ON_ENTIRE_PARTY_FAINT = 2,
    NEVER = 3
}

--in case the death quotes file is nil or something dumb like that
PlaythroughConstants.DEFAULT_STANDARD_MESSAGES = {
    "Il y a toujours une prochaine fois...",
    "Oh, eh bien.",
    "Ça aurait pu être pire, je suppose. Ou pas.",
    "Contre toute attente... vous n'avez pas triomphé.",
    "C'est malheureux.",
    "C'est comme ça que ça se passe parfois.",
    "Tu devrais vraiment choisir la pokéball de gauche à la prochaine tentative.",
    "Tu t'amuses bien ?",
    "La maison gagne toujours.",
    "Tout ce qui peut aller mal, ira mal.",
    "On dirait que votre chance a finalement tourné."
}

PlaythroughConstants.RUN_OVER_MESSAGES = {
    [PlaythroughConstants.CAUSES.WON] = {
        exclusive = true,
        messages = {
            "Félicitations !",
            "Mon Dieu... tu as vraiment réussi...",
            "Je suis sans voix.",
            "La fin d'un long et difficile voyage...",
            "Ce jour-là, les planètes se sont alignées..."
        }
    },
    [PlaythroughConstants.CAUSES.STANDARD] = {
        messages = {}
    },
    [PlaythroughConstants.CAUSES.IMPOSTER] = {
        exclusive = true,
        messages = {
            "Parfois, on ne peut pas se regarder en face",
            "Se regarder dans le miroir est vraiment douloureux.",
            "Dark Link était bien plus facile que ça...",
            "Est-ce que ça veut dire qu'on peut l'interdire maintenant ?"
        }
    },
    [PlaythroughConstants.CAUSES.ENEMY_LOWER_BST] = {
        exclusive = true,
        messages = {
            "Parfois, les plus faibles triomphent",
            "Un résultat surprenant",
            "Les miracles peuvent vraiment se produire.",
            "Je ne pense pas que quelqu'un l'ait vu venir.",
            "Hein ?",
            "Ce Pokémon avait sûrement un pouvoir énorme.",
        }
    },
    [PlaythroughConstants.CAUSES.SHEDINJA] = {
        exclusive = true,
        messages = {
            "Ça ne fait jamais plaisir de perdre contre ça.",
            "Il y a plus de 20 attaques feu dans le jeu, et tu n'en as pas eu une seul.",
            "Ça devait arriver à un moment ou à un autre.",
            "Le seul Pokémon que tu ne voulais pas voir..."
        }
    }
}

function PlaythroughConstants.initializeStandardMessages()
    local quotesFile = Paths.CURRENT_DIRECTORY..Paths.SLASH.."death_quotes.txt"
    PlaythroughConstants.RUN_OVER_MESSAGES[PlaythroughConstants.CAUSES.STANDARD].messages =
        MiscUtils.shallowCopy(PlaythroughConstants.DEFAULT_STANDARD_MESSAGES)

    local newMessages = {}
    local currentIndex = 1
    if FormsUtils.fileExists(quotesFile) then
        newMessages = MiscUtils.readLinesFromFile(quotesFile)
    end
	print(newMessages)
    if newMessages[1] ~= nil then
        PlaythroughConstants.RUN_OVER_MESSAGES[PlaythroughConstants.CAUSES.STANDARD].messages = newMessages
    end
end
