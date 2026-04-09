FACTION_TYPES["TYRANIDS_MELEE_ONLY"] = {
    STAGE = "FREEDOM",
    DeathsByType = {},
    OffWorld = true,

    CreateTyranid = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()


        local spawn_elite = elite or math.random(1, 100) <= 15

        if spawn_elite then
            local EliteTypeRoll = math.random(1, 100)
            if EliteTypeRoll <= 45 then
                bot.Elite = true
                health = math.max(health * 3, 1000)
                bot:SetNWString("Name", "Genestealer")
                local model = "models/stealer.mdl"
                bot:SetModel(model)
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A powerful servant of the Tyranids, ready to spill blood in the name of the Hive Mind.")
                bot:SetNWBool("ShieldEnable", true)
            elseif EliteTypeRoll <= 85 then
                bot.Elite = true
                health = math.max(health * 6.5, 1000)
                bot:SetNWString("Name", "Tyranid Warrior")
                local model = "models/tyranids/warrior/warrior.mdl"
                bot:SetModel(model)
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A powerful servant of the Tyranids, ready to spill blood in the name of the Hive Mind.")
            elseif EliteTypeRoll <= 90 then
                bot.Elite = true
                health = math.max(health * 13, 1000)
                bot:SetNWString("Name", "Tyranid Swarmlord")
                local model = "models/tyranids/swarmlord/swarmlord.mdl"
                bot:SetModel(model)
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.BigBoy = true
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "The ultimate bio-engineered commander of the Tyranid swarm.")
            else
                bot.Elite = true
                health = math.max(health * 30, 1000)
                bot:SetNWString("Name", "Tyranid Carnifex")
                local model = "models/tyranids/carnifex/carnifex.mdl"
                bot:SetModel(model)
                bot.FightType = "tyrranid"
                bot.BigBoy = true
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A massive Tyranid bio-engineered for destruction.")
            end
        else
            local whatype = math.random(1, 100)
            if whatype <= 50 then
                health = health * 2
                bot:SetNWString("Name", "Tyranid Hormagaunt")
                bot:SetModel("models/tyranids/hormagaunt/hormaguant.mdl")
                bot.FightType = "tyrranid"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A fast and agile Tyranid, perfect for close combat.")
            else
                health = health * 2
                bot.FightType = "melee"
                bot.weapon = "murlock_chaos_knife"
                bot:SetNWString("Name", "Genestealer Cultist")
                bot:SetModel("models/wk/civilian/wk_civilian.mdl")
                bot:SetColor(Color(200, 160, 255))
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "Imperium Civilian who has sworn allegiance to the Tyranids.")
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
                self:CreateTyranid(bot,ALWAYS_SPAWN_ELITES)
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
        local baseHealth = 1000

        if TotalPlayers < 5 then baseHealth = 1000
        elseif TotalPlayers < 10 then baseHealth = 3000
        elseif TotalPlayers < 20 then baseHealth = 2500
        elseif TotalPlayers < 30 then baseHealth = 3500
        elseif TotalPlayers < 40 then baseHealth = 8500
        elseif TotalPlayers < 50 then baseHealth = 1000 end

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
                baseHealth = math.max(baseHealth * 3, 1000)
            elseif elite_roll <= 60 then
                bot:SetNWString("Name", "Necron Lychguard")
                bot:SetModel("models/wk/necrons/base/wk_lychguard.mdl")
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot.FightType = "melee"
                bot:SetNWString("Description", "Heavily armored Lychguard serving the Silent King.")
                bot:SetNWBool("ShieldEnable", true)
                baseHealth = math.max(baseHealth * 3, 1000)
            else
                bot:SetNWString("Name", "Necron Destroyer")
                bot:SetModel("models/lorddestroyer.mdl")
                bot.weapon = "murlock_gauss_cannon"
                bot.FightType = "shooting"
                bot:SetNWString("Description", "A floating harbinger of annihilation.")
                baseHealth = math.max(baseHealth * 10, 1000)
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
        bot:SetModelScale(1.25, 0)
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