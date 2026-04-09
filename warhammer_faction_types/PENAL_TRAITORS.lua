FACTION_TYPES["PENAL_TRAITORS"] = {
    STAGE = "The damned rebel!.",
    DeathsByType = {},
    OffWorld = true,
    CreatePenal = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local spawn_elite = elite -- Only spawn elites when we want them to 

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)
            if roll <= 5 then
                bot:SetNWString("Name", "Elite Bomb Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A fast rattling destined to die for freedom.")
                health = math.max(health * 2, 200)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Elite Penal Heavy")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "A penal trooper with heavy scrap armor.")
                health = math.max(health * 3, 800)

			elseif roll <= 25 then
                bot:SetNWString("Name", "Elite Penal Bonker Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bullgryn.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_crozius"
                bot:SetNWString("Description", "An ogryn really determined to hit you.")
                health = math.max(health * 4, 2000)

			elseif roll <= 35 then
                bot:SetNWString("Name", "Elite Penal Ripper Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_krieg.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_heavybolterheresy"
                bot:SetNWString("Description", "Was probably best not to bully him.")
                health = math.max(health * 4, 2000)

			elseif roll <= 45 then
                bot:SetNWString("Name", "Elite Penal Sniper Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(100)
                bot:SetWalkSpeed(100)
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_longlas_voss"
                bot:SetNWString("Description", "Exceptional shot for one so small.")
                health = math.max(health * 2, 500)

			elseif roll <= 55 then
                bot:SetNWString("Name", "Elite Penal Squat")
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_boardingshield_bolterphobos"
                bot:SetNWString("Description", "A kin tired of Imperial Authority.")
                health = math.max(health * 3, 500)

			elseif roll <= 65 then
                bot:SetNWString("Name", "Elite Axe Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainaxeheresy"
                bot:SetNWString("Description", "A servitor who has been hacked against its masters.")
                health = math.max(health * 2, 500)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Elite Las Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_laspistol"
                bot:SetNWString("Description", "A servitor who has been hacked against its masters.")
                health = math.max(health * 2, 400)

			else
                bot:SetNWString("Name", "Elite Penal Guard")
                bot:SetModel("models/wk/savlar/wk_savlar_awful.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "A Penal trooper who would rather die than serve their sentence.")
                health = math.max(health * 2, 500)

            end
        else
            local roll = math.random(1, 100)
            if roll <= 5 then
                bot:SetNWString("Name", "Bomb Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A fast rattling destined to die for freedom.")
                health = math.max(health * 1, 100)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Penal Heavy")
                bot:SetModel(math.random(2) == 1 and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "A penal trooper with heavy scrap armor.")
                health = math.max(health * 2, 700)

			elseif roll <= 25 then
                bot:SetNWString("Name", "Penal Bonker Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_bullgryn.mdl")
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.FightType = "melee"
                bot.weapon = "cat_custom_crozius"
                bot:SetNWString("Description", "An ogryn really determined to hit you.")
                health = math.max(health * 3, 1500)

			elseif roll <= 35 then
                bot:SetNWString("Name", "Penal Ripper Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_krieg.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_heavybolterheresy"
                bot:SetNWString("Description", "Was probably best not to bully him.")
                health = math.max(health * 3, 1500)

			elseif roll <= 45 then
                bot:SetNWString("Name", "Penal Sniper Ratling")
                bot:SetModel("models/dizcordum/abhumans/ratling.mdl")
                bot:SetRunSpeed(100)
                bot:SetWalkSpeed(100)
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_longlas_voss"
                bot:SetNWString("Description", "Exceptional shot for one so small.")
                health = math.max(health * 1, 1500)

			elseif roll <= 55 then
                bot:SetNWString("Name", "Penal Squat")
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_legacy_boardingshield_bolterphobos"
                bot:SetNWString("Description", "A kin tired of Imperial Authority.")
                health = math.max(health * 2, 400)

			elseif roll <= 65 then
                bot:SetNWString("Name", "Axe Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_legacy_chainaxeheresy"
                bot:SetNWString("Description", "A servitor who has been hacked against its masters.")
                health = math.max(health * 1, 400)

			elseif roll <= 75 then
                bot:SetNWString("Name", "Las Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_laspistol"
                bot:SetNWString("Description", "A servitor who has been hacked against its masters.")
                health = math.max(health * 1, 300)

			else
                bot:SetNWString("Name", "Penal Guard")
                bot:SetModel("models/wk/savlar/wk_savlar_awful.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_custom_lasgun_galaxy"
                bot:SetNWString("Description", "A Penal trooper who would rather die than serve their sentence.")
                health = math.max(health * 1, 400)
            end
        end

        bot:SetNWString("Status", "PENAL_TRAITORS")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)

        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "PENAL_TRAITORS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "PENAL_TRAITORS" then
                self:CreatePenal(bot,ALWAYS_SPAWN_ELITES)
            end
        end
    end
}
