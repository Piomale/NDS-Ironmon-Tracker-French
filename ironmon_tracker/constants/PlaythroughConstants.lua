PlaythroughConstants = {}

PlaythroughConstants.PROGRESS = {
    NOWHERE = 0,
    PAST_LAB = 1,
    WON = 2
}

PlaythroughConstants.EMPTY_PAST_RUN_STATISTICS = {
    {
        "Overall Progress",
        {
            {"Past Lab", 0},
            {"1 Badge", 0},
            {"2 Badges", 0},
            {"3 Badges", 0},
            {"4 Badges", 0},
            {"5 Badges", 0},
            {"6 Badges", 0},
            {"7 Badges", 0},
            {"8 Badges", 0},
            {"Won", 0}
        }
    },
    {
        "BST Ranges You Ran",
        {
            {"< 300", 0},
            {"300 - 399", 0},
            {"400 - 499", 0},
            {"500+", 0}
        }
    },
    {
        "BST Ranges You Lost to",
        {
            {"< 300", 0},
            {"300 - 399", 0},
            {"400 - 499", 0},
            {"500+", 0}
        }
    },
    {
        "Types You Ran",
        {}
    },
    {
        "Types You Lost to",
        {}
    },
    {
        "Pok" .. Chars.accentedE .. "mon You Ran",
        {}
    },
    {
        "Pok" .. Chars.accentedE .. "mon You Lost to",
        {}
    },
    {
        "Moves You Had",
        {}
    },
    {
        "Moves Your Enemies Had",
        {}
    },
    {
        "Abilities You Had",
        {}
    },
    {
        "Abilities You Lost to",
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
    stripChars("Il y a toujours une prochaine fois..."),
    stripChars("Oh, eh bien."),
    stripChars("Ça aurait pu être pire, je suppose. Ou pas."),
    stripChars("Contre toute attente... vous n'avez pas triomphé."),
    stripChars("C'est malheureux."),
    stripChars("C'est comme ça que ça se passe parfois."),
    stripChars("Tu devrais vraiment choisir la pokéball de gauche à la prochaine tentative."),
    stripChars("Tu t'amuses bien ?"),
    stripChars("La maison gagne toujours."),
    stripChars("Tout ce qui peut aller mal, ira mal."),
    stripChars("On dirait que votre chance a finalement tourné.")
}

PlaythroughConstants.RUN_OVER_MESSAGES = {
    [PlaythroughConstants.CAUSES.WON] = {
        exclusive = true,
        messages = {
            stripChars("Félicitations !"),
            stripChars("Mon Dieu... tu as vraiment réussi..."),
            stripChars("Je suis sans voix."),
            stripChars("La fin d'un long et difficile voyage..."),
            stripChars("Ce jour-là, les planètes se sont alignées...")
        }
    },
    [PlaythroughConstants.CAUSES.STANDARD] = {
        messages = {}
    },
    [PlaythroughConstants.CAUSES.IMPOSTER] = {
        exclusive = true,
        messages = {
            stripChars("Parfois, on ne peut pas se regarder en face"),
            stripChars("Se regarder dans le miroir est vraiment douloureux."),
            stripChars("Dark Link était bien plus facile que ça..."),
            stripChars("Est-ce que ça veut dire qu'on peut l'interdire maintenant ?")
        }
    },
    [PlaythroughConstants.CAUSES.ENEMY_LOWER_BST] = {
        exclusive = true,
        messages = {
            stripChars("Parfois, les plus faibles triomphent"),
            stripChars("Un résultat surprenant"),
            stripChars("Les miracles peuvent vraiment se produire."),
            stripChars("Je ne pense pas que quelqu'un l'ait vu venir."),
            stripChars("Hein ?"),
            stripChars("Ce Pokémon avait sûrement un pouvoir énorme."),
        }
    },
    [PlaythroughConstants.CAUSES.SHEDINJA] = {
        exclusive = true,
        messages = {
            stripChars("Ça ne fait jamais plaisir de perdre contre ça."),
            stripChars("Il y a plus de 20 attaques feu dans le jeu, et tu n'en as pas eu une seul."),
            stripChars("Ça devait arriver à un moment ou à un autre."),
            stripChars("Le seul Pokémon que tu ne voulais pas voir...")
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
        PlaythroughConstants.RUN_OVER_MESSAGES[PlaythroughConstants.CAUSES.STANDARD].messages = stripChars(newMessages)
    end
end
