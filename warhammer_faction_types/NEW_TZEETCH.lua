FACTION_TYPES["NEW_TZEETCH"] = {
    STAGE = "Glory to the Changer",
    DeathsByType = {},
    OffWorld = true,

    CreateTzeentchCult = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        -- print("Creating Tzeentch Cultist Bot. Base Health:", health)

        local roll = math.random(1, 100)
        local chance_to_spawn_elite = 10
        spawn_elite = false

        local revolutionActive = false
        for _, v in pairs(REVOLUTION_TABLE) do
            if v ~= "NONE" then revolutionActive = true end
            break
        end

        if roll <= chance_to_spawn_elite then
            spawn_elite = true
        end

        if elite then
            spawn_elite = true
        end

        if spawn_elite then
            bot.Elite = true
            local EliteTypeRoll = math.random(1, 100)
            if EliteTypeRoll <= 99 then
                --Champion of Tzeentch
                bot:SetModel("models/astartes/cul/ast_cultist.mdl")
                bot:SetNWBool("ShieldEnable", true)
                health = health * 5
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Name", "Champion of Tzeentch")
                bot:SetNWString("Description", "A Champion of Tzeentch, wielding the powers of the Great Plan.")
                bot.TzeentchChampion = true
            else
                --rubicorn marine
                bot:SetModel("models/florensio/thousand_sons/thousand_sons_pm.mdl")
                bot:SetNWBool("ShieldEnable", true)
                health = health * 20
                bot.FightType = "hybrid"
                bot.weapon = "cat_chaos_legacy_boltercombi"
                bot.meleeweapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Name", "Rubicorn Marine")
                bot:SetNWString("Description", "A Rubicorn Marine, a powerful warrior of Tzeentch.")
                bot.TzeentchChampion = true
            end
        else
            local roll = math.random(1, 100)
            --50% chance to be a standard cultist.
            if roll <= 80 then
            
                bot:SetModel("models/florensio/modular_cultist/modular_cultist_pm.mdl")

                local RangeWeapons = {
                    "murlock_autogun",
                    "murlock_weapon_pistol",
                    "weapon_laspistol"
                }

                local MeleeWeapons = {
                    "cat_chaos_legacy_powerswordtzeentch",
                    "murlock_chaos_knife",
                    "murlock_fists",
                    "cat_chaos_legacy_flamer"
                }

                bot.FightType = "hybrid"
                bot.weapon = RangeWeapons[math.random(#RangeWeapons)]
                bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
                bot:SetNWString("Name", "Tzeentch Soldier")
                bot:SetNWString("Description", "A Soldier of Tzeentch, ready to die for the Great Plan.")
            else
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_fists"
                bot:SetNWString("Name", "Tzeentch Demon")
                bot:SetNWString("Description", "A Demon of Tzeentch, ready to sow discord and chaos.")
                bot:SetColor(Color(0, 229, 255))
                bot:SetMaterial("models/screenspace")
                health = health * 2
            end
        end

        bot:StripWeapons()
        bot:SetNWString("Status", "CHANGE_HORDE")
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.MirrorImage = true
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "CHANGE_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "CHANGE_HORDE" then
                self:CreateTzeentchCult(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}

BOT_SOUND_MANAGER["CHANGE_HORDE"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/40k/tzeetch/newvoice/LINE4.mp3",
        "https://www.imperiumgaming.net/40k/tzeetch/newvoice/line1.mp3",
        "https://www.imperiumgaming.net/40k/tzeetch/newvoice/line2.mp3",
        "https://www.imperiumgaming.net/40k/tzeetch/newvoice/line3.mp3",
        "https://www.imperiumgaming.net/40k/tzeetch/newvoice/line5.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}
