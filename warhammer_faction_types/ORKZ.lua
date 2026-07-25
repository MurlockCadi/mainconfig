FACTION_TYPES["ORKZ"] = {
    STAGE = "WAAAAGH!",
    DeathsByType = {},
    OffWorld = true,

    CreateCultist = function(self, bot, elite)
        if Ork_ResetBotFlags then Ork_ResetBotFlags(bot) end

        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers() * 1.2

        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)

            if eliteRoll <= 5 then
                bot:SetNWString("Name", "BOMB SQUIG")
                health = math.max(health * 1, 200)
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot.CustomThinkFunction = "OrkSquigBombThink"
                bot.OrkLeapRange = 500
                bot.OrkLeapForce = 650
                bot:SetNWString("Description", "SQUIG WIZ A BOMB! It scuttles fast an' leaps at ya face.")

            elseif eliteRoll <= 35 then
                bot:SetNWString("Name", "ORK COMMANDO")
                health = math.max(health * 3, 500)
                bot.Human = true
                bot:SetModel("models/muschi/orks/muschi_ork_komandoz.mdl")
                bot.FightType = "shooting"
                bot.weapon = "tfa_kustom_shoota"
                bot.CustomThinkFunction = "OrkDakkaThink"
                bot.OrkPreferredRange = 650
                bot:SetNWString("Description", "SNEAKY BOYZ WIZ A CUNNING PLAN")

            elseif eliteRoll <= 60 then
                bot:SetNWString("Name", "ROKIT NOB")
                health = math.max(health * 4, 500)
                bot:SetModel("models/muschi/orks/muschi_ork_nob_boy.mdl")
                bot.FightType = "shooting"
                bot.weapon = "tfa_rokkit_launcha"
                bot.CustomThinkFunction = "OrkRokkitThink"
                bot.OrkPreferredRange = 950
                bot.ChaosDwarf = true
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.25, 0)
                    end
                end)
                bot:SetNWString("Description", "BIG GREEN NOB WIZ A BIG ROKIT DAKKA")

            elseif eliteRoll <= 75 then
                bot:SetNWString("Name", "WEIRD BOY")
                health = math.max(health * 2, 500)
                bot:SetModel("models/muschi/orks/muschi_ork_wild.mdl")
                bot:SetNWBool("ShieldEnable", true)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot.CustomThinkFunction = "OrkWeirdboyThink"
                bot.OrkPreferredRange = 650
                bot:SetNWString("Description", "ORK PSYKER WIZ A BIG STICK AND LOTS OF WAAAGH! Da more boyz about, da nastier 'is powerz.")

            elseif eliteRoll <= 95 then
                bot:SetNWString("Name", "MEGA NOB")
                health = math.max(health * 4, 3000)
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_shoota"
                    bot.OrkPreferredRange = 500
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot.CustomThinkFunction = "OrkMegaNobThink"
                bot.OrkSquadLeaderPref = true
                bot.ChaosDwarf = true
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.25, 0)
                    end
                end)
                bot:SetNWString("Description", "HUGE GREEN ORK WIZ A BIG SHINY ARMOUR AND BIG DAKA")
                bot:SetNWBool("ShieldEnable", true)

            else
                bot:SetNWString("Name", "MEGA NOB")
                health = math.max(health * 3, 1500)
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_shoota"
                    bot.OrkPreferredRange = 500
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot.CustomThinkFunction = "OrkMegaNobThink"
                bot.OrkSquadLeaderPref = true
                bot.ChaosDwarf = true
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(1.25, 0)
                    end
                end)
                bot:SetNWString("Description", "HUGE GREEN ORK WIZ A BIG SHINY ARMOUR AND BIG DAKA")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            local gretichenroll = math.random()

            if gretichenroll <= 0.1 then
                bot:SetNWString("Name", "Snotling")
                health = math.max(health * 0.5, 250)
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                    bot.CustomThinkFunction = "OrkDakkaThink"
                    bot.OrkPreferredRange = 450
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                    bot.CustomThinkFunction = "OrkBoyThink"
                end
                bot:SetNWString("Description", "A LITTLZ GREEN SHIT")
                bot.goblin = true
                timer.Simple(1, function()
                    if IsValid(bot) then
                        bot:SetModelScale(0.5, 0)
                    end
                end)

            elseif gretichenroll <= 0.3 then
                bot:SetNWString("Name", "Gretchin")
                health = math.max(health * 1, 500)
                bot:SetModel("models/player/necrosoup/gretchin_pm/gretchin_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot.CustomThinkFunction = "OrkBoyThink"
                bot:SetNWString("Description", "A SMALL GREEN ORK WIZ A KNIFE")
                bot.goblin = true

            elseif gretichenroll <= 0.5 then
                bot:SetNWString("Name", "Squig")
                health = math.max(health * 1, 500)
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot.CustomThinkFunction = "OrkSquigBombThink"
                bot:SetNWString("Description", "A ROUND ANGRY SQUIG WIZ LOTSA TEEF")

            else
                bot:SetNWString("Name", "ORK BOY")
                bot:SetModel(ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)])
                health = math.max(health * 3, 700)
                local weaponroll = math.random(1, 100)
                if weaponroll <= 25 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                    bot.CustomThinkFunction = "OrkDakkaThink"
                    bot.OrkPreferredRange = 500
                elseif weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_shoota"
                    bot.CustomThinkFunction = "OrkDakkaThink"
                    bot.OrkPreferredRange = 600
                elseif weaponroll <= 75 then
                    bot.FightType = "melee"
                    bot.weapon = "tfa_choppa"
                    bot.CustomThinkFunction = "OrkBoyThink"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                    bot.CustomThinkFunction = "OrkBoyThink"
                end
                bot:SetNWString("Description", "GREEN SKINNED ORK OF THE GREAT WAAAGH!")
            end
        end

        bot.CustomThinkFunction = bot.CustomThinkFunction or "OrkBoyThink"

        bot:StripWeapons()
        bot.ork = true
        bot.IsHostile = true
        bot.GoneMad = true
        RandomonizeBodygroupsAndSkinsOrks(bot)
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetNWString("Status", "ORKZ")
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot:SetNoTarget(true)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        if bot.ExplodeOnDeath then
            for i = 1, 20 do
                local delay = math.Rand(0.2, 1) * i
                timer.Simple(delay, function()
                    if not IsValid(bot) or not IsValid(attacker) then return end

                    local offset = VectorRand() * math.random(10, 100)
                    local explosion = ents.Create("env_explosion")
                    if not IsValid(explosion) then return end

                    explosion:SetPos(bot:GetPos() + offset)
                    explosion:SetOwner(attacker)
                    explosion:Spawn()
                    explosion:SetKeyValue("iMagnitude", "50")
                    explosion:SetKeyValue("iRadiusOverride", "50")
                    explosion:Fire("Explode", 0, 0)
                end)
            end
        end
    end,

    RevolutionTrigger = function(self, BotType)

        local location = GetLocationName(BotType)

        REVOLUTION_START_TIME = CurTime()

        local AllBots = player.GetBots()
        for _, bot in ipairs(AllBots) do
            if bot.BotType then
                bot:Kick()
            end
        end
    end,

    Think = function(self)
        if BOT_INVASION ~= "ORKZ" then return end
        local AllBots = player.GetBots()
        for _, bot in ipairs(AllBots) do
            if bot:GetNWString("Status", "friendly") ~= "ORKZ" then
                self:CreateCultist(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}

BOT_SOUND_MANAGER = BOT_SOUND_MANAGER or {}

BOT_SOUND_MANAGER["ORKZ"] = {
    SONGS_URL = {
	    "https://www.imperiumgaming.net/orksounds/Apr 24 at 1-52 PM.mp3",
	    "https://www.imperiumgaming.net/orksounds/Bone_Jammies.mp3",
	    "https://www.imperiumgaming.net/orksounds/Color_Song.mp3",
	    "https://www.imperiumgaming.net/orksounds/Imbach_Taunt.mp3",
	    "https://www.imperiumgaming.net/orksounds/Ork Voice 1.mp3",
	    "https://www.imperiumgaming.net/orksounds/Ork Voice 2.mp3",
	    "https://www.imperiumgaming.net/orksounds/Ork Voice 3.mp3",
	    "https://www.imperiumgaming.net/orksounds/Over_Here_Git.mp3",
	    "https://www.imperiumgaming.net/orksounds/Psyker_Taunt.mp3",
	    "https://www.imperiumgaming.net/orksounds/Ratling_Taunt.mp3",
	    "https://www.imperiumgaming.net/orksounds/Red_Boot.mp3",
	    "https://www.imperiumgaming.net/orksounds/Squat_Taunt.mp3",
	    "https://www.imperiumgaming.net/orksounds/Squig_Stew.mp3",
	    "https://www.imperiumgaming.net/orksounds/War_Machine.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}
