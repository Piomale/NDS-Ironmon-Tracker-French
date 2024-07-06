GameConfigurator = {}

GameConfigurator.ALTERNATE_FORM_ORDER_GEN4 = {
	"Deoxys",
	"Cheniselle P",
	"Giratina A",
	"Shaymin L",
	"Motisma",
	"Morpheo",
	"Bargantua R",
	"Darumacho",
	"Meloetta A",
	"Kyurem",
	"Demeteros",
	"Thundurus",
	"Tornadus",
	"Cheniti P",
	"Ceriflor O",
	"Vivaldaim",
	"Viskuse M",
	"Tritosor W",
	"Moyade M",
	"Keldeo",
	"Haydaim",
	"Sancoki W",
	"Deflaisan M"
}

GameConfigurator.ALTERNATE_FORM_ORDER_GEN5 = {
	"Deoxys",
	"Cheniselle P",
	"Shaymin L",
	"Giratina A",
	"Motisma",
	"Morpheo",
	"Bargantua R",
	"Darumacho",
	"Meloetta A",
	"Kyurem",
	"Demeteros",
	"Thundurus",
	"Tornadus",
	"Cheniti P",
	"Ceriflor O",
	"Vivaldaim",
	"Viskuse M",
	"Tritosor W",
	"Moyade M",
	"Keldeo",
	"Haydaim",
	"Sancoki W",
	"Deflaisan M"
}

function GameConfigurator.initPokemon(gameInfo)
	local endIndex = PokemonData.LAST_INDEX_GEN_4
	if gameInfo.GEN == 5 then
		endIndex = PokemonData.LAST_INDEX_GEN_5
	end
	local pokemon = {}
	for i = 1, endIndex, 1 do
		table.insert(pokemon, PokemonData.POKEMON_MASTER_LIST[i])
	end
	PokemonData.POKEMON = pokemon
	PokemonData.NAMES_MAPPING = {}
end

function GameConfigurator.initMoveData(gameInfo)
	MoveData.MOVES = {}
	local versionDifferenceIndex = gameInfo.GEN - 3
	for index, move in pairs(MoveData.MOVES_MASTER_LIST) do
		if gameInfo.GEN == 4 and index == 469 then
			return
		end
		local moveToInsert = {
			id = 1,
			name = "---",
			type = "---",
			power = Graphics.TEXT.NO_POWER,
			pp = Graphics.TEXT.NO_PP,
			accuracy = Graphics.TEXT.ALWAYS_HITS,
			category = MoveData.MOVE_CATEGORIES.NONE
		}
		for name, moveAttribute in pairs(move) do
			if type(moveAttribute) == "table" then
				moveToInsert[name] = moveAttribute[versionDifferenceIndex]
			else
				moveToInsert[name] = moveAttribute
			end
		end
		table.insert(MoveData.MOVES, moveToInsert)
	end
end

function GameConfigurator.initAbilityData(gameInfo)
	AbilityData.ABILITIES = {}
	local versionDifferenceIndex = gameInfo.GEN - 3
	for index, info in pairs(AbilityData.ABILITIES_MASTER_LIST) do
		if gameInfo.GEN == 4 and index == 125 then
			break
		end
		AbilityData.ABILITIES[index] = {}
		for key, value in pairs(info) do
			if type(value) == "table" then
				AbilityData.ABILITIES[index][key] = value[versionDifferenceIndex]
			else
				AbilityData.ABILITIES[index][key] = value
			end
		end
	end

	AbilityData.BATTLE_MSGS = {}
	local battleMsgsToCopy
	if gameInfo.GEN == 4 then
		battleMsgsToCopy = AbilityData.BATTLE_MSGS_MASTER_LIST.GEN4
	elseif gameInfo.GEN == 5 then
		battleMsgsToCopy = AbilityData.BATTLE_MSGS_MASTER_LIST.GEN5
	end
	for msgId, abilityIdList in pairs(battleMsgsToCopy or {}) do
		AbilityData.BATTLE_MSGS[msgId] = {}
		for _, abilityId in pairs(abilityIdList) do
			AbilityData.BATTLE_MSGS[msgId][abilityId] = true
		end
	end
end

function GameConfigurator.initAlternateForms(gameInfo)
	local formOrder = GameConfigurator.ALTERNATE_FORM_ORDER_GEN4
	if gameInfo.GEN == 5 then
		formOrder = GameConfigurator.ALTERNATE_FORM_ORDER_GEN5
	end
	local currentIndex = #PokemonData.POKEMON + 1
	for _, baseForm in pairs(formOrder) do
		local formTable = PokemonData.ALTERNATE_FORMS[baseForm]
		formTable.index = currentIndex
		for i, form in pairs(formTable.forms) do
			if baseForm == "Motisma" and gameInfo.GEN == 4 then
				form.type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.GHOST}
			end
			PokemonData.POKEMON[currentIndex] = form
			PokemonData.POKEMON[currentIndex].baseFormData = {
				baseFormName = baseForm,
				alternateFormIndex = i,
				baseFormIndex = formTable.baseIndex
			}
			currentIndex = currentIndex + 1
		end
	end
end

function GameConfigurator.initialize()
	local memdomain = "Main RAM"
	memory.usememorydomain(memdomain)
	local gameCode = Memory.read_u32_le(MemoryAddresses.NDS_CONSTANTS.CARTRIDGE_HEADER + 0x0C)
	if not GameInfo.GAME_INFO[gameCode] then
		FormsUtils.popupDialog(
			"Ta ROM n'est pas supportée par le tracker. Seules les ROM HeartGold et Black/White en version française sont supportées..",
			250,
			100,
			FormsUtils.POPUP_DIALOG_TYPES.WARNING,
			false
		)
		return
	end
	local gameInfo = GameInfo.GAME_INFO[gameCode]
	print(gameInfo.NAME .. " detected.")
	GameConfigurator.initPokemon(gameInfo)
	GameConfigurator.initAlternateForms(gameInfo)
	for id, pokemonData in pairs(PokemonData.POKEMON) do
		if id ~= 1 then
			PokemonData.NAMES_MAPPING[pokemonData.name] = id - 1
		end
	end
	GameConfigurator.initMoveData(gameInfo)
	GameConfigurator.initAbilityData(gameInfo)

	if gameInfo.GEN == 5 then
		ItemData.ITEMS = ItemData.GEN_5_ITEMS
	else
		ItemData.ITEMS = ItemData.GEN_4_ITEMS
	end
	return GameConfigurator.initializeMemoryAddresses()
end

local function readVersionPointerOffsets(memoryInfo, addressConfiguration)
	local globalPtr = memoryInfo.GLOBAL_POINTER
	local globalPtrAddr = Memory.read_u32_le(globalPtr)
	--Don't care about the first 2 bytes.
	globalPtrAddr = bit.band(globalPtrAddr, 0xFFFFFF)
	local versionPtr = globalPtrAddr + 0x20
	local versionPtrAddr = Memory.read_u32_le(versionPtr)
	versionPtrAddr = bit.band(versionPtrAddr, 0xFFFFFF)
	for addrName, versionPtrOffset in pairs(memoryInfo.VERSION_POINTER_OFFSETS) do
		addressConfiguration[addrName] = versionPtrAddr + versionPtrOffset
	end
end

function GameConfigurator.initializeMemoryAddresses()
	local gameCode = Memory.read_u32_le(MemoryAddresses.NDS_CONSTANTS.CARTRIDGE_HEADER + 0x0C)
	local gameInfo = GameInfo.GAME_INFO[gameCode]
	local memoryInfo = MemoryAddresses[gameCode]
	local addressConfiguration = {}
	for globalOffsetName, globalAddr in pairs(memoryInfo.GLOBAL) do
		addressConfiguration[globalOffsetName] = globalAddr
	end
	if gameInfo.GEN == 4 then
		readVersionPointerOffsets(memoryInfo, addressConfiguration)
	end
	return {
		["gameInfo"] = gameInfo,
		["memoryAddresses"] = addressConfiguration
	}
end

