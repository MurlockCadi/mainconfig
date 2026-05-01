FACTION_TYPES["CHEM_HORDE"] = {
    STAGE = "CHEM-LORDS ASCENDANT",
    DeathsByType = {},
    OffWorld = true,

    CreateChemEnforcer = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers()

        if spawn_elite then
            bot.Elite = true
            local eliteRoll = math.random(1, 100)
            if eliteRoll <= 30 then
                bot:SetNWString("Name", "Chem Enforcer")
                health = math.max(health * 3, 1000)
                local model = bot.IsFemale and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl"
                bot:SetModel(model)
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_boltpistol"
                bot:SetNWString("Description", "A heavily armed enforcer of the Chem Lords.")
                bot:SetNWBool("ShieldEnable", true)
            elseif eliteRoll <= 80 then
                bot:SetNWString("Name", "Spook Manufacturer")
                health = math.max(health * 3, 500)
                local model = bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl"
                bot:SetModel(model)
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "Chemical Expert responsible for the production of Spook")
            else
                bot:SetNWString("Name", "Squat Mercenary")
                health = math.max(health * 3, 1000)
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                local weaponroll = math.random(1, 100)
                if weaponroll <= 50 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_bolter"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_custom_poweraxe"
                end
                bot:SetNWString("Description", "A mercenary from the Squat Clans, paid by the Chem Lords.")
                bot:SetNWBool("ShieldEnable", true)
            end
        else
            bot:SetNWString("Name", "Spook Junkie")
            local model = bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl"
            bot:SetModel(model)
            local weaponroll = math.random(1, 100)
            if weaponroll <= 50 then
                bot.FightType = "shooting"
                bot.weapon = "murlock_weapon_pistol"
            else
                bot.FightType = "melee"
                bot.weapon = "bowie_knife"
            end
            bot:SetNWString("Description", "A violent junkie addicted to chems and chaos.")
        end

        bot:SetNWString("Status", "CHEM_HORDE")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.hasGasMask = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.hasGasMask = true
        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        -- Optional: handle chem death effects
    end,

    Think = function(self)
        if BOT_INVASION ~= "CHEM_HORDE" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "CHEM_HORDE" then
                self:CreateChemEnforcer(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
