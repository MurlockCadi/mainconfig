FACTION_TYPES["PIRATES"] = {
    STAGE = "VOID REAVERS",
    DeathsByType = {},
    OffWorld = true,

    CreatePirate = function(self, bot, elite)
        local health = GetHealthByTotalPlayers() * 1.4
        local spawn_elite = elite or math.random(1, 100) <= 20

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 20 then
                bot:SetNWString("Name", "Pirate Officer")
                bot:SetModel("models/dizcordum/wk/mercenary/croto_hark.mdl")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_shuriken_pistol"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A swaggering void-captain draped in stolen finery and armed with the best loot on the deck.")
                health = math.max(health * 4, 2000)

            elseif roll <= 35 then
                bot:SetNWString("Name", "Spook Bosun")
                bot:SetModel(bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot.hasGasMask = true
                bot:SetNWString("Description", "A chem-soaked deck boss hurling burning death through the corridors of captured ships.")
                health = math.max(health * 3, 1500)

            elseif roll <= 50 then
                bot:SetNWString("Name", "Freebooter Nob")
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                bot:SetModelScale(1.2, 0)
                if math.random(1, 100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_shoota"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot:SetNWBool("ShieldEnable", true)
                bot.ork = true
                bot:SetNWString("Description", "A hulking Freebooter warlord who lives for loot, dakka, and boarding actions.")
                health = math.max(health * 6, 2500)

            elseif roll <= 70 then
                bot:SetNWString("Name", "Void Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bullgryn.mdl")
                if math.random(1, 100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_choppa"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_custom_ogrynstick"
                end
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A brutal abhuman enforcer used to crack bulkheads and skulls alike.")
                health = math.max(health * 5, 3000)

            elseif roll <= 85 then
                bot:SetNWString("Name", "Harlequin Reaver")
                bot:SetModel("models/arlequin.mdl")
                bot.FightType = "shooting"
                bot.weapon = "zad_eldar_shuriken_pistol"
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A laughing void-raider dancing through gunfire with impossible grace.")
                health = math.max(health * 3, 1800)

            else
                bot:SetNWString("Name", "Void Corsair")
                bot:SetModel("models/arlequin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(450)
                bot:SetWalkSpeed(450)
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A murderous xenos raider that slips between shadows and leaves only corpses behind.")
                health = math.max(health * 3, 1800)
            end
        else
            local roll = math.random(1, 100)

            if roll <= 45 then
                bot:SetNWString("Name", "Spook Deckhand")
                bot:SetModel(bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl")
                if math.random(1, 100) <= 60 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                end
                bot.hasGasMask = true
                bot:SetNWString("Description", "A chem-addled voidsman turned pirate, wild-eyed and desperate for plunder.")
                health = math.max(health * 1.5, 600)

            elseif roll <= 65 then
                bot:SetNWString("Name", "Void Marauder")
                bot:SetModel(bot.IsFemale and "models/dizcordum/chaos/cultist/cultist4.mdl" or "models/dizcordum/chaos/cultist/cultist5.mdl")
                if math.random(1, 100) <= 70 then
                    bot.FightType = "shooting"
                    bot.weapon = "murlock_weapon_pistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                end
                bot:SetNWString("Description", "A scavenger and raider from the lower decks, eager to rob the dead and the living.")
                health = math.max(health * 1.5, 700)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Freebooter")
                bot:SetModel(ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)])
                if math.random(1, 100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_choppa"
                end
                bot.ork = true
                bot:SetNWString("Description", "An ork pirate living for boarding fights, teef, and stolen guns.")
                health = math.max(health * 3, 1000)

            elseif roll <= 92 then
                bot:SetNWString("Name", "Harlequin Cutthroat")
                bot:SetModel("models/arlequin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(375)
                bot:SetWalkSpeed(375)
                bot:SetNWString("Description", "A swift and sinister xenos killer weaving through the melee like a stage performance.")
                health = math.max(health * 2, 900)

            else
                bot:SetNWString("Name", "Pirate Gunner")
                bot:SetModel(bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl")
                bot.FightType = "shooting"
                bot.weapon = "tfa_big_shoota"
                bot.hasGasMask = true
                bot:SetNWString("Description", "A scarred raider with a stolen long gun and a taste for void combat.")
                health = math.max(health * 2, 900)
            end
        end

        bot:SetNWString("Status", "PIRATES")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.hasGasMask = bot.hasGasMask or false
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "PIRATES" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "PIRATES" then
                self:CreatePirate(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}