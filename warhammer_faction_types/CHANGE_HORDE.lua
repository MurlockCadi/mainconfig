FACTION_TYPES["CHANGE_HORDE"] = {
    STAGE = "BLOOD FOR THE BLOOD GOD",
    DeathsByType = {},
    OffWorld = true,

    CreateTzeentchCult = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        -- print("Creating Tzeentch Cultist Bot. Base Health:", health)

        local roll = math.random(1, 100)
        local chance_to_spawn_elite = 10
        spawn_elite = false

        local revolutionActive = false
        for _, v in pairs(REVOLUTION_TABLE) do
            if v ~= "NONE" then revolutionActive = true end
            break
        end

        if revolutionActive then
            -- How far are we into the revolution?
            local deathsneeded = GetDeathCountNeeded()
            local BotType = bot.BotType
            local deaths = (self.DeathsByType and self.DeathsByType[BotType]) or 0

            revolutionStrength = deaths / deathsneeded
            if revolutionStrength >= 0.4 then
                chance_to_spawn_elite = 20 -- 20% chance to spawn as an elite
            elseif revolutionStrength >= 0.6 then
                chance_to_spawn_elite = 40 -- 30% chance to spawn as an elite
            elseif revolutionStrength >= 0.8 then
                chance_to_spawn_elite = 50 -- 40% chance to spawn as an elite
            elseif revolutionStrength >= 0.9 then
                chance_to_spawn_elite = 75 -- 50% chance to spawn as an elite
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
                bot.demon = true
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 3, 1500)
                bot.FightType = "melee"

                bot:SetColor(Color(80, 100, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetRenderFX(kRenderFxPulseFast)

                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Name", "Tzeentch Demon")
                bot:SetNWString("Description", "Demon of Tzeentch ready to sow discord and chaos.")
            else
                bot:SetModel("models/wk/sister_tz/tzeentch_sister.mdl")
                health = math.max(health * 2.55, 1500)
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
        bot:SetNWString("Status", "CHANGE_HORDE")
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        --Set skin to 0
        bot:SetSkin(0)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "CHANGE_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "CHANGE_HORDE" then
                self:CreateTzeentchCult(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}