--[[
Name: LibClassicMobHealthGuid-1.0
Current Author: Pneumatus
Original Author: Cameron Kenneth Knight (ckknight@gmail.com)
Inspired By: MobHealth3 by Neronix
Description: Estimate a mob's health, Guid version
License: LGPL v2.1
]]

local ADDONNAME = "UnitFramesPlus"

local MAJOR_VERSION = "LibClassicMobHealthGuid-1.0"
local MINOR_VERSION = 1

--Use guid
local MobUnitTypes={--	Lookup of mob unit types from GUID
	Creature=true;--	Mob/NPC
	Vignette=true;--	Rares
}

local function GetCreatureIDFromGUID(guid)--	Extracts CreatureID from GUID (Mobs only)
	if not guid then return; end--	Needs GUID
	local utype, creatureid = string.match(guid, "^(.-)%-0%-%d+%-%d+%-%d+%-(%d+)%-%x+$");
	return (utype and MobUnitTypes[utype]) and (creatureid and tonumber(creatureid));--	Return CreatureID if mob
end

local function GetCreatureIDFromKey(creaturekey)--	Extracts CreatureID from CreatureKey
	local creatureid = string.match(creaturekey,"^%d+");
	return creatureid and tonumber(creatureid);
end

local function GetUnitCreatureKey(unit)--	Generates CreatureKey from CreatureID (from GUID) and level
	local creatureid = GetCreatureIDFromGUID(UnitGUID(unit));
	if not creatureid then return; end--	Unit not mob

	if UnitClassification(unit) == "worldboss" then
		return tostring(creatureid);--	World Bosses have no level, return as raw CreatureID
	else
		-- local level = UnitLevel(unit);--	UnitLevel() returns -1 for units with hidden levels (Skull/??)
		-- if level and level > 0 then return string.match("%d-%d", creatureid, level); end
		return creatureid;
	end
end

-- #AUTODOC_NAMESPACE lib

local lib, oldMinor = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not lib then
	return
end
local oldLib
if oldMinor then
	oldLib = {}
	for k,v in pairs(lib) do
		oldLib[k] = v
		lib[k] = nil
	end
end

local _G = _G
local UnitLevel = _G.UnitLevel
local UnitIsPlayer = _G.UnitIsPlayer
local UnitPlayerControlled = _G.UnitPlayerControlled
local UnitName = _G.UnitName
local UnitHealth = _G.UnitHealth
local UnitHealthMax = _G.UnitHealthMax
local UnitIsFriend = _G.UnitIsFriend
local UnitIsDead = _G.UnitIsDead
local UnitCanAttack = _G.UnitCanAttack
local math_floor = _G.math.floor
local setmetatable = _G.setmetatable
local type = _G.type
local pairs = _G.pairs
local next = _G.next

local frame
if oldLib then
	frame = oldLib.frame
	frame:UnregisterAllEvents()
	frame:SetScript("OnEvent", nil)
	frame:SetScript("OnUpdate", nil)
	_G.LibClassicMobHealthGuid10DB = nil
end
frame = oldLib and oldLib.frame or _G.CreateFrame("Frame", MAJOR_VERSION .. "_Frame")

frame:RegisterEvent("UNIT_COMBAT")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("UNIT_HEALTH")
frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(self, event, ...)
	self[event](lib, ...)
end)

local data = oldLib and oldLib.data
if not data then
	data = {
		npc = LibClassicMobHealthGuid_CreatureHealthCache,
		pc = {},
		pet = {}
	}
end
lib.data = data -- stores the maximum health of mobs that will actually be shown to the user
data.revision = MINOR_VERSION

local accumulatedHP = {} -- Keeps Damage-taken data for mobs that we've actually poked during this session
local accumulatedPercent = {} -- Keeps Percentage-taken data for mobs that we've actually poked during this session
local calculationUnneeded = {} -- Keeps a list of things that don't need calculation (e.g. Beast Lore'd mobs)

local currentAccumulatedHP = nil
local currentAccumulatedPercent = nil
local currentName = nil
local currentLevel = nil
local recentDamage = nil
local lastPercent = nil

_G.hash_SlashCmdList["LIBCLASSICMOBHEALTHONE"] = nil
_G.SlashCmdList["LIBCLASSICMOBHEALTHONE"] = nil

function frame:ADDON_LOADED(name)
	if name == ADDONNAME then
		-- if we're not an embedded library, then use a saved variable
		frame:RegisterEvent("PLAYER_LOGOUT")
		if type(_G.LibClassicMobHealthGuid10DB) == "table" then
			data = _G.LibClassicMobHealthGuid10DB
			lib.data = data
		else
			_G.LibClassicMobHealthGuid10DB = data
		end

		local options = _G.LibClassicMobHealthGuid10Opt
		if type(options) ~= "table" then
			options = {
				save = true,
				prune = 0,
			}
			_G.LibClassicMobHealthGuid10Opt = options
		end

		_G.hash_SlashCmdList["LIBCLASSICMOBHEALTHONE"] = nil
		_G.SlashCmdList["LIBCLASSICMOBHEALTHONE"] = function(text)
			text = text:lower():trim()
			local alpha, bravo = text:match("^([^%s]+)%s+(.*)$")
			if not alpha then
				alpha = text
			end
			if alpha == "" or alpha == "help" then
				DEFAULT_CHAT_FRAME:AddMessage(("|cffffff7f%s|r"):format(MAJOR_VERSION))
				DEFAULT_CHAT_FRAME:AddMessage((" - |cffffff7f%s|r [%s] - %s"):format("save", options.save and "|cff00ff00On|r" or "|cffff0000Off|r", "whether to save mob health data"))
				DEFAULT_CHAT_FRAME:AddMessage((" - |cffffff7f%s|r [%s] - %s"):format("prune", options.prune == 0 and "|cffff0000Off|r" or "|cff00ff00" .. options.prune .. "|r", "how many data points until data is pruned, 0 means no pruning"))
			elseif alpha == "save" then
				options.save = not options.save
				DEFAULT_CHAT_FRAME:AddMessage(("|cffffff7f%s|r"):format(MAJOR_VERSION))
				DEFAULT_CHAT_FRAME:AddMessage((" - |cffffff7f%s|r [%s]"):format("save", options.save and "|cff00ff00On|r" or "|cffff0000Off|r"))
			elseif alpha == "prune" then
				local bravo_num = tonumber(bravo)
				if bravo_num then
					options.prune = math.floor(bravo_num+0.5)
					DEFAULT_CHAT_FRAME:AddMessage(("|cffffff7f%s|r"):format(MAJOR_VERSION))
					DEFAULT_CHAT_FRAME:AddMessage((" - |cffffff7f%s|r [%s]"):format("prune", options.prune == 0 and "|cffff0000Off|r" or "|cff00ff00" .. options.prune .. "|r"))
				else
					DEFAULT_CHAT_FRAME:AddMessage(("|cffffff7f%s|r - prune must take a number, %q is not a number"):format(MAJOR_VERSION, bravo or ""))
				end
			else
				DEFAULT_CHAT_FRAME:AddMessage(("|cffffff7f%s|r - unknown command %q"):format(MAJOR_VERSION, alpha))
			end
		end

		_G.SLASH_LIBCLASSICMOBHEALTHONE1 = "/lcmh1"
		_G.SLASH_LIBCLASSICMOBHEALTHONE2 = "/lcmh"
		_G.SLASH_LIBCLASSICMOBHEALTHONE3 = "/libclassicmobhealth1"
		_G.SLASH_LIBCLASSICMOBHEALTHONE4 = "/libclassicmobhealth"
		
		function frame:PLAYER_LOGOUT()
			if not options.save then
				_G.LibClassicMobHealthGuid10DB = nil
				return
			end

			local count = 0
			for _, kind in ipairs({ "npc", "pc", "pet" }) do
				if data[kind] then
					for _ in pairs(data[kind]) do
						count = count + 1
					end
				end
			end
			local prune = options.prune
			if not prune or prune <= 0 then
				return
			end
			if count <= prune then
				return
			end

			-- let's try to only have one mob-level, don't have duplicates for each level, since they can be estimated, and for players/pets, this will get rid of old data
			local mobs = {}
			-- data["pc"] = {}
			-- data["pet"] = {}
			-- for _, kind in ipairs({ "npc", "pc", "pet" }) do
			if next(data["npc"]) ~= nil then
				for guidlevel, health in pairs(data["npc"]) do
					local guid, level = strsplit("-", guidlevel);
					if mobs[guid] then
						if tonumber(level) < tonumber(mobs[guid]) then
							data["npc"][guid.."-"..mobs[guid]] = nil
							mobs[guid] = level
						else
							data["npc"][guidlevel] = nil
						end
						count = count - 1
					else
						mobs[guid] = level
					end
				end
			end
			-- end
			mobs = nil
			if count <= prune then
				return
			end

			-- still too much data, let's get rid of low-level non-bosses until we're at `prune`
			local playerLevel = UnitLevel("player")
			local maxLevel = playerLevel*3/4
			if maxLevel > playerLevel - 5 then
				maxLevel = playerLevel - 5
			end
			for _, kind in ipairs({ "npc", "pet", "pc" }) do
				for guidlevel in pairs(data[kind]) do
					local guid, level = strsplit("-", guidlevel);
					if tonumber(level) < maxLevel then
						data[kind][guidlevel] = nil
						count = count - 1
					end
					if count <= prune then
						return
					end
				end
			end
		end
	end
	frame:UnregisterEvent("ADDON_LOADED")
	frame.ADDON_LOADED = nil
end

function frame:UNIT_COMBAT(unit, _, _, damage)
	if unit ~= "target" or not currentAccumulatedHP then
		return
	end
	recentDamage = recentDamage + damage
end

local function PLAYER_UNIT_CHANGED(unit)
	if not UnitCanAttack("player", unit) or UnitIsDead(unit) or UnitIsFriend("player", unit) then
		-- don't store data on friends and dead men tell no tales
		currentAccumulatedHP = nil
		currentAccumulatedPercent = nil
		return
	end

	-- local name, server = UnitName(unit)
	-- if server and server ~= "" then
	-- 	name = name .. "-" .. server
	-- end
	local isPlayer = UnitIsPlayer(unit)
	local isPet = UnitPlayerControlled(unit) and not isPlayer -- some owners name their pets the same name as other people, because they're think they're funny. They're not.
	-- currentName = name
	local level = UnitLevel(unit)
	currentLevel = level
	
	recentDamage = 0
	lastPercent = UnitHealth(unit)
	
	if not isPlayer and not isPet then
		local guid = GetUnitCreatureKey(unit)

		currentAccumulatedHP = accumulatedHP[guid.."-"..level]
		currentAccumulatedPercent = accumulatedPercent[guid.."-"..level]

		-- Mob
		if not currentAccumulatedHP then
			local saved = data.npc[guid.."-"..level]
			if saved then
				-- We claim that the saved value is worth 100%
				accumulatedHP[guid.."-"..level] = saved
				accumulatedPercent[guid.."-"..level] = 100
			else
				-- Nothing previously known. Start fresh.
				accumulatedHP[guid.."-"..level] = 0
				accumulatedPercent[guid.."-"..level] = 0
			end
			currentAccumulatedHP = accumulatedHP[guid.."-"..level]
			currentAccumulatedPercent = accumulatedPercent[guid.."-"..level]
		end
		
		if currentAccumulatedPercent > 200 then
			-- keep accumulated percentage below 200% in case we hit mobs with different hp
			currentAccumulatedHP = currentAccumulatedHP / currentAccumulatedPercent * 100
			currentAccumulatedPercent = 100
		end
	else
		local name, server = UnitName(unit)
		if server and server ~= "" then
			name = name .. "-" .. server
		end

		currentAccumulatedHP = accumulatedHP[name]
		currentAccumulatedPercent = accumulatedPercent[name]

		-- Player health can change a lot. Different gear, buffs, etc.. we only assume that we've seen 10% knocked off players previously
		if not currentAccumulatedHP then
			local saved = data[isPet and "pet" or "pc"][name]
			if saved then
				-- We claim that the saved value is worth 10%
				accumulatedHP[name] = saved/10
				accumulatedPercent[name] = 10
			else
				accumulatedHP[name] = 0
				accumulatedPercent[name] = 0
			end
			currentAccumulatedHP = accumulatedHP[name]
			currentAccumulatedPercent = accumulatedPercent[name]
		end

		if currentAccumulatedPercent > 10 then
			currentAccumulatedHP = currentAccumulatedHP / currentAccumulatedPercent * 10
			currentAccumulatedPercent = 10
		end
	end
end

function frame:PLAYER_TARGET_CHANGED()
	PLAYER_UNIT_CHANGED("target")
end

function frame:UNIT_HEALTH(unit)
	if unit ~= "target" or not currentAccumulatedHP then
		return
	end

	local name, server = UnitName(unit)
	if server and server ~= "" then
		name = name .. "-" .. server
	end
	local guid = name
	local current = UnitHealth(unit)
	local max = UnitHealthMax(unit)
	-- local name = currentName
	local level = currentLevel
	local kind
	if UnitIsPlayer(unit) then
		kind = "pc"
		tag = name
	elseif UnitPlayerControlled(unit) then
		kind = "pet"
		tag = name
	else
		kind = "npc"
		-- guid = GetUnitCreatureKey(unit)
		tag = GetUnitCreatureKey(unit).."-"..level
	end

	if calculationUnneeded[tag] then
		return
	elseif current == 0 then
		-- possibly targetting a dead person
	elseif max ~= 100 then
		-- beast lore, don't need to calculate.
		if kind == "npc" then
			data.npc[tag] = max
		else
			data[kind][tag] = max
		end
		calculationUnneeded[tag] = true
	elseif current > lastPercent or lastPercent > 100 then
		-- it healed, so let's reset our ephemeral calculations
		lastPercent = current
		recentDamage = 0
	elseif recentDamage > 0 then
		if current ~= lastPercent then
			currentAccumulatedHP = currentAccumulatedHP + recentDamage
			currentAccumulatedPercent = currentAccumulatedPercent + (lastPercent - current)
			recentDamage = 0
			lastPercent = current
			
			if currentAccumulatedPercent >= 10 then
				local num = currentAccumulatedHP / currentAccumulatedPercent * 100
				if kind == "npc" then
					data.npc[tag] = num
				else
					data[kind][tag] = num
				end
			end
		end
	end
end

local function guessAtMaxHealth(guid, level, kind, known)
	-- if we have data on a mob of the same name but a different level, check within two levels and guess from there.
	if not kind then
		return guessAtMaxHealth(guid, level, "npc") or guessAtMaxHealth(guid, level, "pc") or guessAtMaxHealth(guid, level, "pet")
	end

	if kind == "npc" and level == -1 then
		local l = 70
		while l > 0 do
			if data["npc"][guid.."-"..l] then
				level = l
				break;
			end
			l = l - 1
		end
	end

	if kind == "npc" then
		local value = data[kind][guid.."-"..level]
		if value then
			return value
		end
		if level > 1 then
			value = data[kind][guid.."-"..level-1]
			if value then
				return value * level/(level - 1)
			end
		end
		value = data[kind][guid.."-"..level+1]
		if value then
			return value * level/(level + 1)
		end
		if level > 2 then
			value = data[kind][guid.."-"..level-2]
			if value then
				return value * level/(level - 2)
			end
		end
		value = data[kind][guid.."-"..level+2]
		if value then
			return value * level/(level + 2)
		end
	else
		local value = data[kind][guid]
		if value then
			return value
		end
	end
	return nil
end

--[[
Arguments:
	string - name of the unit in question in the form of "Someguy", "Someguy-Some Realm"
	number - level of the unit in question
	string - kind of unit, can be "npc", "pc", "pet"
	[optional] boolean - whether not to guess at the mob's health based on other levels of said mob.
Returns:
	number or nil - the maximum health of the unit or nil if unknown
Example:
	local hp = LibStub("LibClassicMobHealth-1.0"):GetMaxHP("Young Wolf", 2)
]]
-- function lib:GetMaxHP(name, level, kind, known)
-- 	local value = guessAtMaxHealth(name, level, kind, known)
-- 	if value then
-- 		return math_floor(value + 0.5)
-- 	else
-- 		return nil
-- 	end
-- end

--[[
Arguments:
	string - a unit ID
Returns:
	number, boolean - the maximum health of the unit, whether the health is known or not
Example:
	local maxhp, found = LibStub("LibClassicMobHealth-1.0"):GetUnitMaxHP("target")
]]
function lib:GetUnitMaxHP(unit)
	local max = UnitHealthMax(unit)
	if max ~= 100 then
		return max, true
	end

	local name, server = UnitName(unit)
	if server and server ~= "" then
		name = name .. "-" .. server
	end
	local guid = name
	local level = UnitLevel(unit)
	
	local kind
	if UnitIsPlayer(unit) then
		kind = "pc"
	elseif UnitPlayerControlled(unit) then
		kind = "pet"
	else
		kind = "npc"
		guid = GetUnitCreatureKey(unit)
	end

	if guid then
		local value = guessAtMaxHealth(guid, level, kind)
		if value then
			return math_floor(value + 0.5), true
		else
			return max, false
		end
	else
		return max, false
	end
end

--[[
Arguments:
	string - a unit ID
Returns:
	number, boolean - the current health of the unit, whether the health is known or not
Example:
	local curhp, found = LibStub("LibClassicMobHealth-1.0"):GetUnitCurrentHP("target")
]]
function lib:GetUnitCurrentHP(unit)
	local current, max = UnitHealth(unit), UnitHealthMax(unit)
	if max ~= 100 then
		return current, true
	end

	local name, server = UnitName(unit)
	if server and server ~= "" then
		name = name .. "-" .. server
	end
	local guid = name
	local level = UnitLevel(unit)
	
	local kind
	if UnitIsPlayer(unit) then
		kind = "pc"
	elseif UnitPlayerControlled(unit) then
		kind = "pet"
	else
		kind = "npc"
		guid = GetUnitCreatureKey(unit)
	end
	if guid then
		local value = guessAtMaxHealth(guid, level, kind)
		if value then
			return math_floor(current/max * value + 0.5), true
		else
			return current, false
		end
	else
		return current, false
	end
end

--[[
Arguments:
	string - a unit ID
Returns:
	number, number, boolean - the current health of the unit, the maximum health of the unit, whether the health is known or not
Example:
	local curhp, maxhp, found = LibStub("LibClassicMobHealth-1.0"):GetUnitHealth("target")
]]
function lib:GetUnitHealth(unit)
	local current, max = UnitHealth(unit), UnitHealthMax(unit)
	if max ~= 100 then
		return current, max, true
	end

	local name, server = UnitName(unit)
	if server and server ~= "" then
		name = name .. "-" .. server
	end
	local guid = name
	local level = UnitLevel(unit)

	local kind
	if UnitIsPlayer(unit) then
		kind = "pc"
	elseif UnitPlayerControlled(unit) then
		kind = "pet"
	else
		kind = "npc"
		guid = GetUnitCreatureKey(unit)
	end

	if guid then
		local value = guessAtMaxHealth(guid, level, kind)
		if value then
			return math_floor(current/max * value + 0.5), math_floor(value + 0.5), true
		else
			return current, max, false
		end
	else
		return current, max, false
	end
end