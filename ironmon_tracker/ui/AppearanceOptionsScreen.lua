local function AppearanceOptionsScreen(initialSettings, initialTracker, initialProgram)
    local Frame = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Frame.lua")
    local Box = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Box.lua")
    local Component = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Component.lua")
    local TextLabel = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextLabel.lua")
    local TextField = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextField.lua")
    local TextStyle = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextStyle.lua")
    local Layout = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Layout.lua")
    local Icon = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Icon.lua")
    local MouseClickEventListener = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/MouseClickEventListener.lua")
    local SettingToggleButton = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/SettingToggleButton.lua")
    local settings = initialSettings
    local tracker = initialTracker
    local program = initialProgram
    local constants = {
        MAIN_HEIGHT = 314,
        TOGGLE_FRAME_WIDTH = 200,
        TOGGLE_FRAME_HEIGHT = 12,
        BUTTON_SIZE = 10,
        MAIN_BUTTON_WIDTH = 160,
        MAIN_BUTTON_HEIGHT = 19,
        BADGE_COLOR_FRAME_HEIGHT = 84,
        BUTTONS_FRAME_HEIGHT = 124
    }
    local ui = {}
    local eventListeners = {}
    local self = {}
    local function onGoBackClick()
        program.setCurrentScreens({program.UI_SCREENS.MAIN_OPTIONS_SCREEN})
        program.drawCurrentScreens()
    end

    local function onBadgesAppearanceClick()
        client.SetGameExtraPadding(0, 0, Graphics.SIZES.BADGE_COLOR_EDIT_PADDING, 0)
        program.setCurrentScreens({program.UI_SCREENS.MAIN_SCREEN, program.UI_SCREENS.BADGES_APPEARANCE_SCREEN})
        program.drawCurrentScreens()
    end

    local function onColorEditClick()
        client.SetGameExtraPadding(0, 0, Graphics.SIZES.BADGE_COLOR_EDIT_PADDING, 0)
        program.setCurrentScreens({program.UI_SCREENS.MAIN_SCREEN, program.UI_SCREENS.COLOR_SCHEME_SCREEN})
        program.drawCurrentScreens()
    end

    local function onPokemonIconsClick()
        program.setCurrentScreens({program.UI_SCREENS.POKEMON_ICONS_SCREEN})
        program.initializePokemonIconsScreen()
        program.drawCurrentScreens()
    end

    local function initEventListeners()
        --eventListeners.goBackClickListener = MouseClickEventListener(ui.controls.goBackButton, onGoBackClick)
    end

    local function onToggleClick(button)
        button.onClick()
        program.drawCurrentScreens()
        client.SetGameExtraPadding(0, 0, Graphics.SIZES.MAIN_SCREEN_PADDING, 0)
    end

    local function createToggleRow(key, settingsKey, parentFrame)
        local frame =
            Frame(
            Box({x = 0, y = 0}, {width = constants.TOGGLE_FRAME_WIDTH, height = constants.TOGGLE_FRAME_HEIGHT}, nil, nil),
            Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2, {x = 4, y = 0}),
            parentFrame
        )
        local toggle =
            SettingToggleButton(
            Component(
                frame,
                Box(
                    {x = 0, y = 0},
                    {width = constants.BUTTON_SIZE, height = constants.BUTTON_SIZE},
                    "Top box background color",
                    "Top box border color",
                    true,
                    "Top box background color"
                )
            ),
            settingsKey,
            key,
            nil,
            false,
            true,
            program.saveSettings
        )
        local labelName
        labelName = key:gsub("_", " "):lower()
        labelName = labelName:sub(1, 1):upper() .. labelName:sub(2)
        labelName = labelName:gsub("poke", "Pok" .. Chars.accentedE)
        if key == "AUTO_POKEMON_THEMES" then
                labelName = "Thème Pokémon automatique"
			elseif key == "RIGHT_JUSTIFIED_NUMBERS" then
                labelName = "Chiffres justifiés à droite"
			elseif key == "SHOW_ACCURACY_AND_EVASION" then
                labelName = "Affiche la précision et l'évasion"
			elseif key == "EXPERIENCE_BAR" then
                labelName = "Barre d'expérience"
			elseif key == "RANDOM_BALL_PICKER" then
                labelName = "Balles aléatoires"
			elseif key == "REPEL_ICON" then
                labelName = "Icone repousse"
			elseif key == "SHOW_POKECENTER_HEALS" then
                labelName = "Afficher les soins du pokecenter"
			elseif key == "SHOW_NICKNAME" then
                labelName = "Afficher le surnom"
			elseif key == "ENABLED" then
                labelName = "Activer"
			elseif key == "TRANSPARENT" then
                labelName = "Transparent"
			elseif key == "BLIND_MODE" then
                labelName = "Mode aveugle (masque les stats/capacités)"
			elseif key == "BAG_HEALS_SHOW_HP_INSTEAD" then
                labelName = "Afficher les soins du sac en PV"
		end
        TextLabel(
            Component(frame, Box({x = 0, y = 0}, {width = 0, height = 0}, nil, nil, false)),
            TextField(
                labelName,
                {x = 0, y = 0},
                TextStyle(
                    Graphics.FONT.DEFAULT_FONT_SIZE,
                    Graphics.FONT.DEFAULT_FONT_FAMILY,
                    "Top box text color",
                    "Top box background color"
                )
            )
        )
        table.insert(eventListeners, MouseClickEventListener(toggle, onToggleClick, toggle))
    end

    local function initAppearanceToggleButtons()
        local orderedKeys = {
            "AUTO_POKEMON_THEMES",
            "EXPERIENCE_BAR",
            "RANDOM_BALL_PICKER",
            "REPEL_ICON",
            "RIGHT_JUSTIFIED_NUMBERS",
            "SHOW_POKECENTER_HEALS",
            "SHOW_ACCURACY_AND_EVASION",
            "SHOW_NICKNAME",
            "BAG_HEALS_SHOW_HP_INSTEAD"
        }
        ui.frames.buttonsFrame =
            Frame(
            Box(
                {x = 0, y = Graphics.SIZES.BORDER_MARGIN},
                {
                    width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.BUTTONS_FRAME_HEIGHT
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 1, {x = 0, y = 5}),
            ui.frames.mainInnerFrame
        )
        for _, key in pairs(orderedKeys) do
           createToggleRow(key, settings.appearance, ui.frames.buttonsFrame)
        end
    end

    local function initBadgeColorButtons()
        ui.frames.badgeColorButtonsFrame =
            Frame(
            Box(
                {x = 0, y = Graphics.SIZES.BORDER_MARGIN},
                {
                    width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.BADGE_COLOR_FRAME_HEIGHT
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 5, {x = 17, y = 8}),
            ui.frames.mainInnerFrame
        )
        local buttons = {
            badgesAppearanceButton = {name = "Apparence des badges", iconName = program.getGameInfo().BADGE_PREFIX},
            colorThemeButton = {name = "Modifier le thème de couleur", iconName = "PAINTBRUSH"},
            pokemonIconsButton = {name = "Ensembles d'icônes Pokémon", iconName = "POKEBALL"}
        }
        local order = {"pokemonIconsButton", "badgesAppearanceButton", "colorThemeButton"}
        for i, key in pairs(order) do
            local button = buttons[key]
            local text = button.name
            local frameName = key .. "Frame"
            ui.frames[frameName] =
                Frame(
                Box(
                    {x = Graphics.SIZES.SCREEN_WIDTH, y = 0},
                    {width = constants.MAIN_BUTTON_WIDTH, height = constants.MAIN_BUTTON_HEIGHT},
                    "Top box background color",
                    "Top box border color",
                    true,
                    "Top box background color"
                ),
                Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2),
                ui.frames.badgeColorButtonsFrame
            )
            Icon(
                Component(ui.frames[frameName], Box({x = 0, y = 0}, {width = 16, height = 16}, nil, nil)),
                button.iconName,
                {x = 2, y = 2}
            )
            ui.controls[key] =
                TextLabel(
                Component(
                    ui.frames[frameName],
                    Box({x = 0, y = 0}, {width = constants.MAIN_BUTTON_WIDTH - 18, height = constants.MAIN_BUTTON_HEIGHT})
                ),
                TextField(
                    text,
                    {x = 3, y = 4},
                    TextStyle(
                        Graphics.FONT.DEFAULT_FONT_SIZE,
                        Graphics.FONT.DEFAULT_FONT_FAMILY,
                        "Top box text color",
                        "Top box background color"
                    )
                )
            )
        end
    end

    local function initTimerUI()
        ui.frames.timerFrame =
            Frame(
            Box(
                {x = 0, y = Graphics.SIZES.BORDER_MARGIN},
                {
                    width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = 54
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 1, {x = 0, y = 4}),
            ui.frames.mainInnerFrame
        )
        local iconHeadingFrame =
            Frame(
            Box(
                {x = 0, y = Graphics.SIZES.BORDER_MARGIN},
                {
                    width = 0,
                    height = 19
                }
            ),
            Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 0, {x = 4, y = 0}),
            ui.frames.timerFrame
        )
        local timerIcon =
            Icon(
            Component(iconHeadingFrame, Box({x = 0, y = 0}, {width = 16, height = 16}, nil, nil)),
            "CLOCK",
            {x = 2, y = 2}
        )
        local timerHeading =
            TextLabel(
            Component(iconHeadingFrame, Box({x = 0, y = 0}, {width = 0, height = 0})),
            TextField(
                "Chrono",
                {x = 1, y = 0},
                TextStyle(
                    Graphics.FONT.DEFAULT_FONT_SIZE + 2,
                    Graphics.FONT.DEFAULT_FONT_FAMILY,
                    "Top box text color",
                    "Top box background color"
                )
            )
        )
        local orderedKeys = {
            "ENABLED",
            "TRANSPARENT"
        }
        for _, key in pairs(orderedKeys) do
            createToggleRow(key, settings.timer, ui.frames.timerFrame)
        end
    end

    local function initBottomUI()
        ui.frames.bottomFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = 24
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 0, {x = 94, y = 5}),
            ui.frames.mainInnerFrame
        )
        ui.controls.goBackButton =
            TextLabel(
            Component(
                ui.frames.mainFrame,
                Box(
                    {x = 142, y = constants.MAIN_HEIGHT - 24},
                    {width = 40, height = 14},
                    "Top box background color",
                    "Top box border color",
                    true,
                    "Top box background color"
                )
            ),
            TextField(
                "Retour",
                {x = 5, y = 1},
                TextStyle(
                    Graphics.FONT.DEFAULT_FONT_SIZE,
                    Graphics.FONT.DEFAULT_FONT_FAMILY,
                    "Top box text color",
                    "Top box background color"
                )
            )
        )
        table.insert(
            eventListeners,
            MouseClickEventListener(ui.controls.goBackButton, program.openScreen, program.UI_SCREENS.MAIN_OPTIONS_SCREEN)
        )
    end

    local function initUI()
        ui.controls = {}
        ui.frames = {}
        ui.frames.mainFrame =
            Frame(
            Box(
                {x = Graphics.SIZES.SCREEN_WIDTH, y = 0},
                {width = 198, height = constants.MAIN_HEIGHT},
                "Main background color",
                nil
            ),
            nil,
            nil
        )
        ui.frames.mainInnerFrame =
            Frame(
            Box(
                {x = Graphics.SIZES.BORDER_MARGIN, y = Graphics.SIZES.BORDER_MARGIN},
                {
                    width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.MAIN_HEIGHT - 2 * Graphics.SIZES.BORDER_MARGIN
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 0, {x = 0, y = 18}),
            ui.frames.mainFrame
        )
        ui.controls.topHeading =
            TextLabel(
            Component(
                ui.frames.mainFrame,
                Box(
                    {x = 5, y = 5},
                    {width = 198 - 2 * Graphics.SIZES.BORDER_MARGIN, height = 18},
                    "Top box background color",
                    "Top box border color",
                    false
                )
            ),
            TextField(
                "Apparence du Tracker",
                {x = 35, y = 1},
                TextStyle(13, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        initBadgeColorButtons()
        initAppearanceToggleButtons()
        initTimerUI()
        initBottomUI()
        table.insert(eventListeners, MouseClickEventListener(ui.frames.badgesAppearanceButtonFrame, onBadgesAppearanceClick))
        table.insert(eventListeners, MouseClickEventListener(ui.frames.colorThemeButtonFrame, onColorEditClick))
        table.insert(eventListeners, MouseClickEventListener(ui.frames.pokemonIconsButtonFrame, onPokemonIconsClick))
    end

    function self.runEventListeners()
        for _, eventListener in pairs(eventListeners) do
            eventListener.listen()
        end
    end

    function self.show()
        ui.frames.mainFrame.show()
    end

    initUI()
    return self
end

return AppearanceOptionsScreen
