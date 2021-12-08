local AceGUI = LibStub("AceGUI-3.0")
local MainFrame = AceGUI:Create("Frame")
MainFrame:SetTitle("AmIReady")
MainFrame:SetStatusText("AmIReady" .. " " .. GetAddOnMetadata("AmIReady", "Version") )
MainFrame:EnableResize(false)
MainFrame:SetWidth(850)
MainFrame:SetHeight(150)
MainFrame:Hide()

local function GetTalents(_,event, one, two)
    MainFrame:ReleaseChildren()

    if (event == "READY_CHECK" or event == "AmIReady_MINIMAPBUTTON") or MainFrame:IsShown() then
        --print("we are doing things")
        --TalentHeading:ReleaseChildren()
        --EnchantHeading:ReleaseChildren()
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

        local name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
        --if instanceType ~= "raid" or instanceType ~= "party" then
        --    if event ~= "AmIReady_MINIMAPBUTTON" then
        --        return
        --    end
        --end

        if instanceType == "none" or instanceType == "party" then
            instanceType = "MythicPlus"
        elseif instanceType == "raid" then
            instanceType = "Raid"
        end
        --TODO: Fix Raid
        instanceType = "MythicPlus"
        local CurrentClass = ClassIndexTable[classIndex]
        local id, SpecName = GetSpecializationInfo(GetSpecialization())
        local CurrentAffixes = C_MythicPlus.GetCurrentAffixes()
        local AffixOnename, AffixOnedescription, AffixOnefiledataid = C_ChallengeMode.GetAffixInfo(CurrentAffixes[1].id)

        local NeedTalentsWidget = false
        for talentTier = 1, MAX_TALENT_TIERS do
            local available, selected = GetTalentTierInfo(talentTier, 1)
            local id, SpecName = GetSpecializationInfo(GetSpecialization())
            local activeSpec = GetSpecialization()
            local talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura = GetTalentInfoBySpecialization(activeSpec, talentTier, selected)
            local ProperSpell = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier])
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier] == spellID then
            else
               --print("AmIReady We Sugest Using: ", ProperSpell)
               NeedTalentsWidget = true
            end
         end

        local numtalentschanged = 0
        if NeedTalentsWidget then
            local TalentHeading = AceGUI:Create("InlineGroup")
            TalentHeading:SetLayout("Flow")
            TalentHeading:SetWidth(800)
            TalentHeading:SetTitle("Suggested Talents")
            MainFrame:AddChild(TalentHeading)
            TalentHeading:ReleaseChildren()

            local TalentOne
            local TalentTwo
            local TalentThree
            local TalentFour
            local TalentFive
            local TalentSix
            local TalentSeven

            local available, selected, activeSpec, spellID, _
            available, selected = GetTalentTierInfo(1, 1)
            activeSpec = GetSpecialization()

            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 1, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][1] == spellID then
                --TalentOne:SetImage()
                --TalentOne:SetImageSize(0,0)
                --TalentOne:SetLabel("")
            else
                TalentOne = AceGUI:Create("Icon")
                --TalentOne:SetImageSize(1,1)
                TalentHeading:AddChild(TalentOne)
                local TalentOnename, _, TalentOnefiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][1])
                local TalentOnedescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][1])
                TalentOne:SetImage(TalentOnefiledataid)
                TalentOne:SetImageSize(25,25)
                TalentOne:SetLabel("Level 15: " .. TalentOnename)
                TalentOne:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentOne.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentOnedescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentOne:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(2, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 2, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][2] == spellID then
                --TalentTwo:SetImage()
                --TalentTwo:SetImageSize(0,0)
                --TalentTwo:SetLabel("")
            else
                TalentTwo = AceGUI:Create("Icon")
                --TalentTwo:SetImageSize(1,1)
                TalentHeading:AddChild(TalentTwo)
                local TalentTwoname, _, TalentTwofiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][2])
                local TalentTwodescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][2])
                TalentTwo:SetImage(TalentTwofiledataid)
                TalentTwo:SetImageSize(25,25)
                TalentTwo:SetLabel("Level 25: " .. TalentTwoname)
                TalentTwo:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentTwo.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentTwodescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentTwo:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(3, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 3, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][3] == spellID then
                --TalentThree:SetImage()
                --TalentThree:SetImageSize(0,0)
                --TalentThree:SetLabel("")
            else
                TalentThree = AceGUI:Create("Icon")
                --TalentThree:SetImageSize(1,1)
                TalentHeading:AddChild(TalentThree)
                local TalentThreename, _, TalentThreefiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][3])
                local TalentThreedescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][3])
                TalentThree:SetImage(TalentThreefiledataid)
                TalentThree:SetImageSize(25,25)
                TalentThree:SetLabel("Level 30: " .. TalentThreename)
                TalentThree:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentThree.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentThreedescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentThree:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(4, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 4, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][4] == spellID then
                --TalentFour:SetImage()
                --TalentFour:SetImageSize(0,0)
                --TalentFour:SetLabel("")
            else
                TalentFour = AceGUI:Create("Icon")
                --TalentFour:SetImageSize(1,1)
                TalentHeading:AddChild(TalentFour)
                local TalentFourname, _, TalentFourfiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][4])
                local TalentFourdescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][4])
                TalentFour:SetImage(TalentFourfiledataid)
                TalentFour:SetImageSize(25,25)
                TalentFour:SetLabel("Level 35: " .. TalentFourname)
                TalentFour.tooltipText = TalentFourdescription
                TalentFour:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentFour.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentFourdescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentFour:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(5, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 5, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][5] == spellID then
                --TalentFive:SetImage()
                --TalentFive:SetImageSize(0,0)
                --TalentFive:SetLabel("")
            else
                TalentFive = AceGUI:Create("Icon")
                --TalentFive:SetImageSize(1,1)
                TalentHeading:AddChild(TalentFive)    
                local TalentFivename, _, TalentFivefiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][5])
                local TalentFivedescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][5])
                TalentFive:SetImage(TalentFivefiledataid)
                TalentFive:SetImageSize(25,25)
                TalentFive:SetLabel("Level 40: " .. TalentFivename)
                TalentFive.tooltipText = TalentFivedescription
                TalentFive:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentFive.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentFivedescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentFive:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(6, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 6, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][6] == spellID then
                --TalentSix:SetImage()
                --TalentSix:SetImageSize(0,0)
                --TalentSix:SetLabel("")
            else
                TalentSix = AceGUI:Create("Icon")
                --TalentSix:SetImageSize(1,1)
                TalentHeading:AddChild(TalentSix)
                local TalentSixname, _, TalentSixfiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][6])
                local TalentSixdescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][6])
                TalentSix:SetImage(TalentSixfiledataid)
                TalentSix:SetImageSize(25,25)
                TalentSix:SetLabel("Level 45: " .. TalentSixname)
                TalentSix.tooltipText = TalentSixdescription
                TalentSix:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentSix.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentSixdescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentSix:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end

            available, selected = GetTalentTierInfo(7, 1)
            _, _, _, _, _, spellID, _, _, _, _, _ = GetTalentInfoBySpecialization(activeSpec, 7, selected)
            if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][7] == spellID then
                --TalentSeven:SetImage()
                --TalentSeven:SetImageSize(0,0)
                --TalentSeven:SetLabel("")
            else
                TalentSeven = AceGUI:Create("Icon")
                --TalentSeven:SetImageSize(1,1)
                TalentHeading:AddChild(TalentSeven)    
                local TalentSevenname, _, TalentSevenfiledataid = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][7])
                local TalentSevendescription = GetSpellDescription(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][7])
                TalentSeven:SetImage(TalentSevenfiledataid)
                TalentSeven:SetImageSize(25,25)
                TalentSeven:SetLabel("Level 50: " .. TalentSevenname)
                TalentSeven.tooltipText = TalentSevendescription
                TalentSeven:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(TalentSeven.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(TalentSevendescription,1,1,1,1)
                    GameTooltip:Show()
                end)
                TalentSeven:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                numtalentschanged = numtalentschanged + 1
            end
            TalentHeading:SetWidth(numtalentschanged * 125)
            TalentHeading:DoLayout()
        end

        --for talentTier = 1, MAX_TALENT_TIERS do
        --    local available, selected = GetTalentTierInfo(talentTier, 1)
        --    local id, SpecName = GetSpecializationInfo(GetSpecialization())
        --    local activeSpec = GetSpecialization()
        --    local talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura = GetTalentInfoBySpecialization(activeSpec, talentTier, selected)
        --    local ProperSpell = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier])
        --    if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier] == spellID then
        --    else
        --        if MainFrame:IsShown() then
        --            MainFrame:Hide()
        --        else
        --            MainFrame:Show()
        --        end
        --    end
        --end

        local _, _, _, _, _, primaryStat = GetSpecializationInfo(GetSpecialization())
        local MissingEnchantsText = ""
        -- primaryStat = 1=Strength, 2=Agility, 4=Intellect
        --ChestslotId = GetInventorySlotInfo("ChestSlot")
        local Chestlink = GetInventoryItemLink("player", INVSLOT_CHEST)
        if type(Chestlink) == "string" then
            local _, itemId, ChestenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Chestlink)
            if ChestenchantId == "" then MissingEnchantsText = " Chest " end
        end

        local Cloaklink = GetInventoryItemLink("player", INVSLOT_BACK)
        if type(Cloaklink) == "string" then
            local _, itemId, CloakenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Cloaklink)
            if CloakenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Cloak " end
        end

        local FingerOnelink = GetInventoryItemLink("player", INVSLOT_FINGER1)
        if type(FingerOnelink) == "string" then
            local _, itemId, FingerOneenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerOnelink)
            if FingerOneenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Finger 1 " end
        end

        local FingerTwolink = GetInventoryItemLink("player", INVSLOT_FINGER2)
        if type(FingerTwolink) == "string" then
            local _, itemId, FingerTwoenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerTwolink)
            if FingerTwoenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Finger 2 " end
        end

        local MainHandlink = GetInventoryItemLink("player", INVSLOT_MAINHAND)
        if type(MainHandlink) == "string" then
            local _, itemId, MainHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", MainHandlink)
            if MainHandenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Main Hand " end
        end

        local currentSpec = GetSpecialization()
        local _, currentSpecName = GetSpecializationInfo(currentSpec)
        local OffHandlink = GetInventoryItemLink("player", INVSLOT_OFFHAND)
        if type(OffHandlink) == "string" and ((CurrentClass == "Warrior" and currentSpecName == "Fury") or (CurrentClass == "DeathKnight" and currentSpecName == "Frost") or (CurrentClass == "DemonHunter") or (CurrentClass == "Rogue")) then
            local _, itemId, OffHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", OffHandlink)
            if OffHandenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Off Hand " end
        end

        if primaryStat and primaryStat == 2 then
            local Feetlink = GetInventoryItemLink("player", INVSLOT_FEET)
            if type(Feetlink) == "string" then
                local _, itemId, FeetenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Feetlink)
                if FeetenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Feet " end
            end
        end

        if primaryStat and primaryStat == 1 then
            local Handslink = GetInventoryItemLink("player", INVSLOT_HAND)
            if type(Handslink) == "string" then
                local _, itemId, HandsenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Handslink)
                if HandsenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Hands " end
            end
        end

        if primaryStat and primaryStat == 4 then
            local Wristlink = GetInventoryItemLink("player", INVSLOT_WRIST)
            if type(Wristlink) == "string" then
                local _, itemId, WristenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Wristlink)
                if WristenchantId == "" then MissingEnchantsText = MissingEnchantsText .. " Wrist " end
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

        local slots = {"Head", "Neck", "Shoulder", "Back", "Chest", "Shirt", "Tabard", "Wrist", "Waist", "Legs", "Feet", "Hands", "Finger0", "Finger1", "Trinket0", "Trinket1", "MainHand", "SecondaryHand"}
        local legendaryfound = false
        for slotNumber,slotName in pairs(slots) do
            --print(slotNumber,slotName)
            local slotID = GetInventorySlotInfo(slotName .. "slot")
            local itemLink = GetInventoryItemLink("player", slotID)
            --print(type(itemLink))
            if itemLink and type(itemLink) == "string" and itemLink ~= "" then
                local itemName, _, _, ilvl = GetItemInfo(itemLink)
                for _,spellID in pairs(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Legendarys"]) do
                    if string.match(itemName:lower(), string.lower(GetSpellInfo(spellID))) then
                        legendaryfound = true
                    end
                end
            end
        end

        local numlegendarystosugest = 0
        if not legendaryfound then
            local LegendaryHeading = AceGUI:Create("InlineGroup")
            LegendaryHeading:SetLayout("Flow")
            numlegendarystosugest = 0
            for _,spellID in pairs(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Legendarys"]) do
                numlegendarystosugest = numlegendarystosugest + 1
            end
            LegendaryHeading:SetWidth(tonumber(numlegendarystosugest*120))
            LegendaryHeading:SetTitle("Suggested Legendarys")
            MainFrame:AddChild(LegendaryHeading)
            LegendaryHeading:ReleaseChildren()

            local WrongLegendaryText = ""
            for _,spellID in pairs(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Legendarys"]) do
                WrongLegendaryText = WrongLegendaryText .. " " .. GetSpellInfo(spellID) .. " "
                local _,_,WrongLegendaryWidgetIcon = GetSpellInfo(spellID)
                local WrongLegendaryIcon = AceGUI:Create("Icon")
                WrongLegendaryIcon:SetImage(WrongLegendaryWidgetIcon)
                WrongLegendaryIcon:SetImageSize(25,25)
                WrongLegendaryIcon:SetLabel(GetSpellInfo(spellID))
                WrongLegendaryIcon.tooltipText = GetSpellInfo(spellID)
                WrongLegendaryIcon:SetCallback("OnEnter",function()
                    GameTooltip:SetOwner(WrongLegendaryIcon.frame, "ANCHOR_BOTTOM",0,-5)
                    GameTooltip:SetText(GetSpellDescription(spellID),1,1,1,1)
                    GameTooltip:Show()
                end)
                WrongLegendaryIcon:SetCallback("OnLeave",function()
                    GameTooltip:Hide()
                end)
                LegendaryHeading:AddChild(WrongLegendaryIcon)
            end
            --WrongLegendaryTextLable:SetText("We suggest using one of the following legendarys:" .. WrongLegendaryText)
            --LegendaryHeading:AddChild(WrongLegendaryTextLable)
            LegendaryHeading:DoLayout()


        end

        --MainFrame:SetHeight(0)
        local MainFrameHeightChange = 0
        local lengthneededforlegendaries =  tonumber(numlegendarystosugest*130)
        local lengthneededfortalents = (numtalentschanged * 150)
        if lengthneededforlegendaries and lengthneededfortalents then
            if lengthneededfortalents > lengthneededforlegendaries then
                MainFrame:SetWidth(lengthneededfortalents)
            elseif lengthneededfortalents < lengthneededforlegendaries  then
                MainFrame:SetWidth(lengthneededforlegendaries)
            else
                MainFrame:SetWidth(lengthneededforlegendaries)
            end
        end
        if numtalentschanged and numtalentschanged > 0 then
            MainFrameHeightChange = 150
            --MainFrame:SetWidth(numtalentschanged * 150)
        end
        if MissingEnchantsText ~= "" then
            MainFrameHeightChange = MainFrameHeightChange + 100
        end
        if not legendaryfound then
            MainFrameHeightChange = MainFrameHeightChange + 100
        end
        if MainFrameHeightChange and MainFrameHeightChange > 0 then
            MainFrame:SetHeight(MainFrameHeightChange)
        end

        if numtalentschanged == 0 and MissingEnchantsText == "" then
            --local NoChangesHeading = AceGUI:Create("InlineGroup")
            --NoChangesHeading:SetLayout("Flow")
            --NoChangesHeading:SetWidth(800)
            --NoChangesHeading:SetTitle("Perfection")
            --MainFrame:AddChild(NoChangesHeading)
            --NoChangesHeading:ReleaseChildren()

            local NoChangesIcon = AceGUI:Create("Icon")
            --NoChangesIcon:SetText("You are Perfection GLHF")
            NoChangesIcon:SetImage("Interface\\RaidFrame\\ReadyCheck-Ready")
            NoChangesIcon:SetImageSize(25,25)
            NoChangesIcon:SetLabel("You are Perfection GLHF")
            MainFrame:AddChild(NoChangesIcon)
            --NoChangesHeading:DoLayout()
            MainFrame:SetHeight(150)
            MainFrame:SetWidth(300)
        end

        MainFrame:DoLayout()
        MainFrame:Show()
        --if MainFrame:IsShown() then
        --    MainFrame:Hide()
        --else
        --    MainFrame:Show()
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

local addon = LibStub("AceAddon-3.0"):NewAddon("AmIReady", "AceConsole-3.0")
local AmIReadyLDB = LibStub("LibDataBroker-1.1"):NewDataObject("AmIReadyLDB", {
type = "launcher",
text = "AmIReady",
icon = "Interface\\Icons\\spell_nature_moonkey",
OnTooltipShow = function(tooltip)
    tooltip:SetText("AmIReady")
    tooltip:AddLine("Left Click To Show Your Character/Guild Info", 1, 1, 1)
    tooltip:AddLine("Right Click To Show Your Characters Season Bests", 1, 1, 1)
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
                        GetTalents(_,"AmIReady_MINIMAPBUTTON")
                    end
                end
                if button == "RightButton" then
                end
          end,
    }
)
local LibDBIcon = LibStub("LibDBIcon-1.0")

function addon:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("AmIReadyDB", { profile = { minimap = { hide = false, }, }, })
    LibDBIcon:Register("AmIReadyIcon", AmIReadyLDB, self.db.profile.minimap)
    self:RegisterChatCommand("amiready", "OpenUI")
end

function addon:OpenUI(one, two, three, four)
    if one == "toggle minimap" then
        self.db.profile.minimap.hide = not self.db.profile.minimap.hide
        if self.db.profile.minimap.hide then
            LibDBIcon:Hide("AmIReadyIcon")
        else
            LibDBIcon:Show("AmIReadyIcon")
        end
    end
    if one == "" then
        GetTalents(_,"AmIReady_MINIMAPBUTTON")
    end
end