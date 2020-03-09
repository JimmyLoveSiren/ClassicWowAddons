local L = PA_LOCALIZATION
-------------------
-- General stuff --
-------------------
Skill = {
	["Van"] = {
		"Skill: 1",
		"Skill: 20",
		"Skill: 25",
		"Skill: 50",
		"Skill: 75",
		"Skill: 100",
		"Skill: 125",
		"Skill: 150",
		"Skill: 175",
		"Skill: 200",
		"Skill: 225",
		"Skill: 250"
	}
}

Chance_Text = {
	["100"] = "   (100%)",
	["99.5"] = "   (±99.5%)",
	["75"] = "   (±75%)",
	["50"] = "   (±50%)",
	["35"] = "   (±35%)",
	["25"] = "   (±25%)",
	["15"] = "   (±15%)",
	["5"] = "   (±5%)",
	["1.5"] = "   (±1.5%)",
	["0.5"] = "   (±0.5%)"
}

T_Quality = {
	"|cff1eff00", -- Uncommon
	"|cff0070dd", -- Rare
	"|cffa335ee" -- Epic
}

-----------------------
-- General stuff end --
-----------------------

----------------------
-- Prospecting info --
----------------------

T_Ores = {
	-- Vanilla ores --
	["2770"] = { -- Copper Ore
		[1] = {Skill["Van"][2]};
		[2] = {L["Malachite"],L["Tigerseye"], Chance_Text["50"]};
		[3] = {L["Shadowgem"], Chance_Text["15"]};
	};
	["2771"] = { -- Tin Ore
		[1] = {Skill["Van"][4]};
		[2] = {L["Lesser Moonstone"],L["Moss Agate"],L["Shadowgem"], Chance_Text["35"]};
		[3] = {L["Jade"],L["Citrine"],L["Large Opal"], Chance_Text["5"]};
	};
	["2772"] = { -- Iron Ore
		[1] = {Skill["Van"][7]};
		[2] = {L["Lesser Moonstone"],L["Jade"],L["Citrine"], Chance_Text["35"]};
		[3] = {L["Star Ruby"],L["Aquamarine"], Chance_Text["5"]};
	};
	["3858"] = { -- Mithril Ore
		[1] = {Skill["Van"][9]};
		[2] = {L["Citrine"],L["Star Ruby"],L["Aquamarine"], Chance_Text["35"]};
		[3] = {L["Large Opal"],L["Huge Emerald"],L["Blue Sapphire"],L["Azerothian Diamond"], Chance_Text["5"]};
	};
	["10620"] = { -- Thorium Ore
		[1] = {Skill["Van"][12]};
		[2] = {L["Star Ruby"], Chance_Text["35"]};
		[3] = {L["Large Opal"],L["Huge Emerald"],L["Blue Sapphire"],L["Azerothian Diamond"], Chance_Text["35"]};
		[4] = {L["Star Ruby"], Chance_Text["15"]};
	};
}

T_Pros = {
	-- Vanilla results --
	[L["Malachite"]] = "\124cff1eff00\124Hitem:774::::::::::\124h["..L["Malachite"].."]\124h\124r", -- Malachite
	[L["Tigerseye"]] = "\124cff1eff00\124Hitem:818::::::::::\124h["..L["Tigerseye"].."]\124h\124r", -- Tigerseye
	[L["Lesser Moonstone"]] = "\124cff1eff00\124Hitem:1705::::::::::\124h["..L["Lesser Moonstone"].."]\124h\124r", -- Lesser Moonstone
	[L["Moss Agate"]] = "\124cff1eff00\124Hitem:1206::::::::::\124h["..L["Moss Agate"].."]\124h\124r", -- Moss Agate
	[L["Shadowgem"]] = "\124cff1eff00\124Hitem:1210::::::::::\124h["..L["Shadowgem"].."]\124h\124r", -- Shadowgem
	[L["Jade"]] = "\124cff1eff00\124Hitem:1529::::::::::\124h["..L["Jade"].."]\124h\124r", -- Jade
	[L["Citrine"]] = "\124cff1eff00\124Hitem:3864::::::::::\124h["..L["Citrine"].."]\124h\124r", -- Citrine
	[L["Star Ruby"]] = "\124cff1eff00\124Hitem:7910::::::::::\124h["..L["Star Ruby"].."]\124h\124r", -- Star Ruby
	[L["Aquamarine"]] = "\124cff1eff00\124Hitem:7909::::::::::\124h["..L["Aquamarine"].."]\124h\124r", -- Aquamarine
	[L["Large Opal"]] = "\124cff1eff00\124Hitem:12799::::::::::\124h["..L["Large Opal"].."]\124h\124r", -- Large Opal
	[L["Huge Emerald"]] = "\124cff1eff00\124Hitem:12364::::::::::\124h["..L["Huge Emerald"].."]\124h\124r", -- Huge Emerald
	[L["Blue Sapphire"]] = "\124cff1eff00\124Hitem:12361::::::::::\124h["..L["Blue Sapphire"].."]\124h\124r", -- Blue Sapphire
	[L["Azerothian Diamond"]] = "\124cff1eff00\124Hitem:12800::::::::::\124h["..L["Azerothian Diamond"].."]\124h\124r" -- Azerothian Diamond
}

--------------------------
-- Prospecting info end --
--------------------------

---------------------
-- Disenchant info --
---------------------

T_Dis = {
	-- Dust
	["10940"] = { -- Strange Dust
		Skill["Van"][1].." - 25",
		"Gear level: 5-25",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["75"],
		T_Quality[1]..Chance_Text["25"]
	},
	["11083"] = { -- Soul Dust
		Skill["Van"][4].." - 75",
		"Gear level: 26-35",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["75"],
		T_Quality[1]..Chance_Text["25"]
	},
	["11137"] = { -- Vision Dust
		Skill["Van"][6].." - 125",
		"Gear level: 36-45",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["75"],
		T_Quality[1]..Chance_Text["25"]
	},
	["11176"] = { -- Dream Dust
		Skill["Van"][8].." - 175",
		"Gear level: 46-55",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["75"],
		T_Quality[1]..Chance_Text["25"]
	},
	["16204"] = { -- Illusion Dust
		Skill["Van"][10].." - 225",
		"Gear level: 56-65",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["75"],
		T_Quality[1]..Chance_Text["25"]
	},
	
	-- Essence
	["10938"] = { -- Lesser Magic Essence
		Skill["Van"][1],
		"Gear level: 1-15",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["10939"] = { -- Greater Magic Essence
		Skill["Van"][3],
		"Gear level: 16-25",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["10998"] = { -- Lesser Astral Essence
		Skill["Van"][4],
		"Gear level: 26-30",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["11082"] = { -- Greater Astral Essence
		Skill["Van"][5],
		"Gear level: 31-35",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["11134"] = { -- Lesser Mystic Essence
		Skill["Van"][6],
		"Gear level: 36-40",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["11135"] = { -- Greater Mystic Essence
		Skill["Van"][7],
		"Gear level: 41-45",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["11174"] = { -- Lesser Nether Essence
		Skill["Van"][8],
		"Gear level: 46-50",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["11175"] = { -- Greater Nether Essence
		Skill["Van"][9],
		"Gear level: 51-55",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["16202"] = { -- Lesser Eternal Essence
		Skill["Van"][10],
		"Gear level: 56-60",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	["16203"] = { -- Greater Eternal Essence
		Skill["Van"][11],
		"Gear level: 61-65",
		T_Quality[1].."Uncommon|r",
		T_Quality[1]..Chance_Text["25"],
		T_Quality[1]..Chance_Text["75"]
	},
	
	-- Shard
	["10978"] = { -- Small Glimmering Shard
		Skill["Van"][4],
		"Gear level: 51-55",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["11084"] = { -- Large Glimmering Shard
		Skill["Van"][5],
		"Gear level: 31-35",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["11138"] = { -- Small Glowing Shard
		Skill["Van"][6],
		"Gear level: 36-40",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["11139"] = { -- Large Glowing Shard
		Skill["Van"][7],
		"Gear level: 41-45",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["11177"] = { -- Small Radiant Shard
		Skill["Van"][8],
		"Gear level: 46-50",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["11178"] = { -- Large Radiant Shard
		Skill["Van"][9],
		"Gear level: 51-55",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["100"]
	},
	["14343"] = { -- Small Brilliant Shard
		Skill["Van"][10],
		"Gear level: 56-60",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["99.5"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["99.5"]
	},
	["14344"] = { -- Large Brilliant Shard
		Skill["Van"][11],
		"Gear level: 61-65",
		T_Quality[1].."Uncommon|r & "..T_Quality[2].."Rare|r",
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["99.5"],
		T_Quality[1]..Chance_Text["15"].."|r"..T_Quality[2]..Chance_Text["99.5"]
	},
	
	-- Crystal
	["20725"] = { -- Nexus Crystal
		Skill["Van"][10].." - 225",
		"Gear level: 56-80",
		T_Quality[2].."Rare|r & "..T_Quality[3].."Epic|r",
		T_Quality[2]..Chance_Text["15"].."|r"..T_Quality[3]..Chance_Text["100"],
		T_Quality[2]..Chance_Text["15"].."|r"..T_Quality[3]..Chance_Text["100"]
	}
}

T_Dis_Result = {
	-- Dust --
	[L["Strange Dust"]] = "\124cffffffff\124Hitem:10940::::::::::\124h["..L["Strange Dust"].."]\124h\124r", -- Strange Dust
	[L["Soul Dust"]] = "\124cffffffff\124Hitem:11083:0:0:0:0:0:0:0:0:0:0\124h["..L["Soul Dust"].."]\124h\124r", -- Soul Dust
	[L["Vision Dust"]] = "\124cffffffff\124Hitem:11137:0:0:0:0:0:0:0:0:0:0\124h["..L["Vision Dust"].."]\124h\124r", -- Vision Dust
	[L["Dream Dust"]] = "\124cffffffff\124Hitem:11176:0:0:0:0:0:0:0:0:0:0\124h["..L["Dream Dust"].."]\124h\124r", -- Dream Dust
	[L["Illusion Dust"]] = "\124cffffffff\124Hitem:16204:0:0:0:0:0:0:0:0:0:0\124h["..L["Illusion Dust"].."]\124h\124r", -- Illusion Dust
	
	-- Essence --
	[L["Lesser Magic Essence"]] = "\124cff1eff00\124Hitem:10938::::::::::\124h["..L["Lesser Magic Essence"].."]\124h\124r", -- Lesser Magic Essence
	[L["Greater Magic Essence"]] = "\124cff1eff00\124Hitem:10939::::::::::\124h["..L["Greater Magic Essence"].."]\124h\124r", -- Greater Magic Essence
	[L["Lesser Astral Essence"]] = "\124cff1eff00\124Hitem:10998:0:0:0:0:0:0:0:0:0:0\124h["..L["Lesser Astral Essence"].."]\124h\124r", -- Lesser Astral Essence
	[L["Greater Astral Essence"]] = "\124cff1eff00\124Hitem:11082:0:0:0:0:0:0:0:0:0:0\124h["..L["Greater Astral Essence"].."]\124h\124r", -- Greater Astral Essence
	[L["Lesser Mystic Essence"]] = "\124cff1eff00\124Hitem:11134:0:0:0:0:0:0:0:0:0:0\124h["..L["Lesser Mystic Essence"].."]\124h\124r", -- Lesser Mystic Essence
	[L["Greater Mystic Essence"]] = "\124cff1eff00\124Hitem:11135:0:0:0:0:0:0:0:0:0:0\124h["..L["Greater Mystic Essence"].."]\124h\124r", -- Greater Mystic Essence
	[L["Lesser Nether Essence"]] = "\124cff1eff00\124Hitem:11174:0:0:0:0:0:0:0:0:0:0\124h["..L["Lesser Nether Essence"].."]\124h\124r", -- Lesser Nether Essence
	[L["Greater Nether Essence"]] = "\124cff1eff00\124Hitem:11175:0:0:0:0:0:0:0:0:0:0\124h["..L["Greater Nether Essence"].."]\124h\124r", -- Greater Nether Essence
	[L["Lesser Eternal Essence"]] = "\124cff1eff00\124Hitem:16202::::::::::\124h["..L["Lesser Eternal Essence"].."]\124h\124r", -- Lesser Eternal Essence
	[L["Greater Eternal Essence"]] = "\124cff1eff00\124Hitem:16203::::::::::\124h["..L["Greater Eternal Essence"].."]\124h\124r", -- Greater Eternal Essence
	
	-- Shard --
	[L["Small Glimmering Shard"]] = "\124cff0070dd\124Hitem:10978:0:0:0:0:0:0:0:0:0:0\124h["..L["Small Glimmering Shard"].."]\124h\124r", -- Small Glimmering Shard
	[L["Large Glimmering Shard"]] = "\124cff0070dd\124Hitem:11084:0:0:0:0:0:0:0:0:0:0\124h["..L["Large Glimmering Shard"].."]\124h\124r", -- Large Glimmering Shard
	[L["Small Glowing Shard"]] = "\124cff0070dd\124Hitem:11138:0:0:0:0:0:0:0:0:0:0\124h["..L["Small Glowing Shard"].."]\124h\124r", -- Small Glowing Shard
	[L["Large Glowing Shard"]] = "\124cff0070dd\124Hitem:11139:0:0:0:0:0:0:0:0:0:0\124h["..L["Large Glowing Shard"].."]\124h\124r", -- Large Glowing Shard
	[L["Small Radiant Shard"]] = "\124cff0070dd\124Hitem:11177:0:0:0:0:0:0:0:0:0:0\124h["..L["Small Radiant Shard"].."]\124h\124r", -- Small Radiant Shard
	[L["Large Radiant Shard"]] = "\124cff0070dd\124Hitem:11178:0:0:0:0:0:0:0:0:0:0\124h["..L["Large Radiant Shard"].."]\124h\124r", -- Large Radiant Shard
	[L["Small Brilliant Shard"]] = "\124cff0070dd\124Hitem:14343::::::::::\124h["..L["Small Brilliant Shard"].."]\124h\124r", -- Small Brilliant Shard
	[L["Large Brilliant Shard"]] = "\124cff0070dd\124Hitem:14344::::::::::\124h["..L["Large Brilliant Shard"].."]\124h\124r", -- Large Brilliant Shard
	
	-- Crystal --
	[L["Nexus Crystal"]] = "\124cffa335ee\124Hitem:20725:0:0:0:0:0:0:0:0:0:0\124h["..L["Nexus Crystal"].."]\124h\124r" -- Nexus Crystal
}
-------------------------
-- Disenchant info end --
-------------------------