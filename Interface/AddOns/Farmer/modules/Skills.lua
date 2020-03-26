local addonName, addon = ...;

local MESSAGE_COLORS = {0.9, 0.3, 0};

addon:listen('SKILL_CHANGED', function (name, change, rank, maxRank)
  local text = addon:stringJoin({'(', rank, '/', maxRank, ')'}, '');

    addon.Print.printMessage(addon:stringJoin({name, text}, ' '), MESSAGE_COLORS);
end);
