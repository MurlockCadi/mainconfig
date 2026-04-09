FACTION_TYPES["TRAITOR_GUARDSMEN"] = {
    STAGE = "FREEDOM",
    DeathsByType = {},
    OffWorld = true,

    CreateTraitorGuardsmen = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 5

        local TraitorModels = {
            "models/wk/cult/cult_shooter.mdl",
            "models/wk/cult/cult_subof.mdl",
            "models/wk/cult/tr_guardsmen.mdl",
            "models/wk/cult/tr_cult_cu_sup.mdl"
        }

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 10 then
                health = math.max(health * 3, 1000)
                bot:SetNWString("Name", "Traitor Officer")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_boltpistolpowersword"
                bot:SetNWString("Description", "Officer who has turned against the Imperium.")
                bot:SetNWBool("ShieldEnable", true)

            elseif roll <= 30 then
                health = math.max(health * 4, 2000)
                bot:SetNWString("Name", "Traitor Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_legacy_heavybolterheresy"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainaxeheresy"
                end
                bot:SetNWString("Description", "Ogryn who has turned against the Imperium.")

            elseif roll <= 40 then
                health = math.max(health * 3, 600)
                bot:SetNWString("Name", "Heavy Traitor Guardsman")
                bot:SetModel("models/wk/cult/cult_cu_heavy.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_boardingshield_bolterphobos"
                bot:SetNWString("Description", "Heavy Guardsman who has turned against the Imperium.")

            elseif roll <= 50 then
                health = math.max(health * 2, 500)
                bot:SetNWString("Name", "Flamer Traitor Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "flamer"
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "Ratling who has turned against the Imperium.")

            elseif roll <= 60 then
                health = math.max(health * 3, 600)
                bot:SetNWString("Name", "Traitor Commissar")
                bot:SetModel("models/knight_ig/muschi_ig_comissar.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainswordheresy"
                end
                bot:SetNWString("Description", "Commissar who has turned against the Imperium.")

            elseif roll <= 70 then
                health = math.max(health * 3, 600)
                bot:SetNWString("Name", "Traitor Squat")
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_bolterheresy"
                bot:SetNWString("Description", "Squat who has turned against the Imperium.")

            else
                health = math.max(health * 2, 400)
                bot:SetNWString("Name", "Traitor Guardsman")
                bot:SetModel(TraitorModels[math.random(#TraitorModels)])
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "Guardsman who has turned against the Imperium.")
            end
        else
            local roll = math.random(1, 100)

            if roll <= 10 then
                health = math.max(health * 2, 800)
                bot:SetNWString("Name", "Traitor Officer")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_boltpistolpowersword"
                bot:SetNWString("Description", "Officer who has turned against the Imperium.")
                bot:SetNWBool("ShieldEnable", true)

            elseif roll <= 30 then
                health = math.max(health * 3, 1500)
                bot:SetNWString("Name", "Traitor Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_legacy_heavybolterheresy"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainaxeheresy"
                end
                bot:SetNWString("Description", "Ogryn who has turned against the Imperium.")

            elseif roll <= 40 then
                health = math.max(health * 2, 500)
                bot:SetNWString("Name", "Heavy Traitor Guardsman")
                bot:SetModel("models/wk/cult/cult_cu_heavy.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_boardingshield_bolterphobos"
                bot:SetNWString("Description", "Heavy Guardsman who has turned against the Imperium.")

            elseif roll <= 50 then
                health = math.max(health * 1, 400)
                bot:SetNWString("Name", "Flamer Traitor Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "flamer"
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "Ratling who has turned against the Imperium.")

            elseif roll <= 60 then
                health = math.max(health * 2, 500)
                bot:SetNWString("Name", "Traitor Commissar")
                bot:SetModel("models/knight_ig/muschi_ig_comissar.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainswordheresy"
                end
                bot:SetNWString("Description", "Commissar who has turned against the Imperium.")

            elseif roll <= 70 then
                health = math.max(health * 2, 500)
                bot:SetNWString("Name", "Traitor Squat")
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_bolterheresy"
                bot:SetNWString("Description", "Squat who has turned against the Imperium.")

            else
                health = math.max(health * 1, 300)
                bot:SetNWString("Name", "Traitor Guardsman")
                bot:SetModel(TraitorModels[math.random(#TraitorModels)])
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "Guardsman who has turned against the Imperium.")
            end
        end

        bot:SetNWString("Status", "TRAITOR_GUARDSMEN")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "TRAITOR_GUARDSMEN" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "TRAITOR_GUARDSMEN" then
                self:CreateTraitorGuardsmen(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}