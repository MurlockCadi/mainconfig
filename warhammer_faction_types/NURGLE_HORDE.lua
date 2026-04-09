FACTION_TYPES["NURGLE_HORDE"] = {
    STAGE = "PLAGUE BREWS",
    DeathsByType = {},
    OffWorld = true,

    CreatePoxwalker = function(self, bot, elite)
        local TotalPlayers = 0
        for _, ply in ipairs(player.GetHumans()) do
            if ply:IsPlayer() and ply:Alive() then
                TotalPlayers = TotalPlayers + 1
            end
        end

        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 10)
            if roll <= 5 then
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos_plague.mdl")
                health = math.max(health * 5, 3000)
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
            else
                bot:SetModel("models/wk/nurglit/wk_nurgl.mdl")
                health = math.max(health * 3, 2000)
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_chaos_legacy_powerswordnurgle"
                end
                bot.speed = 500
                bot.demon = true
                bot:SetNWString("Name", "Champion of Nurgle")
                bot:SetNWString("Description", "Vile Mutant Champion of Nurgle, spreading disease and decay.")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            local cultistroll = math.random(1, 100)
            if cultistroll <= 30 then
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.demon = true
                bot.weapon = "murlock_chaos_knife"
                bot:SetNWString("Name", "Nurgling")
                bot:SetNWString("Description", "A small but deadly servant of Nurgle.")
                bot:SetNWBool("ShieldEnable", false)
            elseif cultistroll <= 60 then
                bot:SetModel("models/wk/nurglit/poxwalker.mdl")
                if math.random(1, 100) <= 50 then
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
            elseif cultistroll <= 90 then
                bot:SetModel("models/wk/nurglit/wk_nurcul.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
                bot:SetNWString("Name", "Nurgle Cultist")
                bot:SetNWString("Description", "Diseased and Mutated cultist of Nurgle.")
                bot:SetNWBool("ShieldEnable", false)
            else
                bot:SetModel("models/wk/nurglit/wk_nur_sor.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
				bot.pysker = true
                bot:SetNWString("Name", "Plague Sorcerer")
                bot:SetNWString("Description", "A cultist who has been granted the power of decay by Nurgle.")
                bot:SetNWBool("ShieldEnable", true)
            end
        end

        bot:SetNWString("Status", "NURGLE_HORDE")
        bot:StripWeapons()
        bot:SetNWString("Name", "Nurgle Poxwalker")
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
        -- Optional: handle special death effects
    end,

    Think = function(self)
        --print("[Albino Murlock Bots] Nurgle Horde Think called")
        if BOT_INVASION ~= "NURGLE_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "NURGLE_HORDE" then
                self:CreatePoxwalker(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end
}