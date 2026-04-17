FACTION_TYPES["GOBLINS"] = {
    STAGE = "DA LITTLE GREEN TIDE",
    DeathsByType = {},
    OffWorld = true,

    CreateGoblin = function(self, bot, elite)
        local health = GetHealthByTotalPlayers() * 0.5
        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 2 then
                bot:SetNWString("Name", "Squig")
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A ravenous Squig that charges and bites anything in its path!")
                bot:SetNWBool("ShieldEnable", false)
                health = math.max(health * 2, 500)

            elseif roll <= 5 then
                bot:SetNWString("Name", "Gretchin Wierdo")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Warp-touched Gretchin with a knack for sorcery.")
                health = math.max(health * 1, 800)

            elseif roll <= 25 then
                bot:SetNWString("Name", "Snotling")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(0.7, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A tiny, vicious little greenskin pest.")
                health = math.max(health * 2, 250)

            elseif roll <= 50 then
                bot:SetNWString("Name", "Gretchin")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.9, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
                bot:SetNWString("Description", "A sneaky little goblin with sharp teef and tricks.")
                health = math.max(health * 2, 500)

            elseif roll <= 75 then
                bot:SetNWString("Name", "Greater Snotling")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A larger, meaner snotling that bosses around the smaller ones.")
                health = math.max(health * 3, 500)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Greater Gretchin")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
                bot:SetNWString("Description", "A tough gretchin, eager to prove it's almost an ork.")
                health = math.max(health * 3, 750)

            elseif roll <= 100 then
                bot:SetNWString("Name", "Gretchin In Power Armor")
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.5, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A cunning gretchin that leads the others.")
                health = math.max(health * 5, 1000)
            end
        else
            local roll = math.random(1, 100)

            if roll <= 5 then
                bot:SetNWString("Name", "Gretchin Wierdo")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.pysker = true
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Warp-touched Gretchin with a knack for sorcery.")
                health = math.max(health * 1, 800)

            elseif roll <= 25 then
                bot:SetNWString("Name", "Snotling")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.8, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A tiny, vicious little greenskin pest.")
                health = math.max(health * 2, 250)

            elseif roll <= 50 then
                bot:SetNWString("Name", "Gretchin")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.9, 0)
                    end
                end)
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
                bot:SetNWString("Description", "A sneaky little goblin with sharp teef and tricks.")
                health = math.max(health * 2, 500)

            elseif roll <= 75 then
                bot:SetNWString("Name", "Greater Snotling")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A larger, meaner snotling that bosses around the smaller ones.")
                health = math.max(health * 3, 500)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Greater Gretchin")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot.FightType = "shooting"
                bot.weapon = "tfa_slugga"
                bot:SetNWString("Description", "A tough gretchin, eager to prove it's almost an ork.")
                health = math.max(health * 3, 750)

            elseif roll <= 95 then
                bot:SetNWString("Name", "Gretchin Brute")
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(150)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.9, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "A brutish gretchin that relies on strength and a big spear to crush its foes.")
                health = math.max(health * 3, 850)

            elseif roll <= 98 then
                bot:SetNWString("Name", "fast Snotling")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot:SetRunSpeed(430)
                bot:SetWalkSpeed(350)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.6, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A smaller, faster snotling that zips around the battlefield.")
                health = math.max(health * 2, 100)

            elseif roll <= 100 then
                bot:SetNWString("Name", "Gretchin In Power Armor")
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.5, 0)
                    end
                end)
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A cunning gretchin that leads the others.")
                health = math.max(health * 5, 1000)
            end
        end

        bot:SetNWString("Status", "GOBLINS")
        bot:StripWeapons()
        bot.goblin = true
        bot.ork = true
        RandomonizeBodygroupsAndSkinsOrks(bot)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot:SetNoTarget(true)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        -- custom goblin death logic here if needed
    end,

    Think = function(self)
        if BOT_INVASION ~= "GOBLINS" then return end
        local AllBots = player.GetBots()
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") ~= "GOBLINS" then
                self:CreateGoblin(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
