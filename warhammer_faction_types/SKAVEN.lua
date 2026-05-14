FACTION_TYPES["SKAVEN"] = {
    STAGE = "THE UNDER-EMPIRE RISES",
    DeathsByType = {},
    OffWorld = true,

    CreateSkaven = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 20
        print("Spawning Skaven bot. Elite:", spawn_elite)
        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)
			
			if roll <= 1 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Bomb Rat")
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "BOOM BOOM!")
                health = math.max(health * 2, 500)

			elseif roll <= 14 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Elite RATTLING GUNNER!")
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "RAT-TA-TAT-TAT")
                health = math.max(health * 7, 2000)
	
			elseif roll <= 21 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Prophet of the Horned Rat")
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A powerful Skaven sorcerer who has been blessed by the Horned Rat.")
                health = math.max(health * 3, 800)

            elseif roll <= 28 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Rat Ogre")
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(2, 0)
                    end
                end)
                bot:SetRunSpeed(290)
                bot:SetWalkSpeed(200)
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_crozius"
                bot:SetNWString("Description", "A hulking Rat Ogre infused with chaos.")
                health = math.max(health * 8, 5000)

            elseif roll <= 35 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Elite Stormvermin")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Stormvermin warriors wielding heavy shields.")
                health = math.max(health * 5, 800)

            elseif roll <= 42 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Elite Warpfire Rattler")
                bot.FightType = "shooting"
                bot.weapon = "murlock_gauss_cannon"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Rapid-fire Skaven gunner.")
                health = math.max(health * 4, 600)

            elseif roll <= 49 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Elite Gutter Runner")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_powerclawcrusade"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetColor(Color(72, 72, 72))
                bot:SetNWString("Description", "Skaven assassin, swift and deadly with razor-sharp claws.")
                health = math.max(health * 4, 800)

            elseif roll <= 56 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Elite Poison Wind Globadier")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_grenade_chem_bot"
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.1, 0)
                    end
                end)
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWString("Description", "Skaven globadier armed with a chemical bomb that releases a deadly poison cloud.")
                health = math.max(health * 4, 600)

            elseif roll <= 63 then
                bot:SetModel("models/ulman/red_war_skv.mdl")
                bot:SetNWString("Name", "Elite Red Guard Skaven")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Skaven red warrior with a crude shield.")
                health = math.max(health * 4, 700)

            elseif roll <= 70 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Elite Warpfire Thrower")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "Skaven equipped with a warpfire thrower, spewing deadly flames at their enemies.")
                health = math.max(health * 2, 500)

            elseif roll <= 80 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Clanrat")
                bot.FightType = "melee"
                if math.random(1, 100) <= 72 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetNWString("Description", "Skaven foot soldier, expendable but dangerous in large numbers.")
                health = math.max(health * 3, 500)
            
            elseif roll <= 90 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Skavenslave")
                bot.FightType = "melee"
                if math.random(1, 100) <= 25 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Skaven slaves armed with crude knives, expendable but dangerous in large numbers.")
                health = math.max(health * 2, 300)
            else
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Elite Skavenslave Spears")
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Skaven slaves armed with crude spears, expendable but dangerous in large numbers.")
                health = math.max(health * 2, 400)

            end

        else
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
                bot:SetNWString("Description", "BOOM BOOM!")
                health = math.max(health * 1.5, 300)

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
                bot:SetNWString("Description", "A hulking Rat Ogre infused with chaos.")
                health = math.max(health * 6, 4000)

            elseif roll <= 35 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Stormvermin")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
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
                bot:SetNWString("Description", "Skaven globadier armed with a chemical bomb that releases a deadly poison cloud.")
                health = math.max(health * 3, 400)

            elseif roll <= 63 then
                bot:SetModel("models/ulman/red_war_skv.mdl")
                bot:SetNWString("Name", "Red Guard Skaven")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Skaven red warrior with a crude shield.")
                health = math.max(health * 3, 600)

            elseif roll <= 70 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Thrower")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(250)
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
                bot:SetNWString("Description", "Skaven slaves armed with crude knives, expendable but dangerous in large numbers.")
                health = math.max(health * 1.5, 200)
            else
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Skavenslave Spears")
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Skaven slaves armed with crude spears, expendable but dangerous in large numbers.")
                health = math.max(health * 1.5, 300)
            end
        end

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
        --print("Spawning Skaven bots...")
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "SKAVEN" then
                self:CreateSkaven(bot,ALWAYS_SPAWN_ELITES)
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
