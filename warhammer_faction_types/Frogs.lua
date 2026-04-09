FACTION_TYPES["Frogs"] = {
    STAGE = "AMPHIBIAN MENACE",
    DeathsByType = {},
    OffWorld = true,

    CreateCultist = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        health = health * 2
        local spawn_elite = elite or math.random(1, 100) <= 6

        local FrogModel = "models/ebmage/adanza/frog.mdl"
        local BullywugModel = "models/echo/ark/toad_pm.mdl"

        local FrogColours = {
            Color(60, 180, 75),
            Color(120, 200, 120),
            Color(40, 120, 220),
            Color(220, 180, 40),
            Color(200, 80, 40),
            Color(140, 90, 50),
            Color(160, 70, 180),
            Color(90, 160, 90)
        }

        local function ApplyFrogLook(minScale, maxScale)
            bot:SetColor(FrogColours[math.random(#FrogColours)])
            timer.Simple(1, function()
                if IsValid(bot) then
                    bot:SetModelScale(math.Rand(minScale, maxScale), 0)
                    RandomonizeBodygroupsAndSkins(bot)
                end
            end)
        end

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 25 then
                bot:SetNWString("Name", "Ancient Bullfrog")
                bot:SetModel(BullywugModel)
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(280)
                bot:SetWalkSpeed(280)
                bot:SetNWString("Description", "A hulking sacred swamp brute swollen with age, rage, and impossible strength.")
                ApplyFrogLook(2.4, 3.2)
                health = math.max(health * 10, 5000)

                --50% chance to be hybrid with a shoota
                if math.random(1, 100) <= 50 then
                    bot.FightType = "hybrid"
                    bot.meleeweapon = "murlock_melee"
                    bot.weapon = "tfa_big_shoota"
                end

            elseif roll <= 50 then
                bot:SetNWString("Name", "Poison Monarch")
                bot:SetModel(FrogModel)
                bot.FightType = "flamer"
                bot.weapon = "tfa_stikk_bomb"
                bot.instant_reload = true
                bot.LittleShit = true
                bot:SetRunSpeed(320)
                bot:SetWalkSpeed(320)
                bot:SetNWString("Description", "A brilliantly coloured terror whose toxins and spite make it feared by all lesser swamp-things.")
                ApplyFrogLook(1.4, 1.9)
                health = math.max(health * 6, 3200)

            elseif roll <= 80 then
                bot:SetNWString("Name", "Bullywug War-Chief")
                bot:SetModel(BullywugModel)
                bot.FightType = "hybrid"
                bot.weapon = "tfa_big_shoota"
                bot.meleeweapon = "chitin_spear"
                bot:SetRunSpeed(280)
                bot:SetWalkSpeed(280)
                bot:SetNWString("Description", "A towering bullywug chieftain bellowing orders as it crashes through mud and reeds.")
                ApplyFrogLook(1.15, 1.45)
                health = math.max(health * 8, 4000)

            else
                bot:SetNWString("Name", "Bullywug Oracle")
                bot:SetModel(BullywugModel)
                bot.FightType = "shooting"
                bot.weapon = "tfa_big_shoota"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(250)
                bot:SetWalkSpeed(250)
                bot:SetNWString("Description", "A croaking seer-priest wrapped in fetishes and swamp-lore, blasting intruders with eldritch force.")
                ApplyFrogLook(1.1, 1.35)
                health = math.max(health * 9, 4500)
            end
        else
            local roll = math.random(1, 100)

            if roll <= 22 then
                bot:SetNWString("Name", "Tree Frog")
                bot:SetModel(FrogModel)
                bot.FightType = "hybrid"
                bot.weapon = "weapon_huntingbow"
                bot.meleeweapon = "bowie_knife"
                bot.instant_reload = true
                bot.LittleShit = true
                bot.nocrouch = true
                bot:SetRunSpeed(320)
                bot:SetWalkSpeed(320)
                bot:SetNWString("Description", "A tiny spring-heeled swamp hunter striking from branches, roots, and shadows.")
                ApplyFrogLook(0.55, 0.8)
                health = math.max(health, 350)

            elseif roll <= 40 then
                bot:SetNWString("Name", "Poison Dart Frog")
                bot:SetModel(FrogModel)
                bot.FightType = "flamer"
                bot.weapon = "tfa_stikk_bomb"
                bot.instant_reload = true
                bot.LittleShit = true
                bot:SetRunSpeed(330)
                bot:SetWalkSpeed(330)
                bot:SetNWString("Description", "A vivid and vicious little killer whose touch and tricks spell death.")
                ApplyFrogLook(0.6, 0.85)
                health = math.max(health, 400)

            elseif roll <= 58 then
                bot:SetNWString("Name", "Gun Frog")
                bot:SetModel(FrogModel)
                bot.FightType = "shooting"
                bot.weapon = "tfa_big_shoota"
                bot.instant_reload = true
                bot.LittleShit = true
                bot.nocrouch = true
                bot:SetRunSpeed(310)
                bot:SetWalkSpeed(310)
                bot:SetNWString("Description", "A manic little frog wildly blasting away with a stolen shoota.")
                ApplyFrogLook(0.65, 0.9)
                health = math.max(health, 500)

            elseif roll <= 74 then
                bot:SetNWString("Name", "Bullfrog")
                bot:SetModel(BullywugModel)
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(260)
                bot:SetWalkSpeed(260)
                bot:SetNWString("Description", "A broad-jawed swamp brute that launches itself at prey in explosive bursts.")
                ApplyFrogLook(1.2, 1.7)
                health = math.max(health * 3, 1500)

            elseif roll <= 86 then
                bot:SetNWString("Name", "Giant Toad")
                bot:SetModel(BullywugModel)
                bot.FightType = "hybrid"
                bot.weapon = "tfa_big_shoota"
                bot.meleeweapon = "murlock_melee"
                bot:SetRunSpeed(280)
                bot:SetWalkSpeed(280)
                bot:SetNWString("Description", "A bloated amphibian horror worshipped in drowned shrines and armed with brutal scavenged firepower.")
                ApplyFrogLook(1.7, 2.3)
                health = math.max(health * 5, 2600)

            elseif roll <= 95 then
                bot:SetNWString("Name", "Bullywug Hunter")
                bot:SetModel(BullywugModel)
                bot.FightType = "hybrid"
                bot.weapon = math.random(1, 100) <= 40 and "tfa_big_shoota" or "weapon_huntingbow"
                bot.meleeweapon = "chitin_spear"
                bot.nocrouch = true
                bot:SetRunSpeed(290)
                bot:SetWalkSpeed(290)
                bot:SetNWString("Description", "A lean swamp-stalker armed with crude weapons, malice, and a hunter's patience.")
                ApplyFrogLook(0.95, 1.15)
                health = math.max(health * 2, 1000)

            else
                bot:SetNWString("Name", "Bullywug Mystic")
                bot:SetModel(BullywugModel)
                bot.FightType = "shooting"
                bot.weapon = "tfa_big_shoota"
                bot:SetNWBool("ShieldEnable", true)
                bot:SetRunSpeed(260)
                bot:SetWalkSpeed(260)
                bot:SetNWString("Description", "A croaking swamp mystic muttering old rites and hurling uncanny power at its foes.")
                ApplyFrogLook(1.0, 1.2)
                health = math.max(health * 4, 2200)
            end
        end

        bot:SetNWString("Status", "Frogs")
        bot:StripWeapons()
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Frogs = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)

        --set colour of bot to blue
        --bot:SetColor(Color(60, 180, 75))
        --set material to models/props_combine/stasisshield_sheet
        --bot:SetMaterial("models/props_combine/stasisshield_sheet")
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    RevolutionTrigger = function(self, botType)
    end,

    Think = function(self)
        if BOT_INVASION ~= "Frogs" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "Frogs" then
                self:CreateCultist(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
