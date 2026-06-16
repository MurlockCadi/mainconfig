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
        bot:SetNWString("Status", "NEW_TZEETCH")
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
        if BOT_INVASION ~= "NEW_TZEETCH" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status", "friendly") ~= "NEW_TZEETCH" then
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

if SERVER then
    local sounds = {
        "ambient/levels/citadel/strange_talk1.wav",
        "ambient/levels/citadel/strange_talk10.wav",
        "ambient/levels/citadel/strange_talk11.wav",
        "ambient/levels/citadel/strange_talk3.wav",
        "ambient/levels/citadel/strange_talk4.wav",
        "ambient/levels/citadel/strange_talk5.wav",
        "ambient/levels/citadel/strange_talk6.wav",
        "ambient/levels/citadel/strange_talk7.wav",
        "ambient/levels/citadel/strange_talk8.wav",
        "ambient/levels/citadel/strange_talk9.wav"
    }

    local lines = {
        "Your Mine",
        "The warp claims you.",
        "Fate has already chosen.",
        "Change is inevitable.",
        "The Changer of Ways watches.",
        "Reality bends before me.",
        "All paths lead to Tzeentch.",
        "You cannot escape the plan."
    }

    local function WarpEffect(target)
        PlayEffectOnEntity(target, "[0]_polar_light", 5, Vector(0, 0, 0))

        target:EmitSound(table.Random(sounds), 85, math.random(80, 120), 1, CHAN_AUTO)
    end

    local function SwapPlaces(bot, target)
        local botPos = bot:GetPos()
        local targetPos = target:GetPos()

        local safePos1 = FindFreePos(targetPos, 80, 100, 16)
        local safePos2 = FindFreePos(botPos, 150, 100, 16)

        if safePos1 then
            bot:SetPos(safePos1)
            PlayEffectOnEntity(bot, "[2]_fire_aura_blue", 12, Vector(0, 0, 40), true)
            bot:EmitSound("ambient/energy/zap9.wav", 80, 50, 1, CHAN_AUTO)
        end

        if safePos2 then
            target:SetPos(safePos2)
            PlayEffectOnEntity(target, "[2]_fire_aura_blue", 12, Vector(0, 0, 40), true)
            target:EmitSound("ambient/energy/zap9.wav", 80, 50, 1, CHAN_AUTO)
        end

        local botName = bot:GetNWString("Name", "unknown")
        local targetName = target:GetNWString("Name", "unknown")

        NotifyPlayer(bot, "The warp tears you from where you stand and hurls you towards " .. targetName .. "!", 8, true)
        NotifyPlayer(target, "The warp tears you from where you stand and hurls you towards " .. botName .. "!", 8, true)

        WarpEffect(bot)
        WarpEffect(target)

        PlayerChat(bot, table.Random(lines))
    end

    hook.Add("EntityTakeDamage", "TzeentchChampionDamageSwap", function(target, dmginfo)
        if not target:IsPlayer() then return end
        if not target:IsBot() then return end
        if not target.TzeentchChampion then return end

        local attacker = dmginfo:GetAttacker()

        if not IsValid(attacker) then return end
        if not attacker:IsPlayer() then return end
        if attacker == target then return end

        target.TzeentchChampionMaxHP = target.TzeentchChampionMaxHP or target:GetMaxHealth()
        target.TzeentchChampionNextHP = target.TzeentchChampionNextHP or 0.8

        local hpAfterDamage = math.max(target:Health() - dmginfo:GetDamage(), 0)
        local hpPercent = hpAfterDamage / target.TzeentchChampionMaxHP

        if hpPercent > target.TzeentchChampionNextHP then return end

        while target.TzeentchChampionNextHP > 0 and hpPercent <= target.TzeentchChampionNextHP do
            target.TzeentchChampionNextHP = target.TzeentchChampionNextHP - 0.2
        end

        WarpEffect(target)
        SwapPlaces(target, attacker)
    end)

    timer.Create("TzeentchBotTimer", 20, 0, function()
        for _, bot in ipairs(player.GetBots()) do
            if bot.TzeentchChampion then
                PlayerChat(bot, table.Random(lines))
            end

            if bot.TzeentchChampion then
                bot.TzeentchNextEffect = bot.TzeentchNextEffect or CurTime() + math.random(120, 500)

                if CurTime() >= bot.TzeentchNextEffect then
                    bot.TzeentchNextEffect = CurTime() + math.random(120, 500)

                    WarpEffect(bot)
                    PlayerChat(bot, table.Random(lines))
                end
            end
        end
    end)
end
