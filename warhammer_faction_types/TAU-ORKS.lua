FACTION_TYPES["TAU-ORKS"] = {
    STAGE = "GREATER WAAAGH! FOR DA GREATER GOOD",
    DeathsByType = {},
    OffWorld = true,

    CreateTauOrk = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers()

        local orkWeapons = {
            melee = {"tfa_choppa", "tfa_big_choppa", "bowie_knife"},
            shoota = {"tfa_slugga", "tfa_shoota", "tfa_big_shoota", "tfa_rokkit_launcha"}
        }
        local tauWeapons = {"murlock_pulserifle"}

        local spawn_elite = elite or math.random(1, 100) <= 30

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)
            if eliteRoll <= 40 then
                bot:SetNWString("Name", "ORK CRISIS LOOTA")
                health = math.max(health * 8, 30000)
                bot:SetModel("models/player/crisis_battlesuit.mdl")
                bot:SetModelScale(1.4, 0)
                bot:SetColor(Color(100, 0, 0))
                if math.random(1,100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_murlock_crisis"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                    health = health * 2
                end
                bot:SetNWString("Description", "ORK LOOTED A CRISIS SUIT AND PAINTED IT RED")
            elseif eliteRoll <= 80 then
                bot:SetNWString("Name", "ORK BROADSIDE LOOTA")
                health = math.max(health * 10, 50000)
                bot:SetModel("models/broadside.mdl")
                bot:SetModelScale(2.0, 0)
                bot:SetColor(Color(100, 0, 0))
                if math.random(1,100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_murlock_broadside"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                    health = health * 2
                end
                bot:SetNWString("Description", "ORK LOOTED A BROADSIDE SUIT AND PAINTED IT RED")
            else
                bot:SetNWString("Name", "DA ORK NOB")
                health = math.max(health * 5, 4000)
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                bot:SetModelScale(1.3, 0)
                local roll = math.random(1,100)
                if roll <= 40 then
                    bot.FightType = "shooting"
                    bot.weapon = orkWeapons.shoota[math.random(#orkWeapons.shoota)]
                elseif roll <= 70 then
                    bot.FightType = "shooting"
                    bot.weapon = tauWeapons[1]
                else
                    bot.FightType = "melee"
                    bot.weapon = orkWeapons.melee[math.random(#orkWeapons.melee)]
                end
                bot:SetNWString("Description", "ORK NOB BOSS LOOTED SOME TAU DAKKA")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            local botroll = math.random(1, 100)
            if botroll <= 20 then
                bot:SetNWString("Name", "Snotling")
                health = math.max(health * 0.5, 250)
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot:SetModelScale(0.5, 0)
                bot:SetPlayerColor(Vector(1, 0, 0))
                if math.random(1,100) <= 50 then
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                else
                    bot.FightType = "shooting"
                    bot.weapon = orkWeapons.shoota[math.random(#orkWeapons.shoota)]
                end
                bot:SetNWString("Description", "A LITTLZ RED SNOTLING WIV A STIK OR TINY DAKKA")
                bot.goblin = true
            elseif botroll <= 40 then
                bot:SetNWString("Name", "Gretchin")
                health = math.max(health * 2, 500)
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                local roll = math.random(1,100)
                if roll <= 40 then
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                elseif roll <= 70 then
                    bot.FightType = "shooting"
                    bot.weapon = orkWeapons.shoota[math.random(#orkWeapons.shoota)]
                else
                    bot.FightType = "shooting"
                    bot.weapon = tauWeapons[1]
                end
                bot:SetNWString("Description", "RED GRETCHIN WIV A KNIFE OR LOOTED TAU DAKKA")
                bot.goblin = true
            elseif botroll <= 60 then
                bot:SetNWString("Name", "ORK BOY LOOTA")
                bot:SetModel(ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)])
                if math.random(1,100) <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = orkWeapons.shoota[math.random(#orkWeapons.shoota)]
                else
                    bot.FightType = "shooting"
                    bot.weapon = tauWeapons[1]
                end
                bot:SetNWString("Description", "ORK BOY WIV SLUGGA OR LOOTED PULSE RIFLE")
            elseif botroll <= 80 then
                bot:SetNWString("Name", "ORK SHOOTA BOY")
                bot:SetModel(ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)])
                bot.FightType = "shooting"
                if math.random(1,100) <= 50 then
                    bot.weapon = orkWeapons.shoota[math.random(#orkWeapons.shoota)]
                else
                    bot.weapon = tauWeapons[1]
                end
                bot:SetNWString("Description", "ORK SHOOTA BOY WIV ORKY OR TAU DAKKA")
            else
                bot:SetNWString("Name", "ORK MELEE BOY")
                bot:SetModel(ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)])
                bot:SetPlayerColor(Vector(1, 0, 0))
                bot.FightType = "melee"
                bot.weapon = orkWeapons.melee[math.random(#orkWeapons.melee)]
                bot:SetNWString("Description", "ORK BOY WIV BIG MELEE")
            end
        end

        bot:StripWeapons()
        RandomonizeBodygroupsAndSkinsOrks(bot)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetNWString("Status", "TAU-ORKS")
        bot:SetMaxHealth(health)
        bot.ork = true
        bot:SetHealth(health)
        bot:SetNoTarget(true)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "TAU-ORKS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "TAU-ORKS" then
                self:CreateTauOrk(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}