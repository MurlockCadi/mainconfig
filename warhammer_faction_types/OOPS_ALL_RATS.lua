FACTION_TYPES["OOPS_ALL_RATS"] = {
    STAGE = "RATS",
    DeathsByType = {},
    OffWorld = true,
    CreateRat = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite
        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetNWString("Name", "King Rat")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.poisonous = true
                bot.Damage = 500
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(2.5, 0)
                    end
                end)
                bot:SetColor(Color(255, 191, 0))
                health = math.max(health * 12, 70000) 
                bot:SetNWString("Description", "The king of all rats")

            elseif roll <= 2 then
                bot:SetNWString("Name", "Rat")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 400
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.3, 0)
                    end
                end)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 4, 700) 
                bot:SetNWString("Description", "Not really a rat but glad to be here")

            elseif roll <= 20 then
                bot:SetNWString("Name", "Giant Rat")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 200
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 7, 7000) 
                bot:SetNWString("Description", "A larger rat")

            else
                bot:SetNWString("Name", "Rat Swarm")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 200
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 4, 400) 
                bot:SetNWString("Description", "A swarm of smaller rats acting as one")
            end

        else

            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetNWString("Name", "King Rat")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.poisonous = true
                bot.Damage = 500
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(2.5, 0)
                    end
                end)
                bot:SetColor(Color(255, 191, 0))
                health = math.max(health * 10, 50000) 
                bot:SetNWString("Description", "The king of all rats")

            elseif roll <= 2 then
                bot:SetNWString("Name", "Rat")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 400
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.3, 0)
                    end
                end)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 2, 500) 
                bot:SetNWString("Description", "Not really a rat but glad to be here")

            elseif roll <= 20 then
                bot:SetNWString("Name", "Giant Rat")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 200
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 5, 5000) 
                bot:SetNWString("Description", "A larger rat")

            else
                bot:SetNWString("Name", "Rat Swarm")
                bot:SetModel("models/vj_eye/rat.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot.poisonous = true
                bot.Damage = 200
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot:SetColor(Color(127, 95, 0))
                health = math.max(health * 2, 200) 
                bot:SetNWString("Description", "A swarm of smaller rats acting as one")
            end
        end

        bot:SetNWString("Status", "OOPS_ALL_RATS")
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
        if BOT_INVASION ~= "OOPS_ALL_RATS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "OOPS_ALL_RATS" then
                self:CreateRat(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
