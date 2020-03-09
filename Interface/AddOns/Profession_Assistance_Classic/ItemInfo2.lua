local L = PA_LOCALIZATION
--------------------------------------------
-- Herb info for translation purpose only --
--------------------------------------------

T_Herb2 = {
	-- Vanilla herbs (Skill: 25) --
	[L["Mageroyal"]] = "\124cffffffff\124Hitem:785::::::::::\124h["..L["Mageroyal"].."]\124h\124r", -- Mageroyal
	[L["Briarthorn"]] = "\124cffffffff\124Hitem:2450::::::::::\124h["..L["Briarthorn"].."]\124h\124r", -- Briarthorn
}

---------------
-- Ores info --
---------------

T_Gems = {
	-- Vanilla gems --
	["774"] = { -- Malachite
		[1] = {Skill["Van"][1]};
		[2] = {L["Copper Ore"], Chance_Text["50"]};
	};
	["818"] = { -- Tigerseye
		[1] = {Skill["Van"][1]};
		[2] = {L["Copper Ore"], Chance_Text["50"]};
	};
	["1210"] = { -- Shadowgem
		[1] = {Skill["Van"][1].." - 50"};
		[2] = {L["Tin Ore"], Chance_Text["35"]};
		[3] = {L["Copper Ore"], Chance_Text["15"]};
	};
	["1206"] = { -- Moss Agate
		[1] = {Skill["Van"][4]};
		[2] = {L["Tin Ore"], Chance_Text["35"]};
	};
	["1705"] = { -- Lesser Moonstone
		[1] = {Skill["Van"][4].." - 125"};
		[2] = {L["Tin Ore"],L["Iron Ore"], Chance_Text["35"]};
	};
	["1529"] = { -- Jade
		[1] = {Skill["Van"][4].." - 125"};
		[2] = {L["Iron Ore"], Chance_Text["35"]};
		[3] = {L["Tin Ore"], Chance_Text["5"]};
	};
	["3864"] = { -- Citrine
		[1] = {Skill["Van"][4].." - 175"};
		[2] = {L["Iron Ore"],L["Mithril Ore"], Chance_Text["35"]};
		[3] = {L["Tin Ore"], Chance_Text["5"]};
	};
	["7909"] = { -- Aquamarine
		[1] = {Skill["Van"][4].." - 175"};
		[2] = {L["Mithril Ore"], Chance_Text["35"]};
		[3] = {L["Tin Ore"],L["Iron Ore"], Chance_Text["5"]};
	};
	["7910"] = { -- Star Ruby
		[1] = {Skill["Van"][7].." - 250"};
		[2] = {L["Mithril Ore"], Chance_Text["35"]};
		[3] = {L["Thorium Ore"], Chance_Text["5"]};
		[4] = {L["Iron Ore"], Chance_Text["1.5"]};
	};
	["12799"] = { -- Large Opal
		[1] = {Skill["Van"][9].." - 250"};
		[2] = {L["Thorium Ore"], Chance_Text["35"]};
		[3] = {L["Mithril Ore"], Chance_Text["1.5"]};
	};
	["12364"] = { -- Huge Emerald
		[1] = {Skill["Van"][9].." - 250"};
		[2] = {L["Thorium Ore"], Chance_Text["35"]};
		[3] = {L["Mithril Ore"], Chance_Text["1.5"]};
	};
	["12361"] = { -- Blue Sapphire
		[1] = {Skill["Van"][9].." - 250"};
		[2] = {L["Thorium Ore"], Chance_Text["35"]};
		[3] = {L["Mithril Ore"], Chance_Text["1.5"]};
	};
	["12800"] = { -- Azerothian Diamond
		[1] = {Skill["Van"][9].." - 250"};
		[2] = {L["Thorium Ore"], Chance_Text["35"]};
		[3] = {L["Mithril Ore"], Chance_Text["1.5"]};
	};
}

T_Ores2 = {
	-- Vanilla ores --
	[L["Copper Ore"]] = "\124cffffffff\124Hitem:2770::::::::::\124h["..L["Copper Ore"].."]\124h\124r", -- Copper Ore
	[L["Tin Ore"]] = "\124cffffffff\124Hitem:2771::::::::::\124h["..L["Tin Ore"].."]\124h\124r", -- Tin Ore
	[L["Iron Ore"]] = "\124cffffffff\124Hitem:2772::::::::::\124h["..L["Iron Ore"].."]\124h\124r", -- Iron Ore
	[L["Mithril Ore"]] = "\124cffffffff\124Hitem:3858::::::::::\124h["..L["Mithril Ore"].."]\124h\124r", -- Mithril Ore
	[L["Thorium Ore"]] = "\124cffffffff\124Hitem:10620::::::::::\124h["..L["Thorium Ore"].."]\124h\124r" -- Thorium Ore
}

-------------------
-- Ores info end --
-------------------

---------------
-- Gear info --
---------------

T_iLvl = {
	{5,15, -- Vanilla Skill: 1
		{-- Armor
			[1] = {Skill["Van"][1]},
			[2] = {L["Strange Dust"], Chance_Text["75"]},
			[3] = {L["Lesser Magic Essence"], Chance_Text["35"]}
		},
		{-- Weapon
			[1] = {L["Strange Dust"], Chance_Text["35"]},
			[2] = {L["Lesser Magic Essence"], Chance_Text["75"]}
		};
	},
	{16,20, -- Vanilla Skill: 25
		{
			[1] = {Skill["Van"][3]},
			[2] = {L["Strange Dust"], Chance_Text["75"]},
			[3] = {L["Greater Magic Essence"], Chance_Text["35"]},
			[4] = {L["Small Glimmering Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Strange Dust"], Chance_Text["35"]},
			[2] = {L["Greater Magic Essence"], Chance_Text["75"]},
			[3] = {L["Small Glimmering Shard"], Chance_Text["15"]}
		};
	},
	{21,25, -- Vanilla Skill: 25
		{
			[1] = {Skill["Van"][3]},
			[2] = {L["Strange Dust"], Chance_Text["75"]},
			[3] = {L["Lesser Astral Essence"], Chance_Text["35"]},
			[4] = {L["Small Glimmering Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Strange Dust"], Chance_Text["35"]},
			[2] = {L["Lesser Astral Essence"], Chance_Text["75"]},
			[3] = {L["Small Glimmering Shard"], Chance_Text["15"]}
		},
		16,25,
		{
			[1] = {Skill["Van"][3]},
			[2] = {L["Small Glimmering Shard"], Chance_Text["100"]}
		};
	},
	{26,30, -- Vanilla Skill: 50
		{
			[1] = {Skill["Van"][4]},
			[2] = {L["Soul Dust"], Chance_Text["75"]},
			[3] = {L["Greater Astral Essence"], Chance_Text["35"]},
			[4] = {L["Large Glimmering Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Soul Dust"], Chance_Text["35"]},
			[2] = {L["Greater Astral Essence"], Chance_Text["75"]},
			[3] = {L["Large Glimmering Shard"], Chance_Text["15"]}
		},
		26,30,
		{
			[1] = {Skill["Van"][4]},
			[2] = {L["Large Glimmering Shard"], Chance_Text["100"]}
		};
	},
	{31,35, -- Vanilla Skill: 75
		{
			[1] = {Skill["Van"][5]},
			[2] = {L["Soul Dust"], Chance_Text["75"]},
			[3] = {L["Lesser Mystic Essence"], Chance_Text["35"]},
			[4] = {L["Small Glowing Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Soul Dust"], Chance_Text["35"]},
			[2] = {L["Lesser Mystic Essence"], Chance_Text["75"]},
			[3] = {L["Small Glowing Shard"], Chance_Text["15"]}
		},
		31,35,
		{
			[1] = {Skill["Van"][5]},
			[2] = {L["Small Glowing Shard"], Chance_Text["100"]}
		};
	},
	{36,40, -- Vanilla Skill: 100
		{
			[1] = {Skill["Van"][6]},
			[2] = {L["Vision Dust"], Chance_Text["75"]},
			[3] = {L["Greater Mystic Essence"], Chance_Text["35"]},
			[4] = {L["Large Glowing Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Vision Dust"], Chance_Text["35"]},
			[2] = {L["Greater Mystic Essence"], Chance_Text["75"]},
			[3] = {L["Large Glowing Shard"], Chance_Text["15"]}
		},
		36,40,
		{
			[1] = {Skill["Van"][6]},
			[2] = {L["Large Glowing Shard"], Chance_Text["100"]}
		},
		36,40,
		{
			[1] = {Skill["Van"][7]},
			[2] = {L["Large Glowing Shard"], Chance_Text["100"]}
		};
	},
	{41,45, -- Vanilla Skill: 125
		{
			[1] = {Skill["Van"][7]},
			[2] = {L["Vision Dust"], Chance_Text["75"]},
			[3] = {L["Lesser Nether Essence"], Chance_Text["35"]},
			[4] = {L["Small Radiant Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Vision Dust"], Chance_Text["35"]},
			[2] = {L["Lesser Nether Essence"], Chance_Text["75"]},
			[3] = {L["Small Radiant Shard"], Chance_Text["15"]}
		},
		41,45,
		{
			[1] = {Skill["Van"][7]},
			[2] = {L["Small Radiant Shard"], Chance_Text["100"]}
		},
		41,45,
		{
			[1] = {Skill["Van"][7]},
			[2] = {L["Small Radiant Shard"], Chance_Text["100"]}
		};
	},
	{46,50, -- Vanilla Skill: 150
		{
			[1] = {Skill["Van"][8]},
			[2] = {L["Dream Dust"], Chance_Text["75"]},
			[3] = {L["Greater Nether Essence"], Chance_Text["35"]},
			[4] = {L["Large Radiant Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Dream Dust"], Chance_Text["35"]},
			[2] = {L["Greater Nether Essence"], Chance_Text["75"]},
			[3] = {L["Large Radiant Shard"], Chance_Text["15"]}
		},
		46,50,
		{
			[1] = {Skill["Van"][8]},
			[2] = {L["Large Radiant Shard"], Chance_Text["100"]}
		};
	},
	{51,55, -- Vanilla Skill: 175
		{
			[1] = {Skill["Van"][9]},
			[2] = {L["Dream Dust"], Chance_Text["75"]},
			[3] = {L["Lesser Eternal Essence"], Chance_Text["35"]},
			[4] = {L["Small Brilliant Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Dream Dust"], Chance_Text["35"]},
			[2] = {L["Lesser Eternal Essence"], Chance_Text["75"]},
			[3] = {L["Small Brilliant Shard"], Chance_Text["15"]}
		},
		51,55,
		{
			[1] = {Skill["Van"][9]},
			[2] = {L["Small Brilliant Shard"], Chance_Text["100"]}
		};
	},
	{56,60, -- Vanilla Skill: 200
		{
			[1] = {Skill["Van"][10]},
			[2] = {L["Illusion Dust"], Chance_Text["75"]},
			[3] = {L["Greater Eternal Essence"], Chance_Text["35"]},
			[4] = {L["Large Brilliant Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Illusion Dust"], Chance_Text["5"]},
			[2] = {L["Greater Eternal Essence"], Chance_Text["75"]},
			[3] = {L["Large Brilliant Shard"], Chance_Text["15"]}
		},
		56,60,
		{
			[1] = {Skill["Van"][10]},
			[2] = {L["Large Brilliant Shard"], Chance_Text["99.5"]},
			[3] = {L["Nexus Crystal"], Chance_Text["5"]}
		};
	},
	{61,65, -- Vanilla Skill: 225
		{
			[1] = {Skill["Van"][11]},
			[2] = {L["Illusion Dust"], Chance_Text["75"]},
			[3] = {L["Greater Eternal Essence"], Chance_Text["35"]},
			[4] = {L["Large Brilliant Shard"], Chance_Text["15"]}
		},
		{
			[1] = {L["Illusion Dust"], Chance_Text["35"]},
			[2] = {L["Greater Eternal Essence"], Chance_Text["75"]},
			[3] = {L["Large Brilliant Shard"], Chance_Text["15"]}
		},
		61,65,
		{
			[1] = {Skill["Van"][11]},
			[2] = {L["Large Brilliant Shard"], Chance_Text["99.5"]},
			[3] = {L["Nexus Crystal"], Chance_Text["5"]}
		},
		56,80,
		{
			[1] = {Skill["Van"][11]},
			[2] = {L["Nexus Crystal"], Chance_Text["100"]}
		};
	}
}

-------------------
-- Gear info end --
-------------------