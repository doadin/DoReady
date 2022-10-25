--DK
local BloodDKString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJgk4ASLSEkISIQSSkAAAAAAIOQCEJNJiEAAgIJRAAAAA"
local FrostDKString = "BsPAAAAAAAAAAAAAAAAAAAAAAkIAQIJcgISEIJJhEIJRSQAIiIRSSSSKBAAAAAAAAAAAAA"
local UnholyDKString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIBSSgEgkEhk4AJJRAAAAAAAAAAKQkIAAgEpIlEJJJSC"

--Mage--
local ArcaneMageString = "B4DAHVkVsxxZrVqBmAzlSR2f7LQgWikIJFgD0SiIiIhkEolASCAAAAAAAAAAAAJJJhgkkA"
local FireMageString = "B8DAAAAAAAAAAAAAAAAAAAAAAIQgSigkUEItkIiISAAAAAAAAAASSiQokQSCJJJOAAAAA"
local FrostMageString = "BAEAAAAAAAAAAAAAAAAAAAAAAIIBaJiIJFg0kIiISEAAABQkQSSSiWSSiAAAAAAAAAAkA"

--Rogue--
local AssassinationRogueString = "BMQAAAAAAAAAAAAAAAAAAAAAAQLJSSkcgAAAAAAAAkAQSCAAAAAAgEoRJJikkkSgAJSEJA"
local OutlawRogueString = "BQQAOB/7AZ//CwQOf4fPMswHVDAAUSAJBIJJRSLJJQgEJSAkIAAAAAAAJBpRJJgkkSAAAA"
local SubtletyRogueString = "BUQAOB/7AZ//CwQOf4fPMswHVDAAAAAAAAAARIJJJCEgEJJJhkEJQESSSQaA4AJJpEAAAA"

--Demon Hunter--
local HavocDemonHunterString = "BEkACnvaHJn8GSPD6tpaeczPThkkkkICJtkEJJCAAAAAAAQLJBkGSIIJpFBSAA"
local VengeanceDemonHunterString = "BUkACnvaHJn8GSPD6tpaeczPTBAgIUCREARCQCgEtEJCJIJtkUSIJhSkEAAAAA"

--Monk--
local BrewmasterMonkString = "BwQAdeydY63Y4XKaboK13uRRQAAAAAAAQAAAAAFKtkkQIJp1IAAAApFKJRiEJhkkEIgDIEplCA"
local MistweaverMonkString = "B4QAxp+Ou6i7imp/wvH4suqWJKBkkAFNJSESSDiUEAAAAAAAAAAAAAgSIRSiEQSSaJEAAI"
local WindwalkerMonkString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAESkkElISSAAAAAJJkAASSgDkSkISIRkkEaJAAAA"

--Shaman--
local ElementalShamanString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoVSSLJJFJtEFEUAOQAAAAAAQJApkElUkUIiIJNAEAB"
local EnhancementShamanString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSaRCiIhgAlEJAAAAAAAAAAAAA0iQES0CBgEJFAlEJBA"
local RestorationShamanString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkQSaRCpoFkU0AJlECpkECAIRAQJRkEB"

--Druid--
local BalanceDruidString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoAkkkIikkAQIJAaBREpIHICJItkSiIBFAC"
local FeralDruidString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSTLJSSSkAgEJSCAAAAAAKCgkAgISCBJIhWCAAAAAAgEA"
local GuardianDruidString = "BgGAGX1kx6Mci9Zl2t+S+sRoPCAAAAAAAAAAAAASEJJpkAkEJQEJNKAAIJJBSSSSSiAAAAAAAAAA"
local RestorationDruidString = "BkGAGX1kx6Mci9Zl2t+S+sRoPCJJaSSSCpFAJQJtkAAAAAAAAAAAAAQChkAWAgkkQAUSEkAAAAAAIAA"

--Paladin
--BEEAwtJ2KpR8WbGzhz/jy2AP8AAAAAAQEAAAAAAAlIISJlkkWBRSQJBgENJIpkEJJJFOgE0oEA
local HolyPaladinString = "BEEAmU6nJEmu625yPWI4xfCaFDAAAAAQSAAAAAAAUSCQJSSKNRKJBlEQANJJJpIhkEl0AUQA"
local ProtectionPaladinString = "BIEAAAAAAAAAAAAAAAAAAAAAA0iWChoItkElSDJSgQAAAAAAAAAAAAAAQTkkECkElUCQJKB"
local RetributionPaladinString = "BYEAwtJ2KpR8WbGzhz/jy2AP8AAAAAAICBgolWSC5AAkSKJJpVCAAAAAAg0EJJpJQCFkEUiSA"

--Warlock--
local AfflictionWarlockString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHgkEJCIFCINSSSaAAAAAkAAAAAAACaSSEhkkUECAA"
local DemonologyWarlockString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJSg0IISTSCpBAAAAAAECJSiIJJtUSSCCAAAAAAA"
local DestructionWarlockString = "BsQAbtPS25JQs0VfQSDmhm+p3AIJRiEIFtIINJJkCkEIJSKJ0KtAAAAAAAAAAAAAAkE"

--Hunter--
local BeastMasteryHunterString = "B0PAAAAAAAAAAAAAAAAAAAAAAggWCACBAAAAAAAAAAgGRKyBQEhkIROQoBRIJEJRoRSE"
local MarksmanshipHunterString = "B4PAAAAAAAAAAAAAAAAAAAAAA4AEaBgIIIAAAAARSEJJIiQkUCAEEaCJJhECaAAAAAA"
local SurvivalHunterString = "B8PAAAAAAAAAAAAAAAAAAAAAAQgWQCIBBJCplEIkkEkIAAAAAAhCKaCJSIhEKAAAAAA"

--Priest--
local DisciplinePriestString = "BAQAMQPJVw4PNQ4RvJbZJh+EDCAkUAolEcAEl0SSiIJAAAAAAAAAAAASaokECiQkEhQkICKK"
local HolyPriestString = "BEQAMQPJVw4PNQ4RvJbZJh+EDCAAAAAAAQBRKIkkIQikIKJJAAAAAgkCKJBIiEJRQxBkkkAA"
local ShadowPriestString = "BIQAAAAAAAAAAAAAAAAAAAAAAgkgEAAAAAAAAAAAAAkIKpFSBJJJFiEgGJRiESIBBlWESCA"

--Warrior
local ArmsWarriorString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQKRikkEkDEalEJBAAAABEJKkQUEJQIwBoIRIAQIAAAAAAAAAtEAIE"
local FuryWarriorString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAQCKJEEBhIwB0ISICEESCJJSkAIJJhSaBQSSAAAAB"
local ProtectionWarriorString = "BkEAtml4yL3PsSlRlqnvTeVx4LgAAAAASSSkkQSLpkgWBRgQRiElkEgAAtQSCIQIAAAAAAAABAAlG"

local AceGUI = LibStub("AceGUI-3.0")
local MainFrame = AceGUI:Create("Frame")
MainFrame:SetTitle("DoReady")
MainFrame:SetStatusText("DoReady" .. " " .. GetAddOnMetadata("DoReady", "Version") )
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
        TalentHeading:SetTitle("Talent Loadouts Click To Show Import Code")
        MainFrame:AddChild(TalentHeading)
        TalentHeading:ReleaseChildren()

        if CurrentClass == "Warrior" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Arms Warrior")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ArmsWarriorString)
                editbox:SetLabel('Arms Warrior Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Fury Warrior")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(FuryWarriorString)
                editbox:SetLabel('Fury Warrior Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Protection Warrior")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ProtectionWarriorString)
                editbox:SetLabel('Protection Warrior Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Paladin" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Holy Paladin")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(HolyPaladinString)
                editbox:SetLabel('Holy Paladin Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Protection Paladin")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ProtectionPaladinString)
                editbox:SetLabel('Protection Paladin Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Retribution Paladin")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(RetributionPaladinString)
                editbox:SetLabel('Retribution Paladin Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Hunter" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Beast Mastery Hunter")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(BeastMasteryHunterString)
                editbox:SetLabel('Beast Mastery Hunter Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Marksmanship Hunter")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(MarksmanshipHunterString)
                editbox:SetLabel('Marksmanship Hunter Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Survival Hunter")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(SurvivalHunterString)
                editbox:SetLabel('Survival Hunter Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Rogue" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Assassination Rogue")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(AssassinationRogueString)
                editbox:SetLabel('Assassination Rogue Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Outlaw Rogue")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(OutlawRogueString)
                editbox:SetLabel('Outlaw Rogue Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Subtlety Rogue")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(SubtletyRogueString)
                editbox:SetLabel('Subtlety Rogue Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Priest" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Discipline Priest")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(DisciplinePriestString)
                editbox:SetLabel('Discipline Priest Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Holy Priest")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(HolyPriestString)
                editbox:SetLabel('Holy Priest Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Shadow Priest")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ShadowPriestString)
                editbox:SetLabel('Shadow Priest Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "DeathKnight" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Blood DK")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(BloodDKString)
                editbox:SetLabel('Blood DK Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Frost DK")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(FrostDKString)
                editbox:SetLabel('Frost DK Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Unholy DK")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(UnholyDKString)
                editbox:SetLabel('Unholy DK Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Shaman" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Elemental Shaman")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ElementalShamanString)
                editbox:SetLabel('Elemental Shaman Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Enhancement Shaman")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(EnhancementShamanString)
                editbox:SetLabel('Enhancement Shaman Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Restoration Shaman")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(RestorationShamanString)
                editbox:SetLabel('Restoration Shaman Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Mage" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Arcane Mage")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(ArcaneMageString)
                editbox:SetLabel('Arcane Mage Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Fire Mage")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(FireMageString)
                editbox:SetLabel('Fire Mage Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Frost Mage")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(FrostMageString)
                editbox:SetLabel('Frost Mage Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Warlock" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Affliction Warlock")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(AfflictionWarlockString)
                editbox:SetLabel('Affliction Warlock Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Demonology Warlock")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(DemonologyWarlockString)
                editbox:SetLabel('Demonology Warlock Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Destruction Warlock")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(DestructionWarlockString)
                editbox:SetLabel('Destruction Warlock Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Monk" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Brewmaster Monk")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(BrewmasterMonkString)
                editbox:SetLabel('Brewmaster Monk Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Mistweaver Monk")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(MistweaverMonkString)
                editbox:SetLabel('Mistweaver Monk Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Windwalker Monk")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(WindwalkerMonkString)
                editbox:SetLabel('Windwalker Monk Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)
        end

        if CurrentClass == "Druid" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Balance Druid")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(BalanceDruidString)
                editbox:SetLabel('Balance Druid Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Feral Druid")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(FeralDruidString)
                editbox:SetLabel('Feral Druid Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

            -- Create a button
            local btn3 = AceGUI:Create("Button")
            btn3:SetWidth(165)
            btn3:SetText("Guardian Druid")
            btn3:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(GuardianDruidString)
                editbox:SetLabel('Guardian Druid Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn3)

            -- Create a button
            local btn4 = AceGUI:Create("Button")
            btn4:SetWidth(165)
            btn4:SetText("Restoration Druid")
            btn4:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(RestorationDruidString)
                editbox:SetLabel('Restoration Druid Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn4)
        end

        if CurrentClass == "DemonHunter" then
            -- Create a button
            local btn1 = AceGUI:Create("Button")
            btn1:SetWidth(165)
            btn1:SetText("Havoc Demon Hunter")
            btn1:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(HavocDemonHunterString)
                editbox:SetLabel('Havoc Demon Hunter Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn1)

            -- Create a button
            local btn2 = AceGUI:Create("Button")
            btn2:SetWidth(165)
            btn2:SetText("Vengeance Demon Hunter")
            btn2:SetCallback("OnClick", function()
                local editbox = AceGUI:Create("MultiLineEditBox")
                editbox:SetText(VengeanceDemonHunterString)
                editbox:SetLabel('Vengeance Demon Hunter Import String')
                editbox:SetMaxLetters(0)
                editbox:SetWidth(300)
                editbox:DisableButton(true)
                local f = AceGUI:Create("Frame")
                f:SetWidth(350)
                f:SetHeight(200)
                f:AddChild(editbox)
            end)
            -- Add the button to the container
            TalentHeading:AddChild(btn2)

        end

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
icon = "Interface\\Icons\\spell_nature_moonkey",
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