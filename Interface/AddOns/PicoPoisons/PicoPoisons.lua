local function PicoPoisons_BuffFrame_Enchant_OnUpdate(elapsed)
    -- original functionality
    
    local hasMainHandEnchant, mainHandExpiration, mainHandCharges, mainHandEnchantID, hasOffHandEnchant, offHandExpiration, offHandCharges, offHandEnchantId = GetWeaponEnchantInfo()
    local buttonIndex = 1
    if hasOffHandEnchant then
        local chargesLabel = getglobal("TempEnchant" .. buttonIndex .. "ChargesLabel")
        chargesLabel:SetText(offHandCharges)
        if offHandCharges and offHandCharges > 0 then
            chargesLabel:Show()
        else
            chargesLabel:Hide()
        end
        buttonIndex = buttonIndex + 1
    end
    if hasMainHandEnchant then
        local chargesLabel = getglobal("TempEnchant" .. buttonIndex .. "ChargesLabel")
        chargesLabel:SetText(mainHandCharges)
        if mainHandCharges and mainHandCharges > 0 then
            chargesLabel:Show()
        else
            chargesLabel:Hide()
        end
        buttonIndex = buttonIndex + 1
    end
end
local function PicoPoisons_Init()
    -- modify enchant icons to add a counter label
    for i = 1, 2 do
        local enchantButton = getglobal("TempEnchant" .. i)
        enchantButton:SetScript("OnUpdate", PicoPoisons_BuffFrame_Enchant_OnUpdate)
        local label = enchantButton:CreateFontString(enchantButton:GetName() .. "ChargesLabel", "ARTWORK", "NumberFontNormal")
        label:SetPoint("BOTTOMLEFT", enchantButton, "BOTTOMLEFT", 2, 2)
        label:Hide()  
    end
end

PicoPoisons_Init()
