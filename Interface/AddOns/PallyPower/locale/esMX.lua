local L = LibStub("AceLocale-3.0"):NewLocale("PallyPower", "esMX", false, false)
if not L then return end
--[[Translation missing --]]
L["AURA"] = "Aura Button"
--[[Translation missing --]]
L["AURA_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Aura Button or select the Aura you want to track."
--[[Translation missing --]]
L["AURABTN"] = "Aura Button"
--[[Translation missing --]]
L["AURABTN_DESC"] = "[Enable/Disable] The Aura Button"
--[[Translation missing --]]
L["AURATRACKER"] = "Aura Tracker"
--[[Translation missing --]]
L["AURATRACKER_DESC"] = "Select the Aura you want to track"
--[[Translation missing --]]
L["AUTO"] = "Auto Buff Button"
--[[Translation missing --]]
L["AUTO_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Auto Buff Button or [|cffffd200Enable|r/|cffffd200Disable|r] Wait for Players."
--[[Translation missing --]]
L["AUTOASSIGN"] = "Auto-Assign"
--[[Translation missing --]]
L["AUTOASSIGN_DESC"] = [=[Auto-Assign all Blessings based on
the number of available Paladins
and their available Blessings.

|cffffffff[Shift-Left-Click]|r Use Battleground
assignment template instead of Raid
assignement template.]=]
--[[Translation missing --]]
L["AUTOBTN"] = "Auto Buff Button"
--[[Translation missing --]]
L["AUTOBTN_DESC"] = "[Enable/Disable] The Auto Buff Button"
--[[Translation missing --]]
L["AUTOKEY1"] = "Auto Normal Blessing Key"
--[[Translation missing --]]
L["AUTOKEY1_DESC"] = "Key Binding for automated buffing of normal blessings."
--[[Translation missing --]]
L["AUTOKEY2"] = "Auto Greater Blessing Key"
--[[Translation missing --]]
L["AUTOKEY2_DESC"] = "Key Binding for automated buffing of greater blessings."
--[[Translation missing --]]
L["BRPT"] = "Blessings Report"
--[[Translation missing --]]
L["BRPT_DESC"] = [=[Report all Blessing 
assignments to the 
Raid or Party channel.]=]
L["BSC"] = "Escala de Buffs"
L["BSC_DESC"] = "Fijar Escala de la Barra de Buff"
--[[Translation missing --]]
L["BUTTONS"] = "Buttons"
--[[Translation missing --]]
L["BUTTONS_DESC"] = "Change the button settings"
--[[Translation missing --]]
L["CLASSBTN"] = "Class Buttons"
--[[Translation missing --]]
L["CLASSBTN_DESC"] = "If this option is disabled it will also disable the Player Buttons and you will only be able to buff using the Auto Buff button."
--[[Translation missing --]]
L["CPBTNS"] = "Class & Player Buttons"
--[[Translation missing --]]
L["CPBTNS_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Player(s) or Class Buttons."
--[[Translation missing --]]
L["DISPEDGES"] = "Borders"
--[[Translation missing --]]
L["DISPEDGES_DESC"] = "Change the Button Borders"
--[[Translation missing --]]
L["DRAG"] = "Drag Handle Button"
--[[Translation missing --]]
L["DRAG_DESC"] = "[|cffffd200Enable|r/|cffffd200Disable|r] The Drag Handle Button."
--[[Translation missing --]]
L["DRAGHANDLE"] = [=[|cffffffff[Left-Click]|r |cffff0000Lock|r/|cff00ff00Unlock|r PallyPower 
|cffffffff[Left-Click-Hold]|r Move PallyPower 
|cffffffff[Right-Click]|r Open Blessing Assignments 
|cffffffff[Shift-Right-Click]|r Open Options]=]
--[[Translation missing --]]
L["DRAGHANDLE_ENABLED"] = "Drag Handle"
--[[Translation missing --]]
L["DRAGHANDLE_ENABLED_DESC"] = "[Enable/Disable] The Drag Handle"
--[[Translation missing --]]
L["FREEASSIGN"] = "Free Assignment"
--[[Translation missing --]]
L["FREEASSIGN_DESC"] = [=[Allow others to change your 
blessings without being Party 
Leader / Raid Assistant.]=]
--[[Translation missing --]]
L["Fully Buffed"] = "Fully Buffed"
--[[Translation missing --]]
L["HorLeftDown"] = "Horizontal Left | Down"
--[[Translation missing --]]
L["HorLeftUp"] = "Horizontal Left | Up"
--[[Translation missing --]]
L["HorRightDown"] = "Horizontal Right | Down"
--[[Translation missing --]]
L["HorRightUp"] = "Horizontal Right | Up"
--[[Translation missing --]]
L["LAYOUT"] = "Buff Button | Player Button Layout"
--[[Translation missing --]]
L["LAYOUT_DESC"] = [=[Vertical [Left/Right] 
Horizontal [Up/Down]]=]
--[[Translation missing --]]
L["MAINASSISTANT"] = "Auto-Buff Main Assistant"
--[[Translation missing --]]
L["MAINASSISTANT_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Assistant|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Assistant|r role with a Greater Blessing of Salvation."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW"] = "Override Warriors..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
--[[Translation missing --]]
L["MAINROLES"] = "Main Tank / Main Assist Roles"
--[[Translation missing --]]
L["MAINROLES_DESC"] = [=[These options can be used to automatically assign alternate Normal Blessings for any Greater Blessing assigned to Warriors, Druids or Paladins |cffff0000only|r. 

Normally the Main Tank and the Main Assist roles have been used to identify Main Tanks and Off-Tanks (Main Assist) however, some guilds assign the Main Tank role to both Main Tanks and Off-Tanks and assign the Main Assist role to Healers. 

By having a separate setting for both roles it will allow Paladin Class Leaders or Raid Leaders to remove, as an example, Greater Blessing of Salvation from Tanking classes or if Druid or Paladin Healers are marked with the Main Assist role they could be setup to get Normal Blessing of Wisdom vs Greater Blessing of Might which would allow assigning Greater Blessing of Might for DPS spec'd Druids and Paladins and Normal Blessing of Wisdom to Healing spec'd Druids and Paladins. 

|cffffff00Note: When there are 5 or more Paladins in a Raid (enough to assign all the Greater Blessings), these settings will automatically be disabled. Tanking Classes will have to manually switch off Blessing of Salvation.|r
]=]
--[[Translation missing --]]
L["MAINTANK"] = "Auto-Buff Main Tank"
--[[Translation missing --]]
L["MAINTANK_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Tank|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Tank|r role with a Greater Blessing of Salvation."
--[[Translation missing --]]
L["MAINTANKGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINTANKGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKGBUFFW"] = "Override Warriors..."
--[[Translation missing --]]
L["MAINTANKGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
--[[Translation missing --]]
L["MAINTANKNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINTANKNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKNBUFFW"] = "...with Normal..."
--[[Translation missing --]]
L["MAINTANKNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
--[[Translation missing --]]
L["None"] = "None"
--[[Translation missing --]]
L["None Buffed"] = "None Buffed"
--[[Translation missing --]]
L["OPTIONS"] = "Options"
--[[Translation missing --]]
L["OPTIONS_DESC"] = [=[Opens the PallyPower 
addon options panel.]=]
--[[Translation missing --]]
L["Partially Buffed"] = "Partially Buffed"
--[[Translation missing --]]
L["PLAYERBTNS"] = "Player Buttons"
--[[Translation missing --]]
L["PLAYERBTNS_DESC"] = "If this option is disabled then you will no longer see the pop out buttons showing individual players and you will not be able to reapply Normal Blessings while in combat."
--[[Translation missing --]]
L["PP_CLEAR"] = "Clear"
--[[Translation missing --]]
L["PP_CLEAR_DESC"] = [=[Clears all Blessing 
assignments for Self, 
Party, and Raid Paladins.]=]
--[[Translation missing --]]
L["PP_COLOR"] = "Change the status colors of the buff buttons"
--[[Translation missing --]]
L["PP_LOOKS"] = "Change the way PallyPower looks"
--[[Translation missing --]]
L["PP_NAME"] = "  PallyPower Classic"
--[[Translation missing --]]
L["PP_RAS1"] = "--- Paladin assignments ---"
--[[Translation missing --]]
L["PP_RAS2"] = "--- End of assignments ---"
--[[Translation missing --]]
L["PP_RAS3"] = "WARNING: There are more than 5 Paladins in raid."
--[[Translation missing --]]
L["PP_RAS4"] = "Tanks, manually switch off Blessing of Salvation!"
--[[Translation missing --]]
L["PP_REFRESH"] = "Refresh"
--[[Translation missing --]]
L["PP_REFRESH_DESC"] = [=[Refreshes all Blessing 
assignments, Talents, and 
Symbol of Kings among Self, 
Party, and Raid Paladins.]=]
L["PP_RESET"] = "Reposicionar Marcos"
--[[Translation missing --]]
L["PP_SHOW"] = "When to show PallyPower"
--[[Translation missing --]]
L["RAID"] = "Raid"
--[[Translation missing --]]
L["RAID_DESC"] = "Raid only options"
--[[Translation missing --]]
L["REPORTCHANNEL"] = "Blessings Report Channel"
--[[Translation missing --]]
L["REPORTCHANNEL_DESC"] = [=[Set the desired chennel to broadcast the Bliessings Report to:

|cffffd200[None]|r Selects channel based on group makeup. (Party/Raid)

|cffffd200[Channel List]|r An auto populated channel list based on channels the player has joined. Default channels such as Trade, General, etc. are automatically filtered from the list.

|cffffff00Note: If you change your Channel Order then you will need to reload your UI and verify that it is broadcasting to the correct channel.|r]=]
--[[Translation missing --]]
L["RESET"] = "Reset Frames"
L["RESET_DESC"] = "Reposicionar todos los marcos PallyPower al centro"
--[[Translation missing --]]
L["RESIZEGRIP"] = [=[Left-Click-Hold to resize 
Right-Click resets default size]=]
--[[Translation missing --]]
L["RFM"] = "Righteous Fury"
--[[Translation missing --]]
L["RFM_DESC"] = "[Enable/Disable] Righteous Fury"
L["SEAL"] = "Sello"
L["SEAL_DESC"] = "Sello"
--[[Translation missing --]]
L["SEALBTN"] = "Seal Button"
--[[Translation missing --]]
L["SEALBTN_DESC"] = "[Enable/Disable] The Aura Button"
--[[Translation missing --]]
L["SEALTRACKER"] = "Seal Tracker"
--[[Translation missing --]]
L["SEALTRACKER_DESC"] = "Select the Seal you want to track"
--[[Translation missing --]]
L["SETTINGS"] = "Settings"
--[[Translation missing --]]
L["SETTINGS_DESC"] = "Change global settings"
--[[Translation missing --]]
L["SETTINGSBUFF"] = "What to buff with PallyPower"
--[[Translation missing --]]
L["SHOWGLOBAL"] = "Show Globally"
--[[Translation missing --]]
L["SHOWGLOBAL_DESC"] = "[Show/Hide] PallyPower"
L["SHOWPARTY"] = "Mostrar en Party (Grupo)"
L["SHOWPARTY_DESC"] = "Mostrar/Ocultar Barra de Buff en Party (Grupo)"
--[[Translation missing --]]
L["SHOWPETS"] = "Show Pets"
--[[Translation missing --]]
L["SHOWPETS_DESC"] = [=[If you enable this option pets will appear under their own class.

|cffffff00Note: Due to the way Greater Blessings work and the way that pets are classified, Pets will need to be buffed separately. Additionally, Warlock Imps will be hidden automatically unless Phase Shift is off.|r]=]
L["SHOWSOLO"] = "Mostrar mientras solo"
L["SHOWSOLO_DESC"] = "Mostrar/Ocultar Barra de Buff mientras Solo"
--[[Translation missing --]]
L["SHOWTIPS"] = "Show Tooltips"
--[[Translation missing --]]
L["SHOWTIPS_DESC"] = "[Show/Hide] The PallyPower Tooltips"
L["SKIN"] = "Diseño"
L["SKIN_DESC"] = "Aplicar un fondo personalizado a botones de buff"
--[[Translation missing --]]
L["SMARTBUFF"] = "Smart Buffs"
--[[Translation missing --]]
L["SMARTBUFF_DESC"] = "If you enable this option you will not be allowed to assign Blessing of Wisdom to Warriors or Rogues and Blessing of Might to Mages, Warlocks and Hunters."
--[[Translation missing --]]
L["VerDownLeft"] = "Vertical Down | Left"
--[[Translation missing --]]
L["VerDownRight"] = "Vertical Down | Right"
--[[Translation missing --]]
L["VerUpLeft"] = "Vertical Up | Left"
--[[Translation missing --]]
L["VerUpRight"] = "Vertical Up | Right"
--[[Translation missing --]]
L["WAIT"] = "Wait for Players"
--[[Translation missing --]]
L["WAIT_DESC"] = "If this option is enabled then the Auto Buff Button will not auto buff a class with a greater blessing or a player with a normal blessing if they are dead, offline or not in range."
 
