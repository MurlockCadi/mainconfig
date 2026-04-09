FACTION_TYPES["DARK MECHANICUS"] = {
    STAGE = "RISE OF THE MACHINES",
    DeathsByType = {},
    OffWorld = true,

    CreateDarkMech = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
		local spawn_elite = elite -- Only spawn elites when we want them to 
        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 5 then
                bot:SetNWString("Name", "DARK MAGOS")
                health = math.max(health * 5, 3000)
                bot:SetModel("models/astartes/mech/magos.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "hybrid"
                bot.weapon = "murlock_volkite_blaster"    
				bot.meleeweapon = "cat_legacy_chainswordheresy"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "THE LEADER OF THE TECH HERETICS")

           elseif roll <= 6 then
                bot:SetNWString("Name", "DARK DOMINATOR")
                health = math.max(health * 11, 5000)
                bot:SetModel("models/wk/gibus/gibus_dominator.mdl")
                bot:SetColor(Color(74, 46, 255))
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
	                if math.random(1,100) <= 50 then
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"   
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_thunderhammerterminator"
                end
				bot:SetNWString("Description", "THE END OF LEGIONS!")

			elseif roll <= 10 then
                bot:SetNWString("Name", "DARK ELECTRO PRIEST")
                health = math.max(health * 5, 2500)
                bot:SetModel("models/player/mechs_fulgurite.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_powerclawcrusade"              
                bot:SetNWString("Description", "A CREEPY FIGURE WITH ELECTRICITY")
	
 
            elseif roll <= 20 then
                bot:SetNWString("Name", "DARK MARSHALL")
                health = math.max(health * 6, 1200)
                bot:SetModel("models/wk/adeptus_mechanicus/wk_skitarii_marshal.mdl")
                bot:SetColor(Color(74, 46, 255))
				bot.FightType = "shooting"
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "LEAD OF THE SKITARIS OF THE DARK MECHANICUS")
                bot:SetNWBool("ShieldEnable", true)

	        elseif roll <= 30 then
                bot:SetNWString("Name", "DARK RANGER")
                bot:SetModel("models/wk/adeptus_mechanicus/wk_skitarii_rangers_alpha.mdl")
	            health = math.max(health * 5, 900)
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_longlas_voss"
                bot:SetNWString("Description", "A DEADLY SNIPER")

            elseif roll <= 40 then
                bot:SetNWString("Name", "DARK RUST STALKER")
                health = math.max(health * 5, 900)
                bot:SetModel("models/wk/adeptus_mechanicus/wk_sicarian_ruststalkers_alpha.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "shooting"
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "AN SKIITARII WITH DEAD EYES")

	        elseif roll <= 60 then
                bot:SetNWString("Name", "DARK PRIEST")
		        health = math.max(health * 4, 600)
                bot:SetModel(math.random(2) == 1 and "models/wk/gans/wk_gans_priest.mdl" or "models/wk/fem_priast/wk_priestness.mdl")
                bot.FightType = "shooting"
                bot:SetColor(Color(74, 46, 255))
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "DEAD ON THE INSIDE AND THE OUTSIDE")

            else
                bot:SetNWString("Name", "DARK SERVITOR")
                health = math.max(health * 3, 500)
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot:SetColor(Color(74, 46, 255))
                if math.random(1,100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "weapon_laspistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                end
			end
        else

            local roll = math.random(1, 100)

            if roll <= 5 then
                bot:SetNWString("Name", "DARK MAGOS")
                health = math.max(health * 4, 2500)
                bot:SetModel("models/astartes/mech/magos.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "hybrid"
                bot.weapon = "murlock_volkite_blaster"    
				bot.meleeweapon = "cat_legacy_chainswordheresy"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "THE LEADER OF THE TECH HERETICS")

           elseif roll <= 6 then
                bot:SetNWString("Name", "DARK DOMINATOR")
                health = math.max(health * 10, 4000)
                bot:SetModel("models/wk/gibus/gibus_dominator.mdl")
                bot:SetColor(Color(74, 46, 255))
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
	                if math.random(1,100) <= 50 then
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"   
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_thunderhammerterminator"
                end
				bot:SetNWString("Description", "THE END OF LEGIONS!")

			elseif roll <= 10 then
                bot:SetNWString("Name", "DARK ELECTRO PRIEST")
                health = math.max(health * 4, 2000)
                bot:SetModel("models/player/mechs_fulgurite.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_powerclawcrusade"              
                bot:SetNWString("Description", "A CREEPY FIGURE WITH ELECTRICITY")
	
 
            elseif roll <= 20 then
                bot:SetNWString("Name", "DARK MARSHALL")
                health = math.max(health * 5, 1000)
                bot:SetModel("models/wk/adeptus_mechanicus/wk_skitarii_marshal.mdl")
                bot:SetColor(Color(74, 46, 255))
				bot.FightType = "shooting"
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "LEAD OF THE SKITARIS OF THE DARK MECHANICUS")
                bot:SetNWBool("ShieldEnable", true)

	        elseif roll <= 30 then
                bot:SetNWString("Name", "DARK RANGER")
                bot:SetModel("models/wk/adeptus_mechanicus/wk_skitarii_rangers_alpha.mdl")
	            health = math.max(health * 4, 800)
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_longlas_voss"
                bot:SetNWString("Description", "A DEADLY SNIPER")

            elseif roll <= 40 then
                bot:SetNWString("Name", "DARK RUST STALKER")
                health = math.max(health * 4, 800)
                bot:SetModel("models/wk/adeptus_mechanicus/wk_sicarian_ruststalkers_alpha.mdl")
                bot:SetColor(Color(74, 46, 255))
                bot.FightType = "shooting"
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "AN SKIITARII WITH DEAD EYES")

	        elseif roll <= 60 then
                bot:SetNWString("Name", "DARK PRIEST")
		        health = math.max(health * 3, 500)
                bot:SetModel(math.random(2) == 1 and "models/wk/gans/wk_gans_priest.mdl" or "models/wk/fem_priast/wk_priestness.mdl")
                bot.FightType = "shooting"
                bot:SetColor(Color(74, 46, 255))
                bot.weapon = "murlock_galvanic_rifle"
                bot:SetNWString("Description", "DEAD ON THE INSIDE AND THE OUTSIDE")

            else
                bot:SetNWString("Name", "DARK SERVITOR")
                health = math.max(health * 2, 400)
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot:SetColor(Color(74, 46, 255))
                if math.random(1,100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "weapon_laspistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                end


            end
        end

        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetNWString("Status", "DARK MECHANICUS")
        bot.IsMechanical = true
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot:SetNoTarget(true)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "DARK MECHANICUS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "DARK MECHANICUS" then
                self:CreateDarkMech(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}