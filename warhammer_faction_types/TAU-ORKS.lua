FACTION_TYPES["TAU-ORKS"] = {
    STAGE = "GREATER WAAAGH! FOR DA GREATER GOOD",
    DeathsByType = {},
    OffWorld = true,

    CreateTauOrk = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        if spawn_elite then
            local roll = math.random(1, 100)

            
		if roll <= 1 then
            bot:SetNWString("Name", "DA GREATAH LOOTAH BOZZ!")
            bot:SetModel("models/boss_grimskull.mdl")
            bot:SetNWString("Description", "This boss was conviced about the greater good and is now leading the greatest WAAAGH!")
            bot.FightType = "hybrid"
            bot.weapon = "tfa_big_shoota"
            bot.meleeweapon = "tfa_uge_hammer"
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
	        bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 7, 5000)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 8 then
            bot:SetNWString("Name", "CRISIS LOOTAH!")
            bot:SetModel("models/player/crisis_battlesuit.mdl")
            bot:SetNWString("Description", "A looted crisis suit, still functional and deadly in the hands of an ork.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_crisis"
            else
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                health = health * 1.2
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 7, 2000)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 15 then
            bot:SetNWString("Name", "BROADSIDE LOOTAH!")
            bot:SetModel("models/broadside.mdl")
            bot:SetNWString("Description", "A looted broadside battlesuit, still functional and deadly in the hands of an ork.")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_broadside"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 6, 2000)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 25 then
            bot:SetNWString("Name", "GOOD WIERD BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_komandoz.mdl")
            bot:SetNWString("Description", "Gave up on Gork and Mork and now serves the greater good.")
            bot.FightType = "shooting"
            bot.weapon = "cat_chaos_legacy_sorcererstaff"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 4, 700)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 35 then
            bot:SetNWString("Name", "GOOD BOY?")
            bot:SetModel("models/wizard/kroot.mdl")
            bot:SetNWString("Description", "Ate to many orks and now thinks they are an ork.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_pulserifle"
            else
                bot.FightType = "shooting"
                bot.weapon = "tfa_kustom_shoota"
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            RandomonizeBodygroupsAndSkins(bot)
            health = math.max(health * 4, 600)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 45 then
            bot:SetNWString("Name", "GOOD HEAVY BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_heavy_boy.mdl")
            bot:SetNWString("Description", "A well armored ork that now lives for the greater good.")
            bot.FightType = "shooting"
            bot.weapon = "tfa_big_shoota"
            bot:SetRunSpeed(250)
            bot:SetWalkSpeed(250)
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            RandomonizeBodygroupsAndSkins(bot)
            health = math.max(health * 4, 1000)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 55 then
            bot:SetNWString("Name", "GOOD BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_wild.mdl")
            bot:SetNWString("Description", "A wild ork that has looted tau technology.")
            bot.FightType = "shooting"
            if math.random(1, 2) == 1 then
                bot.weapon = "murlock_pulserifle"
            else
                bot.weapon = "tfa_shoota"
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 4, 800)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 70 then
            bot:SetNWString("Name", "GOOD SLAVE BOY!")
            bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
            bot:SetNWString("Description", "Forced to believe in the greater good.")
            bot.FightType = "melee"
            bot.weapon = "murlock_fists"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 3, 400)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 85 then
            bot:SetNWString("Name", "GOOD GRETCHIN!")
            bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
            bot:SetNWString("Description", "A Gretchin that now lives for the greater good.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
            else
                bot.FightType = "melee"
                bot.weapon = "tfa_choppa"
            end
            health = math.max(health * 3, 400)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 100 then
            bot:SetNWString("Name", "GOOD SNOTLING!")
            bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
            bot:SetNWString("Description", "A Snotling that now lives for the greater good.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_pulserifle"
            else
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
            end
            health = math.max(health * 3, 300)
            bot:SetColor(Color(124, 207, 255))

        end

        else
            local roll = math.random(1, 100)

		if roll <= 1 then
            bot:SetNWString("Name", "DA GREATAH LOOTAH BOZZ!")
            bot:SetModel("models/boss_grimskull.mdl")
            bot:SetNWString("Description", "This boss was conviced about the greater good and is now leading the greatest WAAAGH!")
            bot.FightType = "hybrid"
            bot.weapon = "tfa_big_shoota"
            bot.meleeweapon = "tfa_uge_hammer"
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
	        bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 6, 4000)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 8 then
            bot:SetNWString("Name", "CRISIS LOOTAH!")
            bot:SetModel("models/player/crisis_battlesuit.mdl")
            bot:SetNWString("Description", "A looted crisis suit, still functional and deadly in the hands of an ork.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_crisis"
            else
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                health = health * 1.2
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 6, 1800)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 15 then
            bot:SetNWString("Name", "BROADSIDE LOOTAH!")
            bot:SetModel("models/broadside.mdl")
            bot:SetNWString("Description", "A looted broadside battlesuit, still functional and deadly in the hands of an ork.")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_broadside"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 5, 1800)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 25 then
            bot:SetNWString("Name", "GOOD WIERD BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_komandoz.mdl")
            bot:SetNWString("Description", "Gave up on Gork and Mork and now serves the greater good.")
            bot.FightType = "shooting"
            bot.weapon = "cat_chaos_legacy_sorcererstaff"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 5, 600)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 35 then
            bot:SetNWString("Name", "GOOD BOY?")
            bot:SetModel("models/wizard/kroot.mdl")
            bot:SetNWString("Description", "Ate to many orks and now thinks they are an ork.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_pulserifle"
            else
                bot.FightType = "shooting"
                bot.weapon = "tfa_kustom_shoota"
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            RandomonizeBodygroupsAndSkins(bot)
            health = math.max(health * 3, 500)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 45 then
            bot:SetNWString("Name", "GOOD HEAVY BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_heavy_boy.mdl")
            bot:SetNWString("Description", "A well armored ork that now lives for the greater good.")
            bot.FightType = "shooting"
            bot.weapon = "tfa_big_shoota"
            bot:SetRunSpeed(250)
            bot:SetWalkSpeed(250)
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            RandomonizeBodygroupsAndSkins(bot)
            health = math.max(health * 3, 900)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 55 then
            bot:SetNWString("Name", "GOOD BOY!")
            bot:SetModel("models/muschi/orks/muschi_ork_wild.mdl")
            bot:SetNWString("Description", "A wild ork that has looted tau technology.")
            bot.FightType = "shooting"
            if math.random(1, 2) == 1 then
                bot.weapon = "murlock_pulserifle"
            else
                bot.weapon = "tfa_shoota"
            end
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 3, 700)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 70 then
            bot:SetNWString("Name", "GOOD SLAVE BOY!")
            bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
            bot:SetNWString("Description", "Forced to believe in the greater good.")
            bot.FightType = "melee"
            bot.weapon = "murlock_fists"
            timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.1, 0)
                end
            end)
            health = math.max(health * 2, 500)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 85 then
            bot:SetNWString("Name", "GOOD GRETCHIN!")
            bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
            bot:SetNWString("Description", "A Gretchin that now lives for the greater good.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
            else
                bot.FightType = "melee"
                bot.weapon = "tfa_choppa"
            end
            health = math.max(health * 2, 400)
            bot:SetColor(Color(124, 207, 255))

        elseif roll <= 100 then
            bot:SetNWString("Name", "GOOD SNOTLING!")
            bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
            bot:SetNWString("Description", "A Snotling that now lives for the greater good.")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_pulserifle"
            else
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
            end
            health = math.max(health * 2, 300)
            bot:SetColor(Color(124, 207, 255))

        end
	end

        bot:StripWeapons()
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetNWString("Status", "TAU-ORKS")
        bot:SetMaxHealth(health)
        bot.ork = true
        bot:SetHealth(health)
        bot:SetNoTarget(true)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "TAU-ORKS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "TAU-ORKS" then
                self:CreateTauOrk(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
