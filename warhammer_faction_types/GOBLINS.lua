FACTION_TYPES["GOBLINS"] = {
    STAGE = "DA LITTLE GREEN TIDE",
    DeathsByType = {},
    OffWorld = true,

    CreateGoblin = function(self, bot, elite)
        local health = GetHealthByTotalPlayers() * 0.5

        -- 25% chance for elite squigs
        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            -- Squig elite
            bot.Elite = true
			local roll = math.random()
            if roll <= 0.02 then
            bot:SetNWString("Name", "Squig")
            local model = "models/astartes/squig/squig.mdl"
            bot:SetModel(model)
            health = math.max(health * 2, 5000)
            bot:SetRunSpeed(360)
            bot:SetWalkSpeed(360)
            bot.FightType = "melee"
            bot.weapon = "murlock_melee"
            bot:SetNWString("Description", "A ravenous Squig that charges and bites anything in its path!")
            bot:SetNWBool("ShieldEnable", false)

			elseif roll <= 0.05 then
                bot:SetNWString("Name", "Gretchin Wierdo")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 1, 1000)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.hasgun = true
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Warp-touched Gretchin with a knack for sorcery.")
            elseif roll <= 0.25 then
                bot:SetNWString("Name", "Snotling")
                local model = "models/barbossa/snotling/snotling_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 2, 500)
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
                bot:SetModelScale(0.8, 0)
                bot:SetNWString("Description", "A tiny, vicious little greenskin pest.")
            elseif roll <= 0.5 then
                bot:SetNWString("Name", "Gretchin")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 2, 1000)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetModelScale(0.9, 0)
                bot:SetNWString("Description", "A sneaky little goblin with sharp teef and tricks.")
            elseif roll <= 0.75 then
                bot:SetNWString("Name", "Greater Snotling")
                local model = "models/barbossa/snotling/snotling_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 3, 1500)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A larger, meaner snotling that bosses around the smaller ones.")
            elseif roll <= 0.90 then
                bot:SetNWString("Name", "Greater Gretchin")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 3, 2000)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A tough gretchin, eager to prove it's almost an ork.")
            else
                bot:SetNWString("Name", "Gretchin In Power Armor")
                local model = "models/muschi/orks/muschi_ork_meganob.mdl"
                bot:SetModel(model)
                health = math.max(health * 5, 2000)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(250)
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                bot.hasgun = true
                bot:SetModelScale(0.5, 0)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A cunning gretchin that leads the others.")
            end
        else
            -- Normal goblins
            local roll = math.random()
            if roll <= 0.05 then
                bot:SetNWString("Name", "Gretchin Wierdo")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 1, 1000)
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.hasgun = true
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Warp-touched Gretchin with a knack for sorcery.")
            elseif roll <= 0.25 then
                bot:SetNWString("Name", "Snotling")
                local model = "models/barbossa/snotling/snotling_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 2, 500)
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
                bot:SetModelScale(0.8, 0)
                bot:SetNWString("Description", "A tiny, vicious little greenskin pest.")
            elseif roll <= 0.5 then
                bot:SetNWString("Name", "Gretchin")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 2, 1000)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetModelScale(0.9, 0)
                bot:SetNWString("Description", "A sneaky little goblin with sharp teef and tricks.")
            elseif roll <= 0.75 then
                bot:SetNWString("Name", "Greater Snotling")
                local model = "models/barbossa/snotling/snotling_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 3, 1500)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A larger, meaner snotling that bosses around the smaller ones.")
            elseif roll <= 0.90 then
                bot:SetNWString("Name", "Greater Gretchin")
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                health = math.max(health * 3, 2000)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A tough gretchin, eager to prove it's almost an ork.")
            else
                bot:SetNWString("Name", "Gretchin In Power Armor")
                local model = "models/muschi/orks/muschi_ork_meganob.mdl"
                bot:SetModel(model)
                health = math.max(health * 5, 2000)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(250)
                bot.FightType = "melee"
                bot.weapon = "tfa_big_choppa"
                bot.hasgun = true
                bot:SetModelScale(0.5, 0)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A cunning gretchin that leads the others.")
            end

            if not bot.hasgun then
                if math.random(100) <= 50 then
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                end
            end
        end

        -- finalize
        bot:StripWeapons()
        bot.goblin = true
        bot.ork = true
        RandomonizeBodygroupsAndSkinsOrks(bot)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetNWString("Status", "GOBLINS")
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