FACTION_TYPES["Lizardmen"] = {
    STAGE = "COLD-BLOODED HUNTERS",
    DeathsByType = {},
    OffWorld = true,

    CreateLizardman = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 5

        local LizardmanModels = {
            "models/lizards/lizardmanekinar.mdl",
            "models/lizards/lizardmangarway.mdl",
            "models/lizards/lizardmankazgulam.mdl",
            "models/lizards/lizardmankeser.mdl",
            "models/lizards/lizardmanshaman.mdl",
            "models/lizards/lizardmanshark.mdl",
            "models/lizards/lizardmansharkalt.mdl",
            "models/lizards/lizardmanvd.mdl",
            "models/lizards/lizardmanverafim.mdl",
            "models/lizards/lizardmanwarrior.mdl"
        }

        local CarnosaurModels = {
            "models/echo/jwe/trex_stanwinston_pm.mdl",
            "models/echo/jwe/trex_pm.mdl",
            "models/echo/jwe/trex_1993_ilm_pm.mdl",
            "models/echo/jwe/rexy_2022_pm.mdl"
        }

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 30 then
                bot:SetNWString("Name", "Greater Giant Lizard")
                bot:SetModel("models/echo/ark/megalania_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(2, 0)
                    end
                end)
                bot:SetNWString("Description", "A hulking reptilian behemoth bred in the oldest spawning pits, all teeth, muscle, and primeval rage.")
                health = math.max(health * 10, 5000)

            elseif roll <= 60 then
                bot:SetNWString("Name", "Greater Giant Toad")
                bot:SetModel("models/echo/ark/toad_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                if math.random(1, 100) <= 50 then
                    bot.FightType = "hybrid"
                    bot.meleeweapon = "murlock_melee"
                    bot.weapon = "tfa_big_shoota"
                end
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(3, 0)
                    end
                end)
                bot:SetNWString("Description", "A swollen sacred toad of the deep marsh-temples, monstrously enlarged and maddened into violence.")
                health = math.max(health * 10)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Kroxigor")
                bot:SetModel("models/barbossa/nakai_the_wanderer/nakai_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_crozius"
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetNWString("Description", "A massive temple-guardian spawned for war.")
                health = math.max(health * 10, 5000)

            else
                bot:SetNWString("Name", "Carnosaur")
                bot:SetModel(CarnosaurModels[math.random(#CarnosaurModels)])
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "An apex predator unleashed from the jungles of an ancient world")
                health = math.max(health * 30)
            end
        else
            local roll = math.random(1, 100)

            if roll <= 50 then
                bot:SetNWString("Name", "Skink Hunter")
                bot:SetModel(LizardmanModels[math.random(#LizardmanModels)])
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(0.6, 0)
                    end
                end)
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.instant_reload = true
                bot.LittleShit = true
                if math.random(1, 100) <= 30 then
                    bot.FightType = "flamer"
                    bot.weapon = "tfa_stikk_bomb"
                    bot:SetNWString("Description", "A nimble skink skirmisher darting between reeds and ruins")
                else
                    bot.FightType = "hybrid"
                    bot.weapon = "weapon_huntingbow"
                    bot.nocrouch = true
                    bot.meleeweapon = math.random(1, 100) <= 50 and "chitin_spear" or "bowie_knife"
                    bot:SetNWString("Description", "A swift cold-blooded hunter armed with bow and spear")
                end

                health = math.max(health, 450)

            elseif roll <= 75 then
                bot:SetNWString("Name", "Saurus Warrior")
                bot:SetModel(LizardmanModels[math.random(#LizardmanModels)])
                bot.FightType = "melee"
                bot.weapon = math.random(1, 100) <= 50 and "chitin_spear" or "cat_chaos_legacy_crozius"
                bot:SetNWString("Description", "A broad-scaled warrior bred for nothing but disciplined slaughter.")
                health = math.max(health * 4, 1800)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Slann Shaman")
                bot:SetModel("models/ebmage/adanza/frog.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Through croaks and whispered rites, it bends ancient powers to annihilate intruders.")
                health = math.max(health * 5, 2500)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Giant Lizard")
                bot:SetModel("models/echo/ark/megalania_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "A heavy-bodied jungle predator driven into a killing frenzy.")
                health = math.max(health * 5, 2500)

            else
                bot:SetNWString("Name", "Giant Toad")
                bot:SetModel("models/echo/ark/toad_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                if math.random(1, 100) <= 50 then
                    bot.FightType = "hybrid"
                    bot.meleeweapon = "murlock_melee"
                    bot.weapon = "tfa_big_shoota"
                end
                bot:SetNWString("Description", "A bloated swamp horror worshipped as a sacred beast by the lesser spawnings.")
                health = math.max(health * 5, 2500)
            end
        end

        bot:SetNWString("Status", "LIZARDMEN")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Lizardmen = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end, 

    Think = function(self)
        if BOT_INVASION ~= "Lizardmen" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "LIZARDMEN" then
                self:CreateLizardman(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}