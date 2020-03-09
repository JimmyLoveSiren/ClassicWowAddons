local L = PA_LOCALIZATION
------------------
-- Herb info --
------------------
T_Herbalism = {
	-- Vanilla herbs --
	["765"] = { -- Silverleaf
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Azshara"], L["Azuremyst Isle"], L["Bloodmyst Isle"], L["Darkshore"], L["Dun Morogh"], L["Durotar"], L["Elwynn Forest"], L["Eversong Woods"], L["Ghostlands"], L["Gilneas"], L["Loch Modan"], L["The Lost Isles"], L["Mulgore"], L["Northern Barrens"], L["Silverpine Forest"], L["Teldrassil"], L["Tirisfal Glades"], L["The Wandering Isle"], L["Westfall"]};
	};
	["2447"] = { -- Peacebloom
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Azshara"], L["Azuremyst Isle"], L["Bloodmyst Isle"], L["Darkshore"], L["Dun Morogh"], L["Durotar"], L["Elwynn Forest"], L["Eversong Woods"], L["Ghostlands"], L["Gilneas"], L["Loch Modan"], L["The Lost Isles"], L["Mulgore"], L["Northern Barrens"], L["Teldrassil"], L["Tirisfal Glades"], L["The Wandering Isle"], L["Westfall"]};
	};
	["2449"] = { -- Earthroot
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Azshara"], L["Azuremyst Isle"], L["Bloodmyst Isle"], L["Darkshore"], L["Dun Morogh"], L["Durotar"], L["Elwynn Forest"], L["Eversong Woods"], L["Ghostlands"], L["Gilneas"], L["Loch Modan"], L["The Lost Isles"], L["Mulgore"], L["Northern Barrens"], L["Teldrassil"], L["Tirisfal Glades"], L["The Wandering Isle"], L["Westfall"]};
	};
	["2452"] = { -- Swiftthistle
		[1] = {"","At other herbs:"..Chance_Text["35"]};
		[2] = {T_Herb2[L["Mageroyal"]],T_Herb2[L["Briarthorn"]]};
	};
	["785"] = { -- Mageroyal
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Ashenvale"], L["Azshara"], L["Bloodmyst Isle"], L["Darkshore"], L["Duskwood"], L["Ghostlands"], L["Hillsbrad Foothills"], L["Loch Modan"], L["Northern Barrens"], L["Redridge Mountains"], L["Silverpine Forest"], L["Southern Barrens"], L["Stonetalon Mountains"], L["Teldrassil"], L["Wailing Caverns"], L["Westfall"], L["Wetlands"]};
	};
	["2450"] = { -- Briarthorn
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Ashenvale"], L["Azshara"], L["Bloodmyst Isle"], L["Darkshore"], L["Duskwood"], L["Ghostlands"], L["Hillsbrad Foothills"], L["Loch Modan"], L["Northern Barrens"], L["Razorfen Kraul"], L["Redridge Mountains"], L["Silverpine Forest"], L["Southern Barrens"], L["Stonetalon Mountains"], L["Westfall"], L["Wetlands"]};
	};
	["3820"] = { -- Stranglekelp
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Ashenvale"], L["Blackfathom Deeps"], L["Bloodmyst Isle"], L["The Cape of Stranglethorn"], L["Darkshore"], L["Dustwallow Marsh"], L["Ghostlands"], L["Hillsbrad Foothills"], L["The Hinterlands"], L["Northern Stranglethorn"], L["Swamp of Sorrows"], L["Thousand Needles"], L["Western Plaguelands"], L["Westfall"], L["Wetlands"]};
	};
	["2453"] = { -- Bruiseweed
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Ashenvale"], L["Blackfathom Deeps"], L["Bloodmyst Isle"], L["Duskwood"], L["Ghostlands"], L["Hillsbrad Foothills"], L["The Hinterlands"], L["Loch Modan"], L["Northern Barrens"], L["Northern Stranglethorn"], L["Redridge Mountains"], L["Stonetalon Mountains"], L["Westfall"], L["Wetlands"]};
	};
	["3355"] = { -- Wild Steelbloom
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Ashenvale"], L["Desolace"], L["Duskwood"], L["The Hinterlands"], L["Northern Stranglethorn"], L["Stonetalon Mountains"], L["Wetlands"]};
	};
	["3369"] = { -- Grave Moss
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Duskwood"], L["Hillsbrad Foothills"], L["Razorfen Downs"], L["Wetlands"]};
	};
	["3357"] = { -- Liferoot
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Ashenvale"], L["The Cape of Stranglethorn"], L["Desolace"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["The Hinterlands"], L["Netherstorm"], L["Northern Stranglethorn"], L["Southern Barrens"], L["Thousand Needles"], L["Western Plaguelands"], L["Wetlands"]};
	};
	["3356"] = { -- Kingsblood
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Ashenvale"], L["Desolace"], L["Duskwood"], L["Dustwallow Marsh"], L["Feralas"], L["The Hinterlands"], L["Northern Stranglethorn"], L["Southern Barrens"], L["Wailing Caverns"], L["Western Plaguelands"], L["Wetlands"]};
	};
	["3818"] = { -- Fadeleaf
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["The Cape of Stranglethorn"], L["Dustwallow Marsh"], L["Feralas"], L["The Hinterlands"], L["Razorfen Kraul"], L["Western Plaguelands"]};
	};
	["3821"] = { -- Goldthorn
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["The Cape of Stranglethorn"], L["Desolace"], L["Dustwallow Marsh"], L["Feralas"], L["The Hinterlands"], L["Razorfen Downs"]};
	};
	["3819"] = { -- Dragon's Teeth
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Badlands"]};
	};
	["3358"] = { -- Khadgar's Whisker
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["The Cape of Stranglethorn"], L["Desolace"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["Feralas"], L["The Hinterlands"], L["Southern Barrens"], L["Western Plaguelands"]};
	};
	["8831"] = { -- Purple Lotus
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Felwood"]};
	};
	["8838"] = { -- Sungrass
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Badlands"], L["Burning Steppes"], L["Eastern Plaguelands"], L["Searing Gorge"], L["Silithus"], L["Southern Barrens"], L["Tanaris"], L["Utgarde Keep"]};
	};
	["8836"] = { -- Arthas' Tears
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Eastern Plaguelands"], L["Felwood"], L["Razorfen Downs"], L["Western Plaguelands"]};
	};
	["4625"] = { -- Firebloom
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Badlands"], L["Burning Steppes"], L["Searing Gorge"], L["Tanaris"]};
	};
	["8845"] = { -- Ghost Mushroom
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Utgarde Keep"], L["Zangarmarsh"]};
	};
	["8846"] = { -- Gromsblood
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Ashenvale"], L["Blasted Lands"], L["Desolace"], L["Felwood"]};
	};
	["8839"] = { -- Blindweed
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Feralas"], L["The Hinterlands"], L["Maraudon"], L["Utgarde Keep"], L["Western Plaguelands"], L["Zangarmarsh"]};
	};
	["13464"] = { -- Golden Sansam
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Badlands"], L["Blasted Lands"], L["Felwood"], L["Hellfire Peninsula"], L["Netherstorm"], L["Silithus"], L["Swamp of Sorrows"], L["Zangarmarsh"]};
	};
	["13463"] = { -- Dreamfoil
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Badlands"], L["Burning Steppes"], L["Felwood"], L["Hellfire Peninsula"], L["Silithus"], L["Utgarde Keep"], L["Zangarmarsh"]};
	};
	["13466"] = { -- Sorrowmoss
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Swamp of Sorrows"]};
	};
	["13465"] = { -- Mountain Silversage
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Blasted Lands"], L["Hellfire Peninsula"], L["Silithus"], L["Utgarde Keep"], L["Winterspring"]};
	};
	["13467"] = { -- Icecap
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Winterspring"]};
	};
	["8153"] = { -- Wildvine
		[1] = {"","At other herbs:"..Chance_Text["15"]};
		[2] = {T_Herb2[L["Purple Lotus"]]};
	};
	["13468"] = { -- Black Lotus
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Blasted Lands"], L["Eastern Plaguelands"], L["Silithus"], L["Winterspring"]};
	};
}

----------------------
-- Mining info --
----------------------

T_Mining = {
	-- Vanilla ores --
	["2770"] = { -- Copper Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Ashenvale"], L["Ashran"], L["Azuremyst Isle"], L["Badlands"], L["Bloodmyst Isle"], L["Darkshore"], L["The Deadmines"], L["Dun Morogh"], L["Durotar"], L["Duskwood"], L["Elwynn Forest"], L["Eversong Woods"], L["Ghostlands"], L["Gilneas"], L["Loch Modan"], L["The Lost Isles"], L["Mulgore"], L["Northern Barrens"], L["Redridge Mountains"], L["Silverpine Forest"], L["Southern Barrens"], L["Stonetalon Mountains"], L["Thousand Needles"], L["Tirisfal Glades"], L["Wailing Caverns"], L["The Wandering Isle"], L["Westfall"], L["Wetlands"]};
	};
	["2771"] = { -- Tin Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Ashenvale"], L["Azshara"], L["Badlands"], L["Blackfathom Deeps"], L["Bloodmyst Isle"], L["Darkshore"], L["The Deadmines"], L["Duskwood"], L["Dustwallow Marsh"], L["Ghostlands"], L["Hillsbrad Foothills"], L["The Hinterlands"], L["Loch Modan"], L["Northern Barrens"], L["Northern Stranglethorn"], L["Redridge Mountains"], L["Silverpine Forest"], L["Stonetalon Mountains"], L["Wailing Caverns"], L["Westfall"], L["Wetlands"]};
	};
	["2775"] = { -- Silver Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Bloodmyst Isle"], L["The Cape of Stranglethorn"], L["Darkshore"], L["Desolace"], L["The Deadmines"], L["Duskwood"], L["Dustwallow Marsh"], L["Feralas"], L["Hillsbrad Foothills"], L["The Hinterlands"], L["Loch Modan"], L["Northern Barrens"], L["Northern Stranglethorn"], L["Redridge Mountains"], L["Silverpine Forest"], L["Southern Barrens"], L["Stonetalon Mountains"], L["Thousand Needles"], L["Wetlands"]};
	};
	["2772"] = { -- Iron Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Badlands"], L["The Cape of Stranglethorn"], L["Desolace"], L["Duskwood"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["Feralas"], L["The Hinterlands"], L["Northern Stranglethorn"], L["Razorfen Kraul"], L["Southern Barrens"], L["Thousand Needles"], L["Uldaman"], L["Western Plaguelands"], L["Wetlands"]};
	};
	["2776"] = { -- Gold Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Badlands"], L["Burning Steppes"], L["The Cape of Stranglethorn"], L["Desolace"], L["Duskwood"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["Felwood"], L["Feralas"], L["Northern Stranglethorn"], L["Searing Gorge"], L["Southern Barrens"], L["Tanaris"], L["Thousand Needles"], L["Un'Goro Crater"], L["Western Plaguelands"]};
	};
	["3858"] = { -- Mithril Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Badlands"], L["Burning Steppes"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["Felwood"], L["Feralas"], L["Maraudon"], L["Searing Gorge"], L["Tanaris"], L["Thousand Needles"], L["Uldaman"], L["Un'Goro Crater"]};
	};
	["10620"] = { -- Thorium Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Blasted Lands"], L["Dire Maul"], L["Silithus"], L["Swamp of Sorrows"], L["Un'Goro Crater"], L["Winterspring"]};
	};
	["7911"] = { -- Truesilver Ore
		[1] = {"",Chance_Text["100"]};
		[2] = {L["Arathi Highlands"], L["Badlands"], L["Blasted Lands"], L["Burning Steppes"], L["Dustwallow Marsh"], L["Eastern Plaguelands"], L["Felwood"], L["Feralas"], L["The Hinterlands"], L["Searing Gorge"], L["Silithus"], L["Tanaris"], L["Swamp of Sorrows"], L["Thousand Needles"], L["Un'Goro Crater"], L["Winterspring"]};
	};
}