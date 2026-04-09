FACTION_TYPES["Nurgle Infected"] = {
    STAGE = "Disease Spread",
    PESTILENCE = 0,

    SpreadInfection = function(self, amount)
        local AllBots = player.GetBots()
        local infectedCount = 0
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Nurgle Infected" then
                infectedCount = infectedCount + 1
            end
        end
        if infectedCount < amount then
            local Cultist_Candidates = {}
            for _, bot in ipairs(AllBots) do
                local bType = bot.BotType or ""
                if (bType == "HigherHiveCitizen" or bType == "LowerHiveCitizen" or bType == "OuterHiveCitizen") and bot:GetNWString("Status","friendly") == "friendly" then
                    table.insert(Cultist_Candidates, bot)
                end
            end
            if #Cultist_Candidates > 0 then
                local randomCultist = Cultist_Candidates[math.random(#Cultist_Candidates)]
                randomCultist:SetNWString("Status", "Nurgle Infected")
                print("[Nurgle Cultists] Infected bot " .. randomCultist:GetNWString("Name", "Unknown") .. " with Nurgle's disease. SPREAD THE PLAGUE!")
            end
        end
    end,

    RecruitNurgleForEveryType = function(self)
        local AllBots = player.GetBots()
        local cultistCount = {
            HigherHiveCitizen = 0,
            LowerHiveCitizen = 0,
            OuterHiveCitizen = 0
        }

        -- Count current cultists per type
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Nurgle Infected" then
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
                    pick:SetNWString("Status", "Nurgle Infected")
                    print("[Nurgle Infected] Promoted bot " .. pick:GetNWString("Name", "Unknown") .. " of type " .. bType .. " to Nurgle Infected.")
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
            -- Plague Ogryn
            local EliteTypeRoll = math.random(1, 100)
            if EliteTypeRoll <= 50 then
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos_plague.mdl")
                health = math.max(health * 5, 3000) -- at least 3000 health
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_heavyboltershoulder"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_crozius"
                end
                bot:SetNWString("Name", "Plague Ogryn")
                bot:SetNWString("Description", "A hulking brute infused with the plague of Nurgle.")
                bot:SetNWBool("ShieldEnable", false)
            else -- Champion of Nurgle
                bot:SetModel("models/wk/nurglit/wk_nurgl.mdl")
                health = math.max(health * 2, 2000) -- at least 2000 health
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_powerswordnurgle"
                end
                bot.speed = 500
                bot:SetNWString("Name", "Champion of Nurgle")
                bot.demon = true
                bot:SetNWString("Description", "Vile Mutant Champion of Nurgle, spreading disease and decay.")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            -- 30% chance to become a models/wk/nurglit/wk_nuglin.mdl
            local cultistroll = math.random(1, 100)
            if cultistroll <= 30 then
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.demon = true
                bot.weapon = "murlock_chaos_knife"
                bot:SetNWString("Name", "Nurgling")
                bot:SetNWString("Description", "A small but deadly servant of Nurgle.")
                bot:SetNWBool("ShieldEnable", false)
            -- Pox Walker
            elseif cultistroll <= 60 then
                bot:SetModel("models/wk/nurglit/poxwalker.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                end
                bot:SetNWString("Name", "Poxwalker")
                bot.hasGasMask = true
                bot:SetNWString("Description", "A grotesque servant of Nurgle, spreading disease and decay.")
                bot:SetNWBool("ShieldEnable", false)
            elseif cultistroll <= 90 then -- Cultist
                bot:SetModel("models/wk/nurglit/wk_nurcul.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
                bot:SetNWString("Name", "Nurgle Cultist")
                bot:SetNWString("Description", "Diseased and Mutated cultist of Nurgle")
                bot:SetNWBool("ShieldEnable", false)
            else -- Plague Sorcerer
                bot:SetModel("models/wk/nurglit/wk_nur_sor.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Name", "Plague Sorcerer")
                bot:SetNWString("Description", "A cultist who has been granted the power of decay by Nurgle.")
                bot:SetNWBool("ShieldEnable", true)
            end
        end
        
        bot:SetNWString("Status", "Nurgle Infected")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
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
            if self.STAGE == "Disease Spread" then
                self:SpreadInfection(1)
                -- Check if there is 30% or more of the bots are infected of type HigherHiveCitizen, LowerHiveCitizen or OuterHiveCitizen
                local AllBots = player.GetBots()
                local totalCount = 0
                local infectedCount = 0
                for _, bot in ipairs(AllBots) do
                    if bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen" then
                        totalCount = totalCount + 1
                        if bot:GetNWString("Status", "friendly") == "Nurgle Infected" then
                            infectedCount = infectedCount + 1
                        end
                    end
                end
                --print("[Nurgle Cultists] Total bots: " .. totalCount .. ", Infected bots: " .. infectedCount)
                if infectedCount > 10 and infectedCount / totalCount >= 0.15 then
                    self.STAGE = "Nurgle's Blessing"
                    CreateUnderHiveBase("Nurgle Plague")
                    print("[Nurgle Cultists] Ascending to Nurgle's Blessing stage! Infected count: " .. infectedCount)
                end

            elseif self.STAGE == "Nurgle's Blessing" then
                self:RecruitNurgleForEveryType()
                -- Every 15-30 minutes, spawn a Nurgle Infected out of one of the bots of the type HigherHiveCitizen, LowerHiveCitizen or OuterHiveCitizen with CreatePoxwalker(bot, true)
                local AllBots = player.GetBots()
                -- Schedule periodic cultist conversion
                if not self.NextCultistConvert or CurTime() >= self.NextCultistConvert then
                    local candidates = {}
                    for _, bot in ipairs(AllBots) do
                        if bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen" then
                            table.insert(candidates, bot)
                        end
                    end

                    if #candidates > 0 then
                        local chosen = candidates[math.random(#candidates)]
                        self:CreateCultist(chosen, false)
                        print("[Nurgle Infected] Converted bot to cultist:", chosen:Nick())
                    end

                    self.NextCultistConvert = CurTime() + math.random(300, 600) -- 5 to 10 minutes
                end

                local hasBase = false
                for _, faction in pairs(BASE_NODE_OCCUPATION) do
                    if faction == "Nurgle Infected" then
                        hasBase = true
                        break
                    end
                end

                if not hasbase then --double check if the base is destryed by checking if there is any boss bot of the Nurgle Infected faction
                    for _, bot in ipairs(AllBots) do
                        if bot:GetNWString("Status", "friendly") == "Nurgle Plague" and bot.BOSS then
                            hasBase = true
                            break
                        end
                    end
                end

                if not hasBase then
                    self.STAGE = "Disease Spread"
                    print("[Nurgle Infected] Base destroyed, resetting to Disease Spread stage.")
                    for _, bot in ipairs(AllBots) do
                        if bot:GetNWString("Status", "friendly") == "Nurgle Infected" then
                            bot:Kill()
                        end
                    end
                end
            end
        end
        -- Revolution logic
        local types = {
            "HigherHiveCitizen",
            "LowerHiveCitizen",
            "OuterHiveCitizen"
        }

        for _, bType in ipairs(types) do
            if CheckForRevolutionTrigger(bType, "Nurgle Infected") then
                self:NurgleOutbreak(bType)
                REVOLUTION_TABLE[bType] = "Nurgle Infected"
            end

            if REVOLUTION_TABLE[bType] == "Nurgle Infected" then
                self:NurgleOutbreakTick(bType)
            end
        end
    end,

    --Blood Revolution
    RevolutionTrigger = function(self, BotType)

        local location = GetLocationName(BotType)

        SendNotificationOTPGLOBAL("The Plague has consumed the minds of the living, Unholy Pestilence has taken hold of the City. Nurgle has Come.", 20, true)
        NotifyAllPlayers("The Plague has spread throughout the " .. location .. "! Purge the unclean! Kill the heretic!", 60, true)
        REVOLUTION_START_TIME = CurTime() -- Reset the revolution start time

        local AllBots = player.GetBots()
        for _, bot in ipairs(AllBots) do
            if bot.BotType then
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
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Nurgle Infected" and not bot.redeemed and not bot.Summon then
                self:CreateCultist(bot)
            end
        end

        local deaths = (self.DeathsByType and self.DeathsByType[BotType]) or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The Pestilence has been Cleansed. The Heretics have received judgement and the unclean purged. The Outbreak has been contained.", 20, true)
            REVOLUTION_END_TIME = CurTime() -- Reset the revolution end time
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Nurgle Infected" then
                    bot:Kick()
                end
            end
            self.DeathsByType[BotType] = 0  -- Reset death count for this type
            REVOLUTION_TABLE[BotType] = "NONE"
        end

    end,

}