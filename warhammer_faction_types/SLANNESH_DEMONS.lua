local DAEMONETTE_MODELS = {
    "models/player/hsc/taryel_the_demon.mdl",
    "models/ulman/nkari_demoman.mdl"
}

FACTION_TYPES["SLANNESH_DEMONS"] = {
    STAGE = "THE DARK PRINCE'S HOST",
    DeathsByType = {},
    OffWorld = true,

    CreateBot = function(self, bot, elite)
        if Slaanesh_ResetBotFlags then Slaanesh_ResetBotFlags(bot) end

        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 50

        bot.demon = true
        bot.SlaaneshDaemon = true

        if spawn_elite then
            bot.Elite = true

            local elite_roll = math.random(1, 100)

            if elite_roll <= 4 then
                bot:SetNWString("Name", "Keeper of Secrets")
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot.CustomThinkFunction = "SlaaneshKeeperThink"
                bot.SlaaneshKeeper = true
                bot:SetRunSpeed(450)
                bot:SetWalkSpeed(450)
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(2.5, 0)
                    end
                end)
                bot:SetNWBool("ShieldEnable", false)
                bot:SetColor(Color(255, 100, 180))
                bot:SetNWString("Description", "A towering Greater Daemon of Slaanesh. It stalks, then closes the distance far faster than anything that size should.")
                health = math.max(health * 25, 1000)

            elseif elite_roll <= 14 then
                bot:SetNWString("Name", "Herald of Slaanesh")
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.CustomThinkFunction = "SlaaneshSorcererThink"
                bot.SlaaneshHerald = true
                bot.SlaaneshPreferredRange = 750
                bot.pysker = true
                bot:SetRunSpeed(420)
                bot:SetWalkSpeed(420)
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.6, 0)
                    end
                end)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetColor(Color(255, 60, 160))
                bot:SetNWString("Description", "Conductor of the host. It blesses its sisters and sings the Cacophonic Choir when the prey draws close.")
                health = math.max(health * 6, 2000)

            elseif elite_roll <= 32 then
                bot:SetNWString("Name", "Slaaneshi Sorcerer")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.CustomThinkFunction = "SlaaneshSorcererThink"
                bot.SlaaneshPreferredRange = 700
                bot.pysker = true
                bot:SetRunSpeed(450)
                bot:SetWalkSpeed(450)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetColor(Color(255, 120, 200))
                bot:SetNWString("Description", "A warp-touched daemon sorcerer. It channels openly before it casts, and the spell dies if you break its sight.")
                health = math.max(health * 3, 900)

            elseif elite_roll <= 50 then
                bot:SetNWString("Name", "Fiend of Slaanesh")
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshDaemonetteThink"
                bot.SlaaneshDirectRush = true
                bot.SlaaneshLungeRange = 500
                bot.SlaaneshLungeForce = 700
                bot.SlaaneshEngageRange = 240
                bot:SetRunSpeed(430)
                bot:SetWalkSpeed(430)
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.4, 0)
                    end
                end)
                bot:SetColor(Color(200, 80, 200))
                bot:SetNWString("Description", "A loping, many-limbed horror that pounces from well outside melee reach.")
                health = math.max(health * 4, 1200)

            elseif elite_roll <= 70 then
                bot:SetNWString("Name", "Seeker of Slaanesh")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshSeekerThink"
                bot:SetRunSpeed(560)
                bot:SetWalkSpeed(560)
                bot:SetColor(Color(255, 140, 220))
                bot:SetNWString("Description", "Never still. It strikes for a few heartbeats, withdraws, and circles back from another angle.")
                health = math.max(health * 2, 900)

            else
                bot:SetNWString("Name", "Daemonette of the Sixth Circle")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshDaemonetteThink"
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot:SetColor(Color(255, 100, 180))
                bot:SetNWString("Description", "A lithe Daemonette of Slaanesh, deadly fast and seductively cruel.")
                health = math.max(health * 2, 1000)
            end

        else
            local roll = math.random(1, 100)

            if roll <= 25 then
                bot:SetNWString("Name", "Seeker of Slaanesh")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshSeekerThink"
                bot:SetRunSpeed(540)
                bot:SetWalkSpeed(540)
                bot:SetColor(Color(255, 140, 220))
                bot:SetNWString("Description", "A swift-hunting daemon that darts in, opens a wound, and dances away again.")
                health = math.max(health * 1.5, 500)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Daemonette")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshDaemonetteThink"
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot:SetColor(Color(255, 100, 180))
                bot:SetNWString("Description", "A lithe Daemonette of Slaanesh. It circles for an opening rather than charging straight in.")
                health = math.max(health * 1.5, 600)

            else
                bot:SetNWString("Name", "Daemonette Songstress")
                bot:SetModel(DAEMONETTE_MODELS[math.random(#DAEMONETTE_MODELS)])
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordslaanesh"
                bot.CustomThinkFunction = "SlaaneshDaemonetteThink"
                bot.SlaaneshLungeRange = 420
                bot.SlaaneshLungeForce = 620
                bot:SetRunSpeed(520)
                bot:SetWalkSpeed(520)
                bot:SetColor(Color(255, 80, 190))
                bot:SetNWString("Description", "She leads the dance from the front, and leaps the last of the distance herself.")
                health = math.max(health * 2, 700)
            end
        end

        bot.CustomThinkFunction = bot.CustomThinkFunction or "SlaaneshDaemonetteThink"

        bot:SetRenderMode(RENDERMODE_TRANSALPHA)
        bot:SetNWString("Status", "SLANNESH_DEMONS")
        bot:StripWeapons()
        bot.nobodygroups = true
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot.nocrouch = true
        bot:SetNWInt("SlaaneshFervor", math.random(100, 300))
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)

        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "SLANNESH_DEMONS" then return end

        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "SLANNESH_DEMONS" then
                self:CreateBot(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}

FACTION_TYPES["SLANNESH_DEMONS"].CreateSlaaneshInvader = FACTION_TYPES["SLANNESH_DEMONS"].CreateBot
