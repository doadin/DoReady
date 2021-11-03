local UnitClass = _G.UnitClass
local GetActiveSpecGroup = _G.GetActiveSpecGroup
local GetInstanceInfo = _G.GetInstanceInfo
local GetTalentTierInfo = _G.GetTalentTierInfo
local GetSpecialization = _G.GetSpecialization
local GetSpecializationInfo = _G.GetSpecializationInfo
local GetSpellInfo = _G. GetSpellInfo
local GetTalentInfoBySpecialization = _G.GetTalentInfoBySpecialization
local MAX_TALENT_TIERS = _G.MAX_TALENT_TIERS

local function CheckTalents(self, event, firstarg, secondarg)
    --print(self, event, firstarg, secondarg)
    if event == "PLAYER_SPECIALIZATION_CHANGED" and not firstarg == "player" then return end
    local name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
    --if instanceType ~= "raid" or instanceType ~= "party" then return end

    if instanceType == "none" or instanceType == "party" then
        instanceType = "MythicPlus"
    elseif instanceType == "raid" then
        instanceType = "Raid"
    end
    local CurrentAffixes = C_MythicPlus.GetCurrentAffixes()
    if not CurrentAffixes then return end
    local AffixOnename, AffixOnedescription, AffixOnefiledataid = C_ChallengeMode.GetAffixInfo(CurrentAffixes[1].id)
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

    local talentGroup, talents = GetSpecialization(), ""
    for talentTier = 1, MAX_TALENT_TIERS do
       local available, selected = GetTalentTierInfo(talentTier, 1)
       local id, SpecName = GetSpecializationInfo(GetSpecialization())
       local activeSpec = GetSpecialization()
       local talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura = GetTalentInfoBySpecialization(activeSpec, talentTier, selected)
       local ProperSpell = GetSpellInfo(_G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier])
       if _G.AmIReady[CurrentClass][SpecName:gsub("%s+", "")][instanceType][AffixOnename]["Talents"][talentTier] == spellID then
       else
          print("AmIReady We Sugest Using: ", ProperSpell)
       end
    end
end

local function CheckEnchants(self, event, isLogin, isReload)
    if isLogin or isReload then return end
    local id, name, description, icon, role, primaryStat = GetSpecializationInfo(GetSpecialization())
    -- primaryStat = 1=Strength, 2=Agility, 4=Intellect
    --ChestslotId = GetInventorySlotInfo("ChestSlot")
    local Chestlink = GetInventoryItemLink("player", INVSLOT_CHEST)
    if type(Chestlink) == "string" then
        local _, itemId, ChestenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Chestlink)
        if not ChestenchantId then print("AmIReady: You Have No Chest Enchant") end
    end

    local Cloaklink = GetInventoryItemLink("player", INVSLOT_BACK)
    if type(Cloaklink) == "string" then
        local _, itemId, CloakenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Cloaklink)
        if not CloakenchantId then print("AmIReady: You Have No Cloak Enchant") end
    end

    local FingerOnelink = GetInventoryItemLink("player", INVSLOT_FINGER1)
    if type(FingerOnelink) == "string" then
        local _, itemId, FingerOneenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerOnelink)
        if not FingerOneenchantId then print("AmIReady: You Have No Finger 1 Enchant") end
    end

    local FingerTwolink = GetInventoryItemLink("player", INVSLOT_FINGER2)
    if type(FingerTwolink) == "string" then
        local _, itemId, FingerTwoenchantId, gem1, gem2, gem3, gem4 = strsplit(":", FingerTwolink)
        if not FingerTwoenchantId then print("AmIReady: You Have No Finger 2 Enchant") end
    end

    local MainHandlink = GetInventoryItemLink("player", INVSLOT_MAINHAND)
    if type(MainHandlink) == "string" then
        local _, itemId, MainHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", MainHandlink)
        if not MainHandenchantId then print("AmIReady: You Have No Main Hand Enchant") end
    end

    local OffHandlink = GetInventoryItemLink("player", INVSLOT_OFFHAND)
    if type(OffHandlink) == "string" then
        local _, itemId, OffHandenchantId, gem1, gem2, gem3, gem4 = strsplit(":", OffHandlink)
        if not OffHandenchantId then print("AmIReady: You Have No Off Hand Enchant") end
    end

    if primaryStat and primaryStat == 2 then
        local Feetlink = GetInventoryItemLink("player", INVSLOT_FEET)
        if type(Feetlink) == "string" then
            local _, itemId, FeetenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Feetlink)
            if not FeetenchantId then print("AmIReady: You Have No Feet Enchant") end
        end
    end

    if primaryStat and primaryStat == 1 then
        local Handslink = GetInventoryItemLink("player", INVSLOT_HAND)
        if type(Handslink) == "string" then
            local _, itemId, HandsenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Handslink)
            if not HandsenchantId then print("AmIReady: You Have No Hands Enchant") end
        end
    end

    if primaryStat and primaryStat == 4 then
        local Wristlink = GetInventoryItemLink("player", INVSLOT_WRIST)
        if type(Wristlink) == "string" then
            local _, itemId, WristenchantId, gem1, gem2, gem3, gem4 = strsplit(":", Wristlink)
            if not WristenchantId then print("AmIReady: You Have No Wrist Enchant") end
        end
    end

end

local CheckTalentsFrame = CreateFrame("FRAME")
CheckTalentsFrame:RegisterEvent("LOADING_SCREEN_DISABLED")
CheckTalentsFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
CheckTalentsFrame:SetScript("OnEvent", CheckTalents)

local CheckEnchantsFrame = CreateFrame("FRAME")
CheckEnchantsFrame:RegisterEvent("LOADING_SCREEN_DISABLED")
CheckEnchantsFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
CheckEnchantsFrame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
CheckEnchantsFrame:SetScript("OnEvent", CheckEnchants)

