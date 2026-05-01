FACTION_TYPES["Chem Runner"] = {
    STAGE = "Low Crime",
    DeathsByType = {},

    RecruitDruggy = function(self, amount)
        local AllBots = player.GetBots()
        local druggyCount = 0
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Chem Runner" then
                druggyCount = druggyCount + 1
            end
        end
        if druggyCount < amount then
            local Druggy_Candidates = {}
            for _, bot in ipairs(AllBots) do
                local bType = bot.BotType or ""
                if (bType == "HigherHiveCitizen" or bType == "LowerHiveCitizen" or bType == "OuterHiveCitizen") and bot:GetNWString("Status", "friendly") == "friendly" then
                    table.insert(Druggy_Candidates, bot)
                end
            end
            if #Druggy_Candidates > 0 then
                local randomDruggy = Druggy_Candidates[math.random(#Druggy_Candidates)]
                randomDruggy:SetNWString("Status", "Chem Runner")
                print("[Chem Runners] Recruited bot " .. randomDruggy:GetNWString("Name", "Unknown") .. " as a Chem Runner.")
            end
        end
    end,

    RecruitChemRunnerForEveryType = function(self)
        local AllBots = player.GetBots()
        local runnerCount = {
            HigherHiveCitizen = 0,
            LowerHiveCitizen = 0,
            OuterHiveCitizen = 0
        }

        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Chem Runner" then
                local bType = bot.BotType or ""
                if runnerCount[bType] ~= nil then
                    runnerCount[bType] = runnerCount[bType] + 1
                end
            end
        end

        for bType, count in pairs(runnerCount) do
            if count < 1 then
                local candidates = {}
                for _, bot in ipairs(AllBots) do
                    if bot.BotType == bType and bot:GetNWString("Status", "friendly") == "friendly" then
                        table.insert(candidates, bot)
                    end
                end
                if #candidates > 0 then
                    local pick = candidates[math.random(#candidates)]
                    pick:SetNWString("Status", "Chem Runner")
                    print("[Chem Runners] Promoted bot " .. pick:GetNWString("Name", "Unknown") .. " of type " .. bType .. " to Chem Runner.")
                end
            end
        end
    end,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local roll = math.random(1, 100)
        --10% Chance to Spawn as an Elite

        local roll = math.random(1, 100)
        local chance_to_spawn_elite = 10 -- 10% chance to spawn as an elite
        spawn_elite = false

        --Check to see if we are in a revolution
        local revolutionActive = IN_FACTION_REVOLUTION

        if revolutionActive then
            -- How far are we into the revolution?
            local deathsneeded = GetDeathCountNeeded()
            local health = FACTION_REVOLUTION_HEALTH

            revolutionStrength = deathsneeded / health

            if revolutionStrength >= 0.4 then
                chance_to_spawn_elite = 20 -- 20% chance to spawn as an elite
            elseif revolutionStrength >= 0.6 then
                chance_to_spawn_elite = 40 -- 30% chance to spawn as an elite
            elseif revolutionStrength >= 0.8 then
                chance_to_spawn_elite = 75 -- 40% chance to spawn as an elite
            elseif revolutionStrength >= 0.9 then
                chance_to_spawn_elite = 100 -- 50% chance to spawn as an elite
            end
        end

        if roll <= chance_to_spawn_elite then
            spawn_elite = true
        end

        if elite then
            spawn_elite = true
        end

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)
            if eliteRoll <= 15 then
                bot:SetNWString("Name", "Chem Enforcer")
                health = math.max(health * 3, 1000)
                local model = bot.IsFemale and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_boltercombi"
                bot:SetNWString("Description", "A heavily armed enforcer of the Chem Lords.")
                bot:SetNWBool("ShieldEnable", true)
            elseif eliteRoll <= 80 then
                bot:SetNWString("Name", "Spook Manufacturer")
                health = math.max(health * 3, 500)
                local model = bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl"
                bot:SetModel(model)
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "Chemical Expert responsible for the production of Spook")
            else
                bot:SetNWString("Name", "Squat Mercenary")
                health = math.max(health * 3, 1000)
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltercombi"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_custom_poweraxe"
                end
                bot:SetNWString("Description", "A mercenary from the Squat Clans, paid by the Chem Lords.")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            bot:SetNWString("Name", "Spook Junkie")
            local model = bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl"
            bot:SetModel(model)
            local weaponroll = math.random(1, 100)
            if weaponroll <= 50 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
            else
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
            end
            bot:SetNWString("Description", "A violent junkie addicted to chems and chaos.")
        end

        bot:StripWeapons()
        bot:SetNWString("Status", "Chem Runner")
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.hasGasMask = true -- Chem Runners always have gas masks
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        if math.random() <= 0.2 then
            local ent = ents.Create("drugs")
            if not IsValid(ent) then return end

            ent:SetPos(bot:GetPos() + Vector(0, 0, 10))
            ent:Spawn()
        end
    end,

    LowCrime = function(self)
        self:RecruitDruggy(1)

        local total = 0
        local recruited = 0

        for _, bot in ipairs(player.GetBots()) do
            if bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen" then
                total = total + 1
                if bot:GetNWString("Status", "friendly") == "Chem Runner" then
                    recruited = recruited + 1
                end
            end
        end

        if recruited > 10 and recruited / total >= 0.15 then
            self.STAGE = "Rising Syndicate"
            CreateUnderHiveBase("Chem Runner")
            print("[Chem Runners] Syndicate is rising! Promoted count: " .. recruited .. " of " .. total)
        end
    end,


    RisingSyndicate = function(self)
        self:RecruitChemRunnerForEveryType()

        if not self.NextEnforcerConvert or CurTime() >= self.NextEnforcerConvert then
            local candidates = {}
            for _, bot in ipairs(player.GetBots()) do
                if bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen" then
                    table.insert(candidates, bot)
                end
            end

            if #candidates > 0 then
                local chosen = candidates[math.random(#candidates)]
                self:CreateCultist(chosen, true)
                print("[Chem Runners] Converted bot to Chem Enforcer:", chosen:Nick())
            end

            self.NextEnforcerConvert = CurTime() + math.random(300, 600)
        end

        local hasBase = false
        for _, faction in pairs(BASE_NODE_OCCUPATION) do
            if faction == "Chem Runner" then
                hasBase = true
                break
            end
        end
        local AllBots = player.GetBots()
        if not hasBase then --double check if the base is destroyed by checking if there is any boss bot of the Chem Runner faction
            for _, bot in ipairs(AllBots) do
                if bot:GetNWString("Status", "friendly") == "Chem Runner" and bot.BOSS then
                    hasBase = true
                    break
                end
            end
        end

        if not hasBase then
            self.STAGE = "Low Crime"
            for _, bot in ipairs(AllBots) do
                if bot:GetNWString("Status", "friendly") == "Chem Runner" then
                    local BotName = bot:GetNWString("Name", "Unknown")
                    bot:SetNWString("Status", "friendly")
                    --Check to see if the bots name is not in GlobalFemaleNames or GlobalMaleNames
                    if not GlobalFemaleNames[BotName] and not GlobalMaleNames[BotName] then
                        local newName = "Rehabilitated " .. BotName
                        bot:SetNWString("Name", newName)
                    end
                end
            end
        end
    end,

    RevolutionTrigger = function(self, BotType)
        local location = GetLocationName(BotType)
        print("[Chem Runners] Revolution Triggered in " .. BotType .. " at " .. location)

        REVOLUTION_START_TIME = CurTime()
        SendNotificationOTPGLOBAL("An outbreak of drug fueled rebellion has begun! The Chem Lords are taking over!", 20, true)
        NotifyAllPlayers("Chem Runners have incited a rebellion in the " .. location .. "! Suppress the uprising immediately!", 60, true)

        for _, bot in ipairs(player.GetBots()) do
            if bot.BotType == BotType then
                bot:Kick() -- Remove the bot from the game to prevent it from interfering with the revolution
            end
        end
    end,

    RevolutionTick = function(self, BotType)
        local AllBots = player.GetBots()
        local humans = 0

        -- if REVOLUTION_START_TIME + 30 > CurTime() then
        --     return true -- Wait for 30 seconds before starting the revolution
        -- end

        for _, ply in ipairs(player.GetAll()) do
            if ply:IsPlayer() and not ply:IsBot() and ply:Alive() then
                humans = humans + 1
            end
        end

        for _, bot in ipairs(AllBots) do
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Chem Runner" and not bot.Summon then
                self:CreateCultist(bot)
            end
        end

        local deaths = self.DeathsByType and self.DeathsByType[BotType] or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The Chem Uprising has been crushed. The Spook has run dry.", 20, true)
            REVOLUTION_END_TIME = CurTime() -- Reset the revolution end time
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Chem Runner" then
                    bot:Kick()
                end
            end
            self.DeathsByType[BotType] = 0
            REVOLUTION_TABLE[BotType] = "NONE"
        end
    end,

    Think = function(self)

        local RevolutionOnGoing = false
        for _, v in pairs(REVOLUTION_TABLE) do
            if v ~= "NONE" then 
                RevolutionOnGoing = true
                break 
            end
        end

        if RevolutionOnGoing == false then

            if self.STAGE == "Low Crime" then
                self:LowCrime()
            elseif self.STAGE == "Rising Syndicate" then
                self:RisingSyndicate()
            end

        end

        local types = {
            "HigherHiveCitizen",
            "LowerHiveCitizen",
            "OuterHiveCitizen"
        }

        for _, bType in ipairs(types) do
            if CheckForRevolutionTrigger(bType, "Chem Runner") then
                self:RevolutionTrigger(bType)
                REVOLUTION_TABLE[bType] = "Chem Runner"
            end

            if REVOLUTION_TABLE[bType] == "Chem Runner" then
                self:ChemRebellionTick(bType)
            end
        end
    end,
}
