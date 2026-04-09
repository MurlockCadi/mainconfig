FACTION_TYPES["OOPSALLBOMBS"] = {
    STAGE = "MORE BOMBS!",
    DeathsByType = {},
    OffWorld = true,

    CreateBombs = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 5

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)
            if roll <= 20 then
                bot:SetNWString("Name", "ELITE BOMB SQUIG")
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A SQUIG STUFFED WITH BOMBS!")
                health = math.max(health * 2, 2000)
		
            elseif roll <= 40 then
                bot:SetNWString("Name", "ELITE BOMB RAT!")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "BOOM-BOOM!")
                health = math.max(health * 1, 1000)
		
		    elseif roll <= 60 then
                bot:SetNWString("Name", "Elite Bomber Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "DEATH TO THE ADMINISTRATUM!")
                health = math.max(health * 1, 1000)

		    elseif roll <= 80 then
                bot:SetNWString("Name", "Elite Runningback Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bald.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "Just went pro.")
                health = math.max(health * 3, 2000)
			
			else
                bot:SetNWString("Name", "Elite Spook Bomber")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "They told them they would get spook after this")
                health = math.max(health * 1, 2000)
		
		
            end
        else
            local roll = math.random(1, 100)
            if roll <= 20 then
                bot:SetNWString("Name", "BOMB SQUIG")
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A SQUIG STUFFED WITH BOMBS!")
                health = math.max(health * 1, 2000)
		
            elseif roll <= 40 then
                bot:SetNWString("Name", "BOMB RAT!")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "BOOM-BOOM!")
                health = math.max(health * 1, 500)
		
		    elseif roll <= 60 then
                bot:SetNWString("Name", "Bomber Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "DEATH TO THE ADMINISTRATUM!")
                health = math.max(health * 1, 1000)

		    elseif roll <= 80 then
                bot:SetNWString("Name", "Runningback Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bald.mdl")
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "Just went pro.")
                health = math.max(health * 2, 2000)
			
			else
                bot:SetNWString("Name", "Spook Bomber")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "They told them they would get spook after this")
                health = math.max(health * 1, 1500)
        end
	end
        bot:SetNWString("Status", "OOPSALLBOMBS")
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
        if BOT_INVASION ~= "OOPSALLBOMBS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "OOPSALLBOMBS" then
                self:CreateBombs(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}