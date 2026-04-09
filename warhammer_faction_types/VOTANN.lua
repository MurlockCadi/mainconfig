FACTION_TYPES["VOTANN"] = {
    STAGE = "CHEM-LORDS ASCENDANT",
    DeathsByType = {},
    OffWorld = true,

    	CreateVotann = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100)

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

	            if roll <= 5 then
                bot:SetNWString("Name", "Einhyr Champion")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(100)
                bot:SetWalkSpeed(100)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_thunderhammerterminator"
                bot:SetNWString("Description", "The champion of the Hearthguard, slow and brutal.")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 8, 2000)
			
			elseif roll <= 25 then
                bot:SetNWString("Name", "Einhyr Hearthguard")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "hybrid"
                bot.weapon = "murlock_volkite_blaster"
			    bot.meleeweapon = "cat_legacy_poweraxelegatine"
                bot:SetNWString("Description", "Elite Kin tasked with defending what matters most. ")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 5, 2000)
				
            elseif roll <= 35 then
                bot:SetNWString("Name", "Grymnyr")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "The only Kin able to interact with the warp.")
                health = math.max(health * 3, 2000)
            
			elseif roll <= 55 then
                bot:SetNWString("Name", "Brokhyr Thunderkin")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "The most talented engineers of the Kin, in heavy armor and heavier weapons.")
                health = math.max(health * 4, 2000)
					
			elseif roll <= 65 then
                bot:SetNWString("Name", "Cthonian Berserks")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_poweraxecthonian"
                bot:SetNWString("Description", "Heavily augmented for speed and strength")
                health = math.max(health * 2, 2000)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Hearthkyn Warriors")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "murlock_volkite_blaster"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A Kin warrior well trained and well armed.")
                health = math.max(health * 3, 2000)

			else
                bot:SetNWString("Name", "Ironkin")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_pulserifle"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_gauss"
                end
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Sapient fodder of the Votann to avoid Kin loss.")
                health = math.max(health * 2, 1000)		
            end
        else
            local roll = math.random(1, 100)
	            if roll <= 5 then
                bot:SetNWString("Name", "Einhyr Champion")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(100)
                bot:SetWalkSpeed(100)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_thunderhammerterminator"
                bot:SetNWString("Description", "The champion of the Hearthguard, slow and brutal.")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 7, 2000)
			
			elseif roll <= 25 then
                bot:SetNWString("Name", "Einhyr Hearthguard")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "hybrid"
                bot.weapon = "murlock_volkite_blaster"
			    bot.meleeweapon = "cat_legacy_poweraxelegatine"
                bot:SetNWString("Description", "Elite Kin tasked with defending what matters most. ")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 4, 2000)
				
            elseif roll <= 35 then
                bot:SetNWString("Name", "Grymnyr")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "The only Kin able to interact with the warp.")
                health = math.max(health * 2, 2000)
            
			elseif roll <= 55 then
                bot:SetNWString("Name", "Brokhyr Thunderkin")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "The most talented engineers of the Kin, in heavy armor and heavier weapons.")
                health = math.max(health * 3, 2000)
					
			elseif roll <= 65 then
                bot:SetNWString("Name", "Cthonian Berserks")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_poweraxecthonian"
                bot:SetNWString("Description", "Heavily augmented for speed and strength")
                health = math.max(health * 1, 2000)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Hearthkyn Warriors")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "murlock_volkite_blaster"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A Kin warrior well trained and well armed.")
                health = math.max(health * 2, 2000)

			else
                bot:SetNWString("Name", "Ironkin")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_pulserifle"
                else
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_gauss"
                end
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "Sapient fodder of the Votann to avoid Kin loss.")
                health = math.max(health * 1, 1000)		
            end
        end

        bot:SetNWString("Status", "VOTANN")
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
        if BOT_INVASION ~= "VOTANN" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "VOTANN" then
                self:CreateVotann(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}