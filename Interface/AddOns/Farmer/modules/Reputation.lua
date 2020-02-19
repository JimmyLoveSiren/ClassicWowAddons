local addonName, addon = ...;

local MESSAGE_COLORS = {0, 0.35, 1};
local reputationCache;

local function getRepInfo ()
  local info = {};
  local expandedIndices = {};
  local numFactions = GetNumFactions();
  local i = 1;

  --[[ we have to use a while loop, because a for loop would end when reaching
       the last loop, even when numFactions increases in that loop --]]
  while (i <= numFactions) do
    local factionInfo = {GetFactionInfo(i)};

    local faction = factionInfo[14];
    local reputation = factionInfo[6];
    local isHeader = factionInfo[9];
    local isCollapsed = factionInfo[10];
    local hasRep = factionInfo[11];

    if (isHeader and isCollapsed) then
      expandedIndices[#expandedIndices + 1] = i;
      ExpandFactionHeader(i);
      numFactions = GetNumFactions();
    end

    if (hasRep or not isHeader) then
      info[faction] = reputation;
    end

    i = i + 1;
  end

  --[[ the headers have to be collapse from bottom to top, because collapsing
       top ones first would change the index of the lower ones  --]]
  for i = #expandedIndices, 1, -1 do
    CollapseFactionHeader(expandedIndices[i]);
  end

  return info;
end

local function checkReputationChanges ()
  local repInfo = getRepInfo();

  if (farmerOptions.reputation == false or
      addon.Print.checkHideOptions() == false) then
    reputationCache = repInfo;
    return;
  end

  for faction, reputation in pairs(repInfo) do
    local threshold = farmerOptions.reputationThreshold;
    local cachedReputation = reputationCache[faction] or 0;
    local repChange = reputation - cachedReputation;

    if (abs(repChange) > threshold) then
      if (repChange > 0) then
        repChange = '+' .. repChange;
      end

      --[[ could have stored faction name when generating faction info, but we
           can afford getting the name now for saving the memory ]]
      local message = GetFactionInfoByID(faction) .. ' ' .. repChange;

      addon.Print.printMessage(message, MESSAGE_COLORS);
    end
  end

  reputationCache = repInfo;
end

addon:on('PLAYER_LOGIN', function ()
  reputationCache = getRepInfo();
end);

addon:on('CHAT_MSG_COMBAT_FACTION_CHANGE', function ()
  if (reputationCache == nil) then
    return;
  end

  checkReputationChanges();
end);
