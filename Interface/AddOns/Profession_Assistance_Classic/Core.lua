local L = PA_LOCALIZATION
---------------
-- Functions --
---------------
local function HerbalismDraw(key, itemID, self)
	if((HerbalismButton:GetChecked() and HerbalismButton:IsEnabled() and key)) then
		for HerbID, HerbInfo in pairs(T_Herbalism) do
			if(itemID == HerbID) then
				local r,g,b = 0,1,0.5
				self:AddLine(" ")
				self:AddLine(L["Herbalism info"]..":  "..HerbInfo[1][1],r,g,b)
				self:AddLine(L["Drop rarity"]..":  "..HerbInfo[1][2],r,g,b)
				
				for Key,Value in ipairs(HerbInfo) do
					for i=1,#Value,3 do
						if not(Key==1) then
							if (string.find(Value[i],"\124cf") == nil) then
								if(i==1) then self:AddLine(L["Location(s) to be found at"]..":",r,g,b) end
								if(Value[i+2]) then
									self:AddLine(Value[i].." - "..Value[i+1].." - "..Value[i+2],1,1,1)
								elseif(Value[i+1]) then
									self:AddLine(Value[i].." - "..Value[i+1],1,1,1)
								else
									self:AddLine(Value[i],1,1,1)
								end
							else
								if(i==1) then self:AddLine(L["Found at herb nodes"]..":",r,g,b) end
								if(Value[i+2]) then
									self:AddLine(Value[i].." - "..Value[i+1].." - "..Value[i+2],r,g,b)
								elseif(Value[i+1]) then
									self:AddLine(Value[i].." - "..Value[i+1],r,g,b)
								else
									self:AddLine(Value[i],r,g,b)
								end
							end
						end
					end
				end
			end
		end
	end
end
local function ProspectingDraw(key, itemID, self)
	if((ProspectingButton:GetChecked() and ProspectingButton:IsEnabled() and key)) then
		for OreID, OreResult in pairs(T_Ores) do
			if(itemID == OreID) then
				local r,g,b = 1,0.5,0
				self:AddLine(" ")
				self:AddLine(L["Prospecting result"]..":  "..OreResult[1][1],r,g,b)
				
				for _,Value in ipairs(OreResult) do
					for i=1,#Value-1,1 do
						self:AddLine(T_Pros[Value[i]]..Value[#Value],r,g,b)
					end
				end
			end
		end
	end
end
local function OreDraw(key, itemID, self)
	if((OreButton:GetChecked() and OreButton:IsEnabled() and key)) then
		for GemID, GemResult in pairs(T_Gems) do
			if(itemID == GemID) then
				local r,g,b = 1,0.5,0
				self:AddLine(" ")
				self:AddLine(L["Prospected from"]..":  "..GemResult[1][1],r,g,b)
				
				for _,Value in ipairs(GemResult) do
					for i=1,#Value-1,1 do
						self:AddLine(T_Ores2[Value[i]]..Value[#Value],r,g,b)
					end
				end
			end
		end
	end
end
local function MiningDraw(key, itemID, self)
	if((MiningButton:GetChecked() and MiningButton:IsEnabled() and key)) then
		for MiningID, MiningInfo in pairs(T_Mining) do
			if(itemID == MiningID) then
				local r,g,b = 1,0.5,0
				self:AddLine(" ")
				self:AddLine(L["Mining info"]..":  "..MiningInfo[1][1],r,g,b)
				self:AddLine(L["Drop rarity"]..":  "..MiningInfo[1][2],r,g,b)
				
				for Key,Value in ipairs(MiningInfo) do
					for i=1,#Value,3 do
						if not(Key==1) then
							if (string.find(Value[i],"\124cf") == nil) then
								if(i==1) then self:AddLine(L["Location(s) to be found at"]..":",r,g,b) end
								if(Value[i+2]) then
									self:AddLine((Value[i].." - "..Value[i+1].." - "..Value[i+2]),1,1,1)
								elseif(Value[i+1]) then
									self:AddLine((Value[i].." - "..Value[i+1]),1,1,1)
								else
									self:AddLine((Value[i]),1,1,1)
								end
							else
								if(i==1) then self:AddLine(L["Found at Mining nodes"]..":",r,g,b) end
								if(Value[i+2]) then
									self:AddLine(Value[i].." - "..Value[i+1].." - "..Value[i+2],r,g,b)
								elseif(Value[i+1]) then
									self:AddLine(Value[i].." - "..Value[i+1],r,g,b)
								else
									self:AddLine(Value[i],r,g,b)
								end
							end
						end
					end
				end
			end
		end
	end
end
local function EnchantingDraw(key, name, quality, itemLevel, itemType, itemEquipLoc, itemID, self)
	if((PA_SavedSettings["LightmodeChecked"]) or (EnchantingButton:GetChecked() and EnchantingButton:IsEnabled() and key)) then
		if(not(itemEquipLoc=='' or itemEquipLoc==_G["INVTYPE_BODY"] or itemEquipLoc==_G["INVTYPE_RELIC"] or
		itemEquipLoc==_G["INVTYPE_TABARD"] or itemEquipLoc==_G["INVTYPE_BAG"] or itemEquipLoc==_G["INVTYPE_QUIVER"])) then
			for _,ItemLevel in ipairs(T_iLvl) do
				for num=ItemLevel[1], ItemLevel[2],1 do
					if(itemLevel==num) then
						local r,g,b = 1,0,0.9
						if(quality==2) then
							if(itemType==_G["ARMOR"]) then
								self:AddLine(" ")
								self:AddLine("Disenchanting result:  "..ItemLevel[3][1][1],r,g,b)
								for Key,Result in ipairs(ItemLevel[3]) do
									if not(Key==1) then
										self:AddLine(T_Dis_Result[Result[1]]..Result[2],r,g,b)
									end
								end
							end
							if(itemType==_G["ENCHSLOT_WEAPON"]) then
								self:AddLine(" ")
								self:AddLine("Disenchanting result:  "..ItemLevel[3][1][1],r,g,b)
								for Key,Result in ipairs(ItemLevel[4]) do
									self:AddLine(T_Dis_Result[Result[1]]..Result[2],r,g,b)
								end
							end
						end
					end
				end
				if(type(ItemLevel[5]) == "number") then
					for num=ItemLevel[5], ItemLevel[6],1 do
						if(itemLevel==num) then
							local r,g,b = 1,0,0.9
							if(quality==3 and (itemType==_G["ARMOR"] or itemType==_G["ENCHSLOT_WEAPON"])) then
								self:AddLine(" ")
								self:AddLine("Disenchanting result:  "..ItemLevel[7][1][1],r,g,b)
								for Key,Result in ipairs(ItemLevel[7]) do
									if not(Key==1) then
										if not(string.find(name,"Contender's")) then
											self:AddLine(T_Dis_Result[Result[1]]..Result[2],r,g,b)
										else
											self:AddLine(T_Dis_Result[Result[4]]..Result[5],r,g,b)
										end
									end
								end	
							end
						end
					end
				end
				if(type(ItemLevel[8]) == "number") then
					for num=ItemLevel[8], ItemLevel[9],1 do
						if(itemLevel==num) then
							local r,g,b = 1,0,0.9
							if(quality==4 and (itemType==_G["ARMOR"] or itemType==_G["ENCHSLOT_WEAPON"])) then
								self:AddLine(" ")
								self:AddLine("Disenchanting result:  "..ItemLevel[10][1][1],r,g,b)
								for Key,Result in ipairs(ItemLevel[10]) do
									if not(Key==1) then
										self:AddLine(T_Dis_Result[Result[1]]..Result[2],r,g,b)
									end
								end	
							end
						end
					end
				end
			end
		end
	end
end
local function MaterialDraw(key, itemID, self)

	if((MaterialButton:GetChecked() and MaterialButton:IsEnabled() and key)) then
		for DisID,DisResult in pairs(T_Dis) do
			if(itemID == DisID) then
				local r,g,b = 1,0,0.9
				self:AddLine(" ")
				self:AddLine(L["Disenchanted from"]..":  "..DisResult[1],r,g,b)
				
				self:AddLine(DisResult[2],r,g,b)
				self:AddLine(L["Gear quality"]..": "..DisResult[3],r,g,b)
				self:AddLine(L["Chance from armor"]..":"..DisResult[4].."|r",r,g,b)
				self:AddLine(L["Chance from weapon"]..":"..DisResult[5].."|r",r,g,b)
			end
		end
	end
end
-------------
-- Tooltip --
-------------
local TooltipItem = function(self, ...)
	local name, link = self:GetItem();
	local nameText = _G["GameTooltipTextLeft1"]:GetText()
	local databaseLink = "";
	
	if(link or nameText) then
		databaseLink = T_Pros[nameText] or T_Ores2[nameText] or T_Dis_Result[nameText] or ""
		local _, itemLink, quality, itemLevel, _, itemType, _, _, itemEquipLoc = GetItemInfo((databaseLink == "") and link or databaseLink)
		
		if(link or databaseLink) then
			local _, itemID = strsplit(":",(databaseLink == "") and link or databaseLink)
				  --_, _, _, _, _, _, _, _, _, _,instanceDifficultyID:numBonusIDs:bonusID1:bonusID2
			----------------
			-- Herbs part --
			----------------
			HerbalismDraw((not PA_SavedSettings["HerbalismKey"] and true or IsShiftKeyDown()), itemID, self)
			
			----------------------
			-- Prospecting part --
			----------------------
			ProspectingDraw((not PA_SavedSettings["ProspectingKey"] and true or IsShiftKeyDown()), itemID, self)
			OreDraw((not PA_SavedSettings["OreKey"] and true or IsShiftKeyDown()), itemID, self)
			MiningDraw((not PA_SavedSettings["MiningKey"] and true or IsShiftKeyDown()), itemID, self)
			
			---------------------
			-- Enchanting part --
			---------------------
			EnchantingDraw((not PA_SavedSettings["EnchantingKey"] and true or IsShiftKeyDown()), name, quality, itemLevel, itemType, itemEquipLoc, itemID, self)
			MaterialDraw((not PA_SavedSettings["MaterialKey"] and true or IsShiftKeyDown()), itemID, self)
		end
	end
end

local ChatTooltipItem = function(self, ...)
	local name, link = self:GetItem();
	if(link) then
		local _, _, quality, itemLevel, _, itemType, _, _, itemEquipLoc = GetItemInfo(link)
		local _, itemID = strsplit(":", link)
		
		----------------
		-- Herbs part --
		----------------
		if(PA_SavedSettings["HerbalismChatChecked"]) then HerbalismDraw(true, itemID, self) end
		
		----------------------
		-- Prospecting part --
		----------------------
		if(PA_SavedSettings["ProspectingChatChecked"]) then ProspectingDraw(true, itemID, self) end
		if(PA_SavedSettings["OreChatChecked"]) then OreDraw(true, itemID, self) end
		if(PA_SavedSettings["MiningChatChecked"]) then MiningDraw(true, itemID, self) end
		
		---------------------
		-- Enchanting part --
		---------------------
		if(PA_SavedSettings["EnchantingChatChecked"]) then EnchantingDraw(true, name, quality, itemLevel, itemType, itemEquipLoc, itemID, self) end
		if(PA_SavedSettings["MaterialChatChecked"]) then MaterialDraw(true, itemID, self) end
	end
end

for _, obj in next, {
	GameTooltip,
	ShoppingTooltip1,
	ShoppingTooltip2,
	ShoppingTooltip3
} do
	obj:HookScript("OnTooltipSetItem", TooltipItem)
end

ItemRefTooltip:HookScript("OnTooltipSetItem", ChatTooltipItem)