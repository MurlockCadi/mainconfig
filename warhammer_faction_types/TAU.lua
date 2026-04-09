FACTION_TYPES["TAU"] = {
    STAGE = "CHEM-LORDS ASCENDANT",
    DeathsByType = {},
    OffWorld = true,

    CreateTau = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite or math.random(1, 100) <= 10

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)
            if eliteRoll <= 25 then
                bot:SetNWString("Name", "Broadside")
                health = math.max(health * 20, 10000)
                local model = "models/broadside.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_broadside"
                bot:SetNWString("Description", "Powerful Long-Range Support Unit in Heavy Armor.")
                bot:SetNWBool("ShieldEnable", false)
                bot:SetModelScale(2, 0)
            elseif eliteRoll <= 90 then
                bot:SetNWString("Name", "Crisis Battle Suit")
                health = math.max(health * 13, 5000)
                bot.nobodygroups = true
                bot:SetModelScale(1.5, 0)
                local model = "models/player/crisis_battlesuit.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_crisis"
                bot:SetNWString("Description", "Elite Battlesuit of the T'au Empire")
            else
                bot:SetNWString("Name", "Tau Commander")
                health = math.max(health * 6, 5000)
                local model = "models/player/tau_commander/slow_tau_commander.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_broadside"
                bot:SetNWString("Description", "Commander of T'au Forces")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            local botroll = math.random(1, 100)
            if botroll <= 75 then
                bot:SetNWString("Name", "Fire Warrior")
                local model = "models/tau/baron_tau.mdl"
                bot:SetModel(model)
                bot:SetPlayerColor(Vector(200/255, 170/255, 100/255))
                bot.FightType = "shooting"
                bot.weapon = "murlock_pulserifle"
                bot:SetNWString("Description", "Frontline Fire Warrior, Member of the T'au Fire Caste")
                bot:SetNWBool("ShieldEnable", false)
            else
                bot:SetNWString("Name", "Kroot")
                local model = "models/wizard/kroot.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_sniper_kroot_murlock"
                bot:SetNWString("Description", "Frontline Kroot Warrior of the T'au Empire")
                bot:SetNWBool("ShieldEnable", false)
            end
        end

        bot:SetNWString("Status", "TAU")
        bot:StripWeapons()
        if not bot.nobodygroups then
            RandomonizeBodygroupsAndSkins(bot)
        end
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        -- Optional: handle chem death effects
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
