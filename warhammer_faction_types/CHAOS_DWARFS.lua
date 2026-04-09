FACTION_TYPES["CHAOS_DWARFS"] = {
    STAGE = "Chaos Dwarfs",
    DeathsByType = {},
    OffWorld = true,
    CreateDwarfs = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
		
            local ShootingWeapons = {
                "cat_chaos_legacy_heavyboltershoulder",
                "cat_chaos_legacy_bolter",
                "cat_chaos_legacy_stormbolter",
                "cat_chaos_legacy_boltercombi"
            }

            local MeleeWeapons = {
                "cat_chaos_legacy_poweraxe",
                "cat_chaos_legacy_powerfist",
                "cat_chaos_legacy_chainaxeheavy",
                "cat_chaos_legacy_crozius",
                "cat_chaos_legacy_chainsword"
            }
		
        local spawn_elite = elite -- Only spawn elites when we want them to 

        if spawn_elite then

            local roll = math.random(1, 100)	
			
		if roll <= 5 then
            bot:SetNWString("Name", "Infernal Guard")
            bot:SetModel("models/knight_ig/muschi_ig_squat_kalt.mdl")
            bot:SetNWString("Description", "The most legendary warrior-cults within the Chaos Dwarf empire")
            bot.FightType = "hybrid"
            bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot.ChaosDwarf = true
            bot:SetRunSpeed(150)
            bot:SetWalkSpeed(150)
	        bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 5, 2000)
	            --set bodygroup
            local bodygroupchoice = math.random(1,2)
            if bodygroupchoice == 1 then
                bot:SetBodygroup(1, 2) -- cap_hair = Empty
                bot:SetBodygroup(4, 0) -- beard off
            else
                bot:SetBodygroup(1, 2) -- cap_hair = Empty
                bot:SetBodygroup(4, 1) -- beard on
            end
            bot.ShootingSkill = 2
			
		elseif roll <= 15 then
            bot:SetNWString("Name", "Daemonsmith")
            bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
            bot:SetNWString("Description", "The priests and the primary artificers and engineers of Chaos Dwarf society")
            bot.FightType = "hybrid"
            bot.weapon = "cat_chaos_legacy_sorcererstaff"
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot.ChaosDwarf = true
            health = math.max(health * 4, 2000)
			
		elseif roll <= 25 then
            bot:SetNWString("Name", "Chaos Dwarf Warrior")
            bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
            bot:SetNWString("Description", "The main melee and ranged infantry of the Chaos Dwarfs' industrial empire")
            bot.FightType = "hybrid"
            bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot.ChaosDwarf = true
            bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 4, 2000)

		elseif roll <= 35 then
            bot:SetNWString("Name", "Black Ork")
            bot:SetModel("models/muschi/orks/muschi_ork_nob_boy.mdl")
                 if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltercombi"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_chaos_legacy_chainaxeheavy"
                 end
            bot:SetNWString("Description", "The strongest if not most unreliable of Chaos Dwarf slaves")
            bot:SetColor(Color(72, 72, 72))
            health = math.max(health * 5, 1000)

		elseif roll <= 45 then
            bot:SetNWString("Name", "Hobgoblin")
            bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                 if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_chaos_legacy_powersword"
                 end
            bot:SetNWString("Description", "Goblins cast out from their own kind for helping the Chaos Dwarfs.")
            health = math.max(health * 3, 2000)
            bot:SetColor(Color(255, 191, 0))
			
		elseif roll <= 55 then
            bot:SetNWString("Name", "Bull Centaur")
            bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_minotaur.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_powerbattleaxe"
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot:SetNWString("Description", "An amalgam of Chaos Dwarf and ferocious bull.")
            health = math.max(health * 5, 1000)
            bot:SetColor(Color(255, 161, 0))
			
		elseif roll <= 70 then
            bot:SetNWString("Name", "Chaos Daemon")
            bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
            bot:SetNWString("Description", "The minor chaos gods manifestations.")
            health = math.max(health * 3, 1000)
            bot:SetColor(Color(255, 161, 0))
			
		elseif roll <= 85 then
            bot:SetNWString("Name", "Ork Labourer")
            bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
            bot:SetNWString("Description", "Forced to serve their masters, they fight or die.")
            health = math.max(health *3, 1000)

		else
            bot:SetNWString("Name", "Skaven Labourer")
        	bot:SetModel("models/ulman/clan_rat_1.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
	        bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)
            bot:SetNWString("Description", "Stolen, starved and whipped daily.")
            health = math.max(health * 2, 1000)
        end

        else
            local roll = math.random(1, 100)

		if roll <= 5 then
            bot:SetNWString("Name", "Infernal Guard")
            bot:SetModel("models/knight_ig/muschi_ig_squat_kalt.mdl")
            bot:SetNWString("Description", "The most legendary warrior-cults within the Chaos Dwarf empire")
            bot.FightType = "hybrid"
            bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot.ChaosDwarf = true
	        bot:SetNWBool("ShieldEnable", true)
            bot:SetRunSpeed(150)
            bot:SetWalkSpeed(150)
            health = math.max(health * 4, 2000)
	            --set bodygroup
            local bodygroupchoice = math.random(1,2)
            if bodygroupchoice == 1 then
                bot:SetBodygroup(1, 2) -- cap_hair = Empty
                bot:SetBodygroup(4, 0) -- beard off
            else
                bot:SetBodygroup(1, 2) -- cap_hair = Empty
                bot:SetBodygroup(4, 1) -- beard on
            end
            bot.ShootingSkill = 2
			
		elseif roll <= 15 then
            bot:SetNWString("Name", "Daemonsmith")
            bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
            bot:SetNWString("Description", "The priests and the primary artificers and engineers of Chaos Dwarf society")
            bot.FightType = "hybrid"
            bot.weapon = "cat_chaos_legacy_sorcererstaff"
			bot.pysker = true
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot.ChaosDwarf = true
            health = math.max(health * 3, 2000)
			
		elseif roll <= 25 then
            bot:SetNWString("Name", "Chaos Dwarf Warrior")
            bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
            bot:SetNWString("Description", "The main melee and ranged infantry of the Chaos Dwarfs' industrial empire")
            bot.FightType = "hybrid"
            bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot.ChaosDwarf = true
            bot:SetNWBool("ShieldEnable", true)
            health = math.max(health * 3, 2000)

		elseif roll <= 35 then
            bot:SetNWString("Name", "Black Ork")
            bot:SetModel("models/muschi/orks/muschi_ork_nob_boy.mdl")
                 if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltercombi"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_chaos_legacy_chainaxeheavy"
                 end
            bot:SetNWString("Description", "The strongest if not most unreliable of Chaos Dwarf slaves")
            bot:SetColor(Color(72, 72, 72))
            health = math.max(health * 4, 1000)

		elseif roll <= 45 then
            bot:SetNWString("Name", "Hobgoblin")
            bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                 if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistoldual"
                 else
                     bot.FightType = "melee"
                     bot.weapon = "cat_chaos_legacy_powersword"
                 end
            bot:SetNWString("Description", "Goblins cast out from their own kind for helping the Chaos Dwarfs.")
            health = math.max(health * 2, 2000)
            bot:SetColor(Color(255, 191, 0))
			
		elseif roll <= 55 then
            bot:SetNWString("Name", "Bull Centaur")
            bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_minotaur.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_powerbattleaxe"
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)
            bot:SetNWString("Description", "An amalgam of Chaos Dwarf and ferocious bull.")
            health = math.max(health * 4, 1000)
			
		elseif roll <= 70 then
            bot:SetNWString("Name", "Chaos Daemon")
            bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
            bot:SetNWString("Description", "The minor chaos gods manifestations.")
            health = math.max(health * 2, 1000)
            bot:SetColor(Color(255, 161, 0))
			
		elseif roll <= 85 then
            bot:SetNWString("Name", "Ork Labourer")
            bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
            bot:SetNWString("Description", "Forced to serve their masters, they fight or die.")
            health = math.max(health * 2, 1000)

		else
            bot:SetNWString("Name", "Skaven Labourer")
        	bot:SetModel("models/ulman/clan_rat_1.mdl")
            bot.FightType = "melee"
            bot.weapon = "cat_chaos_legacy_combatknife"
	        bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)
            bot:SetNWString("Description", "Stolen, starved and whipped daily.")
            health = math.max(health * 1, 1000)
        end
	end

        bot:SetNWString("Status", "CHAOS_DWARFS")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
	    SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "CHAOS_DWARFS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "CHAOS_DWARFS" then
                self:CreateDwarfs(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
