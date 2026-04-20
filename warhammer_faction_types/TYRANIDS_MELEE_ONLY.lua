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







    FACTION_TYPES["NECRONS"] = {
    STAGE = "DEATH TO THE LIVING",
    DeathsByType = {},
    OffWorld = true,

    CreateNecron = function(self, bot, force_elite)
        local TotalPlayers = #player.GetHumans()
        local baseHealth = 250

        if TotalPlayers < 5 then baseHealth = 250
        elseif TotalPlayers < 10 then baseHealth = 500
        elseif TotalPlayers < 20 then baseHealth = 750
        elseif TotalPlayers < 30 then baseHealth = 1000
        elseif TotalPlayers < 40 then baseHealth = 1250
        elseif TotalPlayers < 50 then baseHealth = 1500 end

        local spawn_elite = force_elite or (math.random(1, 100) <= 10)

        if spawn_elite then
            bot.Elite = true
            local elite_roll = math.random(1, 100)

            if elite_roll <= 20 then
                bot:SetNWString("Name", "Necron Cryptek")
                bot:SetModel(table.Random({
                    "models/wk/necrons/personal/wk_fida.mdl",
                    "models/wk/necrons/personal/wk_kirsa.mdl",
                    "models/wk/necrons/personal/wk_klaus.mdl",
                    "models/wk/necrons/personal/wk_lappy.mdl",
                    "models/wk/necrons/personal/wk_vindicar.mdl",
                    "models/wk/necrons/personal/wk_yarik.mdl"
                }))
                bot.weapon = "cat_chaos_legacy_murlock_necron"
                bot.FightType = "shooting"
				bot.pysker = true
                bot:SetNWString("Description", "A twisted Necron Cryptek wielding ancient eldritch technology.")
                bot:SetNWBool("ShieldEnable", true)
                baseHealth = math.max(baseHealth * 3, 350)
            elseif elite_roll <= 60 then
                bot:SetNWString("Name", "Necron Lychguard")
                bot:SetModel("models/wk/necrons/base/wk_lychguard.mdl")
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot.FightType = "melee"
                bot:SetNWString("Description", "Heavily armored Lychguard serving the Silent King.")
                bot:SetNWBool("ShieldEnable", true)
                baseHealth = math.max(baseHealth * 3, 500)
            else
                bot:SetNWString("Name", "Necron Destroyer")
                bot:SetModel("models/lorddestroyer.mdl")
                bot.weapon = "murlock_gauss_cannon"
                bot.FightType = "shooting"
                bot:SetNWString("Description", "A floating harbinger of annihilation.")
                baseHealth = math.max(baseHealth * 10, 750)
            end
        else
            local normal_roll = math.random(1, 100)

            if normal_roll <= 60 then
                bot:SetNWString("Name", "Necron Warrior")
                bot:SetModel("models/wk/necrons/base/wk_necronwarrior.mdl")
                bot.weapon = "murlock_gauss"
                bot.FightType = "shooting"
                bot:SetNWString("Description", "A basic yet deadly Necron foot soldier.")
                baseHealth = baseHealth * 2
            elseif normal_roll <= 90 then
                bot:SetNWString("Name", "Flayed One")
                bot:SetModel("models/wk/necrons/base/wk_flayed_one.mdl")
                bot.weapon = "murlock_melee"
                bot.FightType = "melee"
                bot:SetNWString("Description", "Terrifying melee unit covered in flayed skin.")
                baseHealth = baseHealth * 3
            else
                bot:SetNWString("Name", "Necron Immortal")
                bot:SetModel("models/wk/necrons/base/wk_immortal.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_gauss_cannon"
                bot:SetNWString("Description", "Elite ranged unit with deadly firepower.")
                baseHealth = baseHealth * 4
            end
        end

        bot:SetNWString("Status", "NECRONS")
        bot:StripWeapons()
        timer.Simple(1, function() 
                if IsValid(bot) then
                    bot:SetModelScale(1.2, 0)
                 end
            end)
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.CanRegenerate = true
        bot.GoneMad = true
        bot.IsMechanical = true
        bot.hasGasMask = true
        bot:SetNWString("MAX_HEALTH", baseHealth)
        bot:SetMaxHealth(baseHealth)
        bot:SetHealth(baseHealth)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "NECRONS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "NECRONS" then
                self:CreateNecron(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
