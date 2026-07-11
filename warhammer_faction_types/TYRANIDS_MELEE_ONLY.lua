FACTION_TYPES["TYRANIDS_MELEE_ONLY"] = {
    STAGE = "FREEDOM",
    DeathsByType = {},
    OffWorld = true,

    CreateTyranid = function(self, bot, elite)
    local health = GetHealthByTotalPlayers()
    local spawn_elite = elite or math.random(1, 100) <= 15

    if spawn_elite then
        bot.Elite = true
        local roll = math.random(1, 100)

        if roll <= 45 then
            bot:SetNWString("Name", "Genestealer")
            bot:SetModel("models/stealer.mdl")
            bot.FightType = "tyrranid"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A powerful servant of the Tyranids, ready to spill blood in the name of the Hive Mind.")
            bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 3, 250)

        elseif roll <= 85 then
            bot:SetNWString("Name", "Tyranid Warrior")
            bot:SetModel("models/tyranids/warrior/warrior.mdl")
            bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)
            bot.FightType = "tyrranid"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A powerful servant of the Tyranids, ready to spill blood in the name of the Hive Mind.")
            health = math.max(health * 6.5, 350)

        elseif roll <= 90 then
            bot:SetNWString("Name", "Tyranid Swarmlord")
            bot:SetModel("models/tyranids/swarmlord/swarmlord.mdl")
            bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)
            bot.BigBoy = true
            bot.FightType = "tyrranid"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "The ultimate bio-engineered commander of the Tyranid swarm.")
            health = math.max(health * 13, 500)

        else
            bot:SetNWString("Name", "Tyranid Carnifex")
            bot:SetModel("models/tyranids/carnifex/carnifex.mdl")
            bot.FightType = "tyrranid"
            bot.BigBoy = true
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A massive Tyranid bio-engineered for destruction.")
            health = math.max(health * 30, 750)
        end
    else
        local roll = math.random(1, 100)

        if roll <= 50 then
            bot:SetNWString("Name", "Tyranid Hormagaunt")
            bot:SetModel("models/tyranids/hormagaunt/hormaguant.mdl")
            bot.FightType = "tyrranid"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A fast and agile Tyranid, perfect for close combat.")
            health = health * 2

        else
            bot:SetNWString("Name", "Genestealer Cultist")
            bot:SetModel("models/wk/civilian/wk_civilian.mdl")
            bot:SetColor(Color(200, 160, 255))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            bot.FightType = "melee"
            bot.weapon = "murlock_chaos_knife"
            bot:SetNWString("Description", "Imperium Civilian who has sworn allegiance to the Tyranids.")
            health = health * 2
			bot.Human = true
        end
    end

    bot:SetNWString("Status", "TYRANIDS_MELEE_ONLY")
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
    if BOT_INVASION ~= "TYRANIDS_MELEE_ONLY" then return end

    for _, bot in ipairs(player.GetBots()) do
        if bot:GetNWString("Status") ~= "TYRANIDS_MELEE_ONLY" then
            self:CreateTyranid(bot, ALWAYS_SPAWN_ELITES)
        end
    end
end,
}
