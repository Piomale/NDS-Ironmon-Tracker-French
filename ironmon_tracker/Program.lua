local function Program(initialTracker, initialMemoryAddresses, initialGameInfo, initialSettings)
	local self = {}
	local FrameCounter = dofile(Paths.FOLDERS.DATA_FOLDER .. "/FrameCounter.lua")
	local MainScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/MainScreen.lua")
	local MainOptionsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/MainOptionsScreen.lua")
	local BattleOptionsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/BattleOptionsScreen.lua")
	local AppearanceOptionsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/AppearanceOptionsScreen.lua")
	local BadgesAppearanceScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/BadgesAppearanceScreen.lua")
	local ColorSchemeScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/ColorSchemeScreen.lua")
	local TrackedPokemonScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/TrackedPokemonScreen.lua")
	local QuickLoadScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/QuickLoadScreen.lua")
	local TrackerSetupScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/TrackerSetupScreen.lua")
	local PokemonIconsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/PokemonIconsScreen.lua")
	local PastRunsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/PastRunsScreen.lua")
	local StatisticsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/StatisticsScreen.lua")
	local UpdaterScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/UpdaterScreen.lua")
	local LogViewerScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/LogViewer/LogViewerScreen.lua")
	local TrackedInfoScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/TrackedInfoScreen.lua")
	local RunOverScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/RunOverScreen.lua")
	local UpdateNotesScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/UpdateNotesScreen.lua")
	local RandomBallScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/RandomBallScreen.lua")
	local TitleScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/TitleScreen.lua")
	local RestorePointsScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/RestorePointsScreen.lua")
	local ExtrasScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/ExtrasScreen.lua")
	local EvoDataScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/EvoDataScreen.lua")
	local CoverageCalcScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/CoverageCalcScreen.lua")
    local TimerScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/TimerScreen.lua")
	local StreamerbotConfigScreen = dofile(Paths.FOLDERS.UI_FOLDER .. "/StreamerbotConfigScreen.lua")

	local INI = dofile(Paths.FOLDERS.DATA_FOLDER .. "/Inifile.lua")
	local PokemonDataReader = dofile(Paths.FOLDERS.DATA_FOLDER .. "/PokemonDataReader.lua")
	local JoypadEventListener = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/JoypadEventListener.lua")
	local TrackerUpdater = dofile(Paths.FOLDERS.DATA_FOLDER .. "/TrackerUpdater.lua")
	local SeedLogger = dofile(Paths.FOLDERS.DATA_FOLDER .. "/SeedLogger.lua")
	local PastRun = dofile(Paths.FOLDERS.DATA_FOLDER .. "/PastRun.lua")
	dofile(Paths.FOLDERS.DATA_FOLDER .. "/BattleHandlerBase.lua")
	dofile(Paths.FOLDERS.DATA_FOLDER .. "/BattleHandlerGen4.lua")
	dofile(Paths.FOLDERS.DATA_FOLDER .. "/BattleHandlerGen5.lua")
	local PokemonThemeManager = dofile(Paths.FOLDERS.DATA_FOLDER .. "/PokemonThemeManager.lua")
	dofile(Paths.FOLDERS.NETWORK_FOLDER .. "/Network.lua")
	local CrashRecovery = dofile(Paths.FOLDERS.EXTRAS_FOLDER .. "/CrashRecovery.lua")

	self.SELECTED_PLAYERS = {
		PLAYER = 0,
		ENEMY = 1
	}

	local badges = {
		firstSet = {0, 0, 0, 0, 0, 0, 0, 0},
		secondSet = {0, 0, 0, 0, 0, 0, 0, 0}
	}

	local tracker = initialTracker
	local memoryAddresses = initialMemoryAddresses
	local gameInfo = initialGameInfo
	local settings = initialSettings

	local randomizerLogParser
	local battleHandler

	local currentLocation = nil
	local currentMapID = nil
	local runEvents = true
	local locked = false
	local lockedPokemonCopy = nil
	local selectedPlayer = self.SELECTED_PLAYERS.PLAYER
	local healingItems = nil
	local ppItems = nil
	local inTrackedPokemonView = false
	local doneWithTitleScreen = false
	local inPastRunView = false
	local inLockedView = false
	local statusItems = nil
	local playerPokemon = nil
	local enemyPokemon = nil
	local activeColorPicker = nil
	local canDraw = true
	local pokemonDataReader
	local frameCounters
	local trackerUpdater = TrackerUpdater(settings)
	local seedLogger
	local pokemonThemeManager = PokemonThemeManager(settings, self)
	local dayOfWeek = 2
	local crashRecovery = CrashRecovery(settings)

	local currentScreens = {}

	function self.getGameInfo()
		return gameInfo
	end

	function self.getAddresses()
		return memoryAddresses
	end

	function self.saveSettings(useDefaultTheme)
		pokemonThemeManager.update()
		if useDefaultTheme == nil then
			useDefaultTheme = true
		end
		local settingsCopy = MiscUtils.deepCopy(settings)
		if useDefaultTheme then
			local defaultColorStuff = pokemonThemeManager.getDefaults()
			if defaultColorStuff.colorSettings ~= nil then
				settingsCopy.colorSettings = defaultColorStuff.colorSettings
			end
			if defaultColorStuff.colorScheme ~= nil then
				settingsCopy.colorScheme = defaultColorStuff.colorScheme
			end
		end
		INI.save("Settings.ini", settingsCopy)
	end

	function self.saveSettingsWithTheme()
		self.saveSettings(false)
	end

	function self.onEvoLabelClick()
		if inPastRunView or inTrackedPokemonView or currentScreens[self.UI_SCREENS.LOG_VIEWER_SCREEN] or playerPokemon == nil then
			return
		end
		self.openScreen(self.UI_SCREENS.EVO_DATA_SCREEN)
	end

	local function checkIfNeedToInitialize(screen)
		local blankInitialization = {
			[self.UI_SCREENS.QUICK_LOAD_SCREEN] = true,
			[self.UI_SCREENS.UPDATE_NOTES_SCREEN] = true,
            [self.UI_SCREENS.RESTORE_POINTS_SCREEN] = true,
			[self.UI_SCREENS.STREAMERBOT_CONFIG_SCREEN] = true
		}
		local seedLoggerInitialization = {
			[self.UI_SCREENS.STATISTICS_SCREEN] = true,
			[self.UI_SCREENS.PAST_RUNS_SCREEN] = true,
			[self.UI_SCREENS.TITLE_SCREEN] = true
		}
		local currentPokemonInitialization = {
			[self.UI_SCREENS.EVO_DATA_SCREEN] = true
		}
		local currentPlayerMovesInitialization = {
			[self.UI_SCREENS.COVERAGE_CALC_SCREEN] = true
		}
		if blankInitialization[screen] then
			self.UI_SCREEN_OBJECTS[screen].initialize()
		elseif seedLoggerInitialization[screen] then
			self.UI_SCREEN_OBJECTS[screen].initialize(seedLogger)
		elseif currentPokemonInitialization[screen] then
			local currentPokemon = playerPokemon
			if selectedPlayer == self.SELECTED_PLAYERS.ENEMY then
				currentPokemon = enemyPokemon
			end
			self.UI_SCREEN_OBJECTS[screen].initialize(currentPokemon)
		elseif currentPlayerMovesInitialization[screen] then
			local pokemon = playerPokemon or {}
			self.UI_SCREEN_OBJECTS[screen].initialize(pokemon.moveIDs)
		end
	end

	local function checkForTransparenBackgroundException(screen)
		local needSolidBackground = {
			[self.UI_SCREENS.STATISTICS_SCREEN] = true,
			[self.UI_SCREENS.LOG_VIEWER_SCREEN] = true
		}
		DrawingUtils.setTransparentBackgroundOverride(needSolidBackground[screen])
	end

	local function checkRandomBallPicker(newScreen)
		if not doneWithTitleScreen then
			return
		end
		if
			newScreen == self.UI_SCREENS.MAIN_SCREEN and tracker.getFirstPokemonID() == nil and settings.appearance.RANDOM_BALL_PICKER
		 then
			currentScreens[self.UI_SCREENS.RANDOM_BALL_SCREEN] = self.UI_SCREEN_OBJECTS[self.UI_SCREENS.RANDOM_BALL_SCREEN]
			currentScreens[self.UI_SCREENS.MAIN_SCREEN].setRandomBallPickerActive(true)
			currentScreens[self.UI_SCREENS.MAIN_SCREEN].show()
			local mainScreenPosition = currentScreens[self.UI_SCREENS.MAIN_SCREEN].getInnerFramePosition()
			currentScreens[self.UI_SCREENS.RANDOM_BALL_SCREEN].initialize(mainScreenPosition)
		else
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setRandomBallPickerActive(false)
		end
	end

	local function checkForTitleScreen(newScreen)
		local tryingToOpenMain = newScreen == self.UI_SCREENS.MAIN_SCREEN and tracker.getFirstPokemonID() == nil
		if newScreen == self.UI_SCREENS.TITLE_SCREEN or tryingToOpenMain then
			currentScreens[self.UI_SCREENS.TITLE_SCREEN] = self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TITLE_SCREEN]
			currentScreens[self.UI_SCREENS.MAIN_SCREEN] = self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN]
			--show the main screen once so the position recalculates itself
			currentScreens[self.UI_SCREENS.MAIN_SCREEN].show()
			local mainScreenPosition = currentScreens[self.UI_SCREENS.MAIN_SCREEN].getInnerFramePosition()
			currentScreens[self.UI_SCREENS.TITLE_SCREEN].moveMainFrame(mainScreenPosition)
			currentScreens[self.UI_SCREENS.TITLE_SCREEN].initialize(seedLogger)
		end
	end

	local function checkScreen(screen)
		checkForTransparenBackgroundException(screen)
		checkForTitleScreen(screen)
		checkRandomBallPicker(screen)
		checkIfNeedToInitialize(screen)
	end

	function self.addScreen(screen)
		currentScreens[screen] = self.UI_SCREEN_OBJECTS[screen]
	end

	function self.turnOffPokemonTheme()
		pokemonThemeManager.turnOff()
	end

	function self.togglePokemonTheme()
		pokemonThemeManager.toggleActive()
		self.saveSettings(true)
		self.drawCurrentScreens()
	end

	function self.openScreen(screen)
		local prevScreens = MiscUtils.shallowCopy(currentScreens)
		--AnimatedSpriteManager.clearImages()
		self.setCurrentScreens({screen})
		checkScreen(screen)
		if prevScreens[self.UI_SCREENS.TRACKER_SETUP_SCREEN] and screen == self.UI_SCREENS.TITLE_SCREEN then
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TITLE_SCREEN].openedFromSetup()
		end
		if screen == self.UI_SCREENS.MAIN_SCREEN and tracker.getFirstPokemonID() == nil then
			self.addScreen(self.UI_SCREENS.TITLE_SCREEN)
			currentScreens[self.UI_SCREENS.TITLE_SCREEN].setTopVisibility(not doneWithTitleScreen)
		end
		self.drawCurrentScreens()
	end

	self.UI_SCREENS = {
		MAIN_SCREEN = 0,
		MAIN_OPTIONS_SCREEN = 1,
		BATTLE_OPTIONS_SCREEN = 2,
		APPEARANCE_OPTIONS_SCREEN = 3,
		BADGES_APPEARANCE_SCREEN = 4,
		COLOR_SCHEME_SCREEN = 5,
		TRACKED_POKEMON_SCREEN = 6,
		TRACKER_SETUP_SCREEN = 7,
		QUICK_LOAD_SCREEN = 8,
		POKEMON_ICONS_SCREEN = 9,
		UPDATER_SCREEN = 10,
		LOG_VIEWER_SCREEN = 11,
		TRACKED_INFO_SCREEN = 12,
		PAST_RUNS_SCREEN = 13,
		STATISTICS_SCREEN = 14,
		RUN_OVER_SCREEN = 15,
		UPDATE_NOTES_SCREEN = 16,
		RANDOM_BALL_SCREEN = 17,
		TITLE_SCREEN = 18,
		RESTORE_POINTS_SCREEN = 19,
		EXTRAS_SCREEN = 20,
		EVO_DATA_SCREEN = 21,
		COVERAGE_CALC_SCREEN = 22,
        TIMER_SCREEN = 23,
		STREAMERBOT_CONFIG_SCREEN = 24
	}

	self.UI_SCREEN_OBJECTS = {
		[self.UI_SCREENS.MAIN_SCREEN] = MainScreen(settings, tracker, self),
		[self.UI_SCREENS.MAIN_OPTIONS_SCREEN] = MainOptionsScreen(settings, tracker, self),
		[self.UI_SCREENS.BATTLE_OPTIONS_SCREEN] = BattleOptionsScreen(settings, tracker, self),
		[self.UI_SCREENS.APPEARANCE_OPTIONS_SCREEN] = AppearanceOptionsScreen(settings, tracker, self),
		[self.UI_SCREENS.BADGES_APPEARANCE_SCREEN] = BadgesAppearanceScreen(settings, tracker, self),
		[self.UI_SCREENS.COLOR_SCHEME_SCREEN] = ColorSchemeScreen(settings, tracker, self),
		[self.UI_SCREENS.TRACKED_POKEMON_SCREEN] = TrackedPokemonScreen(settings, tracker, self),
		[self.UI_SCREENS.TRACKER_SETUP_SCREEN] = TrackerSetupScreen(settings, tracker, self),
		[self.UI_SCREENS.QUICK_LOAD_SCREEN] = QuickLoadScreen(settings, tracker, self),
		[self.UI_SCREENS.POKEMON_ICONS_SCREEN] = PokemonIconsScreen(settings, tracker, self),
		[self.UI_SCREENS.UPDATER_SCREEN] = UpdaterScreen(settings, tracker, self),
		[self.UI_SCREENS.LOG_VIEWER_SCREEN] = LogViewerScreen(settings, tracker, self),
		[self.UI_SCREENS.TRACKED_INFO_SCREEN] = TrackedInfoScreen(settings, tracker, self),
		[self.UI_SCREENS.PAST_RUNS_SCREEN] = PastRunsScreen(settings, tracker, self),
		[self.UI_SCREENS.STATISTICS_SCREEN] = StatisticsScreen(settings, tracker, self),
		[self.UI_SCREENS.RUN_OVER_SCREEN] = RunOverScreen(settings, tracker, self),
		[self.UI_SCREENS.UPDATE_NOTES_SCREEN] = UpdateNotesScreen(settings, tracker, self),
		[self.UI_SCREENS.RANDOM_BALL_SCREEN] = RandomBallScreen(settings, tracker, self),
		[self.UI_SCREENS.TITLE_SCREEN] = TitleScreen(settings, tracker, self),
		[self.UI_SCREENS.RESTORE_POINTS_SCREEN] = RestorePointsScreen(settings, tracker, self),
		[self.UI_SCREENS.EXTRAS_SCREEN] = ExtrasScreen(settings, tracker, self),
		[self.UI_SCREENS.EVO_DATA_SCREEN] = EvoDataScreen(settings, tracker, self),
		[self.UI_SCREENS.COVERAGE_CALC_SCREEN] = CoverageCalcScreen(settings, tracker, self),
        [self.UI_SCREENS.TIMER_SCREEN] = TimerScreen(settings, tracker, self),
		[self.UI_SCREENS.STREAMERBOT_CONFIG_SCREEN] = StreamerbotConfigScreen(settings,tracker,self)
	}

	function self.setSeedNumber(attempts)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setSeedNumber(attempts)
	end
	
	local function getScreenTotal()
		local total = 0
		for _, screen in pairs(currentScreens) do
			total = total + 1
		end
		return total
	end

	function self.addAdditionalDataToPokemon(pokemon)
		local constData = PokemonData.POKEMON[pokemon.pokemonID + 1]
		for key, data in pairs(constData or {}) do
			--when tracker makes a template it does the name because alternate forms are complex, so don't overwrite it
			if key == "name" then
				if not pokemon.name then
					pokemon[key] = data
				end
			elseif key == "movelvls" then
				pokemon[key] = data[gameInfo.VERSION_GROUP]
			else
				pokemon[key] = data
			end
		end
	end

	local function scanForHealingItems()
		healingItems = {}
		ppItems = {}
		statusItems = {}
		local itemStart, berryStart = memoryAddresses.itemStartNoBattle, memoryAddresses.berryBagStart
		if battleHandler:inBattleAndFetched() then
			itemStart, berryStart = memoryAddresses.itemStartBattle, memoryAddresses.berryBagStartBattle
		end

		--battle can be set a few frames before item bag for battle gets updated, need to check this value as well
		local idAndQuantity = Memory.read_u32_le(memoryAddresses.itemStartBattle)
		local id = bit.band(idAndQuantity, 0xFFFF)
		local quantity = bit.band(bit.rshift(idAndQuantity, 16), 0xFFFF)
		if quantity > 1000 or id > 600 then
			itemStart = memoryAddresses.itemStartNoBattle
			berryStart = memoryAddresses.berryBagStart
		end
		local addressesToScan = {itemStart, berryStart}
		for _, address in pairs(addressesToScan) do
			local currentAddress = address
			local keepScanning = true
			while keepScanning do
				--read 4 bytes at once, should be less expensive than reading 2 sets of 2 bytes..
				idAndQuantity = Memory.read_u32_le(currentAddress)
				id = bit.band(idAndQuantity, 0xFFFF)
				if id ~= 0 then
					quantity = bit.band(bit.rshift(idAndQuantity, 16), 0xFFFF)
					if ItemData.HEALING_ITEMS[id] ~= nil then
						healingItems[id] = quantity
					end
					if ItemData.PP_ITEMS[id] ~= nil then
						ppItems[id] = quantity
					end
					if ItemData.STATUS_ITEMS[id] ~= nil then
						statusItems[id] = quantity
					end
					currentAddress = currentAddress + 4
				else
					keepScanning = false
				end
			end
		end
		return healingItems
	end

	local function calculateHealPercent(totals, maxHP)
		local showHP = settings.appearance.BAG_HEALS_SHOW_HP_INSTEAD
		for id, quantity in pairs(healingItems) do
			local item = ItemData.HEALING_ITEMS[id]
			if item ~= nil then
				local healing = 0
				if item.type == ItemData.HEALING_TYPE.CONSTANT then
					local percentage = item.amount / maxHP * 100
					if percentage > 100 then
						percentage = 100
					end
					healing = percentage * quantity
					if showHP then
						healing = item.amount * quantity
					end
				elseif item.type == ItemData.HEALING_TYPE.PERCENTAGE then
					healing = item.amount * quantity
					if showHP then
						healing = (item.amount / 100) * quantity * maxHP
					end
				end
				-- Healing is in a percentage compared to the mon's max HP
				totals.healing = totals.healing + healing
				totals.numHeals = totals.numHeals + quantity
			end
		end
		totals.healing = math.floor(totals.healing + 0.5)
		if not showHP then
			totals.healing = totals.healing .. "%"
		else
			totals.healing = totals.healing .. " PV"
		end
		return totals
	end

    local function displayRunOver()
        self.openScreen(self.UI_SCREENS.RUN_OVER_SCREEN)
        frameCounters["displayRunOver"] = nil
    end

	function self.hasRunEnded()
		return tracker.hasRunEnded()
	end

	function self.onRunEnded()
		if tracker.hasRunEnded() then
			return
		end
		if playerPokemon == nil or enemyPokemon == nil then
			return
		end
		if not MiscUtils.validPokemonData(playerPokemon) or not MiscUtils.validPokemonData(enemyPokemon) then
			return
		end
		local location = tracker.getCurrentAreaName()
		self.addAdditionalDataToPokemon(playerPokemon)
		self.addAdditionalDataToPokemon(enemyPokemon)
		local progress = tracker.getProgress()
		local date = os.date("%x %I:%M %p")
		local seconds = os.time()
		local pastRun = PastRun(date, seconds, playerPokemon, enemyPokemon, location, badges, progress)
		seedLogger.logRun(pastRun)
		tracker.updatePlaytime(gameInfo.NAME)
		local runOverMessage = seedLogger.getRandomRunOverMessage(pastRun)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.RUN_OVER_SCREEN].initialize(runOverMessage)
		self.openScreen(self.UI_SCREENS.RUN_OVER_SCREEN)
		tracker.setRunOver()
	end

	local function getPlayerPartyData()
		local slot = battleHandler:getPlayerSlotIndex()
		local offset = (slot - 1) * gameInfo.ENCRYPTED_POKEMON_SIZE
		pokemonDataReader.setCurrentBase(memoryAddresses.playerBase + offset)
		local data = pokemonDataReader.decryptPokemonInfo(true, 0, false)
		return data
	end

	function self.checkForAlternateForm(pokemon)
		local data = PokemonData.POKEMON[pokemon.pokemonID + 1]
		local genderForms = {["Unfezant M"] = true, ["Frillish M"] = true, ["Jellicent M"] = true}
		if genderForms[data.name] then
			pokemon.alternateForm = 0x00
			if pokemon.isFemale == 1 then
				pokemon.alternateForm = 0x08
			end
		end
		pokemon.alternateForm = bit.band(pokemon.alternateForm, 0xF8)
		local form = pokemon.alternateForm
		if form ~= 0x00 then
			local alternateFormindex = form / 0x08
			if data ~= nil then
				if PokemonData.ALTERNATE_FORMS[data.name] then
					local formTable = PokemonData.ALTERNATE_FORMS[data.name]
					pokemon["baseForm"] = {
						name = data.name,
						cosmetic = formTable.cosmetic
					}
					local formStartIndex = formTable.index
					local alternateFormID = formStartIndex + (alternateFormindex - 2)
					if PokemonData.POKEMON[alternateFormID + 1] then
						pokemon.alternateFormID = alternateFormID
						pokemon.name = PokemonData.POKEMON[alternateFormID + 1].name
						if not formTable.cosmetic then
							pokemon.pokemonID = alternateFormID
							tracker.logPokemonAsAlternateForm(pokemon.pokemonID, pokemon.baseForm, pokemon.alternateForm)
						end
					end
				end
			end
		end
	end

	function self.getSelectedPlayer()
		return selectedPlayer
	end

	function self.getPlayerPokemon()
		return playerPokemon
	end

	local function getPokemonData(selected)
		if battleHandler:inBattleAndFetched() then
			local data = battleHandler:getActivePokemonInBattle(selected)
			return data
		else
			return getPlayerPartyData()
		end
	end

	function self.updateEnemyPokemonData()
		if battleHandler:inBattleAndFetched() then
			enemyPokemon = getPokemonData(self.SELECTED_PLAYERS.ENEMY)
			if enemyPokemon ~= nil then
				if enemyPokemon.pokemonID ~= nil then
					enemyPokemon.moves = tracker.getMoves(enemyPokemon.pokemonID)
				end
			end
		else
			enemyPokemon = nil
		end
	end

	local function updatePlayerPokemonData()
		local pokemonToCheck = getPokemonData(self.SELECTED_PLAYERS.PLAYER)
		if MiscUtils.validPokemonData(pokemonToCheck) then
			local previousID = playerPokemon.pokemonID
			playerPokemon = pokemonToCheck
			self.checkForAlternateForm(playerPokemon)
			if previousID == 0 then
				tracker.setFirstPokemon(playerPokemon)
				if self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TITLE_SCREEN].isEditingFavorites() then
					return
				end
				currentScreens[self.UI_SCREENS.TITLE_SCREEN] = nil
			end
		end
	end

	local function getPokemonToDraw()
		local pokemonToDraw = playerPokemon
		local cantUpdate =
			not settings.battle.SHOW_1ST_FIGHT_STATS_PLATINUM and gameInfo.NAME == "Pokemon Platinum" and
			not battleHandler:isFirstBattleComplete()
		if cantUpdate then
			pokemonToDraw = MiscUtils.shallowCopy(MiscConstants.DEFAULT_POKEMON)
		end
		local opposingPokemon = enemyPokemon
		if locked then
			opposingPokemon = lockedPokemonCopy
		end
		if selectedPlayer == self.SELECTED_PLAYERS.ENEMY then
			local temp = pokemonToDraw
			pokemonToDraw = opposingPokemon
			opposingPokemon = temp
		end
		return {["pokemonToDraw"] = pokemonToDraw, ["opposingPokemon"] = opposingPokemon}
	end

	function self.setPokemonForMainScreen(pokemonOverride)
		local pokemonForDrawing = getPokemonToDraw()
		local pokemonToDraw = pokemonForDrawing.pokemonToDraw
		local opposingPokemon = pokemonForDrawing.opposingPokemon
		if pokemonOverride ~= nil then
			pokemonToDraw = pokemonOverride
			opposingPokemon = nil
		end
		if pokemonToDraw ~= nil then
			self.addAdditionalDataToPokemon(pokemonToDraw)
			if opposingPokemon ~= nil then
				self.addAdditionalDataToPokemon(opposingPokemon)
			end
			pokemonToDraw.owner = selectedPlayer
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setPokemonToDraw(pokemonToDraw, opposingPokemon)
		end
	end

	local function refreshPointers()
		local info = GameConfigurator.initializeMemoryAddresses()
		gameInfo = info.gameInfo
		memoryAddresses = info.memoryAddresses
		battleHandler:setMemoryAddresses(memoryAddresses)
		AnimatedSpriteManager.setMemoryAddresses(memoryAddresses)
	end

	local function HGSS_checkLeagueDefeated()
		if gameInfo.NAME == "Pokemon HeartGold" or gameInfo.NAME == "Pokemon SoulSilver" then
			local leagueEvent = Memory.read_u8(memoryAddresses.leagueBeaten)
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setLanceDefeated(leagueEvent >= 3)
		end
	end

	local function updateLocation()
		local childMap = Memory.read_u16_le(memoryAddresses.childMapHeader)
		local parentMap = Memory.read_u16_le(memoryAddresses.parentMapHeader)
		local locationData = gameInfo.LOCATION_DATA.locations
		local areaName
		if locationData[childMap] ~= nil then
			areaName = locationData[childMap].name
		elseif locationData[parentMap] ~= nil then
			areaName = locationData[parentMap].name
		end
		--HGSS bug catching patch only writes correct day of week when you're in either building with the NPC that starts the contest
		if (childMap == 102 or childMap == 104) and gameInfo.VERSION_GROUP == 3 then
			dayOfWeek = Memory.read_u16_le(memoryAddresses.dayOfWeek)
		end
		if areaName == "Bug Catching" then
			local dayToNewName = {
				[2] = "Tues Bug Catching",
				[4] = "Thurs Bug Catching",
				[6] = "Sat Bug Catching"
			}
			areaName = dayToNewName[dayOfWeek] or "Tues Bug Catching"
		end
		if areaName ~= nil and areaName ~= locationData[0].name then
			currentMapID = parentMap
			tracker.updateCurrentAreaName(areaName)
			if gameInfo.NAME == "Pokemon Platinum" and childMap == 104 then
				doneWithTitleScreen = false
			end
			local editingFavorites = self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TITLE_SCREEN].isEditingFavorites()
			if currentScreens[self.UI_SCREENS.TITLE_SCREEN] and not doneWithTitleScreen then
				doneWithTitleScreen = true
				if not editingFavorites then
					self.openScreen(self.UI_SCREENS.MAIN_SCREEN)
					self.addScreen(self.UI_SCREENS.TITLE_SCREEN)
					currentScreens[self.UI_SCREENS.TITLE_SCREEN].setTopVisibility(false)
				end
				-- Once the game begins and the player is playing, starting automatically saving crash recovery backups
				crashRecovery.startSavingBackups()
			end
		end
		currentLocation = areaName
	end

	function self.getCurrentMapID()
		return currentMapID
	end

	function self.getCurrentLocation()
		return currentLocation
	end

	function self.isWildBattle()
		return battleHandler:isWildBattle()
	end

	local function readMemorySlow()
		scanForHealingItems()
		self.readBadgeMemory()
	end
	
	local function readMemory()
		refreshPointers()
		updateLocation()
		battleHandler:updateBattleStatus()
		battleHandler:updateAllPokemonInBattle()
		if not battleHandler:isInBattle() and not locked then
			selectedPlayer = self.SELECTED_PLAYERS.PLAYER
		end
		updatePlayerPokemonData()
		self.updateEnemyPokemonData()
		battleHandler:updateStatStages(playerPokemon, enemyPokemon)
		battleHandler:checkIfRunHasEnded()
		HGSS_checkLeagueDefeated()
		
		if not (inTrackedPokemonView or inLockedView) then
			self.setPokemonForMainScreen()
		end
		local beforeFirstPokemon =
			currentScreens[self.UI_SCREENS.MAIN_SCREEN] and currentScreens[self.UI_SCREENS.RANDOM_BALL_SCREEN]
		local afterFirstPokemon = currentScreens[self.UI_SCREENS.MAIN_SCREEN] and getScreenTotal() == 1
		local inThemeView = currentScreens[self.UI_SCREENS.COLOR_SCHEME_SCREEN]
		if beforeFirstPokemon and tracker.getFirstPokemonID() ~= nil then
			self.setCurrentScreens({self.UI_SCREENS.MAIN_SCREEN})
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setRandomBallPickerActive(false)
		end
		if playerPokemon ~= nil and battleHandler:getPlayerSlotIndex() == 1 then
			pokemonThemeManager.update(playerPokemon.pokemonID)
		end
		local usingAnimated = settings.appearance.ICON_SET_INDEX == 5
		--if (beforeFirstPokemon or afterFirstPokemon or inThemeView) and not usingAnimated then
		if not usingAnimated then
			self.drawCurrentScreens()
		end
	end

	function self.openUpdaterScreen()
		self.setCurrentScreens({self.UI_SCREENS.UPDATER_SCREEN})
		local isUpdate = trackerUpdater.updateExists()
		self.saveSettings()
		if isUpdate then
			currentScreens[self.UI_SCREENS.UPDATER_SCREEN].setAsUpdateAvailable(trackerUpdater.getNewestVersionString())
		else
			currentScreens[self.UI_SCREENS.UPDATER_SCREEN].setAsNoUpdate()
		end
		self.drawCurrentScreens()
	end

	function self.disableMoveEffectiveness()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setMoveEffectiveness(false)
	end

	local function onBattleDelayFinished()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setMoveEffectiveness(true)
		frameCounters["disableMoveEffectiveness"] = nil
	end

	function self.addEffectivenessEnablingFrameCounter(delay)
		frameCounters["disableMoveEffectiveness"] = FrameCounter(delay, onBattleDelayFinished)
	end

	function self.prepareForUpdate()
		trackerUpdater.prepareForUpdate()
	end

	function self.tryToInstallUpdate(callbackFunc)
		tracker.save(gameInfo.NAME)
		Network.closeConnections()
		crashRecovery.writeCrashReport()
		local success = trackerUpdater.downloadUpdate()
		if type(callbackFunc) == "function" then
			callbackFunc(success)
		end
	end

	function self.putTrackedPokemonIntoView(id)
		selectedPlayer = self.SELECTED_PLAYERS.ENEMY
		local template = tracker.convertTrackedIDToPokemonTemplate(id)
		self.setPokemonForMainScreen(template)
	end

	function self.setSpecificPokemonAsMainScreen(pokemon)
		inLockedView = true
		selectedPlayer = self.SELECTED_PLAYERS.PLAYER
		self.setPokemonForMainScreen(pokemon)
	end

	function self.initializePokemonIconsScreen()
		if currentScreens[self.UI_SCREENS.POKEMON_ICONS_SCREEN] then
			currentScreens[self.UI_SCREENS.POKEMON_ICONS_SCREEN].initialize()
		end
	end

	function self.getStatusItems()
		return statusItems
	end

	function self.getHealingItems()
		return healingItems
	end

	function self.getPPItems()
		return ppItems
	end

	function self.getStatusTotals()
		local total = 0
		if statusItems ~= nil then
			for id, quantity in pairs(statusItems) do
				total = total + quantity
			end
		end
		return total
	end

	function self.getHealingTotals()
		if selectedPlayer == self.SELECTED_PLAYERS.PLAYER then
			local totals = {
				healing = 0,
				numHeals = 0
			}
			-- Need a null check before getting maxHP
			if playerPokemon == nil then
				return totals
			end

			local maxHP = tonumber(playerPokemon.stats.HP)
			if maxHP == 0 or maxHP == nil then
				return totals
			end

			if healingItems ~= nil then
				totals = calculateHealPercent(totals, maxHP)
			end

			return totals
		end
		return nil
	end

	function self.isLocked()
		return locked
	end

	local function resetMainScreenHover()
		if self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN] then
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].resetHoverFrame()
			self.drawCurrentScreens()
		end
	end

	function self.switchToEnemy()
		if not settings.battle["AUTO_SWAP_TO_ENEMY"] then
			return
		end
		if not inTrackedPokemonView or inLockedView then
			selectedPlayer = self.SELECTED_PLAYERS.ENEMY
			self.setPokemonForMainScreen()
			resetMainScreenHover()
		end
	end

	local function switchPokemonView()
		local blockingScreenActive = inTrackedPokemonView or inLockedView
		local lockingActive = (locked and lockedPokemonCopy ~= nil)
		if not blockingScreenActive then
			if not battleHandler:isAllowedToSwap() then
				return
			end
			if selectedPlayer == self.SELECTED_PLAYERS.PLAYER then
				selectedPlayer = battleHandler:updatePlayerSlotIndex(selectedPlayer)
				local pokemon = getPlayerPartyData()
				if pokemon == nil or next(pokemon) == nil then
					battleHandler:setPlayerSlotIndex(1)
				end
			else
				if locked then
					selectedPlayer = self.SELECTED_PLAYERS.PLAYER
				else
					selectedPlayer = battleHandler:updateEnemySlotIndex(selectedPlayer)
				end
			end
			readMemory()
			resetMainScreenHover()
		end
	end

	local function lockEnemy()
		if battleHandler:inBattleAndFetched() and enemyPokemon ~= nil and settings.battle.ENABLE_ENEMY_LOCKING then
			locked = true
			lockedPokemonCopy = MiscUtils.deepCopy(enemyPokemon)
			self.drawCurrentScreens()
		end
	end

	function self.unlockEnemy()
		locked = false
		lockedPokemonCopy = nil
		enemyPokemon = nil
		readMemory()
		self.drawCurrentScreens()
	end

	local function onLockButtonPress()
		if not locked then
			lockEnemy()
		else
			self.unlockEnemy()
		end
	end

	local eventListeners = {
		JoypadEventListener(settings.controls, "CHANGE_VIEW", switchPokemonView),
		JoypadEventListener(settings.controls, "LOCK_ENEMY", onLockButtonPress)
	}

	function self.setCurrentScreens(newScreens)
		currentScreens = {}
		for _, screen in pairs(newScreens) do
			currentScreens[screen] = self.UI_SCREEN_OBJECTS[screen]
		end
	end

	function self.setCanDraw(newCanDraw)
		canDraw = newCanDraw
	end

	function self.drawCurrentScreens()
		if not canDraw then
			return
		end
		Graphics.SIZES.MAIN_SCREEN_PADDING = 199
		local total = getScreenTotal()
		if currentScreens[self.UI_SCREENS.MAIN_SCREEN] and total == 1 then
			client.SetGameExtraPadding(0, 0, Graphics.SIZES.MAIN_SCREEN_PADDING, 0)
		end
		local last = {
			[self.UI_SCREENS.RANDOM_BALL_SCREEN] = true,
			[self.UI_SCREENS.TITLE_SCREEN] = true
		}
		local queue = {}
		for enum, screen in pairs(currentScreens) do
			if not last[enum] then
				screen.show()
			else
				table.insert(queue, screen)
			end
		end
		for _, screen in pairs(queue) do
			screen.show()
		end
		if
			settings.appearance.REPEL_ICON and not currentScreens[self.UI_SCREENS.LOG_VIEWER_SCREEN] and
				tracker.getFirstPokemonID() ~= nil and
				not battleHandler:isInBattle()
		 then
			RepelDrawer.Update(memoryAddresses.repelSteps)
		end
		if settings.timer.ENABLED and not currentScreens[self.UI_SCREENS.LOG_VIEWER_SCREEN] then
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TIMER_SCREEN].show()
		end
	end

	function self.isInBattle()
		return battleHandler:isInBattle()
	end

	function self.changeMainScreenForPastRunView()
		inPastRunView = true
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setUpForPastRunView()
	end

	function self.loadPastRunIntoMainScreen(pastRun)
		local runBadges = pastRun.getBadges()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].updateBadges(runBadges)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].updateBadgeLayout()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.PAST_RUNS_SCREEN].updateFromMainFrameSize(
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].getMainFrameSize()
		)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setNotesAsPastRun(pastRun)
	end

	function self.changeMainScreenForTeamInfoView(pokemon, pokemonStatLoadingFunction)
		self.setSpecificPokemonAsMainScreen(pokemon)
		currentScreens[self.UI_SCREENS.MAIN_SCREEN].formatForTeamInfoView(pokemonStatLoadingFunction)
	end

	function self.undoTeamInfoView()
		inLockedView = false
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].undoTeamInfoView()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].resetToDefault()
		readMemory()
	end

	local function readBadgeByte(address)
		local badgeByte = Memory.read_u8(address)
		local badgeSet = {0, 0, 0, 0, 0, 0, 0, 0}
		for i = 1, 8, 1 do
			badgeSet[i] = BitUtils.getBits(badgeByte, i - 1, 1)
		end
		return badgeSet
	end

	function self.readBadgeMemory()
		if gameInfo.NAME == "Pokemon HeartGold" or gameInfo.NAME == "Pokemon SoulSilver" then
			badges.firstSet = readBadgeByte(memoryAddresses.johtoBadges)
			badges.secondSet = readBadgeByte(memoryAddresses.kantoBadges)
		else
			badges.firstSet = readBadgeByte(memoryAddresses.badges)
		end
		if not inPastRunView then
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].updateBadges(badges)
		end
	end

	function self.getBadges()
		return badges
	end

	local function updateRestorePoints()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.RESTORE_POINTS_SCREEN].update()
		if currentScreens[self.UI_SCREENS.RESTORE_POINTS_SCREEN] then
			self.drawCurrentScreens()
		end
	end

	local function animateUpdate()
		if settings.appearance.ICON_SET_INDEX ~= 5 then
			return
		end
		local invalid =
			inTrackedPokemonView or inPastRunView or currentScreens[self.UI_SCREENS.LOG_VIEWER_SCREEN] or battleHandler:isInBattle()
		AnimatedSpriteManager.update(invalid)
	end

	local function advanceAnimationFrame()
		if settings.appearance.ICON_SET_INDEX ~= 5 then
			return
		end
		local toWait = 10
		if settings.animatedSprites.FASTER_ANIMATIONS then
			toWait = 8
		end
		frameCounters.animatedSprites.setFrames(toWait)
		AnimatedSpriteManager.advanceFrame()
	end

	local function delayedNetworkStartup()
		Network.delayedStartupActions()
		-- Remove the delayed start frame counter; only need to run startup once
		frameCounters.networkStartup = nil
	end

	frameCounters = {
		restorePointUpdate = FrameCounter(90, updateRestorePoints),
		memoryReading = FrameCounter(30, readMemory, nil, true),
		memoryReadingSlow = FrameCounter(180, readMemorySlow, nil, true),
		trackerSaving = FrameCounter(
			18000,
            function()
				tracker.save(gameInfo.NAME)
                client.saveram()
				crashRecovery.createBackupSaveState()
			end,
			nil,
			true
		),
		animatedSprites = FrameCounter(8, advanceAnimationFrame, nil, true),
		networkStartup = FrameCounter(30, delayedNetworkStartup, nil, true),
		networkUpdate = FrameCounter(10, Network.update, nil, true),
	}

	function self.pauseEventListeners()
		runEvents = false
	end

	function self.setColorPicker(newColorPicker)
		activeColorPicker = newColorPicker
		if activeColorPicker ~= nil then
			frameCounters["updateColorPickerInput"] = FrameCounter(3, activeColorPicker.handleInput, nil)
		else
			frameCounters["updateColorPickerInput"] = nil
		end
	end

	function self.setUpForTrackedPokemonView()
		locked = false
		inTrackedPokemonView = true
		currentScreens[self.UI_SCREENS.MAIN_SCREEN].setUpForTrackedPokemonView()
		currentScreens[self.UI_SCREENS.TRACKED_POKEMON_SCREEN].initialize()
	end

	function self.moveMainScreen(newPosition)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].moveMainScreen(newPosition)
	end

	function self.SetSeedNumberVisibility(visible)
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].SetSeedNumberVisibility(visible)
	end
	
	function self.undoTrackedPokemonView()
		inTrackedPokemonView = false
		selectedPlayer = self.SELECTED_PLAYERS.PLAYER
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].resetToDefault()
		readMemory()
	end

	function self.undoPastRunView()
		inLockedView = false
		inPastRunView = false
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].undoPastRunView()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].resetToDefault()
		readMemory()
	end

	function self.isInControlsMenu()
		return currentScreens[self.UI_SCREENS.TRACKER_SETUP_SCREEN] ~= nil
	end

	function self.main()
		Input.updateMouse()
		Input.updateJoypad()
		local runMainScreenEvents =
			(doneWithTitleScreen or tracker.getFirstPokemonID() ~= nil) and
			not self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TITLE_SCREEN].isEditingFavorites()
		self.UI_SCREEN_OBJECTS[self.UI_SCREENS.MAIN_SCREEN].setRunEventListeners(runMainScreenEvents)
		if runEvents then
			for _, eventListener in pairs(eventListeners) do
				eventListener.listen()
			end

			for _, screen in pairs(currentScreens) do
				screen.runEventListeners()
			end
		end
		for _, frameCounter in pairs(frameCounters) do
			frameCounter.decrement()
		end
		battleHandler:runEvents()
		if settings.timer.ENABLED then
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.TIMER_SCREEN].runEventListeners()
		end
		animateUpdate()
	end

	-- Closes down the Tracker, saves data, and shuts down any additional processes
	function self.onProgramExit()
		tracker.save(gameInfo.NAME)
		tracker.updatePlaytime(gameInfo.NAME)
		client.saveram()
		forms.destroyall()
		self.onExitAndCloseRequiredProcesses()
	end
	-- Only closes the most important, required processes
	function self.onExitAndCloseRequiredProcesses()
		-- Safely close any open connections
		Network.closeConnections()
		-- Write to the crash report file that a crash did *not* occur
		crashRecovery.writeCrashReport()
	end

	function self.getSeedLogger()
		return seedLogger
	end

	function self.checkForUpdateBeforeLoading()
		if currentScreens[self.UI_SCREENS.UPDATE_NOTES_SCREEN] then
			return
		end
		if not trackerUpdater.alreadyCheckedForTheDay() then
			if trackerUpdater.updateExists() then
				self.setCurrentScreens({self.UI_SCREENS.UPDATER_SCREEN})
				currentScreens[self.UI_SCREENS.UPDATER_SCREEN].setAsUpdateAvailable(trackerUpdater.getNewestVersionString())
				self.drawCurrentScreens()
			end
		end
		self.saveSettings()
	end

	local function checkIfUpdatePerformed()
		if currentScreens[self.UI_SCREENS.UPDATER_SCREEN] then
			return
		end
		if settings.automaticUpdates.UPDATE_WAS_DONE == true then
			settings.automaticUpdates.UPDATE_WAS_DONE = false
			self.openScreen(self.UI_SCREENS.UPDATE_NOTES_SCREEN)
			self.saveSettings()
		else
			self.openScreen(self.UI_SCREENS.TITLE_SCREEN)
		end
	end

	pokemonDataReader = PokemonDataReader(self)
	if gameInfo.GEN == 4 then
		battleHandler = BattleHandlerGen4:new(nil, gameInfo, memoryAddresses, pokemonDataReader, tracker, self, settings)
	else
		battleHandler = BattleHandlerGen5:new(nil, gameInfo, memoryAddresses, pokemonDataReader, tracker, self, settings)
	end
	seedLogger = SeedLogger(self, gameInfo.NAME)
	playerPokemon = pokemonDataReader.getDefaultPokemon()
	self.setPokemonForMainScreen()
	self.checkForUpdateBeforeLoading()
	checkIfUpdatePerformed()

	function self.openLogFromPath(logPath)
		local soundOn = client.GetSoundOn()
		client.SetSoundOn(false)
		local logInfo = randomizerLogParser.parse(logPath)
		if logInfo ~= nil then
			Network.Data.logInfo = logInfo
			local firstPokemonID = tracker.getFirstPokemonID()
			logInfo.setStarterNumberFromPlayerPokemonID(firstPokemonID)
			self.openScreen(self.UI_SCREENS.LOG_VIEWER_SCREEN)
			self.UI_SCREEN_OBJECTS[self.UI_SCREENS.LOG_VIEWER_SCREEN].initialize(logInfo)
			if playerPokemon ~= nil and playerPokemon.pokemonID ~= 0 then
				local logScreen = self.UI_SCREEN_OBJECTS[self.UI_SCREENS.LOG_VIEWER_SCREEN]
				logScreen.addGoBackFunction(logScreen.goBackToOverview)
				logScreen.loadPokemonStats(playerPokemon.pokemonID)
			end
		end
		client.SetSoundOn(soundOn)
	end

	local RandomizerLogParser = dofile(Paths.FOLDERS.DATA_FOLDER .. "/RandomizerLogParser.lua")
	randomizerLogParser = RandomizerLogParser(self)
	AnimatedSpriteManager.initialize(self.drawCurrentScreens, memoryAddresses, gameInfo, settings)

	Network.initialize()
	Network.linkData(self, tracker, battleHandler)

	crashRecovery.initialize()
	crashRecovery.checkCrashStatus()

	return self
end

return Program
