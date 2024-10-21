TrainerData = {}

TrainerData.TRAINER_TYPES = {
    STANDARD = 0,
    RIVAL = 1,
    GYM_LEADERS = 2
}

TrainerData.TRAINERS = {
    --heartgold/soulsilver
    [0x454B5049] = {
        LAB_IDS = {
            [496] = true,
            [497] = true,
            [495] = true
        },
        FINAL_FIGHT_ID = 260,
        IMPORTANT_GROUPS = {
            {
                groupName = "Silver",
                groupNameFrench = "Silver",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
				battles = {
					{location = "Laboratoire", ids = {496, 497, 495}, iv = 0},
					{location = "Bourg Geon", ids = {266, 269, 1}, iv = 3},
					{location = "Tour Cendrée", ids = {267, 270, 263}, iv = 6},
					{location = "Doublonville", ids = {289, 271, 288}, iv = 14},
					{location = "Route Victoire", ids = {268, 272, 264}, iv = 19},
					{location = "Mont Sélénite", ids = {286, 287, 285}, iv = 24}
				}
            },
            {
                groupName = "Johto Gyms",
                groupNameFrench = "Arènes de Johto",
                trainerType = TrainerData.TRAINER_TYPES.GYM_LEADERS,
                battles = {
                    {name = "Falkner", nameFrench = "Albert", ids = {20}, badgeNumber = 1, iv = 6},
                    {name = "Bugsy", nameFrench = "Hector", ids = {21}, badgeNumber = 2, iv = 9},
                    {name = "Whitney", nameFrench = "Blanche", ids = {30}, badgeNumber = 3, iv = 12},
                    {name = "Morty", nameFrench = "Mortimer", ids = {31}, badgeNumber = 4, iv = 12},
                    {name = "Chuck", nameFrench = "Chuck", ids = {34}, badgeNumber = 5, iv = 18},
                    {name = "Jasmine", nameFrench = "Jasmine", ids = {33}, badgeNumber = 6, iv = 18},
                    {name = "Pryce", nameFrench = "Frédo", ids = {32}, badgeNumber = 7, iv = 18},
                    {name = "Clair", nameFrench = "Sandra", ids = {35}, badgeNumber = 8, iv = 24}
                }
            },
            {
                groupName = "Kanto Gyms",
				groupNameFrench = "Arènes de Kanto",
                trainerType = TrainerData.TRAINER_TYPES.GYM_LEADERS,
                battles = {
                    {name = "Brock", nameFrench = "Pierre", ids = {253}, badgeNumber = 1, iv = 24},
                    {name = "Misty", nameFrench = "Ondine", ids = {254}, badgeNumber = 2, iv = 24},
                    {name = "Lt. Surge", nameFrench = "Major Bob", ids = {255}, badgeNumber = 3, iv = 24},
                    {name = "Erika", nameFrench = "Erika", ids = {256}, badgeNumber = 4, iv = 24},
                    {name = "Janine", nameFrench = "Jeannine", ids = {257}, badgeNumber = 5, iv = 24},
                    {name = "Sabrina", nameFrench = "Morgane", ids = {258}, badgeNumber = 6, iv = 24},
                    {name = "Blaine", nameFrench = "Auguste", ids = {259}, badgeNumber = 7, iv = 24},
                    {name = "Blue", nameFrench = "Blue", ids = {261}, badgeNumber = 8, iv = 30}
                }
            },
            {
                groupName = "Elite 4 / Bosses",
				groupNameFrench = "Elite 4 / Boss",
                trainerType = TrainerData.TRAINER_TYPES.STANDARD,
                battles = {
                    {name = "Will", nameFrench = "Clément", ids = {245}, iv = 30},
                    {name = "Koga", nameFrench = "Koga", ids = {247}, iv = 30},
                    {name = "Bruno", nameFrench = "Aldo", ids = {418}, iv = 30},
                    {name = "Karen", nameFrench = "Marion", ids = {246}, iv = 30},
                    {name = "Lance", nameFrench = "Lance", ids = {244}, iv = 30},
                    {name = "Red", nameFrench = "Red", ids = {260}, iv = 30},
                    {name = "Petrel", nameFrench = "Lambda", ids = {487}, iv = 12},
                    {name = "Archer", nameFrench = "Amos", ids = {485}, iv = 24}
                }
            }
        }
    },
    --black
    [0x4F425249] = {
        LAB_IDS = {
            [64] = true
        },
        FINAL_FIGHT_ID = 232,
        IMPORTANT_GROUPS = {
            {
                groupName = "Bianca",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Lab", ids = {59, 60, 61}, iv = 0},
                    {location = "Route 2", ids = {498, 499, 500}, iv = 3},
                    {location = "After Burgh", ids = {507, 508, 509}, iv = 6},
                    {location = "After Clay", ids = {491, 492, 493}, iv = 12},
                    {location = "Pre Tubeline", ids = {494, 495, 496}, iv = 18}
                }
            },
            {
                groupName = "Cheren",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Lab", ids = {53, 54, 55}, iv = 0},
                    {location = "Striaton City", ids = {287, 288, 289}, iv = 3},
                    {location = "Route 3", ids = {56, 57, 58}, iv = 6},
                    {location = "After Burgh", ids = {403, 404, 405}, iv = 9},
                    {location = "After Elesa", ids = {90, 91, 92}, iv = 12},
                    {location = "Route 7", ids = {539, 540, 541}, iv = 24},
                    {location = "Route 10", ids = {588, 589, 590}, iv = 30}
                }
            },
            {
                groupName = "N",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Accumula Town", ids = {64}, iv = 6},
                    {location = "Nacrene City", ids = {65}, iv = 12},
                    {location = "Nimbasa City", ids = {89}, iv = 18},
                    {location = "Chargestone", ids = {218}, iv = 24},
                    {location = "N's Castle", ids = {587}, iv = 30}
                }
            },
            {
                groupName = "Gym Leaders",
                trainerType = TrainerData.TRAINER_TYPES.GYM_LEADERS,
                battles = {
                    --first gym is annoying, there are different gym leaders you fight based on starter choice
                    {
                        {name = "Chili", ids = {11}, badgeNumber = 1, iv = 0},
                        {name = "Cress", ids = {13}, badgeNumber = 1, iv = 0},
                        {name = "Cilan", ids = {12}, badgeNumber = 1, iv = 0}
                    },
                    {name = "Lenora", ids = {21}, badgeNumber = 2, iv = 6},
                    {name = "Burgh", ids = {22}, badgeNumber = 3, iv = 12},
                    {name = "Elesa", ids = {23}, badgeNumber = 4, iv = 12},
                    {name = "Clay", ids = {24}, badgeNumber = 5, iv = 12},
                    {name = "Skyla", ids = {25}, badgeNumber = 6, iv = 12},
                    {name = "Brycen", ids = {131}, badgeNumber = 7, iv = 18},
                    {name = "Drayden", ids = {133}, badgeNumber = 8, iv = 18}
                }
            },
            {
                groupName = "Elite 4",
                trainerType = TrainerData.TRAINER_TYPES.STANDARD,
                battles = {
                    {name = "Shauntal", ids = {228}, iv = 24},
                    {name = "Marshal", ids = {229}, iv = 24},
                    {name = "Grimsley", ids = {230}, iv = 24},
                    {name = "Caitlin", ids = {231}, iv = 24},
                    {name = "N", ids = {587}, iv = 30},
                    {name = "Ghetsis", ids = {232}, iv = 30}
                }
            }
        }
    },
    --white
    [0x4F415249] = {
        LAB_IDS = {
            [64] = true
        },
        FINAL_FIGHT_ID = 232,
        IMPORTANT_GROUPS = {
            {
                groupName = "Bianca",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Lab", ids = {59, 60, 61}, iv = 0},
                    {location = "Route 2", ids = {498, 499, 500}, iv = 3},
                    {location = "After Burgh", ids = {507, 508, 509}, iv = 6},
                    {location = "After Clay", ids = {491, 492, 493}, iv = 12},
                    {location = "Pre Tubeline", ids = {494, 495, 496}, iv = 18}
                }
            },
            {
                groupName = "Cheren",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Lab", ids = {53, 54, 55}, iv = 0},
                    {location = "Striaton City", ids = {287, 288, 289}, iv = 3},
                    {location = "Route 3", ids = {56, 57, 58}, iv = 6},
                    {location = "After Burgh", ids = {403, 404, 405}, iv = 9},
                    {location = "After Elesa", ids = {90, 91, 92}, iv = 12},
                    {location = "Route 7", ids = {539, 540, 541}, iv = 24},
                    {location = "Route 10", ids = {588, 589, 590}, iv = 30}
                }
            },
            {
                groupName = "N",
                trainerType = TrainerData.TRAINER_TYPES.RIVAL,
                battles = {
                    {location = "Accumula Town", ids = {64}, iv = 6},
                    {location = "Nacrene City", ids = {65}, iv = 12},
                    {location = "Nimbasa City", ids = {89}, iv = 18},
                    {location = "Chargestone", ids = {218}, iv = 24},
                    {location = "N's Castle", ids = {587}, iv = 30}
                }
            },
            {
                groupName = "Gym Leaders",
                trainerType = TrainerData.TRAINER_TYPES.GYM_LEADERS,
                battles = {
                    --first gym is annoying, there are different gym leaders you fight based on starter choice
                    {
                        {name = "Chili", ids = {11}, badgeNumber = 1, iv = 0},
                        {name = "Cress", ids = {13}, badgeNumber = 1, iv = 0},
                        {name = "Cilan", ids = {12}, badgeNumber = 1, iv = 0}
                    },
                    {name = "Lenora", ids = {21}, badgeNumber = 2, iv = 6},
                    {name = "Burgh", ids = {22}, badgeNumber = 3, iv = 12},
                    {name = "Elesa", ids = {23}, badgeNumber = 4, iv = 12},
                    {name = "Clay", ids = {24}, badgeNumber = 5, iv = 12},
                    {name = "Skyla", ids = {25}, badgeNumber = 6, iv = 12},
                    {name = "Brycen", ids = {131}, badgeNumber = 7, iv = 18},
                    {name = "Iris", ids = {132}, badgeNumber = 8, iv = 18}
                }
            },
            {
                groupName = "Elite 4",
                trainerType = TrainerData.TRAINER_TYPES.STANDARD,
                battles = {
                    {name = "Shauntal", ids = {228}, iv = 24},
                    {name = "Marshal", ids = {229}, iv = 24},
                    {name = "Grimsley", ids = {230}, iv = 24},
                    {name = "Caitlin", ids = {231}, iv = 24},
                    {name = "N", ids = {586}, iv = 30},
                    {name = "Ghetsis", ids = {232}, iv = 30}
                }
            }
        }
    },
}
