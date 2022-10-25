KBH_MENU.LAM2 = LibAddonMenu2

KBH_MENU.PanelData =
{
	type = "panel",
	name = "Keybind Houses",
	displayName = "Keybind Houses",
	author = "J. Loose (@loosej EU)",
	version = KeybindHouses.version,
	registerForRefresh = true
}

KBH_MENU.OptionData =
{
	{
		type = "submenu",
		name = "Keybind 1",
		controls =
		{
			{
				type = "checkbox",
				name = "Account wide",
				width = "full",
				getFunc = function() return KeybindHouses.savedVariables.house1_accountwide end,
				setFunc = function(newValue) KeybindHouses.savedVariables.house1_accountwide = newValue end
			},
			{
				type = "dropdown",
				name = "House",
				width = "full",
				choices = KeybindHouses:getHouses(true),
				choicesValues = KeybindHouses:getHouses(false),
				getFunc = function()
										if KeybindHouses.savedVariables.house1_accountwide then
											return KeybindHouses.savedVariables.house1_id
										else
											return KeybindHouses.characterSavedVariables.house1_id
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house1_accountwide then
											KeybindHouses.savedVariables.house1_id = newValue
										else
											KeybindHouses.characterSavedVariables.house1_id = newValue
										end
									end
			},
			{
				type = "checkbox",
				name = "Travel outside",
				width = "full",
				getFunc = function()
										if KeybindHouses.savedVariables.house1_accountwide then
											return KeybindHouses.savedVariables.house1_outside
										else
											return KeybindHouses.characterSavedVariables.house1_outside
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house1_accountwide then
											KeybindHouses.savedVariables.house1_outside = newValue
										else
											KeybindHouses.characterSavedVariables.house1_outside = newValue
										end
									end
			},
		},
	},

	{
		type = "submenu",
		name = "Keybind 2",
		controls =
		{
			{
				type = "checkbox",
				name = "Account wide",
				width = "full",
				getFunc = function() return KeybindHouses.savedVariables.house2_accountwide end,
				setFunc = function(newValue) KeybindHouses.savedVariables.house2_accountwide = newValue end
			},
			{
				type = "dropdown",
				name = "House",
				width = "full",
				choices = KeybindHouses:getHouses(true),
				choicesValues = KeybindHouses:getHouses(false),
				getFunc = function()
										if KeybindHouses.savedVariables.house2_accountwide then
											return KeybindHouses.savedVariables.house2_id
										else
											return KeybindHouses.characterSavedVariables.house2_id
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house2_accountwide then
											KeybindHouses.savedVariables.house2_id = newValue
										else
											KeybindHouses.characterSavedVariables.house2_id = newValue
										end
									end
			},
			{
				type = "checkbox",
				name = "Travel outside",
				width = "full",
				getFunc = function()
										if KeybindHouses.savedVariables.house2_accountwide then
											return KeybindHouses.savedVariables.house2_outside
										else
											return KeybindHouses.characterSavedVariables.house2_outside
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house2_accountwide then
											KeybindHouses.savedVariables.house2_outside = newValue
										else
											KeybindHouses.characterSavedVariables.house2_outside = newValue
										end
									end
			},
		},
	},


	{
		type = "submenu",
		name = "Keybind 3",
		controls =
		{
			{
				type = "checkbox",
				name = "Account wide",
				width = "full",
				getFunc = function() return KeybindHouses.savedVariables.house3_accountwide end,
				setFunc = function(newValue) KeybindHouses.savedVariables.house3_accountwide = newValue end
			},
			{
				type = "dropdown",
				name = "House",
				width = "full",
				choices = KeybindHouses:getHouses(true),
				choicesValues = KeybindHouses:getHouses(false),
				getFunc = function()
										if KeybindHouses.savedVariables.house3_accountwide then
											return KeybindHouses.savedVariables.house3_id
										else
											return KeybindHouses.characterSavedVariables.house3_id
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house3_accountwide then
											KeybindHouses.savedVariables.house3_id = newValue
										else
											KeybindHouses.characterSavedVariables.house3_id = newValue
										end
									end
			},
			{
				type = "checkbox",
				name = "Travel outside",
				width = "full",
				getFunc = function()
										if KeybindHouses.savedVariables.house3_accountwide then
											return KeybindHouses.savedVariables.house3_outside
										else
											return KeybindHouses.characterSavedVariables.house3_outside
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house3_accountwide then
											KeybindHouses.savedVariables.house3_outside = newValue
										else
											KeybindHouses.characterSavedVariables.house3_outside = newValue
										end
									end
			},
		},
	},

	{
		type = "submenu",
		name = "Keybind 4",
		controls =
		{
			{
				type = "checkbox",
				name = "Account wide",
				width = "full",
				getFunc = function() return KeybindHouses.savedVariables.house4_accountwide end,
				setFunc = function(newValue) KeybindHouses.savedVariables.house4_accountwide = newValue end
			},
			{
				type = "dropdown",
				name = "House",
				width = "full",
				choices = KeybindHouses:getHouses(true),
				choicesValues = KeybindHouses:getHouses(false),
				getFunc = function()
										if KeybindHouses.savedVariables.house4_accountwide then
											return KeybindHouses.savedVariables.house4_id
										else
											return KeybindHouses.characterSavedVariables.house4_id
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house4_accountwide then
											KeybindHouses.savedVariables.house4_id = newValue
										else
											KeybindHouses.characterSavedVariables.house4_id = newValue
										end
									end
			},
			{
				type = "checkbox",
				name = "Travel outside",
				width = "full",
				getFunc = function()
										if KeybindHouses.savedVariables.house4_accountwide then
											return KeybindHouses.savedVariables.house4_outside
										else
											return KeybindHouses.characterSavedVariables.house4_outside
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house4_accountwide then
											KeybindHouses.savedVariables.house4_outside = newValue
										else
											KeybindHouses.characterSavedVariables.house4_outside = newValue
										end
									end
			},
		},
	},


	{
		type = "submenu",
		name = "Keybind 5",
		controls =
		{
			{
				type = "checkbox",
				name = "Account wide",
				width = "full",
				getFunc = function() return KeybindHouses.savedVariables.house5_accountwide end,
				setFunc = function(newValue) KeybindHouses.savedVariables.house5_accountwide = newValue end
			},
			{
				type = "dropdown",
				name = "House",
				width = "full",
				choices = KeybindHouses:getHouses(true),
				choicesValues = KeybindHouses:getHouses(false),
				getFunc = function()
										if KeybindHouses.savedVariables.house5_accountwide then
											return KeybindHouses.savedVariables.house5_id
										else
											return KeybindHouses.characterSavedVariables.house5_id
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house5_accountwide then
											KeybindHouses.savedVariables.house5_id = newValue
										else
											KeybindHouses.characterSavedVariables.house5_id = newValue
										end
									end
			},
			{
				type = "checkbox",
				name = "Travel outside",
				width = "full",
				getFunc = function()
										if KeybindHouses.savedVariables.house5_accountwide then
											return KeybindHouses.savedVariables.house5_outside
										else
											return KeybindHouses.characterSavedVariables.house5_outside
										end
									end,
				setFunc = function(newValue)
										if KeybindHouses.savedVariables.house5_accountwide then
											KeybindHouses.savedVariables.house5_outside = newValue
										else
											KeybindHouses.characterSavedVariables.house5_outside = newValue
										end
									end
			},
		},
	},

}

KBH_MENU.Init = function()
	KBH_MENU.LAM2:RegisterAddonPanel("KBH_SETTINGS", KBH_MENU.PanelData)
	KBH_MENU.LAM2:RegisterOptionControls("KBH_SETTINGS", KBH_MENU.OptionData)
end
