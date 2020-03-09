local L = PA_LOCALIZATION
-----------------------------
-- Bunch of functions inc! --
-----------------------------
function PA_ButtonControl(ButtonName,state,storedValueName)
	if(ButtonName == "Master") then
		if(state == "Enable") then
			PA_SavedSettings["MasterChecked"] = true
			MinimapButton:Enable()
			if(PA_SavedSettings["MinimapChecked"] and not(PA_Minimap==nil and PA_Minimap:IsShown())) then PA_Minimap:Show(); end
			HerbalismButton:Enable()
			ProspectingButton:Enable()
			OreButton:Enable()
			MiningButton:Enable()
			EnchantingButton:Enable()
			MaterialButton:Enable()
			if(PA_SavedSettings["HerbalismChecked"]) then
				HerbalismChatButton:Enable()
				HerbalismKey:Enable()
			end
			if(PA_SavedSettings["ProspectingChecked"]) then
				ProspectingChatButton:Enable()
				ProspectingKey:Enable()
			end
			if(PA_SavedSettings["OreChecked"]) then
				OreChatButton:Enable()
				OreKey:Enable()
			end
			if(PA_SavedSettings["MiningChecked"]) then
				MiningChatButton:Enable()
				MiningKey:Enable()
			end
			if(PA_SavedSettings["EnchantingChecked"]) then
				EnchantingChatButton:Enable()
				EnchantingKey:Enable()
			end
			if(PA_SavedSettings["MaterialChecked"]) then
				MaterialChatButton:Enable()
				MaterialKey:Enable()
			end
		end
		if(state == "Disable") then
			PA_SavedSettings["MasterChecked"] = false
			MinimapButton:Disable()
			if(PA_SavedSettings["MinimapChecked"] and PA_Minimap~=nil and PA_Minimap:IsShown()) then PA_Minimap:SetShown(false); end
			HerbalismButton:Disable()
			HerbalismChatButton:Disable()
			HerbalismKey:Disable()
			ProspectingButton:Disable()
			ProspectingChatButton:Disable()
			ProspectingKey:Disable()
			OreButton:Disable()
			OreChatButton:Disable()
			OreKey:Disable()
			MiningButton:Disable()
			MiningChatButton:Disable()
			MiningKey:Disable()
			EnchantingButton:Disable()
			EnchantingChatButton:Disable()
			EnchantingKey:Disable()
			MaterialButton:Disable()
			MaterialChatButton:Disable()
			MaterialKey:Disable()
		end
	else
		if(state == "Enable") then
			PA_SavedSettings[storedValueName] = true;
			if(button_table[ButtonName] ~= nil) then
				button_table[ButtonName][1]:Enable()
				button_table[ButtonName][2]:Enable()
			end
		end
		if(state == "Disable") then
			PA_SavedSettings[storedValueName] = false;
			if(button_table[ButtonName] ~= nil) then
				button_table[ButtonName][1]:Disable()
				button_table[ButtonName][2]:Disable()
			end
		end
	end
end
--------------------------
-- Button creator stuff --
--------------------------
local function createCheckButton(parent, x_loc, y_loc, IDname, displayname, description, storedValue)
	local checkbutton = CreateFrame("CheckButton", IDname.."CheckButton", parent);
	checkbutton:SetNormalTexture("Interface/Buttons/UI-CheckBox-Up")
	checkbutton:SetPushedTexture("Interface/Buttons/UI-CheckBox-Down")
	checkbutton:SetHighlightTexture("Interface/Buttons/UI-CheckBox-Highlight","ADD")
	checkbutton:SetCheckedTexture("Interface/Buttons/UI-CheckBox-Check")
	checkbutton:SetDisabledCheckedTexture("Interface/Buttons/UI-CheckBox-Check-Disabled")
	checkbutton:SetPoint("TOPLEFT", x_loc, y_loc);
	checkbutton:SetSize(32,32);
	PA_checkbuttonText = checkbutton:CreateFontString("PA_checkbuttonText", "ARTWORK","GameFontHighlight")
	PA_checkbuttonText:SetText(displayname);
	PA_checkbuttonText:SetPoint("LEFT", "$parent", "RIGHT", 0, 1)
	checkbutton:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		GameTooltip:SetText(displayname, nil, nil, nil, nil, 1);
		GameTooltip:AddLine(description, 1.0, 1.0, 1.0, 1.0);
		GameTooltip:Show();
	end)
	checkbutton:SetScript("OnLeave", function(self) GameTooltip:Hide() end)
	checkbutton:SetChecked(PA_SavedSettings[storedValue]);
	checkbutton:SetScript("OnClick", function(self)
		PA_SavedSettings[storedValue] = self:GetChecked();
		PA_ButtonControl(IDname,(self:GetChecked() and "Enable" or "Disable"), storedValue);
	end);
	return checkbutton;
end

----------------------------
-- FontText creator stuff --
----------------------------
local function createFonttext(parent, x_loc, y_loc, text, fonttemplate)
	local title = parent:CreateFontString(nil, "ARTWORK", fonttemplate);
	title:SetPoint("TOPLEFT", x_loc, y_loc);
	title:SetJustifyH("LEFT");
	title:SetText(text);
end

-------------------
-- Minimap stuff --
-------------------
local function moveButton(self)
	local centerX, centerY = Minimap:GetCenter()
	local x, y = GetCursorPosition()
	x, y = x / self:GetEffectiveScale() - centerX, y / self:GetEffectiveScale() - centerY
	centerX, centerY = math.abs(x), math.abs(y)
	centerX, centerY = (centerX / math.sqrt(centerX^2 + centerY^2)) * 80, (centerY / sqrt(centerX^2 + centerY^2)) * 80
	centerX = x < 0 and -centerX or centerX
	centerY = y < 0 and -centerY or centerY
	self:ClearAllPoints()
	self:SetPoint("CENTER", centerX, centerY)
	PA_SavedSettings["Minimap_PosX"] = centerX
	PA_SavedSettings["Minimap_PosY"] = centerY
end
local function PA_Minimap_Create()
	PA_Minimap = CreateFrame("Button", "Profession Assistance", Minimap)
	PA_Minimap:SetSize(31, 31)
	PA_Minimap:SetFrameStrata("MEDIUM")
	PA_Minimap:SetPoint("CENTER", PA_SavedSettings["Minimap_PosX"], PA_SavedSettings["Minimap_PosY"])
	PA_Minimap:SetMovable(true)
	PA_Minimap:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
	
	local overlay = PA_Minimap:CreateTexture(nil, "OVERLAY")
	overlay:SetSize(53, 53)
	overlay:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	overlay:SetPoint("TOPLEFT")
	
	local icon = PA_Minimap:CreateTexture(nil, "ARTWORK")
	icon:SetSize(18.5, 18.5)
	icon:SetTexture("Interface\\ICONS\\INV_Hammer_20")
	icon:SetPoint("TOPLEFT", 7, -5.5)
	
	PA_Minimap:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			icon:SetPoint("TOPLEFT", 7, -5.5)
			icon:SetSize(18,18)
			PA_Panel:Show();
		else
			if IsShiftKeyDown() then
				icon:SetPoint("TOPLEFT", 7, -5.5)
				icon:SetSize(18,18)
				self:SetScript("OnUpdate", moveButton)
			end
		end
	end)
	PA_Minimap:SetScript("OnMouseUp", function(self)
		self:SetScript("OnUpdate", nil)
		icon:SetSize(18.5,18.5)
		icon:SetPoint("TOPLEFT", 7, -5.5)
	end)
	
	PA_Minimap:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self,"ANCHOR_BOTTOMLEFT")
		GameTooltip:SetText("Profession Assistance", nil, nil, nil, 1, 1)
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine("|cff00ff00Left-click|r to open interface panel.", 1, 1, 1)
		GameTooltip:AddLine("|cff00ff00Shift+Right-hold|r to drag this icon.", 1, 1, 1)
		GameTooltip:Show()
	end)
	PA_Minimap:SetScript("OnLeave", function(self) GameTooltip:Hide() end)
	
	if(MinimapButton:IsEnabled() and MinimapButton:GetChecked()) then PA_Minimap:Show() else PA_Minimap:Hide() end
	MinimapButton:SetScript("OnClick", function(self)
		if(PA_Minimap:IsShown()) then PA_Minimap:SetShown(false) else PA_Minimap:Show() end
		PA_SavedSettings["MinimapChecked"] = self:GetChecked();
	end);
end

--------------------------
-- Interface AddOns tab --
--------------------------
local InterfaceFrame = CreateFrame("Frame")
InterfaceFrame:RegisterEvent("PLAYER_LOGIN");
InterfaceFrame:SetScript("OnEvent", function(self,event,...)
	if(type(PA_SavedSettings) ~= "table") then PA_SavedSettings = {} end
	
	-- Global tab
	if(PA_SavedSettings["MasterChecked"] == nil) then PA_SavedSettings["MasterChecked"] = true end
	
	if(PA_SavedSettings["MinimapChecked"] == nil) then PA_SavedSettings["MinimapChecked"] = true end
	if(PA_SavedSettings["Minimap_PosX"] == nil) then PA_SavedSettings["Minimap_PosX"] = -78.5 end
	if(PA_SavedSettings["Minimap_PosY"] == nil) then PA_SavedSettings["Minimap_PosY"] = -16 end
	
	-- Professions tab
	-- Herbalism
	if(PA_SavedSettings["HerbalismChecked"] == nil) then PA_SavedSettings["HerbalismChecked"] = true end
	if(PA_SavedSettings["HerbalismChatChecked"] == nil) then PA_SavedSettings["HerbalismChatChecked"] = true end
	if(PA_SavedSettings["HerbalismKeyChecked"] == nil) then PA_SavedSettings["HerbalismKeyChecked"] = true end
	if(PA_SavedSettings["HerbalismKey"] == nil) then PA_SavedSettings["HerbalismKey"] = false end
	
	-- Mining
	if(PA_SavedSettings["MiningChecked"] == nil) then PA_SavedSettings["MiningChecked"] = true end
	if(PA_SavedSettings["MiningChatChecked"] == nil) then PA_SavedSettings["MiningChatChecked"] = true end
	if(PA_SavedSettings["MiningKey"] == nil) then PA_SavedSettings["MiningKey"] = false end
	
	-- Prospecting
	if(PA_SavedSettings["ProspectingChecked"] == nil) then PA_SavedSettings["ProspectingChecked"] = true end
	if(PA_SavedSettings["ProspectingChatChecked"] == nil) then PA_SavedSettings["ProspectingChatChecked"] = true end
	if(PA_SavedSettings["ProspectingKey"] == nil) then PA_SavedSettings["ProspectingKey"] = false end
	
	if(PA_SavedSettings["OreChecked"] == nil) then PA_SavedSettings["OreChecked"] = true end
	if(PA_SavedSettings["OreChatChecked"] == nil) then PA_SavedSettings["OreChatChecked"] = true end
	if(PA_SavedSettings["OreKey"] == nil) then PA_SavedSettings["OreKey"] = false end
	
	-- Enchanting
	if(PA_SavedSettings["EnchantingChecked"] == nil) then PA_SavedSettings["EnchantingChecked"] = true end
	if(PA_SavedSettings["EnchantingChatChecked"] == nil) then PA_SavedSettings["EnchantingChatChecked"] = true end
	if(PA_SavedSettings["EnchantingKey"] == nil) then PA_SavedSettings["EnchantingKey"] = false end
	
	if(PA_SavedSettings["MaterialChecked"] == nil) then PA_SavedSettings["MaterialChecked"] = true end
	if(PA_SavedSettings["MaterialChatChecked"] == nil) then PA_SavedSettings["MaterialChatChecked"] = true end
	if(PA_SavedSettings["MaterialKey"] == nil) then PA_SavedSettings["MaterialKey"] = false end
	
	------------------
	-- Layout panel --
	------------------
	PA_Panel = CreateFrame( "Frame", "PA_Panel", UIParent);
	PA_Panel:SetBackdrop({
		bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
		edgeFile = "Interface/DialogFrame/UI-DialogBox-Border", tile = true, tileSize = 32, edgeSize = 32,
		insets = { left = 11, right = 11, top = 12, bottom = 10 }
	});
	
	PA_Panel:SetFrameStrata("MEDIUM");
	PA_Panel:SetPoint("CENTER",0,0);
	PA_Panel:SetSize(824,568);
	PA_Panel:SetClampedToScreen(true);
	PA_Panel:EnableMouse(true);
	tinsert(UISpecialFrames, PA_Panel:GetName()); -- Makes it able to close when ESC is pressed
	
	PA_Panel:CreateTexture("$parentHeader", "ARTWORK");
	PA_PanelHeader:SetTexture("Interface/DialogFrame/UI-DialogBox-Header");
	PA_PanelHeader:SetSize(300,68);
	PA_PanelHeader:SetPoint("TOP",0,12);
	PA_Panel:CreateFontString("$parentHeaderText","ARTWORK","GameFontNormal");
	PA_PanelHeaderText:SetPoint("TOP","$parentHeader","TOP",0,-14);
	PA_PanelHeaderText:SetText("Profession Assistance");
	
	PA_Panel_Button = CreateFrame("BUTTON", "$parent_Button", PA_Panel, "UIPanelButtonTemplate");
	PA_Panel_Button:SetPoint("BOTTOMRIGHT",-22,15);
	PA_Panel_Button:SetWidth(100);
	PA_Panel_Button:SetText("Close");
	PA_Panel_Button:SetScript("OnClick", function(self) PA_Panel:Hide(); end);
	
	--Hide it because we don't need to see it straight away!
	PA_Panel:Hide();
	
	-- Show the panel with slash command
	SLASH_PA1,SLASH_PA2,SLASH_PA3 = '/'..L["PA"],'/Profesion Assistance','/Profession_Assistance';
	function SlashCmdList.PA(msg, editbox) PA_Panel:Show(); end
	
	-----------------------
	-- Categories frames --
	-----------------------
	PA_Panel_Categories = CreateFrame( "Frame", "$parent_Categories", PA_Panel);
	PA_Panel_Categories:SetBackdrop({edgeFile = "Interface/Tooltips/UI-Tooltip-Border", tileSize = 16, edgeSize = 16,});
	PA_Panel_Categories:SetSize(780,489);
	PA_Panel_Categories:SetPoint("TOPLEFT",22,-40);
	
	-----------------
	-- create tabs --
	-----------------
	PA_Panel_Categories.selectedTab = 1;
	PA_Panel_Categories.subFrames = {};
	PA_Panel_Categories.name = PA_Panel_Categories:GetName();
	
	PA_Panel_Categories.showSubFrame = function(name)
		for index, value in pairs(PA_Panel_Categories.subFrames) do
			if("$parentTab"..index == "$parentTab"..PA_Panel_Categories.selectedTab) then
				_G[value]:Show();
			else _G[value]:Hide(); end
		end
	end

	local setPanel = function(panel,id)
		if(id) then PanelTemplates_SetTab(panel, id); end
		PanelTemplates_UpdateTabs(panel);
		panel.showSubFrame(panel.name.."Tab"..panel.selectedTab);
	end

	local createTab = function(parent, index, name)
		local tab = CreateFrame("Button", "$parentTab"..index, parent, "OptionsFrameTabButtonTemplate");
		tab.id = index;
		tab:SetWidth(50);
		if index == 1 then tab:SetPoint("TOPLEFT",5,24); else tab:SetPoint("LEFT", "$parentTab"..index-1, "RIGHT", -15, 0); end
		tab:HookScript("OnClick", function(self) setPanel(self:GetParent(), self.id); end);
		tab:SetText(string.sub(name,string.len(parent.name)+2));
		PanelTemplates_TabResize(tab);
	end
	
	--create subframes
	local createSubFrame = function(parent,name)
		local subframe = CreateFrame("Frame", "$parent_"..name, parent);
		subframe:SetAllPoints();
		tinsert(parent.subFrames,subframe:GetName());
	end
	
	-- createSubFrame(parent,name)
	createSubFrame(PA_Panel_Categories,L["Main"]);
	createSubFrame(PA_Panel_Categories,L["Global"]);
	createSubFrame(PA_Panel_Categories,L["Professions"]);
	PA_Panel_Categories.numTabs = #PA_Panel_Categories.subFrames;
	
	for i = 1, PA_Panel_Categories.numTabs do
		--createTab(Parent,Index,Name)
		createTab(PA_Panel_Categories,i,PA_Panel_Categories.subFrames[i]);
	end
	
	setPanel(PA_Panel_Categories);
	PA_Panel_Categories:HookScript("OnShow",setPanel);
	
	-- Main panel
	
	-- title
	--createFonttext(Parent, Positionx, Positiony, text, template)
	createFonttext(PA_Panel_Categories_Main, 15, -15, "Profession Assistance", "GameFontNormalLarge");
	
	local translatorNote = [[
|cffffcc00Special thanks to the following people for translating:|r
hideki66687653
laruskane
]]
	
	-- content
	createFonttext(PA_Panel_Categories_Main, 20, -40, "|cffffcc00Version|r     "..GetAddOnMetadata("Profession_Assistance_Classic","Version"), "GameFontHighlight");
	createFonttext(PA_Panel_Categories_Main, 20, -55, "|cffffcc00Notes|r       "..GetAddOnMetadata("Profession_Assistance_Classic","Notes"), "GameFontHighlight");
	createFonttext(PA_Panel_Categories_Main, 20, -85, "|cffffcc00Author|r      "..GetAddOnMetadata("Profession_Assistance_Classic","Author"), "GameFontHighlight");
	createFonttext(PA_Panel_Categories_Main, 20, -100, "|cffffcc00Credits|r     "..GetAddOnMetadata("Profession_Assistance_Classic","X-Credits"), "GameFontHighlight");
	createFonttext(PA_Panel_Categories_Main, 20, -115, translatorNote, "GameFontHighlight");
	
	-- Options panel
	
	-- title
	createFonttext(PA_Panel_Categories_Global, 15, -15, L["Options"], "GameFontNormalLarge");
	
	-- Settings panel
	
	-- title
	createFonttext(PA_Panel_Categories_Professions, 15, -15, L["Professions"], "GameFontNormalLarge");
	
	Frame_Profession = PA_Panel_Categories_Professions
	-- global
	createFonttext(PA_Panel_Categories_Global, 20, -60, "|cffffcc00"..L["Global"].."|r", "GameFontNormalLarge");
	-- createCheckButton(Parent, Positionx, positiony, label, description);
	MasterButton = createCheckButton(PA_Panel_Categories_Global, 15, -80, "PA_Master", L["Enable Master"], L["Master switch"], "MasterChecked");
	
	-- Minimap
	createFonttext(PA_Panel_Categories_Global, 20, -140, "|cffffcc00"..L["Minimap Button"].."|r", "GameFontNormalLarge");
	MinimapButton = createCheckButton(PA_Panel_Categories_Global, 15, -160, "PA_Minimap", L["Enable Minimap"], L["Toggle minimap button"], "MinimapChecked");
	
	-- Herbalism Locations
	createFonttext(PA_Panel_Categories_Professions, 20, -60, "|cffffcc00"..L["Herbalism Locations"].."|r", "GameFontNormalLarge")	;
	HerbalismButton = createCheckButton(Frame_Profession, 15, -80, "PA_Herbalism", L["Enable Herbalism"], L["Toggle herbalism locations on herbs"], "HerbalismChecked");
	
	HerbalismChatButton = createCheckButton(Frame_Profession, 255, -80, "PA_HerbalismChat", L["Enable chat"], L["Toggle chat herbalism locations on herbs"], "HerbalismChatChecked");
	
	createFonttext(Frame_Profession, 20, -115, L["Shown when"]..": ", "GameFontNormalSmall");
	HerbalismKey = createCheckButton(Frame_Profession, 15, -130, "PA_HerbalismKey", L["On Shift"], L["Hold Shift to show Herbalism locations"], "HerbalismKey")
	
	-- Mining Locations
	createFonttext(Frame_Profession, 20, -170, "|cffffcc00"..L["Mining Locations"].."|r", "GameFontNormalLarge");
	MiningButton = createCheckButton(Frame_Profession, 15, -190, "PA_Mining", L["Enable Mining"], L["Toggle mining locations on ores"], "MiningChecked");
	MiningChatButton = createCheckButton(Frame_Profession, 255, -190, "PA_MiningChat", L["Enable chat"], L["Toggle chat mining locations on ores"], "MiningChatChecked");
	
	createFonttext(Frame_Profession, 20, -225, L["Shown when"]..": ", "GameFontNormalSmall");
	MiningKey = createCheckButton(Frame_Profession, 15, -240, "PA_MiningKey", L["On Shift"], L["Hold Shift to show Mining locations"], "MiningKey")
	
	-- Prospecting
	createFonttext(Frame_Profession, 20, -280, "|cffffcc00"..L["Prospecting"].."|r", "GameFontNormalLarge");
	ProspectingButton = createCheckButton(Frame_Profession, 15, -300, "PA_Prospecting", L["Enable Prospecting"], L["Toggle prospecting information on ores"], "ProspectingChecked");
	ProspectingChatButton = createCheckButton(Frame_Profession, 255, -300, "PA_ProspectingChat", L["Enable chat"], L["Toggle chat information on ores"], "ProspectingChatChecked");
	
	createFonttext(Frame_Profession, 20, -335, L["Shown when"]..": ", "GameFontNormalSmall");
	ProspectingKey = createCheckButton(Frame_Profession, 15, -350, "PA_ProspectingKey", L["On Shift"], L["Hold Shift to show Prospecting information"], "ProspectingKey")
	
	OreButton = createCheckButton(Frame_Profession, 15, -390, "PA_Ore", L["Enable Ore"], L["Toggle ore information on gems"], "OreChecked");
	OreChatButton = createCheckButton(Frame_Profession, 255, -390, "PA_OreChat", L["Enable chat"], L["Toggle chat information on gems"], "OreChatChecked");
	
	createFonttext(Frame_Profession, 20, -425, L["Shown when"]..": ", "GameFontNormalSmall");
	OreKey = createCheckButton(Frame_Profession, 15, -440, "PA_OreKey", L["On Shift"], L["Hold Shift to show Ore information"], "OreKey")
	
	-- Enchanting
	createFonttext(Frame_Profession, 420, -60, "|cffffcc00"..L["Enchanting"].."|r", "GameFontNormalLarge");
	
	EnchantingButton = createCheckButton(Frame_Profession, 415, -80, "PA_Enchanting", L["Enable Enchanting"], L["Toggle Disenchanting information on gear"], "EnchantingChecked");
	EnchantingChatButton = createCheckButton(Frame_Profession, 655, -80, "PA_EnchantingChat", L["Enable chat"], L["Toggle chat information on gear"], "EnchantingChatChecked");
	
	createFonttext(Frame_Profession, 420, -115, L["Shown when"]..": ", "GameFontNormalSmall");
	EnchantingKey = createCheckButton(Frame_Profession, 415, -130, "PA_EnchantingKey", L["On Shift"], L["Hold Shift to show Disenchanting information"], "EnchantingKey")
	
	MaterialButton = createCheckButton(Frame_Profession, 415, -170, "PA_Material", L["Enable Materials"], L["Toggle gear source information on enchanting materials"], "MaterialChecked");
	MaterialChatButton = createCheckButton(Frame_Profession, 655, -170, "PA_MaterialChat", L["Enable chat"], L["Toggle chat information on enchanting materials"], "MaterialChatChecked");
	
	createFonttext(Frame_Profession, 420, -205, L["Shown when"]..": ", "GameFontNormalSmall");
	MaterialKey = createCheckButton(Frame_Profession, 415, -220, "PA_MaterialKey", L["On Shift"], L["Hold Shift to show Material information"], "MaterialKey")
	
	-- this makes it easier to control sub-buttons, i should've done this better from the start with parenting but eh.. It's an old project lol
	button_table = {
		["PA_Herbalism"] = {HerbalismChatButton, HerbalismKey},
		["PA_Mining"] = {MiningChatButton, MiningKey},
		["PA_Prospecting"] = {ProspectingChatButton, ProspectingKey},
		["PA_Ore"] = {OreChatButton, OreKey},
		["PA_Enchanting"] = {EnchantingChatButton, EnchantingKey},
		["PA_Material"] = {MaterialChatButton, MaterialKey}
	}
	
	-- Minimap button
	PA_Minimap_Create()
	
	---------------------------
	-- Changing settings part --
	---------------------------
	-- Master button
	--PA_ButtonControl(ButtonName,state, settingsValue)
	-- \/ is to check upon start up
	PA_ButtonControl("Master",PA_SavedSettings["MasterChecked"] and "Enable" or "Disable", _)
	
	for i=1,2 do
		-- Herbalism stuff
		button_table["PA_Herbalism"][i]:SetEnabled((HerbalismButton:GetChecked() and HerbalismButton:IsEnabled()))
		
		-- Mining stuff
		button_table["PA_Mining"][i]:SetEnabled((MiningButton:GetChecked() and MiningButton:IsEnabled()))
		
		-- Prospecting stuff
		button_table["PA_Prospecting"][i]:SetEnabled((ProspectingButton:GetChecked() and ProspectingButton:IsEnabled()))
		
		button_table["PA_Ore"][i]:SetEnabled((OreButton:GetChecked() and OreButton:IsEnabled()))
		
		-- Enchanting stuff
		button_table["PA_Enchanting"][i]:SetEnabled((EnchantingButton:GetChecked() and EnchantingButton:IsEnabled()))
		
		button_table["PA_Material"][i]:SetEnabled((MaterialButton:GetChecked() and MaterialButton:IsEnabled()))
	end
end);