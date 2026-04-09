FACTION_TYPES["AELDARI"] = {
    STAGE = "Aeldari",
    DeathsByType = {},
    OffWorld = true,
    CreateAeldari = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite or math.random(1, 100) <= 5

        if spawn_elite then
            local elite_roll = math.random(1, 100)
            bot.Elite = true

            if elite_roll <= 90 then
                bot:SetNWString("Name", "Warp Spider")
                bot:SetModel("models/astartes/eldar/spiders_npc.mdl")
                bot:SetNWString("Description", "A highly mobile Aspect Warrior specialising in hit-and-run tactics and close-quarters combat.")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_spinneret"
                health = health * 3
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
            else
                bot:SetNWString("Name", "Banshee")
                bot:SetModel("models/astartes/eldar/banshees.mdl")
                bot:SetNWString("Description", "An elite Aspect Warrior known for their terrifying close-combat prowess and ability to strike fear into the hearts of their enemies.")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                health = health * 3
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(450)
                bot:SetWalkSpeed(450)
            end
        else
            local EldarType = math.random(1, 100)

            if EldarType <= 70 then
                bot:SetNWString("Name", "Guardian Defender")
                bot:SetModel("models/astartes/eldar/guardian_npc.mdl")
                bot:SetNWString("Description", "A citizen-soldier of the Aeldari, called to war in times of need and armed with standard infantry weapons.")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_lasblaster"
                health = health
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
            elseif EldarType <= 90 then
                bot:SetNWString("Name", "Dire Avenger")
                bot:SetModel("models/astartes/eldar/avenger_npc.mdl")
                bot:SetNWString("Description", "A disciplined Aspect Warrior specialising in mid-range firefights and rapid battlefield control.")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_lasblaster"
                health = health * 2
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
            else
                bot:SetNWString("Name", "Dark Reaper")
                bot:SetModel("models/astartes/eldar/dark_reapers_npc.mdl")
                bot:SetNWString("Description", "A deadly long-range marksman, the Dark Reaper picks off high-value targets from afar with precision and lethality.")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_longrifle"
                health = health * 1.5
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
            end
        end

        if false then
            bot:SetNWString("Name", "Harlequin")
            bot:SetNWString("Description", "A master of agility and deception, the Harlequin dances through the battlefield, striking with lethal precision.")
            bot:SetModel("models/arlequin.mdl")
            bot.FightType = "shooting"
            health = health * 2
            bot:SetNWBool("ShieldEnable", true)
            bot.weapon = "zad_eldar_shuriken_pistol"
            bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)
        end

        bot:SetNWString("Status", "AELDARI")
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
        if BOT_INVASION ~= "AELDARI" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "AELDARI" then
                self:CreateAeldari(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end
}
