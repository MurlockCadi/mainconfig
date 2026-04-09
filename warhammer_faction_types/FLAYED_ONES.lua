FACTION_TYPES["FLAYED_ONES"] = {
    STAGE = "DEATH TO THE LIVING",
    DeathsByType = {},
    OffWorld = true,

    CreateNecron = function(self, bot, force_elite)
        local baseHealth = GetHealthByTotalPlayers()

        baseHealth = baseHealth * 2

        local spawn_elite = force_elite or (math.random(1, 100) <= 25)

        if spawn_elite then
            bot.Elite = true
            local elite_roll = math.random(1, 100)

            if elite_roll <= 10 then
                bot:SetNWString("Name", "Blood Lychguard")
                bot:SetModel("models/wk/necrons/base/wk_lychguard.mdl")
                bot.weapon = "cat_legacy_murlock_necron_shield"
                bot.FightType = "melee"
                bot:SetNWString("Description", "Heavily armored Lychguard Gone Mad with The Disease")
                bot:SetNWBool("ShieldEnable", true)
                baseHealth = math.max(baseHealth * 3, 1000)
                --Make Red
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetColor(Color(100, 0, 0))
            else
                bot:SetNWString("Name", "Greater Flayed One")
                bot:SetModel("models/wk/necrons/base/wk_flayed_one.mdl")
                bot.weapon = "murlock_melee"
                bot.FightType = "melee"
                bot:SetNWString("Description", "Terrifying melee unit covered in flayed skin.")
                baseHealth = baseHealth * 5
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetColor(Color(100, 0, 0))
            end
        else
            bot:SetNWString("Name", "Flayed One")
            bot:SetModel("models/wk/necrons/base/wk_flayed_one.mdl")
            bot.weapon = "murlock_melee"
            bot.FightType = "melee"
            bot:SetNWString("Description", "Terrifying melee unit covered in flayed skin.")
            baseHealth = baseHealth * 2
        end

        bot:SetNWString("Status", "FLAYED_ONES")
        bot:StripWeapons()
        bot:SetModelScale(1.25, 0)
        bot:SetRunSpeed(300)
        bot:SetWalkSpeed(300)
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.CanRegenerate = true
        bot.GoneMad = true
        bot.hasGasMask = true
        bot:SetNWString("MAX_HEALTH", baseHealth)
        bot:SetMaxHealth(baseHealth)
        bot:SetHealth(baseHealth)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "FLAYED_ONES" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "FLAYED_ONES" then
                self:CreateNecron(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}