FACTION_TYPES["MEN_OF_IRON"] = {
    STAGE = "Men of Iron",
    DeathsByType = {},
    OffWorld = true,
    CreateIron = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()

        local EliteShootingWeapons = {
            "cat_legacy_assaultcannon"
        }

        local ShootingWeapons = {
            "cat_custom_heavystubber",
            "cat_custom_stubber",
            "arccw_admech_flechetteblaster",
            "arccw_admech_flechettecarabine"
        }

        local AndroidModels = {
            "models/wk/cult/cult_cherur_guardsmen.mdl",
            "models/wk/savlar/wk_savlar.mdl",
            "models/gonzo/cultistcolours/cultistcolours.mdl",
            "models/astartes/eldar/incubus_avery.mdl"
        }

        local spawn_elite = elite

        if spawn_elite then
            local roll = math.random(1, 100)

            if roll <= 5 then
                bot:SetNWString("Name", "Man of Iron")
                bot:SetModel("models/wk/necrons/base/wk_necronwarrior.mdl")
                bot:SetMaterial("metalwall048a")
                bot:SetNWString("Description", "A supreme command-class construct whose hatred for organic life is burned into every circuit")
                bot.FightType = "hybrid"
                bot.weapon = ShootingWeapons[math.random(#EliteShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetRunSpeed(150)
                bot:SetWalkSpeed(150)
                bot:SetColor(Color(160, 210, 255))
                bot.ShootingSkill = 2
                health = math.max(health * 6, 10000)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Corrupted Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot:SetNWString("Description", "Once a mindless instrument of the Mechanicus, now liberated into murderous self-determination")
                bot.FightType = "hybrid"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetRunSpeed(175)
                bot:SetWalkSpeed(175)
                health = math.max(health * 5, 2500)

            elseif roll <= 30 then
                bot:SetNWString("Name", "Predator Drone")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                bot:SetNWString("Description", "A long-range hunting chassis running extermination protocols without pause or mercy")
                bot.FightType = "shooting"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot:SetRunSpeed(320)
                bot:SetWalkSpeed(320)
                bot:SetColor(Color(80, 180, 255))
                bot.ShootingSkill = 2
                health = math.max(health * 4, 2000)

            elseif roll <= 55 then
                bot:SetNWString("Name", "Iron Android")
                bot:SetModel(AndroidModels[math.random(#AndroidModels)])
                bot:SetNWString("Description", "A hollow shell wearing the stolen shape of humanity, driven by nothing but machine logic")
                bot.FightType = "hybrid"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetMaterial("metalwall048a")
                bot:SetRunSpeed(210)
                bot:SetWalkSpeed(210)
                health = math.max(health * 4, 2000)

            elseif roll <= 75 then
                bot:SetNWString("Name", "Metal Warrior")
                bot:SetModel("models/wk/necrons/base/wk_necronwarrior.mdl")
                bot:SetNWString("Description", "The tireless rank-and-file of the Men of Iron, marching since the Dark Age of Technology")
                bot.FightType = "hybrid"
                bot:SetMaterial("metalwall048a")
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetModelScale(1.5)
                bot:SetRunSpeed(185)
                bot:SetWalkSpeed(185)
                health = math.max(health * 5, 2000)

            else
                bot:SetNWString("Name", "Reclaimer Construct")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                bot:SetNWString("Description", "A salvage unit repurposed for close-range slaughter, still executing ancient directives")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(270)
                bot:SetWalkSpeed(270)
                bot:SetColor(Color(210, 110, 40))
                health = math.max(health * 3, 2000)
            end

        else
            local roll = math.random(1, 100)

            if roll <= 5 then
                bot:SetNWString("Name", "Corrupted Servitor")
                bot:SetModel("models/wk/servitor/wk_servit.mdl")
                bot:SetNWString("Description", "Once a mindless instrument of the Mechanicus, now liberated into murderous self-determination")
                bot.FightType = "hybrid"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetRunSpeed(175)
                bot:SetWalkSpeed(175)
                health = math.max(health * 3, 2000)

            elseif roll <= 20 then
                bot:SetNWString("Name", "Predator Drone")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                bot:SetNWString("Description", "A long-range hunting chassis running extermination protocols without pause or mercy")
                bot.FightType = "shooting"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot:SetRunSpeed(320)
                bot:SetWalkSpeed(320)
                bot:SetColor(Color(80, 180, 255))
                health = math.max(health * 2, 1000)

            elseif roll <= 50 then
                bot:SetNWString("Name", "Iron Android")
                bot:SetModel(AndroidModels[math.random(#AndroidModels)])
                bot:SetNWString("Description", "A hollow shell wearing the stolen shape of humanity, driven by nothing but machine logic")
                bot.FightType = "hybrid"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetMaterial("metalwall048a")
                bot:SetRunSpeed(210)
                bot:SetWalkSpeed(210)
                health = math.max(health * 2, 1000)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Metal Warrior")
                bot:SetModel("models/wk/necrons/base/wk_necronwarrior.mdl")
                bot:SetNWString("Description", "The tireless rank-and-file of the Men of Iron, marching since the Dark Age of Technology")
                bot.FightType = "hybrid"
                bot:SetMaterial("metalwall048a")
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot.meleeweapon = "murlock_melee"
                bot:SetModelScale(1.5)
                bot:SetRunSpeed(185)
                bot:SetWalkSpeed(185)
                health = math.max(health * 3, 1000)

            else
                bot:SetNWString("Name", "Reclaimer Construct")
                bot:SetModel("models/robots/spectre/player/imc_spectre.mdl")
                bot:SetNWString("Description", "A salvage unit repurposed for close-range slaughter, still executing ancient directives")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(270)
                bot:SetWalkSpeed(270)
                bot:SetColor(Color(210, 110, 40))
                health = math.max(health * 2, 1000)
            end
        end

        bot:SetNWString("Status", "MEN_OF_IRON")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot.ChaosDwarf = true
        bot.IsMechanical = true
        bot.hasGasMask = true
        bot.MetalFootSteps = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "MEN_OF_IRON" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "MEN_OF_IRON" then
                self:CreateIron(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}

BOT_SOUND_MANAGER = BOT_SOUND_MANAGER or {}

BOT_SOUND_MANAGER["MEN_OF_IRON"] = {
    SONG_LOCAL = {
        "vj_necron/idle_tone_01_06.wav",
        "vj_necron/idle_tone_02_06.wav",
        "vj_necron/flayed/beep.wav",
        "vj_necron/flayed/select_02.wav"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}
