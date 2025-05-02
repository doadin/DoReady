-- Define the addon namespace
local addonName, addon = ...

local AceGUI = LibStub("AceGUI-3.0")
local MainFrame = AceGUI:Create("Frame")
MainFrame:SetTitle("DoReady")
MainFrame:SetStatusText("DoReady" .. " " .. C_AddOns.GetAddOnMetadata("DoReady", "Version") )
MainFrame:EnableResize(false)
MainFrame:SetWidth(400)
MainFrame:SetHeight(300)
MainFrame:Hide()

local instanceTypeSelector

local function GetTalents(_,event, one, two)
    MainFrame:ReleaseChildren()

    if (event == "READY_CHECK" or event == "DoReady_MINIMAPBUTTON") or MainFrame:IsShown() then
        local playerClass, englishClass, classIndex = UnitClass("player")
        local ClassIndexTable = {
           [0] = "None",
           [1] = "Warrior",
           [2] = "Paladin",
           [3] = "Hunter",
           [4] = "Rogue",
           [5] = "Priest",
           [6] = "DeathKnight",
           [7] = "Shaman",
           [8] = "Mage",
           [9] = "Warlock",
           [10] = "Monk",
           [11] = "Druid",
           [12] = "DemonHunter",
        }

        local CurrentClass = ClassIndexTable[classIndex]
        local id, SpecName = GetSpecializationInfo(GetSpecialization())
        --local CurrentAffixes = C_MythicPlus.GetCurrentAffixes()
        --local AffixOnename, AffixOnedescription, AffixOnefiledataid = C_ChallengeMode.GetAffixInfo(CurrentAffixes[1].id)

        -- Talent Code Starts Here

        local TalentHeading = AceGUI:Create("InlineGroup")
        TalentHeading:SetLayout("Flow")
        TalentHeading:SetWidth(300)
        TalentHeading:SetTitle("Talent Loadouts")
        MainFrame:AddChild(TalentHeading)
        TalentHeading:ReleaseChildren()

        -- Create a button
        local btn1 = AceGUI:Create("Button")
        btn1:SetWidth(220)
        btn1:SetText("Check for Talent Update for Current Zone")
        btn1:SetCallback("OnClick", function()
            addon.RecheckTalentUpdate()
            --local editbox = AceGUI:Create("MultiLineEditBox")
            --editbox:SetText(ArmsWarriorString)
            --editbox:SetLabel('Arms Warrior Import String')
            --editbox:SetMaxLetters(0)
            --editbox:SetWidth(300)
            --editbox:DisableButton(true)
            --local f = AceGUI:Create("Frame")
            --f:SetWidth(350)
            --f:SetHeight(200)
            --f:AddChild(editbox)
        end)
        -- Add the button to the container
        TalentHeading:AddChild(btn1)


        -- Enchant Code Starts Here
        local _, _, _, _, _, primaryStat = GetSpecializationInfo(GetSpecialization())
        local MissingEnchantsText = ""
        local numenchantsmissing = 0
        -- primaryStat = 1=Strength, 2=Agility, 4=Intellect
        --ChestslotId = GetInventorySlotInfo("ChestSlot")
        local Chestlink = GetInventoryItemLink("player", INVSLOT_CHEST)
        if type(Chestlink) == "string" then
            local _, itemId, ChestenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Chestlink)
            if ChestenchantId == "" then MissingEnchantsText = " Chest " numenchantsmissing = numenchantsmissing + 1 end
        end

        local Cloaklink = GetInventoryItemLink("player", INVSLOT_BACK)
        if type(Cloaklink) == "string" then
            local _, itemId, CloakenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Cloaklink)
            if CloakenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Cloak " numenchantsmissing = numenchantsmissing + 1  end
        end

        local FingerOnelink = GetInventoryItemLink("player", INVSLOT_FINGER1)
        if type(FingerOnelink) == "string" then
            local _, itemId, FingerOneenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerOnelink)
            if FingerOneenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Finger 1 " numenchantsmissing = numenchantsmissing + 1  end
        end

        local FingerTwolink = GetInventoryItemLink("player", INVSLOT_FINGER2)
        if type(FingerTwolink) == "string" then
            local _, itemId, FingerTwoenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerTwolink)
            if FingerTwoenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Finger 2 " numenchantsmissing = numenchantsmissing + 1  end
        end

        local MainHandlink = GetInventoryItemLink("player", INVSLOT_MAINHAND)
        if type(MainHandlink) == "string" then
            local _, itemId, MainHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", MainHandlink)
            if MainHandenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Main Hand " numenchantsmissing = numenchantsmissing + 1  end
        end

        local currentSpec = GetSpecialization()
        local _, currentSpecName = GetSpecializationInfo(currentSpec)
        local OffHandlink = GetInventoryItemLink("player", INVSLOT_OFFHAND)
        if type(OffHandlink) == "string" and ((CurrentClass == "Warrior" and currentSpecName == "Fury") or (CurrentClass == "DeathKnight" and currentSpecName == "Frost") or (CurrentClass == "DemonHunter") or (CurrentClass == "Rogue")) then
            local _, itemId, OffHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", OffHandlink)
            if OffHandenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Off Hand " numenchantsmissing = numenchantsmissing + 1  end
        end

        if primaryStat and primaryStat == 2 then
            local Feetlink = GetInventoryItemLink("player", INVSLOT_FEET)
            if type(Feetlink) == "string" then
                local _, itemId, FeetenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Feetlink)
                if FeetenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Feet " numenchantsmissing = numenchantsmissing + 1  end
            end
        end

        if primaryStat and primaryStat == 1 then
            local Handslink = GetInventoryItemLink("player", INVSLOT_HAND)
            if type(Handslink) == "string" then
                local _, itemId, HandsenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Handslink)
                if HandsenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Hands " numenchantsmissing = numenchantsmissing + 1  end
            end
        end

        if primaryStat and primaryStat == 4 then
            local Wristlink = GetInventoryItemLink("player", INVSLOT_WRIST)
            if type(Wristlink) == "string" then
                local _, itemId, WristenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Wristlink)
                if WristenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Wrist " numenchantsmissing = numenchantsmissing + 1  end
            end
        end
        --EnchantHeading:ReleaseChildren()
        if MissingEnchantsText ~= "" then
            local EnchantHeading = AceGUI:Create("InlineGroup")
            EnchantHeading:SetLayout("Flow")
            EnchantHeading:SetWidth(tonumber(string.len("MissingEnchantsText")*12))
            EnchantHeading:SetTitle("Missing Enchants")
            MainFrame:AddChild(EnchantHeading)
            EnchantHeading:ReleaseChildren()

            local MissingEnchantsTextLable = AceGUI:Create("Label")
            MissingEnchantsTextLable:SetText("You are missing enchants in the following slots:" .. MissingEnchantsText)
            EnchantHeading:AddChild(MissingEnchantsTextLable)
            EnchantHeading:DoLayout()
        end

        MainFrame:DoLayout()

        --if event == "READY_CHECK" then
        --    if MainFrame:IsShown() then
        --        --MainFrame:Hide()
        --    else
        --        MainFrame:Show()
        --    end
        --end
    end
end


local eventframe = CreateFrame("Frame")
eventframe:RegisterEvent("READY_CHECK")
eventframe:RegisterEvent("PLAYER_ENTERING_WORLD")
eventframe:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
eventframe:RegisterEvent("PLAYER_TALENT_UPDATE")
eventframe:RegisterEvent("PLAYER_PVP_TALENT_UPDATE")
eventframe:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
eventframe:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
eventframe:SetScript("OnEvent", GetTalents)

local addon = LibStub("AceAddon-3.0"):NewAddon("DoReady", "AceConsole-3.0")
local DoReadyLDB = LibStub("LibDataBroker-1.1"):NewDataObject("DoReadyLDB", {
type = "launcher",
text = "DoReady",
icon = "Interface\\RaidFrame\\ReadyCheck-Ready",
OnTooltipShow = function(tooltip)
    tooltip:SetText("DoReady")
    tooltip:AddLine("Left Click To Show Your Character Info", 1, 1, 1)
    tooltip:Show()
end,
OnClick = function(clickedframe, button)
                if button == "LeftButton" then
                    local alt_key = IsAltKeyDown()
                    local shift_key = IsShiftKeyDown()
                    local control_key = IsControlKeyDown()
                    if shift_key then
                    elseif alt_key then
                    elseif control_key then
                    else
                        GetTalents(_,"DoReady_MINIMAPBUTTON")
                        if MainFrame:IsShown() then
                            MainFrame:Hide()
                        else
                            MainFrame:Show()
                        end
                    end
                end
                if button == "RightButton" then
                end
          end,
    }
)
local LibDBIcon = LibStub("LibDBIcon-1.0")

function addon:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("DoReadyDB", { profile = { minimap = { hide = false, }, }, })
    LibDBIcon:Register("DoReadyIcon", DoReadyLDB, self.db.profile.minimap)
    self:RegisterChatCommand("DoReady", "OpenUI")
end

function addon:OpenUI(one, two, three, four)
    if one == "toggle minimap" then
        self.db.profile.minimap.hide = not self.db.profile.minimap.hide
        if self.db.profile.minimap.hide then
            LibDBIcon:Hide("DoReadyIcon")
        else
            LibDBIcon:Show("DoReadyIcon")
        end
    end
    if one == "" then
        GetTalents(_,"DoReady_MINIMAPBUTTON")
        if MainFrame:IsShown() then
            MainFrame:Hide()
        else
            MainFrame:Show()
        end
    end
end