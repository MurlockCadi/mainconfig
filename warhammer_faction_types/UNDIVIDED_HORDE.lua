FACTION_TYPES["UNDIVIDED_HORDE"] = {
    STAGE = "THE DARK GODS UNITE",
    DeathsByType = {},
    OffWorld = true,

    CreateUndividedUnit = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            bot.Elite = true
            local EliteTypeRoll = math.random(1, 100)
            -- Elite pool across all 4 gods
            if EliteTypeRoll <= 20 then
                -- Bloodletter
                bot:SetModel(math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 2, 1500)
                bot.FightType = "melee"
                bot.demon = true
                bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                bot:SetNWString("Name", "Bloodletter")
                bot:SetNWString("Description", "A powerful servant of Khorne, eager to spill blood.")

            elseif EliteTypeRoll <= 35 then
                -- Blood Ogryn
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                health = math.max(health * 8.5, 3000)
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_heavyboltershoulder"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_crozius"
                end
                bot:SetNWString("Name", "Blood Ogryn")
                bot:SetNWString("Description", "A hulking brute infused with Khorne’s rage.")

            elseif EliteTypeRoll <= 50 then
                -- Khorngor
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur_khorne.mdl")
                health = math.max(health * 10, 3000)
                bot.demon = true
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                bot.FightType = "melee"
                bot:SetNWString("Name", "Khorngor")
                bot:SetNWString("Description", "A massive beast empowered by Khorne.")

            elseif EliteTypeRoll <= 65 then
                -- Champion of Nurgle
                bot:SetModel("models/wk/nurglit/wk_nurgl.mdl")
                bot.demon = true
                health = math.max(health * 5, 2000)
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_powerswordnurgle"
                end
                bot.speed = 500
                bot:SetNWString("Name", "Champion of Nurgle")
                bot:SetNWString("Description", "A vile champion, spreading decay.")

            elseif EliteTypeRoll <= 80 then
                -- Tzeentch Daemon
                local bloodlettermodel = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl"
                bot:SetModel(bloodlettermodel)
                bot:SetNWBool("ShieldEnable", true)
                bot.demon = true
                health = math.max(health * 2, 1500)
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Name", "Tzeentch Daemon")
                bot:SetNWString("Description", "A daemon of Tzeentch, sowing change.")
                bot:SetColor(Color(80, 100, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetRenderFX(kRenderFxPulseFast)

            elseif EliteTypeRoll <= 95 then
                -- Daemonette
                bot:SetNWString("Name", "Daemonette")
                health = math.max(health * 2, 1000)
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(500)
                bot.demon = true
                bot:SetWalkSpeed(500)
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot:SetNWString("Description", "A lithe daemonette of Slaanesh.")
                bot:SetColor(Color(255, 100, 180))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)

            else
                -- Keeper of Secrets
                bot:SetNWString("Name", "Keeper of Secrets")
                health = math.max(health * 8.5, 1000)
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.demon = true
                bot:SetModelScale(2.5)
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A towering daemon prince of Slaanesh.")
                bot:SetColor(Color(255, 100, 180))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            end

        else
            -- Non-elite cultist pool
            local roll = math.random(1, 100)
            if roll <= 20 then
                -- Khorne Cultist
                bot:SetModel("models/dizcordum/sodium_blood_pact.mdl")
                if math.random(1, 100) <= 50 then
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                end
                bot:SetNWString("Name", "Khorne Cultist")
                bot:SetNWString("Description", "A blood-mad cultist of Khorne.")

            elseif roll <= 40 then
                -- Nurgle Cultist / Poxwalker / Nurgling
                local nurgle_roll = math.random(1, 3)
                if nurgle_roll == 1 then
                    bot:SetModel("models/wk/nurglit/poxwalker.mdl")
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                    bot:SetNWString("Name", "Poxwalker")
                    bot:SetNWString("Description", "A grotesque servant of Nurgle.")
                elseif nurgle_roll == 2 then
                    bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                    bot.demon = true
                    bot:SetNWString("Name", "Nurgling")
                    bot:SetNWString("Description", "A tiny but dangerous daemon of Nurgle.")
                else
                    bot:SetModel("models/wk/nurglit/wk_nurcul.mdl")
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                    bot:SetNWString("Name", "Nurgle Cultist")
                    bot:SetNWString("Description", "A diseased cultist of Nurgle.")
                end

            elseif roll <= 60 then
                -- Tzeentch Cultist
                local cult_models = {
                    "models/wk/cult/tzeentch_cultist.mdl",
                    "models/wk/cult/tzeentch_cultist_heavy.mdl"
                }
                bot:SetModel(cult_models[math.random(#cult_models)])
                if math.random(1, 100) <= 25 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_sorcererstaff"
					bot.pysker = true
                else
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                end
                bot:SetNWString("Name", "Tzeentch Cultist")
                bot:SetNWString("Description", "A cultist of Tzeentch.")

            else
                -- Slaaneshi Cultist / Sorcerer
                if math.random(1, 100) <= 80 then
                    bot:SetModel("models/gonzo/cultistcolours/cultistcolours.mdl")
                    bot:SetSkin(1)
                    bot:SetColor(Color(255, 100, 180))
                    bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                    bot.FightType = "melee"
                    bot.weapon = "murlock_melee"
                    bot:SetNWString("Name", "Slaaneshi Cultist")
                    bot:SetNWString("Description", "A depraved mortal of Slaanesh.")
                else
                    bot:SetModel("models/gonzo/cultistcolours/cultistcolours.mdl")
                    bot:SetSkin(1)
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_sorcererstaff"
					bot.pysker = true
                    bot:SetNWString("Name", "Slaaneshi Sorcerer")
                    bot:SetNWString("Description", "A warp-touched sorcerer of Slaanesh.")
                    bot:SetColor(Color(255, 120, 200))
                    bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                    bot:SetNWBool("ShieldEnable", true)
                end
            end
        end

        -- Common setup
        bot:StripWeapons()
        bot:SetNWString("Status", "UNDIVIDED_HORDE")
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "UNDIVIDED_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "UNDIVIDED_HORDE" then
                self:CreateUndividedUnit(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}