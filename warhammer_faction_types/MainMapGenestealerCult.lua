FACTION_TYPES["Genestealer Cult"] = {
    STAGE = "Hidden Influence",
    DeathsByType = {},
    OffWorld = false,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite or false
        --Check to see if we are in a revolution
        local revolutionActive = IN_FACTION_REVOLUTION
        local chance_to_spawn_elite = 10 -- 10% chance to spawn as an elite
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

        if not spawn_elite then
            local roll = math.random(1, 100)
            if roll <= chance_to_spawn_elite then
                spawn_elite = true
            end
        end


        if spawn_elite then
            bot.Elite = true
            health = math.max(health * 3, 1000)
            bot:SetNWString("Name", "Genestealer")
            bot:SetModel("models/stealer.mdl")
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A deadly purestrain Genestealer, apex predator of the cult.")
            bot:SetNWBool("ShieldEnable", true)
        else
            local cultistType = math.random(1, 100)
            if cultistType <= 30 then
                bot:SetNWString("Name", "Neophyte Hybrid")
                bot:SetModel("models/wk/civilian/wk_civilian.mdl")
                bot:SetColor(Color(200, 160, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
                bot:SetNWString("Description", "A neophyte agent of the cult, blending in until it's too late.")
            elseif cultistType <= 90 then
                bot:SetNWString("Name", "Hormaguant")
                bot:SetModel("models/tyranids/hormagaunt/hormaguant.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A fast and deadly Hormagaunt, it strikes swiftly to tear through enemies.")
            else
                bot:SetNWString("Name", "Cult Psyker")
                bot:SetModel("models/wk/civilian/wk_civilian.mdl")
                bot.FightType = "shooting"
                bot:SetColor(Color(200, 160, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "A warp-wielding psyker in service of the Star Children.")
                bot:SetNWBool("ShieldEnable", true)
            end
        end

        bot:SetNWString("Status", "Genestealer Cult")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    RevolutionTrigger = function(self, BotType)
        local location = GetLocationName(BotType)

        print("[Genestealer Cult] Uprising Triggered in " .. BotType .. " at " .. location)
        REVOLUTION_START_TIME = CurTime()
        SendNotificationOTPGLOBAL("The Genestealer Cult has risen! The Star Children demand blood!", 20, true)
        NotifyAllPlayers("Genestealer Cult uprising in the " .. location .. "! Purge the infestation!", 60, true)

        for _, bot in ipairs(player.GetBots()) do
            if bot.BotType == BotType then
                bot:Kick()
            end
        end
    end,

    RevolutionTick = function(self, BotType)
        local AllBots = player.GetBots()
        local Humans = 0

        for _, ply in ipairs(player.GetAll()) do
            if ply:IsPlayer() and not ply:IsBot() and ply:Alive() then
                Humans = Humans + 1
            end
        end

        for _, bot in ipairs(AllBots) do
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Genestealer Cult" and not bot.Summon then
                self:CreateGenestealerCultist(bot)
            end
        end

        local deaths = self.DeathsByType[BotType] or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The Genestealer Cult has been destroyed. The hive sleeps once more.", 20, true)
            REVOLUTION_END_TIME = CurTime()
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Genestealer Cult" then
                    bot:Kick()
                end
            end
            self.DeathsByType[BotType] = 0
            REVOLUTION_TABLE[BotType] = "NONE"
        end
    end,

    RecruitCulstist = function(self, amount)
        local AllBots = player.GetBots()
        local druggyCount = 0
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Genestealer Cult" then
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
                randomDruggy:SetNWString("Status", "Genestealer Cult")
                print("[Genestealer Cult] Recruited bot " .. randomDruggy:GetNWString("Name", "Unknown") .. " as a Genestealer Cultist.")
            end
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

        if not RevolutionOnGoing and self.STAGE == "Hidden Influence" then
            local cultistFound = false
            local cultistCount = 0
            for _, bot in ipairs(player.GetBots()) do
                if bot:GetNWString("Status") == "Genestealer Cult" then
                    cultistFound = true
                    cultistCount = cultistCount + 1
                end
            end

            if not cultistFound then
                local candidates = {}
                for _, bot in ipairs(player.GetBots()) do
                    if bot:GetNWString("Status") == "friendly" and (bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen") then
                        table.insert(candidates, bot)
                    end
                end

                if #candidates > 0 then
                    local pick = candidates[math.random(#candidates)]
                    pick:SetNWString("Status", "Genestealer Cult")
                    print("[Genestealer Cult] Planted a new cultist: " .. pick:GetNWString("Name", "Unknown"))
                end
            elseif cultistCount > 10 then
                if not self.NextEnforcerConvert or CurTime() >= self.NextEnforcerConvert then
                    local candidates = {}
                    for _, bot in ipairs(player.GetBots()) do
                        if bot.BotType == "HigherHiveCitizen" or bot.BotType == "LowerHiveCitizen" or bot.BotType == "OuterHiveCitizen" then
                            table.insert(candidates, bot)
                        end
                    end

                    if #candidates > 0 then
                        local chosen = candidates[math.random(#candidates)]
                        self:CreateGenestealerCultist(chosen, true)
                    end

                    self.NextEnforcerConvert = CurTime() + math.random(300, 600)
                end
            end
        end

        local types = {
            "HigherHiveCitizen",
            "LowerHiveCitizen",
            "OuterHiveCitizen"
        }

        for _, bType in ipairs(types) do
            if CheckForRevolutionTrigger(bType, "Genestealer Cult") then
                self:RevolutionTrigger(bType)
                REVOLUTION_TABLE[bType] = "Genestealer Cult"
            end

            if REVOLUTION_TABLE[bType] == "Genestealer Cult" then
                self:GenestealerUprisingTick(bType)
            end
        end
    end
}