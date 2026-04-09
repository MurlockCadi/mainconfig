FACTION_TYPES["KHORNE_HORDE"] = {
    STAGE = "BLOOD FOR THE BLOOD GOD",
    DeathsByType = {},
    OffWorld = true,

    CreateKhorneUnit = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()


        local spawn_elite = elite or math.random(1, 100) <= 25

        local TraitorModels = {
            "models/wk/cult/cult_shooter.mdl",
            "models/wk/cult/cult_subof.mdl",
            "models/wk/cult/tr_guardsmen.mdl",
            "models/wk/cult/tr_cult_cu_sup.mdl",
            "models/dizcordum/sodium_blood_pact.mdl"
        }

        if spawn_elite then
            bot.Elite = true
            local EliteTypeRoll = math.random(1, 100)

            if EliteTypeRoll <= 25 then -- Bloodletter
                local bloodlettermodel = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl"
                bot:SetModel(bloodlettermodel)
                bot:SetNWBool("ShieldEnable", true)
                bot.demon = true
                health = math.max(health * 4, 1500)
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                bot:SetNWString("Name", "Bloodletter")
                bot:SetNWString("Description", "A powerful servant of Khorne, ready to spill blood in the name of the Blood God.")

            elseif EliteTypeRoll <= 50 then -- Blood Ogryn
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                health = math.max(health * 9, 3000)
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_heavyboltershoulder"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_crozius"
                end
                bot:SetNWString("Name", "Blood Ogryn")
                bot:SetNWString("Description", "A hulking brute infused with the blood of Khorne.")

            elseif EliteTypeRoll <= 75 then -- Khorngor
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur_khorne.mdl")
                health = math.max(health * 20, 3000)
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                bot.FightType = "melee"
                bot.demon = true
                bot:SetNWString("Name", "Khorngor")
                bot:SetNWString("Description", "A massive beast with the strength of Khorne.")

            else -- Skull Taker
                bot:SetModel("models/sodium_cultist.mdl")
                health = math.max(health * 5, 1500)
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
            bot:SetModel(TraitorModels[math.random(#TraitorModels)])
            local roll = math.random(1, 100)
            if roll <= 5 then
                bot.FightType = "flamer"
                bot.weapon = "cat_chaos_legacy_flamer"
                bot:SetNWString("Description", "A cultist who has been given a flamer!")
                bot:SetNWBool("ShieldEnable", true)
            else
                --50% chance for melee or shooting
                if roll <= 50 then
                    bot.FightType = "melee"
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                end
                bot:SetNWString("Description", "A cultist of Khorne, ready to spill blood in the name of the Blood God.")
            end
            bot:SetNWString("Name", "Khorne Cultist")
        end

        bot:StripWeapons()
        bot:SetNWString("Status", "KHORNE_HORDE")
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        -- Optional death behavior here
    end,

    Think = function(self)
        if BOT_INVASION ~= "KHORNE_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "KHORNE_HORDE" then
                self:CreateKhorneUnit(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}