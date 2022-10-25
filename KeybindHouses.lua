-- KeybindHouses.lua

-- Vars

KBH_MENU = {}
KeybindHouses = {}
KeybindHouses.name = "KeybindHouses"
KeybindHouses.version = "0.1.0"
KeybindHouses.savedVariables = {}
KeybindHouses.characterSavedVariables = {}
KeybindHouses.savedVariablesFileName = "KeybindHouses_SavedVariables"
KeybindHouses.houses = nil
KeybindHouses.houseIDs = nil

-- Functions

local function KBH_dump()
	d(KeybindHouses.savedVariables)
	d(KeybindHouses.characterSavedVariables)
end

function KeybindHouses:isHouseOwned(houseId)
	if not houseId then return false end

	local collectibleId = GetCollectibleIdForHouse(houseId)
	local collected = IsCollectibleUnlocked(collectibleId) or false
	return collected
end

function KeybindHouses:getHouseName(houseId)
	if not houseId then return false end

	local collectibleId = GetCollectibleIdForHouse(houseId)
	return GetCollectibleName(collectibleId) or ""
end

function KeybindHouses:getHouses(getName, refresh)
	if not self.houses or refresh then
		self.houses = {"(none)"}
		self.houseIDs = {0}

		for id = 1, 100 do
			local collectibleId = GetCollectibleIdForHouse(id)
			if 0 ~= collectibleId then
				if self:isHouseOwned(id) then
					table.insert(self.houses, self:getHouseName(id))
					table.insert(self.houseIDs, id)
				end
			end
		end
	end

	if getName then
		return self.houses
	else
		return self.houseIDs
	end
end

-- Main
function KeybindHouses.travelTo(id)
	houseId = 0
	outside = nil

	if id == 1 then
		if KeybindHouses.savedVariables.house1_accountwide then
			houseId = KeybindHouses.savedVariables.house1_id
			outside = KeybindHouses.savedVariables.house1_outside
		else
			houseId = KeybindHouses.characterSavedVariables.house1_id
			outside = KeybindHouses.characterSavedVariables.house1_outside
		end
	end

	if id == 2 then
		if KeybindHouses.savedVariables.house2_accountwide then
			houseId = KeybindHouses.savedVariables.house2_id
			outside = KeybindHouses.savedVariables.house2_outside
		else
			houseId = KeybindHouses.characterSavedVariables.house2_id
			outside = KeybindHouses.characterSavedVariables.house2_outside
		end
	end

	if id == 3 then
		if KeybindHouses.savedVariables.house3_accountwide then
			houseId = KeybindHouses.savedVariables.house3_id
			outside = KeybindHouses.savedVariables.house3_outside
		else
			houseId = KeybindHouses.characterSavedVariables.house3_id
			outside = KeybindHouses.characterSavedVariables.house3_outside
		end
	end

	if id == 4 then
		if KeybindHouses.savedVariables.house4_accountwide then
			houseId = KeybindHouses.savedVariables.house4_id
			outside = KeybindHouses.savedVariables.house4_outside
		else
			houseId = KeybindHouses.characterSavedVariables.house4_id
			outside = KeybindHouses.characterSavedVariables.house4_outside
		end
	end

	if id == 5 then
		if KeybindHouses.savedVariables.house5_accountwide then
			houseId = KeybindHouses.savedVariables.house5_id
			outside = KeybindHouses.savedVariables.house5_outside
		else
			houseId = KeybindHouses.characterSavedVariables.house5_id
			outside = KeybindHouses.characterSavedVariables.house5_outside
		end
	end


	if houseId and houseId > 0 then
    local message = "Teleporting to " .. KeybindHouses:getHouseName(houseId) .. " ("
    if outside then
      message = message .. "outside)"
    else
      message = message .. "inside)"
    end
    
		d(message)
		RequestJumpToHouse(houseId, outside)
	end
end

function KeybindHouses.Initialize()
	ZO_CreateStringId("SI_BINDING_NAME_KBH1", "Keybind1")
	ZO_CreateStringId("SI_BINDING_NAME_KBH2", "Keybind2")
	ZO_CreateStringId("SI_BINDING_NAME_KBH3", "Keybind3")
	ZO_CreateStringId("SI_BINDING_NAME_KBH4", "Keybind4")
	ZO_CreateStringId("SI_BINDING_NAME_KBH5", "Keybind5")
	SLASH_COMMANDS["/kbh"] = KBH_dump

	KBH_MENU.Init()
end

function KeybindHouses.OnAddOnLoaded(event, addonName)
	if addonName == KeybindHouses.name then
		KeybindHouses.Initialize()
		EVENT_MANAGER:UnregisterForEvent(KeybindHouses.name, EVENT_ADD_ON_LOADED)
		KeybindHouses.savedVariables = ZO_SavedVars:NewAccountWide(KeybindHouses.savedVariablesFileName, KeybindHouses.version, nil, nil, GetWorldName())
		KeybindHouses.characterSavedVariables = ZO_SavedVars:NewCharacterIdSettings(KeybindHouses.savedVariablesFileName, KeybindHouses.version .. "b", nil, nil)
	end
end

EVENT_MANAGER:RegisterForEvent(KeybindHouses.name, EVENT_ADD_ON_LOADED, KeybindHouses.OnAddOnLoaded)
