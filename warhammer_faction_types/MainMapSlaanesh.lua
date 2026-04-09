FACTION_TYPES["Slaanesh"] = {
    STAGE = "Hidden Influence",
    DeathsByType = {},
    OffWorld = false,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local spawn_elite = false
        local chance_to_spawn_elite = 30

        --Check to see if we are in a revolution
        local revolutionActive = IN_FACTION_REVOLUTION

        if revolutionActive then
            -- How far are we into the revolution?
            local deathsneeded = GetDeathCountNeeded()
            local health = FACTION_REVOLUTION_HEALTH

            revolutionStrength = deathsneeded / health

            if revolutionStrength >= 0.4 then
                chance_to_spawn_elite = 30 -- 30% chance to spawn as an elite
            elseif revolutionStrength >= 0.6 then
                chance_to_spawn_elite = 50 -- 50% chance to spawn as an elite
            elseif revolutionStrength >= 0.8 then
                chance_to_spawn_elite = 85 -- 85% chance to spawn as an elite
            elseif revolutionStrength >= 0.9 then
                chance_to_spawn_elite = 100 -- 100% chance to spawn as an elite
            end
        end

        spawn_elite = math.random(1, 100) <= chance_to_spawn_elite

        if elite then
            spawn_elite = true
        end

        if spawn_elite then
            bot.Elite = true
            health = math.max(health * 2, 100)
            bot:SetNWString("Name", "Daemonette")
            --randomly choose between two models
            local model = math.random(1, 2) == 1 and "models/player/hsc/taryel_the_demon.mdl" or "models/ulman/nkari_demoman.mdl"
            bot:SetModel(model)
            bot.FightType = "melee"
            bot.Speed = 2
            bot.demon = true
            bot:SetRunSpeed(500)
            bot:SetWalkSpeed(500)
            bot:SetColor(Color(255, 100, 180))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
            bot:SetNWString("Description", "A lithe Daemonette of Slaanesh, deadly fast and seductively cruel.")
        else
            local cultistType = math.random(1, 100)
            if cultistType <= 90 then
                bot:SetNWString("Name", "Slaaneshi Cultist")
                bot:SetModel("models/gonzo/cultistcolours/cultistcolours.mdl")
                bot:SetSkin(1)
                bot:SetColor(Color(255, 100, 180))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                local shootroll = math.random(1, 100)
                bot:SetNWString("Description", "A depraved mortal in thrall to the Dark Prince.")
                if shootroll <= 70 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "murlock_melee"
                end
            else
                bot:SetNWString("Name", "Slaaneshi Sorcerer")
                bot:SetModel("models/gonzo/cultistcolours/cultistcolours.mdl")
                bot:SetSkin(1)
                bot.FightType = "shooting"
                bot:SetColor(Color(255, 120, 200))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "A warp-touched psyker devoted to Slaanesh.")
                bot:SetNWBool("ShieldEnable", true)
            end
        end

        bot:SetNWString("Status", "Slaanesh")
        bot:StripWeapons()
        bot.nobodygroups = true
        --RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    RevolutionTrigger = function(self, BotType)

        local location = GetLocationName(BotType)
        
        print("[Slaanesh Cult] Uprising Triggered in " .. BotType .. " at " .. location)
        REVOLUTION_START_TIME = CurTime()
        SendNotificationOTPGLOBAL("The Cult of Slaanesh reveals itself! Ecstasy and agony as one!", 20, true)
        NotifyAllPlayers("Slaaneshi uprising in the " .. location .. "! Purge the heretics!", 60, true)

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
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Slaanesh" and not bot.Summon then
                self:CreateCultist(bot)
            end
        end

        local deaths = self.DeathsByType[BotType] or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The Slaaneshi cult is purged. The Dark Prince weeps in silence.", 20, true)
            REVOLUTION_END_TIME = CurTime()
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Slaanesh" then
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

        if not RevolutionOnGoing and self.STAGE == "Hidden Influence" then
            local cultistFound = false
            local cultistCount = 0
            for _, bot in ipairs(player.GetBots()) do
                if bot:GetNWString("Status") == "Slaanesh" then
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
                    pick:SetNWString("Status", "Slaanesh")
                    print("[Slaanesh Cult] Planted a new cultist: " .. pick:GetNWString("Name", "Unknown"))
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
                        self:CreateCultist(chosen, true)
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
            if CheckForRevolutionTrigger(bType, "Slaanesh") then
                self:SlaaneshUprising(bType)
                REVOLUTION_TABLE[bType] = "Slaanesh"
            end

            if REVOLUTION_TABLE[bType] == "Slaanesh" then
                self:SlaaneshUprisingTick(bType)
            end
        end
    end
}