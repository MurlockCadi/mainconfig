FACTION_TYPES["PRAETORIAN_GUARD"] = {
    STAGE = "THE DARK PRINCE'S HOST",
    DeathsByType = {},
    OffWorld = true,

    CreateGuard = function(self, bot, elite)
        local health = GetHealthByTotalPlayers() * 1.5

        local spawn_elite = elite or math.random(1, 100) <= 5

        if spawn_elite then
            local elite_roll = math.random(1, 100) 
            bot.Elite = true
            if elite_roll <= 90 then
                health = health * 2
                bot:SetNWString("Name", "Praetorian Officer")
                bot:SetModel("models/wk/jackswan/scion/scion_tempestor_prime.mdl")
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "A loyal Praetorian Officer, armed and ready.")
                bot:SetColor(Color(150, 0, 0))
                bot.FightType = "shooting"
                bot:SetNWBool("ShieldEnable", true)
                bot.weapon = "cat_legacy_boltpistolpowersword"
            else
                health = health * 2
                bot:SetNWString("Name", "Praetorian Commissar")
                bot:SetModel("models/wk/jackswan/scion/scion_commissar.mdl")
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "A loyal Praetorian Commissar, armed and ready.")
                bot:SetColor(Color(150, 0, 0))
                bot.FightType = "shooting"
                bot:SetNWBool("ShieldEnable", true)
                bot.weapon = "cat_legacy_boltpistolpowersword"
            end
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
        else
            local GuardsmanType = math.random(1, 100)
            if GuardsmanType <= 70 then
                bot:SetNWString("Name", "Praetorian Guardsman")
                bot:SetModel("models/wk/jackswan/scion/scion.mdl")
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "A loyal Praetorian Guardsman, armed and ready.")
                bot:SetColor(Color(150, 0, 0))
                bot.FightType = "shooting"
                bot:SetNWBool("ShieldEnable", true)
                bot.weapon = "cat_custom_lasgun_galaxy"
            elseif GuardsmanType <= 90 then
                bot:SetNWString("Name", "Blood Axe Ork Mercenary")
                health = health * 10
                bot:SetModel("models/muschi/orks/muschi_ork_wild.mdl")
                bot.FightType = "melee"
                bot.weapon = "tfa_choppa"
                bot:SetNWString("Description", "A brutal Ork mercenary, skilled in close combat.")
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            else
                bot:SetNWString("Name", "Praetorian Scout")
                bot:SetModel("models/wk/jackswan/scion/scion_tempestor_lumena.mdl")
                bot:SetRenderMode(RENDERMODE_TRANSALPHA)
                bot:SetNWString("Description", "Fast and deadly Praetorian Scout.")
                bot:SetColor(Color(150, 0, 0))
                bot.FightType = "shooting"
                bot:SetNWBool("ShieldEnable", true)
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetRunSpeed(350)
                bot:SetWalkSpeed(350)
            end
        end

        bot:SetNWString("Status", "PRAETORIAN_GUARD")
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
        if BOT_INVASION ~= "PRAETORIAN_GUARD" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "PRAETORIAN_GUARD" then
                self:CreateGuard(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
