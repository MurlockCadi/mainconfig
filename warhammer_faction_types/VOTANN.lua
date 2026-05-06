FACTION_TYPES["VOTANN"] = {
    STAGE = "FOR ROCK AND STONE!",
    DeathsByType = {},
    OffWorld = true,

    	CreateVotann = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

	        if roll <= 5 then
                bot:SetNWString("Name", "Elite Einhyr Champion")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(100)
                bot:SetWalkSpeed(100)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_thunderhammerterminator"
                bot:SetNWString("Description", "The champion of the Hearthguard, slow and brutal.")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 8, 3000)
			
			elseif roll <= 25 then
                bot:SetNWString("Name", "Elite Einhyr Hearthguard")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "hybrid"
                bot.weapon = "murlock_volkite_blaster"
			    bot.meleeweapon = "cat_legacy_poweraxelegatine"
                bot:SetNWString("Description", "Elite Kin tasked with defending what matters most. ")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 5, 1200)
				
            elseif roll <= 35 then
                bot:SetNWString("Name", "Elite Grymnyr")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "The only Kin able to interact with the warp.")
                health = math.max(health * 3, 800)
            
			elseif roll <= 55 then
                bot:SetNWString("Name", "Elite Brokhyr Thunderkin")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "The most talented engineers of the Kin, in heavy armor and heavier weapons.")
                health = math.max(health * 4, 1500)
					
			elseif roll <= 65 then
                bot:SetNWString("Name", "Elite Cthonian Berserks")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_poweraxecthonian"
                bot:SetNWString("Description", "Heavily augmented for speed and strength")
                health = math.max(health * 2, 1000)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Elite Hearthkyn Warriors")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "murlock_volkite_blaster"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A Kin warrior well trained and well armed.")
                health = math.max(health * 3, 800)

			else
                bot:SetNWString("Name", "Elite Ironkin")
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
                health = math.max(health * 2, 500)		
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
                bot:SetNWString("Description", "Elite Kin tasked with defending what matters most.")
                bot:SetNWBool("ShieldEnable", true)
                health = math.max(health * 4, 1000)
				
            elseif roll <= 35 then
                bot:SetNWString("Name", "Grymnyr")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
				bot.pysker = true
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "The only Kin able to interact with the warp.")
                health = math.max(health * 2, 700)
            
			elseif roll <= 55 then
                bot:SetNWString("Name", "Brokhyr Thunderkin")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_assaultcannoncrusade"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "The most talented engineers of the Kin, in heavy armor and heavier weapons.")
                health = math.max(health * 3, 1000)
					
			elseif roll <= 65 then
                bot:SetNWString("Name", "Cthonian Berserks")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_poweraxecthonian"
                bot:SetNWString("Description", "Heavily augmented for speed and strength")
                health = math.max(health * 1, 800)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Hearthkyn Warriors")
                bot:SetModel("models/muschi/knight_ig/muschi_ig_squat_kalt.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "shooting"
                bot.weapon = "murlock_volkite_blaster"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A Kin warrior well trained and well armed.")
                health = math.max(health * 2, 700)

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
                health = math.max(health * 1, 500)		
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


BOT_SOUND_MANAGER["VOTANN"] = {
    SONGS_URL = {
		"https://www.imperiumgaming.net/votann/Bites%20the%20dust.mp3",
		"https://www.imperiumgaming.net/votann/Boom%20Baby!.mp3",
		"https://www.imperiumgaming.net/votann/By%20the%20Beard%20Abomination.mp3",
		"https://www.imperiumgaming.net/votann/Crawl%20Back%20to%20hell.mp3",
		"https://www.imperiumgaming.net/votann/Die%20After%20All.mp3",
		"https://www.imperiumgaming.net/votann/Eat%20Lead.mp3",
		"https://www.imperiumgaming.net/votann/FOR%20KARL!.mp3",
		"https://www.imperiumgaming.net/votann/Focus%20Fire.mp3",
		"https://www.imperiumgaming.net/votann/For%20Karl.mp3",
		"https://www.imperiumgaming.net/votann/For%20rock%20and%20stone!.mp3",
		"https://www.imperiumgaming.net/votann/Like%20That%20rock%20and%20stone.mp3",
		"https://www.imperiumgaming.net/votann/Make%20It%20Out%20Alive.mp3",
		"https://www.imperiumgaming.net/votann/None%20can%20stand%20before%20us!.mp3",
		"https://www.imperiumgaming.net/votann/Roar.mp3",
		"https://www.imperiumgaming.net/votann/Rock%20Solid.mp3",
		"https://www.imperiumgaming.net/votann/Rock%20and%20stone.mp3",
		"https://www.imperiumgaming.net/votann/Shoot%20Ass.mp3",
		"https://www.imperiumgaming.net/votann/Stop%20shooting%20leaf%20lover.mp3",
		"https://www.imperiumgaming.net/votann/Watch%20The%20Overheating.mp3",
		"https://www.imperiumgaming.net/votann/Watch%20where%20you're%20shooting%20moron.mp3",
		"https://www.imperiumgaming.net/votann/Work%20you%20piece%20of%20shit..mp3",
		"https://www.imperiumgaming.net/votann/You're%20cute%20but%20dead.mp3",
		"https://www.imperiumgaming.net/votann/bloody%20hell%20hard%20to%20kill.mp3",
		"https://www.imperiumgaming.net/votann/old%20lady%20all%20day.mp3",
		"https://www.imperiumgaming.net/votann/think%20you%20could%20kill%20me.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}
