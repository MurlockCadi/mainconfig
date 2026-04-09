FACTION_TYPES["ORKZ"] = {
    STAGE = "WAAAAGH!",
    DeathsByType = {},
    OffWorld = true,

    CreateCultist = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers() * 1.2

        -- 25% chance for elite orks
        local spawn_elite = elite or math.random(1, 100) <= 25

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)
        	  if eliteRoll <= 5 then
                bot:SetNWString("Name", "BOMB SQUIG")
                health = math.max(health * 1, 200)
                local model = "models/astartes/squig/squig.mdl"
                bot:SetModel(model)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "SQUIG WIZ A BOMB!")
			elseif eliteRoll <= 35 then
                bot:SetNWString("Name", "ORK COMMANDO")
                health = math.max(health * 3, 500)
                local model = "models/muschi/orks/muschi_ork_komandoz.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "tfa_kustom_shoota"
                bot:SetNWString("Description", "SNEAKY BOYZ WIZ A CUNNING PLAN")
            elseif eliteRoll <= 60 then
                bot:SetNWString("Name", "ROKIT NOB")
                health = math.max(health * 4, 500)
                local model = "models/muschi/orks/muschi_ork_nob_boy.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "tfa_rokkit_launcha"
                bot:SetNWString("Description", "BIG GREEN NOB WIZ A BIG ROKIT DAKKA")
                bot:SetModelScale(1.25, 0)
            elseif eliteRoll <= 75 then
                bot:SetNWString("Name", "WEIRD BOY")
                health = math.max(health * 2, 500)
                local model = "models/muschi/orks/muschi_ork_wild.mdl"
                bot:SetModel(model)
                bot:SetNWBool("ShieldEnable", true)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
                bot:SetNWString("Description", "ORK PSYKER WIZ A BIG STICK AND LOTS OF WAAAGH!")
            elseif eliteRoll <= 95 then
                bot:SetNWString("Name", "MEGA NOB")
                health = math.max(health * 4, 3000)
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_shoota"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot:SetModelScale(1.25, 0)
                bot:SetNWString("Description", "HUGE GREEN ORK WIZ A BIG SHINY ARMOUR AND BIG DAKA")
                bot:SetNWBool("ShieldEnable", true)
            elseif false then --IN_FACTION_REVOLUTION == false then
                bot:SetModel("models/muschi/orks/muschi_ork_stompa.mdl")
                health = math.max(health * 15, 2500)
                bot:SetNWString("Name", "MINI STOMPA")
                bot.NoRagdoll = true
                bot.ExplodeOnDeath = true
                bot.FightType = "shooting"
                bot.weapon = "cat_murlock_broadside"
                bot:SetModelScale(0.1, 0)
                bot:SetRunSpeed(150)
                bot:SetWalkSpeed(150)
                bot:SetNWString("Description", "AN ORK WALKING TANK WIZ BIG SHOOTAS AND MEK GUNS")
            else --nob
                bot:SetNWString("Name", "MEGA NOB")
                health = math.max(health * 3, 1500)
                bot:SetModel("models/muschi/orks/muschi_ork_meganob.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_big_shoota"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot:SetModelScale(1.25, 0)
                bot:SetNWString("Description", "HUGE GREEN ORK WIZ A BIG SHINY ARMOUR AND BIG DAKA")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            local gretichenroll = math.random()
            if gretichenroll <= 0.1 then
                bot:SetNWString("Name", "Snotling")
                health = math.max(health * 0.5, 250)
                local model = "models/barbossa/snotling/snotling_pm.mdl"
                bot:SetModel(model)
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                else
                    bot.FightType = "melee"
                    bot.weapon = "bowie_knife"
                end
                bot:SetNWString("Description", "A LITTLZ GREEN SHIT")
                bot.goblin = true
                bot:SetModelScale(0.5, 0)
            elseif gretichenroll <= 0.3 then
                bot:SetNWString("Name", "Gretchin")
                health = math.max(health * 1, 500)
                local model = "models/player/necrosoup/gretchin_pm/gretchin_pm.mdl"
                bot:SetModel(model)
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
                bot:SetNWString("Description", "A SMALL GREEN ORK WIZ A KNIFE")
                bot.goblin = true
            elseif gretichenroll <= 0.5 then
                bot:SetNWString("Name", "Squig")
                health = math.max(health * 1, 500)
                local model = "models/astartes/squig/squig.mdl"
                bot:SetModel(model)
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
            else
                bot:SetNWString("Name", "ORK BOY")
                local model = ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)]
                bot:SetModel(model)
                health = math.max(health * 3, 700)
                local weaponroll = math.random(1, 100)
                if weaponroll <= 25 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_slugga"
                elseif weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_shoota"
                elseif weaponroll <= 75 then
                    bot.FightType = "melee"
                    bot.weapon = "tfa_choppa"
                else
                    bot.FightType = "melee"
                    bot.weapon = "tfa_big_choppa"
                end
                bot:SetNWString("Description", "GREEN SKINNED ORK OF THE GREAT WAAAGH!")
            end
        end

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
                local delay = math.Rand(0.2, 1) * i -- spread them out
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