  local Militiamodels = {
        "models/wk/cult/tr_guardsmen.mdl",
        "models/wk/cult/tr_cult_cu_sup.mdl",
        "models/wk/cult/cult_shooter.mdl",
    }

FACTION_TYPES["MILITIA"] = {
    STAGE = "MILITIA",
    DeathsByType = {},
    OffWorld = true,

    CreateMilitia = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite
        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 6 then
                bot:SetNWString("Name", "Elite Militia Leader")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "hybrid"
                bot.weapon = "musket_dayr_bot"
                bot.meleeweapon = "murlock_melee"
                bot.poisonous = true
                bot.Damage = 500
                health = math.max(health * 8, 2000) 
                bot.Human = true
                bot:SetNWString("Description", "The leader of the local rebelling militia")

            elseif roll <= 53 then
                bot:SetNWString("Name", "Elite Militia Musketman")
                bot:SetModel(Militiamodels[math.random(1, #Militiamodels)])
                bot.FightType = "shooting"
                bot.weapon = "musket_dayr_bot"
                bot.meleeweapon = "murlock_melee"
                bot.poisonous = true
                bot.Damage = 300
                health = math.max(health * 4, 600) 
                bot.Human = true
                bot:SetNWString("Description", "The armed musketman of the local rebelling militia")
                
            else
                bot:SetNWString("Name", "Elite Militia Soldier")
                bot:SetModel(Militiamodels[math.random(1, #Militiamodels)])
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot.poisonous = true
                health = math.max(health * 4, 800) 
                bot.Human = true
                bot:SetNWString("Description", "The armed soldier of the local rebelling militia")
 
            end

        else

            local roll = math.random(1, 100)

            if roll <= 6 then
                bot:SetNWString("Name", "Militia Leader")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "hybrid"
                bot.weapon = "musket_dayr_bot"
                bot.meleeweapon = "murlock_melee"
                bot.poisonous = true
                bot.Damage = 500
                health = math.max(health * 7, 1500) 
                bot.Human = true
                bot:SetNWString("Description", "The leader of the local rebelling militia")

            elseif roll <= 53 then
                bot:SetNWString("Name", "Militia Musketman")
                bot:SetModel(Militiamodels[math.random(1, #Militiamodels)])
                bot.FightType = "shooting"
                bot.weapon = "musket_dayr_bot"
                bot.meleeweapon = "murlock_melee"
                bot.poisonous = true
                bot.Damage = 300
                health = math.max(health * 2, 500) 
                bot.Human = true
                bot:SetNWString("Description", "The armed musketman of the local rebelling militia")
                
            else
                bot:SetNWString("Name", "Militia Soldier")
                bot:SetModel(Militiamodels[math.random(1, #Militiamodels)])
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot.poisonous = true
                health = math.max(health * 2, 700) 
                bot.Human = true
                bot:SetNWString("Description", "The armed soldier of the local rebelling militia")
           
            end
        end

        bot:SetNWString("Status", "MILITIA")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,
    
    Think = function(self)
        if BOT_INVASION ~= "MILITIA" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "MILITIA" then
                self:CreateMilitia(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
