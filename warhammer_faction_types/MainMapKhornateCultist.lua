FACTION_TYPES["Khornate Cultist"] = {
    STAGE = "Blood Collection",
    BLOOD_POINTS = 0,
    DeathsByType = {},

    OnDeathHook = function(self, bot, inflictor, attacker)
        if attacker:GetNWString("Status", "friendly") == "Khornate Cultist" then
            self.BLOOD_POINTS = self.BLOOD_POINTS + 1
            AddMetaKnowledgeToAllNearBots(bot, "Khornate Cultist killed: " .. bot:GetNWString("Name", "Unknown") .. ". This was a sacrifice for the Blood God for a profane ritual.")
            print("[Khornate Cultist] Blood points increased to " .. self.BLOOD_POINTS .. " by cultist " .. attacker:GetNWString("Name", "Unknown"))
        elseif bot:GetNWString("Status", "friendly") == "Khornate Cultist" then
            self.BLOOD_POINTS = self.BLOOD_POINTS - 10
        end
    end,

    RecruitCultist = function(self, amount)
        local AllBots = player.GetBots()
        local cultistCount = 0
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status","friendly") == "Khornate Cultist" then
                cultistCount = cultistCount + 1
            end
        end
        if cultistCount < amount then
            local Cultist_Candidates = {}
            for _, bot in ipairs(AllBots) do
                local bType = bot.BotType or ""
                if (bType == "HigherHiveCitizen" or bType == "LowerHiveCitizen" or bType == "OuterHiveCitizen") and bot:GetNWString("Status","friendly") == "friendly" then
                    table.insert(Cultist_Candidates, bot)
                end
            end
            if #Cultist_Candidates > 0 then
                local randomCultist = Cultist_Candidates[math.random(#Cultist_Candidates)]
                randomCultist:SetNWString("Status", "Khornate Cultist")
                print("[Khornate Cultist] Promoted bot " .. randomCultist:GetNWString("Name","Unknown") .. " to Khornate Cultist. GO MY CHILD, SPREAD THE WORD OF KHORNE! BLOOD FOR THE BLOOD GOD!")
            end
        end
    end,
    --makes sure there is at least 1 cultist of every type HigherHiveCitizen LowerHiveCitizen OuterHiveCitizen
    RecruitCultistForEveryType = function(self)
        local AllBots = player.GetBots()
        local cultistCount = {
            HigherHiveCitizen = 0,
            LowerHiveCitizen = 0,
            OuterHiveCitizen = 0
        }

        -- Count current cultists per type
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Khornate Cultist" then
                local bType = bot.BotType or ""
                if cultistCount[bType] ~= nil then
                    cultistCount[bType] = cultistCount[bType] + 1
                end
            end
        end

        -- Promote a cultist for each type that's missing
        for bType, count in pairs(cultistCount) do
            if count < 1 then
                local candidates = {}
                for _, bot in ipairs(AllBots) do
                    if bot.BotType == bType and bot:GetNWString("Status", "friendly") == "friendly" then
                        table.insert(candidates, bot)
                    end
                end
                if #candidates > 0 then
                    local pick = candidates[math.random(#candidates)]
                    pick:SetNWString("Status", "Khornate Cultist")
                    print("[Khornate Cultist] Promoted bot " .. pick:GetNWString("Name", "Unknown") .. " of type " .. bType .. " to Khornate Cultist.")
                end
            end
        end
    end,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

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
            -- Blood Ogryn
            local EliteTypeRoll = math.random(1, 100)
            if EliteTypeRoll <= 25 then -- Bloodletter
                local bloodlettermodel = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl"
                bot:SetModel(bloodlettermodel)
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 3, 1500) -- at least 1500 health
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                bot:SetNWString("Name", "Bloodletter")
                bot.demon = true
                bot:SetNWString("Description", "A powerful servant of Khorne, ready to spill blood in the name of the Blood God.")
            elseif EliteTypeRoll <= 50 then
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                health = math.max(health * 5, 2000) -- at least 3000 health
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_heavyboltershoulder"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_crozius"
                end
                bot:SetNWString("Name", "Blood Ogryn")
                bot:SetNWString("Description", "A hulking brute infused with the blood of Khorne.")
            elseif EliteTypeRoll <= 75 then -- Minotaur
                health = math.max(health * 8, 2000) -- at least 3000 health
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur_khorne.mdl")
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                bot.FightType = "melee"
                bot:SetNWString("Name", "Khorngor")
                bot:SetNWString("Description", "A massive beast with the strength of Khorne.")
            else -- Skull Taker
                bot:SetModel("models/sodium_cultist.mdl")
                health = math.max(health * 4, 1500) -- at least 1500 health
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                end
                bot.speed = 500
                bot:SetNWString("Name", "Skull Taker")
                bot:SetNWString("Description", "A deadly warrior of Khorne, ready to spill blood in the name of the Blood God.")
            end
        else
            bot:SetModel("models/dizcordum/sodium_blood_pact.mdl")
            local roll = math.random(1, 100)
            if roll <= 5 then
                bot.FightType = "flamer"
                bot.weapon = "cat_chaos_legacy_flamer"
                bot:SetNWString("Description", "A cultist who has been given a flamer!")
                bot:SetNWBool("ShieldEnable", true)
            else
                bot:SetNWString("Description", "A cultist of Khorne, ready to spill blood in the name of the Blood God.")
            end
        end
        
        bot:StripWeapons()
        bot:SetNWString("Status", "Khornate Cultist")
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    BloodCollection = function(self)
        self:RecruitCultist(1) -- Ensure we have at least 1 cultists at all times
        if self.BLOOD_POINTS >= 50 then
            self.STAGE = "Ascension"
            CreateUnderHiveBase("Khornate Cultist")
            print("[Khornate Cultist] Ascending to the next stage! Blood points collected: " .. self.BLOOD_POINTS)
            self.BLOOD_POINTS = 50
        end
    end,

    Ascension = function(self)
        -- Check to see if the base is destroyed by checking if Khornate Cultist is no longer in the BASE_NODE_OCCUPATION table
        local hasBase = false
        for _, faction in pairs(BASE_NODE_OCCUPATION) do
            if faction == "Khornate Cultist" then
                hasBase = true
                break
            end
        end

        if self.BLOOD_POINTS < 50 then
            self.STAGE = "Blood Collection"
            print("[Khornate Cultist] Blood points dropped below 50, resetting to Blood Collection stage.")
            self.BLOOD_POINTS = 0
        end

        -- if not hasBase then
        --     self.BLOOD_POINTS = 0
        --     self.STAGE = "Blood Collection"
        --     print("[Khornate Cultist] Base destroyed, resetting to Blood Collection stage.")
        -- end

        self:RecruitCultistForEveryType() -- Ensure we have at least 1 cultist in The Upper, Lower and Outer Hive

        local AllBots = player.GetBots()

        -- Ensure at least one Khornate Cultist agent exists
        local hasAgent = false
        for _, bot in ipairs(AllBots) do
            if IsValid(bot) and bot:GetNWString("Status") == "Khornate Cultist" and bot.Agent then
                hasAgent = true
                break
            end
        end

        if not hasAgent then
            local candidates = {}
            for _, bot in ipairs(AllBots) do
                if IsValid(bot) and (bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen") then
                    table.insert(candidates, bot)
                end
            end

            if #candidates > 0 then
                local chosen = candidates[math.random(#candidates)]
                self:CreateBloodCultist(chosen, true)
                chosen.Agent = true
                chosen:SetNWString("Status", "Khornate Cultist")
                print("[Khornate Cultist] Assigned new cultist agent:", chosen:Nick())
            end
        end

    end,

    --Blood Revolution
    RevolutionTrigger = function(self, BotType)

        local location = GetLocationName(BotType)

        SendNotificationOTPGLOBAL("The Air is filled with the smell of blood and the sound of drums. The Blood God has come, and the Blood Revolution has begun!", 20, true)
        NotifyAllPlayers("The Blood Revolution has begun in the " .. location .. "! Khornate Cultists are rising up against the Imperium! Prepare for battle!", 60, true)

        REVOLUTION_START_TIME = CurTime()

        local AllBots = player.GetBots()
        for _, bot in ipairs(AllBots) do
            if bot.BotType == BotType then
                bot:Kick()
            end
        end
    end,


    RevolutionTick = function(self, BotType)
        local AllBots = player.GetBots()
        local players = player.GetAll()

        -- if REVOLUTION_START_TIME + 30 > CurTime() then
        --     return true -- Wait for 30 seconds before starting the revolution
        -- end

        local Humans = 0
        for _, ply in ipairs(players) do
            if ply:IsPlayer() and not ply:IsBot() and ply:Alive() then
                Humans = Humans + 1
            end
        end

        for _, bot in ipairs(AllBots) do
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Khornate Cultist" and not bot.Summon then
                self:CreateCultist(bot)
            end
        end

        local deaths = (self.DeathsByType and self.DeathsByType[BotType]) or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The streets are filled with rivers of blood. Khorne has feasted on the cries of the dead and the pain of the living. The Blood Revolution is ending...", 20, true)
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Khornate Cultist" then
                    bot:Kick()
                end
            end
            self.DeathsByType[BotType] = 0  -- Reset death count for this type
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
            if self.STAGE == "Blood Collection" then
                self:BloodCollection()
            elseif self.STAGE == "Ascension" then
                self:Ascension()
            end
        end

        -- Revolution logic
        local types = {
            "HigherHiveCitizen",
            "LowerHiveCitizen",
            "OuterHiveCitizen"
        }

        for _, bType in ipairs(types) do
            if CheckForRevolutionTrigger(bType, "Khornate Cultist") then
                self:BloodRevolutionTrigger(bType)
                REVOLUTION_TABLE[bType] = "Khornate Cultist"
            end

            if REVOLUTION_TABLE[bType] == "Khornate Cultist" then
                self:BloodRevolutionTick(bType)
            end
        end
    end,

}