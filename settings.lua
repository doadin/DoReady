local DefaultSettings = {
    automaticMode = false, -- Default value for automatic mode
}

-- Table to store saved settings
SavedSettings = SavedSettings or {}

-- Create a frame for the settings panel
local settingsFrame = CreateFrame("Frame", "DoReadySettingsFrame", InterfaceOptionsFramePanelContainer)
settingsFrame.name = "DoReady" -- Name of the addon in the Interface Options
--InterfaceOptions_AddCategory(settingsFrame)

-- Title for the settings panel
local title = settingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
title:SetPoint("TOPLEFT", 16, -16)
title:SetText("DoReady Settings")

-- Checkbox for "Automatic Mode Active"
local automaticModeCheckbox = CreateFrame("CheckButton", "DoReadyAutomaticModeCheckbox", settingsFrame, "InterfaceOptionsCheckButtonTemplate")
automaticModeCheckbox:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
automaticModeCheckbox.Text:SetText("Automatic Mode Active")
automaticModeCheckbox:SetChecked(SavedSettings.automaticMode ~= nil and SavedSettings.automaticMode or DefaultSettings.automaticMode) -- Use saved value or default
automaticModeCheckbox:SetScript("OnClick", function(self)
    local isChecked = self:GetChecked()
    SavedSettings.automaticMode = isChecked -- Save the setting to the SavedSettings table
    --print("Automatic Mode Active:", isChecked)
end)

local category, layout = Settings.RegisterCanvasLayoutCategory(settingsFrame, settingsFrame.name, settingsFrame.name)
category.ID = settingsFrame.name
Settings.RegisterAddOnCategory(category)