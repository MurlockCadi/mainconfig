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
            local r = math.random(1, 100)
			
			if r <= 5 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Bomb Rat")
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "BOOM BOOM!")
                health = math.max(health * 1, 1000)

			elseif r <= 15 then
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "RATTLING GUNNER!")
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "RAT-TA-TAT-TAT")
                health = math.max(health * 4, 2000)
	
			elseif r <= 25 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Skaven Warlock")
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A sorcerous Skaven empowered by warpstone.")
                health = math.max(health * 3, 2000)

            elseif r <= 50 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetModelScale(3, 0)
                bot:SetNWString("Name", "Rat Ogre")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_crozius"
                bot:SetNWString("Description", "A hulking Rat Ogre infused with chaos.")
                health = math.max(health * 8, 4000)

            elseif r <= 75 then
                bot:SetModel("models/ulman/storm_rat.mdl")
                bot:SetNWString("Name", "Stormvermin")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Elite Stormvermin warriors wielding heavy shields.")
                health = math.max(health * 5, 3000)

            else
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Warpfire Rattler")
                bot.FightType = "shooting"
                bot.weapon = "murlock_gauss_cannon"
                bot:SetNWString("Description", "Elite rapid-fire Skaven gunner.")
                health = math.max(health * 4, 2500)
            end

        else
            local roll = math.random(1, 100)

            if roll <= 45 then
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetNWString("Name", "Clanrat")
                bot.FightType = "melee"
                if math.random(1, 100) <= 25 then
                    bot.weapon = "murlock_chaos_knife"
                else
                    bot.weapon = "murlock_melee"
                end
                bot:SetNWString("Description", "A basic Skaven Clanrat armed for melee.")
                health = math.max(health * 1, 500)

            elseif roll <= 75 then
                bot:SetModel("models/ulman/red_war_skv.mdl")
                bot:SetNWString("Name", "Red Guard Skaven")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot:SetNWString("Description", "Skaven red warrior with a crude shield.")
                health = math.max(health * 2, 1200)

            else
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot:SetNWString("Name", "Plague Eshin")
                -- if math.random(1, 2) == 1 then
                    bot.FightType = "flamer"
                    bot.weapon = "cat_legacy_flamerheresy"
                -- else
                --     bot.FightType = "shooting"
                --     bot.weapon = "cat_custom_grenade_chem"
                -- end
                bot:SetNWString("Description", "Skaven Eshin armed with toxic weaponry.")
                health = math.max(health * 2, 1500)
            end
        end

        bot:SetNWString("Status", "SKAVEN")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.nocrouch = true
        bot:SetRunSpeed(300)
        bot:SetWalkSpeed(300)
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