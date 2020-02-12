local function formatTime(time)
    if time < 60 then
        return "|c00FFFFFF" .. floor(mod(time, 60)) .. "s|r"
    elseif time < 600 then
        local s = floor(mod(time, 60))
        if s < 10 then
            s = "0" .. s
        end
        return "|c00FFCC00" .. floor(time / 60) .. ":" .. s .. "|r"
    else
        return "|c0000FF00" .. ceil(time / 60) .. "m|r"
    end
end

local function onAuraDurationUpdate(aura, time)   
    local duration = getglobal(aura:GetName().."Duration")
    
    if (time) then
        duration:SetText(formatTime(time))
        duration:Show()
    else
        duration:Hide()
    end
end

local function onAuraUpdate(auraSlot, index, filter)
    local auraName = auraSlot..index
    local aura = getglobal(auraName)
    local auraDuration = getglobal(auraName.."Duration")
    
    if not auraDuration then
        return
    end

    local name, _, _, _, _, expirationTime = UnitAura("player", index, filter)
    
    if (name and expirationTime > 0) then
        auraDuration:Show()
    else
        auraDuration:Hide()
    end
end

-- Add or remove aura event
hooksecurefunc("AuraButton_Update", onAuraUpdate)

-- Aura duration update event
hooksecurefunc("AuraButton_UpdateDuration", onAuraDurationUpdate)
