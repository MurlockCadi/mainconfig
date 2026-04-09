FACTION_TYPES["NECROMUNDAN_GANGS"] = {
    STAGE = "WELCOME TO NECROMUNDA",
    DeathsByType = {},
    OffWorld = true,

    CreateGangs = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)
            
            if roll <= 1 then
                bot:SetNWString("Name", "Sanctioner Automata")
                bot:SetModel("models/wk/gibus/gibus_dominator.mdl")
                
                if math.random(1, 2) == 1 then
                    bot.FightType = "melee"
                    bot.weapon = "murlock_fists"
                 else
                     bot.FightType = "flamer"
                     bot.weapon = "cat_legacy_flamerheresy"
                 end
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWBool("ShieldEnable", true)
		        bot:SetNWString("Description", "Cybernetic brutes controlled by the salvaged cranial remains of particularly merciless Enforcers.")
                health = math.max(health * 10, 6000)

            elseif roll <= 5 then
                bot:SetNWString("Name", "Goliath Sumpkroc")
                bot:SetModel("models/echo/ark/megalania_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
               timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetNWString("Description", "A reptilenous mutant that dwells in the toxic sump waters of the underhive, using its powerful jaws and claws to tear apart its prey.")
                health = math.max(health * 8, 1500)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Cawdor Redemptionist")
                bot:SetModel("models/wk/jackswan/hexorcist.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "flamer"
                     bot.weapon = "cat_chaos_legacy_flamer"
                 end
                bot:SetNWString("Description", "Cawdor Redemptionists are fanatical zealots who seek to purge the underhives of heresy and corruption.")
                health = math.max(health * 5, 800)


            elseif roll <= 25 then
                bot:SetNWString("Name", "Ironhead Squat")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_legacy_heavybolterheresy"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_legacy_thunderhammerterminator"
                 end
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWString("Description", "Ironhead Squats are a rare breed of squat that have adapted to the toxic and irradiated environment of the underhives, their dense bones and toughened skin making them incredibly resilient.")
                health = math.max(health * 5, 800)
    
            elseif roll <= 35 then
                bot:SetNWString("Name", "Corpse Grinder")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/sodium_blood_pact.mdl" or "models/sodium_cultist.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_legacy_chainaxeheresy"
                 end
                bot:SetNWString("Description", "Corpse Grinders are a gang of cannibalistic scavengers who have taken to grinding up the remains of the dead.")
                health = math.max(health * 5, 800)

            elseif roll <= 45 then
                if math.random(1, 2) == 1 then
                bot:SetNWString("Name", "Scabber")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bald.mdl")  
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"  
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                 else
                bot:SetNWString("Name", "Slopper")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")  
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainaxeheresy"  
                 end
               bot:SetNWString("Description", "Scabber and Slopper are a pair of ogryn who have taken to becoming the best chefs in the underhives.")
                health = math.max(health * 5, 800)

            elseif roll <= 55 then
                bot:SetNWString("Name", "Underhive Doc")
                bot:SetModel("models/wk/adeptus_mechanicus/wk_tech_priest.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainswordheresy"  
             bot:SetColor(Color(109, 109, 109))
                bot:SetNWString("Description", "Underhive Docs are a gang of deranged medics who have taken to performing gruesome experiments on the living and the dead alike.")
                health = math.max(health * 5, 800)

            elseif roll <= 65 then
                bot:SetNWString("Name", "Ratling Slopper")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
                bot:SetNWString("Description", "Ratling Sloppers are the finest chefs in the underhives coveted for their culinary skills and their delicious rat pies.")
                health = math.max(health * 5, 700)

            elseif roll <= 70 then
                bot:SetNWString("Name", "Cawdor Bomb Rat")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.weapon = "cat_custom_grenade_stun"
                bot:SetNWString("Description", "A rat trained to quickly take a stun grenade into combat and detonate it on the enemy.")
                health = math.max(health * 2, 200)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Giant Rat")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "Giant Rats are massive rodents that have adapted to the harsh conditions of the underhives.")
                health = math.max(health * 5, 700)

            else
                bot:SetNWString("Name", "Hive Scum")
                bot:SetModel("models/wk/cult/cult_shooter.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "bowie_knife"
                 end
                bot:SetNWString("Description", "Hive scum are the lowest of the low, scavengers and thieves who eke out a miserable existence in the underhives by preying on the weak and desperate.")
                health = math.max(health * 3, 500)
    
            end
        else
            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetNWString("Name", "Sanctioner Automata")
                bot:SetModel("models/wk/gibus/gibus_dominator.mdl")
                
                if math.random(1, 2) == 1 then
                    bot.FightType = "melee"
                    bot.weapon = "murlock_fists"
                 else
                     bot.FightType = "flamer"
                     bot.weapon = "cat_legacy_flamerheresy"
                 end
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWBool("ShieldEnable", true)
		        bot:SetNWString("Description", "Cybernetic brutes controlled by the salvaged cranial remains of particularly merciless Enforcers.")
                health = math.max(health * 9, 5000)

            elseif roll <= 5 then
                bot:SetNWString("Name", "Goliath Sumpkroc")
                bot:SetModel("models/echo/ark/megalania_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
               timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetNWString("Description", "A reptilenous mutant that dwells in the toxic sump waters of the underhive, using its powerful jaws and claws to tear apart its prey.")
                health = math.max(health * 7, 1000)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Cawdor Redemptionist")
                bot:SetModel("models/wk/jackswan/hexorcist.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "flamer"
                     bot.weapon = "cat_chaos_legacy_flamer"
                 end
                bot:SetNWString("Description", "Cawdor Redemptionists are fanatical zealots who seek to purge the underhives of heresy and corruption.")
                health = math.max(health * 4, 700)


            elseif roll <= 25 then
                bot:SetNWString("Name", "Ironhead Squat")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_legacy_heavybolterheresy"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_legacy_thunderhammerterminator"
                 end
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWString("Description", "Ironhead Squats are a rare breed of squat that have adapted to the toxic and irradiated environment of the underhives, their dense bones and toughened skin making them incredibly resilient.")
                health = math.max(health * 4, 700)
    
            elseif roll <= 35 then
                bot:SetNWString("Name", "Corpse Grinder")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/sodium_blood_pact.mdl" or "models/sodium_cultist.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_legacy_chainaxeheresy"
                 end
                bot:SetNWString("Description", "Corpse Grinders are a gang of cannibalistic scavengers who have taken to grinding up the remains of the dead.")
                health = math.max(health * 4, 700)

            elseif roll <= 45 then
                if math.random(1, 2) == 1 then
                bot:SetNWString("Name", "Scabber")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bald.mdl")  
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"  
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                 else
                bot:SetNWString("Name", "Slopper")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")  
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainaxeheresy"  
                 end
               bot:SetNWString("Description", "Scabber and Slopper are a pair of ogryn who have taken to becoming the best chefs in the underhives.")
                health = math.max(health * 4, 700)

            elseif roll <= 55 then
                bot:SetNWString("Name", "Underhive Doc")
                bot:SetModel("models/wk/adeptus_mechanicus/wk_tech_priest.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainswordheresy"  
             bot:SetColor(Color(109, 109, 109))
                bot:SetNWString("Description", "Underhive Docs are a gang of deranged medics who have taken to performing gruesome experiments on the living and the dead alike.")
                health = math.max(health * 4, 700)

            elseif roll <= 65 then
                bot:SetNWString("Name", "Ratling Slopper")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
                bot:SetNWString("Description", "Ratling Sloppers are the finest chefs in the underhives coveted for their culinary skills and their delicious rat pies.")
                health = math.max(health * 4, 600)

            elseif roll <= 70 then
                bot:SetNWString("Name", "Cawdor Bomb Rat")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.weapon = "cat_custom_grenade_stun"
                bot:SetNWString("Description", "A rat trained to quickly take a stun grenade into combat and detonate it on the enemy.")
                health = math.max(health * 1, 100)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Giant Rat")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "Giant Rats are massive rodents that have adapted to the harsh conditions of the underhives.")
                health = math.max(health * 4, 600)

            else
                bot:SetNWString("Name", "Hive Scum")
                bot:SetModel("models/wk/cult/cult_shooter.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "bowie_knife"
                 end
                bot:SetNWString("Description", "Hive scum are the lowest of the low, scavengers and thieves who eke out a miserable existence in the underhives by preying on the weak and desperate.")
                health = math.max(health * 2, 400)
        end
	end
        bot:SetNWString("Status", "NECROMUNDAN_GANGS")
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
        if BOT_INVASION ~= "NECROMUNDAN_GANGS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "NECROMUNDAN_GANGS" then
                self:CreateGangs(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
