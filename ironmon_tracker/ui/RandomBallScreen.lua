local function RandomBallScreen(initialSettings, initialTracker, initialProgram)
	local Frame = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Frame.lua")
	local Box = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Box.lua")
	local Component = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Component.lua")
	local TextLabel = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextLabel.lua")
	local TextField = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextField.lua")
	local TextStyle = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextStyle.lua")
	local ImageLabel = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/ImageLabel.lua")
	local ImageField = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/ImageField.lua")
	local Layout = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Layout.lua")
	local Icon = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Icon.lua")
	local MouseClickEventListener = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/MouseClickEventListener.lua")
	local settings = initialSettings
	local tracker = initialTracker
	local program = initialProgram
	local constants = {
		MAIN_FRAME_WIDTH = 84,
		MAIN_FRAME_HEIGHT = 49,
		POKEBALL_SIZE = 16,
	}
	local ui = {}
	local eventListeners = {}
	local self = {}
	local lastRandomBall = nil

	local function selectAndReadRandomBall()
		local randomBall
		repeat
			randomBall = math.random(1, 3)
		until randomBall ~= lastRandomBall
		lastRandomBall = randomBall
		local labels = {"Gauche", "Milieu", "Droite"}
		local HGSSImageIcons = {"pokeball_blue.png", "pokeball_green.png", "pokeball_red.png"}
		local icon = "pokeball_red.png"
		for i = 1, 3 do
			ui.controls.pokeballs[i].setPath("ironmon_tracker/images/trainers/pokeball_large_off.png")
		end
		if program.getGameInfo().VERSION_GROUP == 3 then
			icon = HGSSImageIcons[randomBall]
		end
		ui.controls.pokeballs[randomBall].setPath("ironmon_tracker/images/icons/" .. icon)
		local text1 = "Poké Ball: "
		local text2 = labels[randomBall]
		
		-- Calcul des largeurs
		local totalWidth = DrawingUtils.calculateWordPixelLength(text1 .. text2)
		local width1 = DrawingUtils.calculateWordPixelLength(text1)
		local width2 = DrawingUtils.calculateWordPixelLength(text2)
		local boxWidth = 94

		-- Centrage de l'ensemble
		local startX = (boxWidth - totalWidth) / 2

		-- Place le premier label à startX
		ui.controls.ballLabel1.setText(text1)
		ui.controls.ballLabel1.setTextOffset({x = startX, y = 4})

		-- Place le second label juste après le premier
		ui.controls.ballLabel2.setText(text2)
		ui.controls.ballLabel2.setTextOffset({x = startX + width1, y = 4})

		local colors = {
			[1] = "WATER",
			[2] = "BUG",
			[3] = "FIGHTING"
		}
		ui.controls.ballLabel2.setTextColorKey(colors[randomBall])
	end



	local function initDiceBallLabel()
		ui.frames.bottomFrame =
			Frame(Box({x = 0, y = 0}, {width = 0, height = 0}), Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 0), ui.frames.mainFrame)
		ui.controls.ballLabel1 =
			TextLabel(
			Component(ui.frames.bottomFrame, Box({x = 0, y = 0}, {width = 0, height = 0})),
			TextField(
				"",
				{x = 0, y = 4},
				TextStyle(
					Graphics.FONT.DEFAULT_FONT_SIZE,
					Graphics.FONT.DEFAULT_FONT_FAMILY,
					"Top box text color",
					"Top box background color"
				)
			)
		)
		ui.controls.ballLabel2 =
			TextLabel(
			Component(ui.frames.bottomFrame, Box({x = 0, y = 0}, {width = 0, height = 0})),
			TextField(
				"",
				{x = 0, y = 4},
				TextStyle(
					Graphics.FONT.DEFAULT_FONT_SIZE,
					Graphics.FONT.DEFAULT_FONT_FAMILY,
					"Top box text color",
					"Top box background color"
				)
			)
		)
	end

	local function initRefreshButtons()
		ui.frames.diceButtonFrame =
			Frame(
				Box({x = 0, y = 0}, {width = 0, height = 0}),
				Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 0, {x = 94-13, y = 18}),
				ui.frames.mainFrame
			)

		ui.controls.diceIcon =
			Icon(
				Component(
					ui.frames.diceButtonFrame,
					Box({x = 0, y = 0}, {width = 13, height = 14}, nil, nil)
				),
				"DICE",
				{x = 0, y = 0}
			)

		table.insert(
			eventListeners,
			MouseClickEventListener(ui.controls.diceIcon, selectAndReadRandomBall)
		)
	end


	function self.initialize(position)
		ui.frames.mainFrame.move({x = position.x + 1, y = position.y + 1})
	end

	local function initPokeballs()
		ui.frames.pokeballFrame =
			Frame(
			Box({x = 0, y = 0}, {width = 0, height = constants.MAIN_FRAME_HEIGHT - 18}),
			Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 5, {x = 19, y = 0}),
			ui.frames.mainFrame
		)
		local HGSSVerticalOffsets = {
			0,
			18,
			0
		}
		ui.controls.pokeballs = {}
		local info = program.getGameInfo()
		for i = 1, 3, 1 do
			local offset = 12
			if info.VERSION_GROUP == 3 then
				offset = HGSSVerticalOffsets[i]
			end
			ui.controls.pokeballs[i] =
				ImageLabel(
				Component(
					ui.frames.pokeballFrame,
					Box({x = 0, y = 0}, {width = constants.POKEBALL_SIZE, height = constants.POKEBALL_SIZE}, nil, nil)
				),
				ImageField("ironmon_tracker/images/trainers/pokeball_large_off.png", {x = 1, y = offset}, nil)
			)
		end
	end

	local function initUI()
		ui.controls = {}
		ui.frames = {}
		ui.frames.mainFrame =
			Frame(
			Box(
				{x = Graphics.SIZES.SCREEN_WIDTH + 6, y = 6},
				{width = constants.MAIN_FRAME_WIDTH, height = constants.MAIN_FRAME_HEIGHT},
				"Top box background color",
				"Top box background color"
			),
			Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 0, {x = 0, y = 3}),
			nil
		)
		initRefreshButtons()
		initPokeballs()
		initDiceBallLabel()
		
		
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
	selectAndReadRandomBall()

	return self
end

return RandomBallScreen
