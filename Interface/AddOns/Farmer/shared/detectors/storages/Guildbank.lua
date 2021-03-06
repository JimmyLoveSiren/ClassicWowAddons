local addonName, addon = ...;

local Items = addon.Items;
local addItem = addon.StorageUtils.addItem;

local GetItemInfoInstant = _G.GetItemInfoInstant;
local GetGuildBankItemInfo = _G.GetGuildBankItemInfo;
local GetGuildBankItemLink = _G.GetGuildBankItemLink;
local MAX_GUILDBANK_TABS = _G.MAX_GUILDBANK_TABS;

local storage;
local currentTab;
local isOpen = false;

local function readGuildBankSlot (tabIndex)
  --[[ This variable only becomes available after the guild bank has been
       opened. If the guild bank frame is replaced by an addon, it will stay
       unavailable and we use the hardcoded value from Blizzard's code.
       Again, I have no clue why did not put a global constant in the code for
       this.]]
  local MAX_GUILDBANK_SLOTS_PER_TAB = _G.MAX_GUILDBANK_SLOTS_PER_TAB or 98;
  local tabContent = {};

  for slotIndex = 1, MAX_GUILDBANK_SLOTS_PER_TAB, 1 do
    local link = GetGuildBankItemLink(tabIndex, slotIndex);

    if (link ~= nil) then
      local id = GetItemInfoInstant(link);
      local info = {GetGuildBankItemInfo(tabIndex, slotIndex)};
      local count = info[2];

      addItem(tabContent, id, count, link);
    end
  end

  return tabContent;
end

local function readCurrentTab ()
  local tabIndex = GetCurrentGuildBankTab();

  storage = readGuildBankSlot(tabIndex);
end

addon:on('GUILDBANKFRAME_OPENED', function ()
  isOpen = true;
end);

addon:on('GUILDBANKBAGSLOTS_CHANGED', function ()
  if (isOpen == false) then return end

  local tabIndex = GetCurrentGuildBankTab();

  storage = readGuildBankSlot(tabIndex);

  --[[ Guild bank content was not updated, but tab was switched. ]]
  if (tabIndex ~= currentTab) then
    currentTab = tabIndex;
    Items:updateCurrentInventory();
  end
end);

addon:on('GUILDBANKFRAME_CLOSED', function ()
  isOpen = false;
  storage = nil;
  currentTab = nil;
end);

Items:addStorage(function ()
  return {storage};
end);
