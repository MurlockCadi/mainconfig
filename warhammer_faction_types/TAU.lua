FACTION_TYPES["Tau"] = {
    STAGE = "Tau",
    DeathsByType = {},
    OffWorld = true,
    CreateTau = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
		

            local KrootWeapons = {
                "musket_dayr_bot",
                "weapon_huntingbow",
                "cat_custom_sniper_kroot_murlock",
                "murlock_autogun"
            }

        local spawn_elite = elite -- Only spawn elites when we want them to 

        if spawn_elite then

            local roll = math.random(1, 100)	
			
		if roll <= 1 then
            bot:SetNWString("Name", "Elite Tau Commander")
            bot:SetModel("models/player/tau_commander/slow_tau_commander.mdl")
            bot.FightType = "shooting"
            bot.weapon = "arccw_admech_heavy_magnorail"
            bot:SetRunSpeed(250)
            bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
            bot:SetNWString("Description", "An elite commander of the T'au Empire.")
            bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 10, 8000)

        elseif roll <= 9 then
            bot:SetNWString("Name", "Elite Crisis Battle Suit")
            bot:SetModel("models/player/crisis_battlesuit.mdl")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_crisis"
                timer.Simple(1, function() 
                if IsValid(bot) then
                     bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "An elite crisis battlesuit of the T'au Empire.")
            health = math.max(health * 5, 4000)

        elseif roll <= 16 then
            bot:SetNWString("Name", "Elite Broadside Battle Suit")
            bot:SetModel("models/broadside.mdl")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_broadside"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "An elite broadside battlesuit of the T'au Empire.")
            health = math.max(health * 5, 4000)

        elseif roll <= 23 then
            bot:SetNWString("Name", "Elite Tau Stealth Suit")
            bot:SetModel("models/zadkiel/tau/stealth/stealh_warrior.mdl")
            bot.FightType = "hybrid"
            bot.weapon =  "murlock_pulserifle"
            bot.meleeweapon = "murlock_honor_blade"
            bot:SetMaterial("models/props_combine/stasisshield_sheet")
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "An elite Tau stealth suit of the T'au Empire.")
            health = math.max(health * 4, 3000)

        elseif roll <= 33 then
            bot:SetNWString("Name", "Elite Tau Fire Warrior")
            bot:SetModel("models/zadkiel/tau/firewarrior/fire_warrior.mdl")
            if math.random(1, 2) == 1 then
                bot.FightType = "flamer"
                bot.weapon = "cat_chaos_legacy_flamer"
            else
                bot.FightType = "flamer"
                bot.weapon = "murlock_pulse_blaster"
            end
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "An elite Tau fire warrior of the T'au Empire.")
            health = math.max(health * 4, 2000)

        elseif roll <= 41 then
            bot:SetNWString("Name", "Elite Kroot Carnivore")
            bot:SetModel("models/wizard/kroot.mdl")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = KrootWeapons[math.random(#KrootWeapons)]
            else
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                health = health * 1.2
            end
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWString("Description", "An elite Kroot War Shaper of the T'au Empire.")
            health = math.max(health * 4, 3000)

        elseif roll <= 46 then
            bot:SetNWString("Name", "Elite Knarloc")
            bot:SetModel("models/echo/jwe/trex_stanwinston_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.5, 0)
                end
            end)
            bot:SetColor(Color(95, 127, 63))
            bot:SetNWString("Description", "An elite Knarloc of the T'au Empire.")
            health = math.max(health * 6, 7000)

        elseif roll <= 50 then
            bot:SetNWString("Name", "Elite Kalamandras")
            bot:SetModel("models/echo/ark/megalania_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetColor(Color(95, 127, 63))
            bot:SetNWString("Description", "An elite Kalamandras of the T'au Empire.")
            health = math.max(health * 6, 4000)

        else
            bot:SetNWString("Name", "Elite Tau Pathfinder")
            bot:SetModel("models/tau/baron_tau.mdl")
            bot.FightType = "hybrid"
            bot.weapon =  "murlock_pulserifle"
            bot.meleeweapon = "murlock_honor_blade"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "An elite Tau Pathfinder of the T'au Empire.")
            health = math.max(health * 3, 500)

        end

        else
            local roll = math.random(1, 100)

		if roll <= 1 then
            bot:SetNWString("Name", "Tau Commander")
            bot:SetModel("models/player/tau_commander/slow_tau_commander.mdl")
            bot.FightType = "shooting"
            bot.weapon = "arccw_admech_heavy_magnorail"
            bot:SetRunSpeed(250)
            bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
            bot:SetNWString("Description", "A commander of the T'au Empire.")
            bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 8, 7000)

        elseif roll <= 9 then
            bot:SetNWString("Name", "Crisis Battle Suit")
            bot:SetModel("models/player/crisis_battlesuit.mdl")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_crisis"
                timer.Simple(1, function() 
                if IsValid(bot) then
                     bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "A crisis battlesuit of the T'au Empire.")
            health = math.max(health * 5, 3500)

        elseif roll <= 16 then
            bot:SetNWString("Name", "Broadside Battle Suit")
            bot:SetModel("models/broadside.mdl")
            bot.FightType = "shooting"
            bot.weapon = "cat_murlock_broadside"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "A broadside battlesuit of the T'au Empire.")
            health = math.max(health * 5, 3500)

        elseif roll <= 23 then
            bot:SetNWString("Name", "Tau Stealth Suit")
            bot:SetModel("models/zadkiel/tau/stealth/stealh_warrior.mdl")
            bot.FightType = "hybrid"
            bot.weapon =  "murlock_pulserifle"
            bot.meleeweapon = "murlock_honor_blade"
            bot:SetMaterial("models/props_combine/stasisshield_sheet")
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "A Tau stealth suit of the T'au Empire.")
            health = math.max(health * 4, 2500)

        elseif roll <= 33 then
            bot:SetNWString("Name", "Tau Fire Warrior")
            bot:SetModel("models/zadkiel/tau/firewarrior/fire_warrior.mdl")
            if math.random(1, 2) == 1 then
                bot.FightType = "flamer"
                bot.weapon = "cat_chaos_legacy_flamer"
            else
                bot.FightType = "flamer"
                bot.weapon = "murlock_pulse_blaster"
            end
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "A Tau fire warrior of the T'au Empire.")
            health = math.max(health * 3, 1500)

        elseif roll <= 41 then
            bot:SetNWString("Name", "Kroot Carnivore")
            bot:SetModel("models/wizard/kroot.mdl")
            if math.random(1, 2) == 1 then
                bot.FightType = "shooting"
                bot.weapon = KrootWeapons[math.random(#KrootWeapons)]
            else
                bot.FightType = "melee"
                bot.weapon = "chitin_spear"
                health = health * 1.2
            end
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.2, 0)
                end
            end)
            bot:SetNWString("Description", "A Kroot War Shaper of the T'au Empire.")
            health = math.max(health * 4, 2500)

        elseif roll <= 46 then
            bot:SetNWString("Name", "Knarloc")
            bot:SetModel("models/echo/jwe/trex_stanwinston_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.5, 0)
                end
            end)
            bot:SetColor(Color(95, 127, 63))
            bot:SetNWString("Description", "A Knarloc of the T'au Empire.")
            health = math.max(health * 6, 6000)

        elseif roll <= 50 then
            bot:SetNWString("Name", "Kalamandras")
            bot:SetModel("models/echo/ark/megalania_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetColor(Color(95, 127, 63))
            bot:SetNWString("Description", "A Kalamandras of the T'au Empire.")
            health = math.max(health * 6, 3500)

        else
            bot:SetNWString("Name", "Tau Pathfinder")
            bot:SetModel("models/tau/baron_tau.mdl")
            bot.FightType = "hybrid"
            bot.weapon =  "murlock_pulserifle"
            bot.meleeweapon = "murlock_honor_blade"
                timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(.9, 0)
                end
            end)
            bot:SetNWBool("ShieldEnable", true)
            bot:SetNWString("Description", "A Tau Pathfinder of the T'au Empire.")
            health = math.max(health * 2, 400)

        end
	end

        bot:SetNWString("Status", "TAU")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
	    SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "TAU" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "TAU" then
                self:CreateTau(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
