FACTION_TYPES["Mirror Image"] = {
    STAGE = "FREEDOM",
    DeathsByType = {},
    OffWorld = true,

    CreateTraitorGuardsmen = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite or math.random(1, 100) <= 5

        local TraitorModels = {"models/vintagethief/11th_imperial_guard/11th_vet_sgt_grey.mdl","models/vintagethief/11th_imperial_guard/11th_vet_grey.mdl","models/vintagethief/11th_imperial_guard/11th_guard_grey.mdl","models/vintagethief/11th_imperial_guard/11th_penal.mdl","models/vintagethief/11th_imperial_guard/11th_let_grey.mdl","models/vintagethief/11th_imperial_guard/11th_maj_grey.mdl"}

        local model = TraitorModels[math.random(#TraitorModels)]

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 50 then

                health = health * 5
                bot:SetNWString("Name", "Mirror Image of a Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bald.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_legacy_heavybolterheresy"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainaxeheresy"
                end
                bot:SetNWString("Description", "Ogryn who has turned against the Imperium.")

            else
                health = health * 2
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Name", "Mirror Image of a Commissar")
                bot:SetModel("models/knight_ig/muschi_ig_comissar.mdl")
                if math.random(1, 2) == 1 then
                    bot.FightType = "shooting"
                    bot.weapon = "cat_chaos_legacy_boltpistol"
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainswordheresy"
                end
                bot:SetNWString("Description", "Mirror Image of a Commissar")
            end
        else
            local roll = math.random(1, 100)

            if roll <= 10 then
                health = health
                bot:SetNWString("Name", "Mirror Image Weapon Specialist")
                bot:SetModel(model)
                bot.FightType = "flamer"
                bot:SetRunSpeed(400)
                bot:SetWalkSpeed(400)
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "Mirror Image Weapon Specialist")

            else
                health = health
                bot:SetNWString("Name", "Mirror Image Guardsman")
                bot:SetModel(model)
                bot.FightType = "hybrid"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot.meleeweapon = "murlock_chaos_knife"
                bot:SetNWString("Description", "Mirror Image of a Guardsman")
            end
        end

        bot:SetNWString("Status", "TRAITOR_GUARDSMEN")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
        bot:SetColor(Color(0, 229, 255))
        bot:SetMaterial("models/props_combine/stasisshield_sheet")
        bot.MirrorImage = true
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "Mirror Image" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "TRAITOR_GUARDSMEN" then
                self:CreateTraitorGuardsmen(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}