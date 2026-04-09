FACTION_TYPES["GAUNTS"] = {
    STAGE = "THE SWARM ADVANCES",
    DeathsByType = {},
    OffWorld = true,

    CreateGaunt = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 5

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)
            if roll <= 50 then
                bot:SetNWString("Name", "Tyranid Warrior")
                bot:SetModel("models/tyranids/warrior/warrior.mdl")
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A Tyranid Warrior commanding smaller broods.")
                health = math.max(health * 8, 1500)
            else
                bot:SetNWString("Name", "Tyranid Warrior Prime")
                bot:SetModel("models/tyranids/warrior/warrior.mdl")
                bot:SetRunSpeed(420)
                bot:SetWalkSpeed(420)
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "An elite Tyranid Warrior adapted for greater strength.")
                health = math.max(health * 10, 2000)
            end
        else
            local roll = math.random(1, 100)
            if roll <= 80 then
                bot:SetNWString("Name", "Tyranid Hormagaunt")
                bot:SetModel("models/tyranids/hormagaunt/hormaguant.mdl")
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "Fast melee gaunt that swarms its enemies.")
                health = math.max(health * 4, 600)
            else
                bot:SetNWString("Name", "Tyranid Termagant")
                bot:SetModel("models/tyranids/termagaunt/thermagaunt.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_librarianstaff"
                bot:SetNWString("Description", "Ranged gaunt that fires living ammunition.")
                health = math.max(health * 2, 800)
            end
        end

        bot:SetNWString("Status", "GAUNTS")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "GAUNTS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "GAUNTS" then
                self:CreateGaunt(bot, ALWAYS_SPAWN_ELITES)
            end
        end 
    end
}