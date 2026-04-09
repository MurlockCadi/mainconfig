FACTION_TYPES["SLAANESH_OFFWORLD"] = {
    STAGE = "THE DARK PRINCE'S HOST",
    DeathsByType = {},
    OffWorld = true,

    CreateSlaaneshInvader = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()


        local spawn_elite = elite or math.random(1, 100) <= 50

        if spawn_elite then
            local elite_roll = math.random(1, 100) 
            bot.Elite = true
            if elite_roll <= 90 then
                bot:SetNWString("Name", "Daemonette")
                health = math.max(health * 2, 1000)
                --randomly choose between two models
                local model = math.random(1, 2) == 1 and "models/player/hsc/taryel_the_demon.mdl" or "models/ulman/nkari_demoman.mdl"
                bot:SetModel(model)
                bot.FightType = "melee"
                bot:SetRunSpeed(500)
                bot.demon = true
                bot:SetWalkSpeed(500)
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot:SetNWString("Description", "A lithe Daemonette of Slaanesh, deadly fast and seductively cruel.")
            else
                bot:SetNWString("Name", "Keeper of Secrets")
                health = math.max(health * 25, 1000)
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(450)
                bot.demon = true
                bot:SetModelScale(2.5)
                bot:SetWalkSpeed(450)
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A towering Daemon Prince of Slaanesh, embodying excess and pleasure.")
                bot:SetNWBool("ShieldEnable", false)
            end
            bot:SetColor(Color(255, 100, 180))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
        else
            local cultistType = math.random(1, 100)
            if cultistType <= 85 then
                bot:SetNWString("Name", "Slaaneshi Cultist")
                bot:SetModel("models/gonzo/cultistcolours/cultistcolours.mdl")
                bot:SetSkin(1)
                bot:SetColor(Color(255, 100, 180))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "A depraved mortal in thrall to the Dark Prince.")
                local shootroll = math.random(1, 100)
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
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
				bot.pysker = true
                bot:SetNWString("Description", "A warp-touched psyker devoted to Slaanesh.")
                bot:SetColor(Color(255, 120, 200))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWBool("ShieldEnable", true)
            end
        end

        bot:SetNWString("Status", "SLAANESH_OFFWORLD")
        bot:StripWeapons()
        bot.nobodygroups = true
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)

        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "SLAANESH_OFFWORLD" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "SLAANESH_OFFWORLD" then
                self:CreateSlaaneshInvader(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}