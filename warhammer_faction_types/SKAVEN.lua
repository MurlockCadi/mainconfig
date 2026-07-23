FACTION_TYPES["SKAVEN"] = {
    STAGE = "THE UNDER-EMPIRE RISES",
    DeathsByType = {},
    OffWorld = true,

    CreateBot = function(self, bot, elite)
        if Skaven_ResetBotFlags then Skaven_ResetBotFlags(bot) end

        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite
        local packGroup = spawn_elite and "SkavenElite" or "SkavenClaw"

        print("Spawning Skaven bot. Elite:", spawn_elite)

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Bomb Rat")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot.CustomThinkFunction = "SkavenBurrowThink"
                bot.SkavenChargeDistance = 900
                bot:SetNWString("Description", "BOOM BOOM! It digs, it giggles, it detonates.")
                health = math.max(health * 2, 500)

            elseif roll <= 14 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "RATTLING GUNNER!")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenPreferredRange = 550
                bot.SkavenHeatLimit = 26
                bot.SkavenMisfireChance = 20
                bot.SkavenAimSteadiness = 1.3
                bot.SkavenFireDot = 0.92
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "RAT-TA-TAT-TAT. Fires until the barrels glow warp-green.")
                health = math.max(health * 7, 2000)

            elseif roll <= 21 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Prophet of the Horned Rat")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.CustomThinkFunction = "SkavenWarlockThink"
                bot.SkavenMiscastChance = 14
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A powerful Skaven sorcerer who has been blessed by the Horned Rat.")
                health = math.max(health * 3, 800)

            elseif roll <= 28 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Rat Ogre")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(2, 0)
                    end
                end)
                bot:SetRunSpeed(290)
                bot:SetWalkSpeed(200)
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_crozius"
                bot.CustomThinkFunction = "SkavenRatOgreThink"
                bot:SetNWString("Description", "A hulking Rat Ogre infused with chaos.")
                health = math.max(health * 8, 5000)

            elseif roll <= 35 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Stormvermin Clawleader")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot.SkavenClawleader = true
                bot.SkavenChargeDistance = 800
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Stormvermin warrior driving the claw-pack forward with a shield and a lash.")
                health = math.max(health * 5, 800)

            elseif roll <= 42 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Rattler")
                bot.FightType = "shooting"
                bot.weapon = "murlock_gauss_cannon"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenPreferredRange = 700
                bot.SkavenHeatLimit = 20
                bot.SkavenMisfireChance = 14
                bot.SkavenAimSteadiness = 0.8
                bot:SetNWString("Description", "Rapid-fire Skaven gunner hauling an unstable warp-cannon.")
                health = math.max(health * 4, 600)

            elseif roll <= 49 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Gutter Runner")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_powerclawcrusade"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetColor(Color(72, 72, 72))
                bot.CustomThinkFunction = "SkavenBurrowThink"
                bot:SetNWString("Description", "Eshin assassin. It tunnels beneath the floor and bursts up behind you.")
                health = math.max(health * 4, 800)

            elseif roll <= 56 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Poison Wind Globadier")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_grenade_chem_bot"
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.1, 0)
                    end
                end)
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.CustomThinkFunction = "SkavenPlagueThink"
                bot.SkavenPlagueBearer = true
                bot:SetNWString("Description", "Globadier trailing a wake of plague. It bursts into a rotting cloud when killed.")
                health = math.max(health * 4, 600)

            elseif roll <= 63 then
                bot:SetModel("models/ulman/red_war_skv.mdl")
                bot:SetNWString("Name", "Red Guard Skaven")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot.SkavenClawleader = true
                bot.SkavenChargeDistance = 800
                bot:SetNWString("Description", "Skaven red warrior with a crude shield.")
                health = math.max(health * 4, 700)

            elseif roll <= 70 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Thrower")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(250)
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenFlamer = true
                bot.SkavenPreferredRange = 260
                bot.SkavenHeatLimit = 14
                bot.SkavenMisfireChance = 30
                bot:SetNWString("Description", "Sprints into contact to bathe the enemy in warpfire, until the tank ruptures.")
                health = math.max(health * 2, 500)

            elseif roll <= 80 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Clanrat")
                bot.FightType = "melee"
                if math.random(1, 100) <= 72 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven foot soldier, expendable but dangerous in large numbers.")
                health = math.max(health * 3, 500)

            elseif roll <= 90 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Skavenslave")
                bot.FightType = "melee"
                if math.random(1, 100) <= 25 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven slaves armed with crude knives, expendable but dangerous in large numbers.")
                health = math.max(health * 2, 300)
            else
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Skavenslave Spears")
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven slaves armed with crude spears, expendable but dangerous in large numbers.")
                health = math.max(health * 2, 400)

            end

        else
            local roll = math.random(1, 100)

            if roll <= 15 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "RATTLING GUNNER!")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenPreferredRange = 550
                bot.SkavenHeatLimit = 22
                bot.SkavenMisfireChance = 24
                bot.SkavenAimSteadiness = 1.4
                bot.SkavenFireDot = 0.92
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "RAT-TA-TAT-TAT")
                health = math.max(health * 5, 1800)

            elseif roll <= 21 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Prophet of the Horned Rat")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.CustomThinkFunction = "SkavenWarlockThink"
                bot.SkavenMiscastChance = 20
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A powerful Skaven sorcerer who has been blessed by the Horned Rat.")
                health = math.max(health * 2, 600)

            elseif roll <= 28 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Rat Ogre")
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(2, 0)
                    end
                end)
                bot:SetRunSpeed(290)
                bot:SetWalkSpeed(200)
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_crozius"
                bot.CustomThinkFunction = "SkavenRatOgreThink"
                bot:SetNWString("Description", "A hulking Rat Ogre infused with chaos.")
                health = math.max(health * 6, 4000)

            elseif roll <= 35 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Stormvermin")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot.SkavenClawleader = true
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Stormvermin warriors wielding heavy shields.")
                health = math.max(health * 4, 700)

            elseif roll <= 42 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Rattler")
                bot.FightType = "shooting"
                bot.weapon = "murlock_gauss_cannon"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenPreferredRange = 700
                bot.SkavenHeatLimit = 18
                bot.SkavenMisfireChance = 18
                bot.SkavenAimSteadiness = 0.9
                bot:SetNWString("Description", "Rapid-fire Skaven gunner.")
                health = math.max(health * 3, 500)

            elseif roll <= 49 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Gutter Runner")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_powerclawcrusade"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetColor(Color(72, 72, 72))
                bot.CustomThinkFunction = "SkavenBurrowThink"
                bot:SetNWString("Description", "Skaven assassin, swift and deadly with razor-sharp claws.")
                health = math.max(health * 3, 600)

            elseif roll <= 56 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Poison Wind Globadier")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_grenade_chem_bot"
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.1, 0)
                    end
                end)
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.CustomThinkFunction = "SkavenPlagueThink"
                bot.SkavenPlagueBearer = true
                bot:SetNWString("Description", "Skaven globadier armed with a chemical bomb that releases a deadly poison cloud.")
                health = math.max(health * 3, 400)

            elseif roll <= 63 then
                bot:SetModel("models/ulman/red_war_skv.mdl")
                bot:SetNWString("Name", "Red Guard Skaven")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot.SkavenClawleader = true
                bot:SetNWString("Description", "Skaven red warrior with a crude shield.")
                health = math.max(health * 3, 600)

            elseif roll <= 70 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Thrower")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(250)
                bot.CustomThinkFunction = "SkavenWarpGunnerThink"
                bot.SkavenFlamer = true
                bot.SkavenPreferredRange = 240
                bot.SkavenHeatLimit = 12
                bot.SkavenMisfireChance = 34
                bot:SetNWString("Description", "Skaven equipped with a warpfire thrower, spewing deadly flames at their enemies.")
                health = math.max(health * 1.5, 400)

            elseif roll <= 80 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Clanrat")
                bot.FightType = "melee"
                if math.random(1, 100) <= 75 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven foot soldier, expendable but dangerous in large numbers.")
                health = math.max(health * 2, 400)

            elseif roll <= 90 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Skavenslave")
                bot.FightType = "melee"
                if math.random(1, 100) <= 25 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven slaves armed with crude knives, expendable but dangerous in large numbers.")
                health = math.max(health * 1.5, 200)
            else
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Skavenslave Spears")
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.CustomThinkFunction = "SkavenSwarmThink"
                bot:SetNWString("Description", "Skaven slaves armed with crude spears, expendable but dangerous in large numbers.")
                health = math.max(health * 1.5, 300)
            end
        end

        bot.CustomThinkFunction = bot.CustomThinkFunction or "SkavenSwarmThink"
        bot.SkavenPackGroup = bot.SkavenPackGroup or packGroup

        bot:SetNWString("Status", "SKAVEN")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.nocrouch = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "SKAVEN" then return end

        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "SKAVEN" then
                self:CreateBot(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}

BOT_SOUND_MANAGER["SKAVEN"] = {
    SONGS_URL = {
    "https://www.imperiumgaming.net/skavenlines/attackallthings.mp3",
    "https://www.imperiumgaming.net/skavenlines/hornedrat.mp3",
    "https://www.imperiumgaming.net/skavenlines/marchskurryyes.mp3",
    "https://www.imperiumgaming.net/skavenlines/quick.mp3",
    "https://www.imperiumgaming.net/skavenlines/raka.mp3",
    "https://www.imperiumgaming.net/skavenlines/skitterthanleap.mp3"
    },

    COOLDOWN_MIN = 3,
    COOLDOWN_MAX = 8
}
