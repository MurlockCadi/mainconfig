FACTION_TYPES["Tzeentch Cult"] = {
    STAGE = "Cult Influence",
    CORRUPTION = 0,

    SpreadInfluence = function(self, amount)
        local AllBots = player.GetBots()
        local influencedCount = 0
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Tzeentch Cult" then
                influencedCount = influencedCount + 1
            end
        end
        if influencedCount < amount then
            local candidates = {}
            for _, bot in ipairs(AllBots) do
                local bType = bot.BotType or ""
                if (bType == "HigherHiveCitizen" or bType == "LowerHiveCitizen" or bType == "OuterHiveCitizen") and bot:GetNWString("Status", "friendly") == "friendly" then
                    table.insert(candidates, bot)
                end
            end
            if #candidates > 0 then
                local randomCultist = candidates[math.random(#candidates)]
                randomCultist:SetNWString("Status", "Tzeentch Cult")
                print("[Tzeentch Cult] Enlightened bot " .. randomCultist:GetNWString("Name", "Unknown") .. " with the whispers of Tzeentch. CHANGE IS COMING!")
            end
        end
    end,

    RecruitTzeentchForEveryType = function(self)
        local AllBots = player.GetBots()
        local cultistCount = {
            HigherHiveCitizen = 0,
            LowerHiveCitizen = 0,
            OuterHiveCitizen = 0
        }

        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") == "Tzeentch Cult" then
                local bType = bot.BotType or ""
                if cultistCount[bType] ~= nil then
                    cultistCount[bType] = cultistCount[bType] + 1
                end
            end
        end

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
                    pick:SetNWString("Status", "Tzeentch Cult")
                    print("[Tzeentch Cult] Initiated bot " .. pick:GetNWString("Name", "Unknown") .. " of type " .. bType .. " into the Cult of Change.")
                end
            end
        end
    end,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local roll = math.random(1, 100)
        local chance_to_spawn_elite = 10
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
            local EliteTypeRoll = math.random(1, 100)
            if EliteTypeRoll <= 50 then
                local bloodlettermodel = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl"
                bot:SetModel(bloodlettermodel)
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 3, 1500)
                bot.FightType = "melee"

                bot:SetColor(Color(80, 100, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetRenderFX(kRenderFxPulseFast)

                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Name", "Tzeentch Daemon")
                bot.demon = true
                bot:SetNWString("Description", "Daemon of Tzeentch ready to sow discord and chaos.")
            else
                bot:SetModel("models/wk/sister_tz/tzeentch_sister.mdl")
                health = math.max(health * 3, 1500)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_boltpistoldual"
                bot:SetNWString("Description", "Powerful Sorcerer of Tzeentch, master of change and manipulation.")
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Name", "Tzeentch Sister")

                bot:SetColor(Color(80, 100, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetRenderFX(kRenderFxPulseFast)
            end
        else
            local cult_models = {
                "models/wk/cult/tzeentch_cultist.mdl",
                "models/wk/cult/tzeentch_cultist_heavy.mdl"
            }
            bot:SetModel(cult_models[math.random(#cult_models)])
            local roll = math.random(1, 100)
            if roll <= 25 then
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
            else
                bot.FightType = "melee"
                bot.weapon = "murlock_chaos_knife"
            end
            bot:SetNWString("Name", "Tzeentch Cultist")
            bot:SetNWString("Description", "A cultist of Tzeentch, ready to warp reality in his name.")
        end

        bot:StripWeapons()
        bot:SetNWString("Status", "Tzeentch Cult")
        bot.IsHostile = true
        bot.GoneMad = true
        --Set skin to 0
        bot:SetSkin(0)
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

        if not RevolutionOnGoing then
            self:SpreadInfluence(1)
        end
        local types = {
            "HigherHiveCitizen",
            "LowerHiveCitizen",
            "OuterHiveCitizen"
        }

        for _, bType in ipairs(types) do
            if CheckForRevolutionTrigger(bType, "Tzeentch Cult") then
                self:TzeentchUprising(bType)
                REVOLUTION_TABLE[bType] = "Tzeentch Cult"
            end

            if REVOLUTION_TABLE[bType] == "Tzeentch Cult" then
                self:TzeentchUprisingTick(bType)
            end
        end
    end,

    RevolutionTrigger = function(self, BotType)
        local location = GetLocationName(BotType)

        SendNotificationOTPGLOBAL("Reality fractures as the Cult of Tzeentch seizes control. Change is inevitable.", 20, true)
        NotifyAllPlayers("Tzeentchian corruption is erupting across the " .. location .. "! Stop the madness before it's too late!", 60, true)
        REVOLUTION_START_TIME = CurTime()

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
        --     return true
        -- end

        local Humans = 0
        for _, ply in ipairs(players) do
            if ply:IsPlayer() and not ply:IsBot() and ply:Alive() then
                Humans = Humans + 1
            end
        end

        for _, bot in ipairs(AllBots) do
            if bot.BotType == BotType and bot:GetNWString("Status", "friendly") ~= "Tzeentch Cult" and not bot.redeemed and not bot.Summon then
                self:CreateCultist(bot)
            end
        end

        local deaths = (self.DeathsByType and self.DeathsByType[BotType]) or 0
        local targetDeathCount = GetDeathCountNeeded()

        if deaths >= targetDeathCount then
            SendNotificationOTPGLOBAL("The threads of fate have been unwoven. The Cult of Tzeentch has been broken.", 20, true)
            REVOLUTION_END_TIME = CurTime()
            for _, bot in ipairs(AllBots) do
                if bot.BotType == BotType and bot:GetNWString("Status", "friendly") == "Tzeentch Cult" then
                    bot:Kick()
                end
            end
            self.DeathsByType[BotType] = 0
            REVOLUTION_TABLE[BotType] = "NONE"
        end
    end
}