FACTION_TYPES = FACTION_TYPES or {}

FACTION_TYPES["CHEM_LORDS"] = {
    STAGE = "THE SPOOK MUST FLOW",
    DeathsByType = {},
    OffWorld = true,

    CreateChemLords = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers() * 1.3
        local spawn_elite = elite or math.random(1, 100) <= 20

        local ChemRunnerModels = {
            "models/dizcordum/notloyal/thugs/thug_male.mdl",
            "models/dizcordum/notloyal/thugs/thug_female.mdl",
            "models/dizcordum/chaos/cultist/cultist4.mdl",
            "models/dizcordum/chaos/cultist/cultist5.mdl",
            "models/wk/cult/cult_shooter.mdl",
            "models/wk/cult/cult_subof.mdl",
            "models/wk/cult/tr_guardsmen.mdl",
            "models/wk/cult/tr_cult_cu_sup.mdl"
        }

        local SlaaneshModels = {
            "models/sodium_cultist.mdl",
            "models/wk/jackswan/hexorcist.mdl",
            "models/dizcordum/chaos/cultist/cultist4.mdl",
            "models/dizcordum/chaos/cultist/cultist5.mdl"
        }

        local ShootingWeapons = {
            "murlock_autogun",
            "murlock_galvanic_rifle",
            "cat_custom_lasgun_galaxy",
            "cat_chaos_legacy_bolter",
            "cat_legacy_bolterheresy",
            "cat_chaos_legacy_stormbolter",
            "cat_chaos_legacy_boltercombi"
        }

        local HeavyWeapons = {
            "cat_legacy_heavybolterheresy",
            "cat_chaos_legacy_heavyboltershoulder",
            "cat_legacy_boardingshield_bolterphobos"
        }

        local MeleeWeapons = {
            "bowie_knife",
            "murlock_melee",
            "cat_legacy_chainswordheresy",
            "cat_legacy_chainaxeheresy",
            "cat_custom_poweraxe",
            "cat_chaos_legacy_poweraxe",
            "cat_chaos_legacy_chainsword"
        }

        local SlaaneshWeapons = {
            "cat_chaos_legacy_sorcererstaff",
            "cat_chaos_legacy_powersword",
            "cat_legacy_chainswordheresy",
            "cat_chaos_legacy_chainsword"
        }

        local function GetEnforcerModel()
            return bot.IsFemale and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl"
        end

        local function SetHybrid(rangeweapon, meleeweapon)
            bot.FightType = "hybrid"
            bot.weapon = rangeweapon
            bot.meleeweapon = meleeweapon
        end

        local function GetOrkModel()
            if ORK_BOY_MODELZ and #ORK_BOY_MODELZ > 0 then
                return ORK_BOY_MODELZ[math.random(#ORK_BOY_MODELZ)]
            end

            return "models/muschi/orks/muschi_ork_nob_boy.mdl"
        end

        local function SetSlaaneshColour()
            local colours = {
                Color(255, 80, 210),
                Color(220, 60, 255),
                Color(180, 80, 255),
                Color(255, 120, 190)
            }

            bot:SetColor(colours[math.random(#colours)])
        end

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 10 then
                bot:SetNWString("Name", "Chem Lord")
                bot:SetModel(GetEnforcerModel())
                SetHybrid("cat_chaos_legacy_boltercombi", "cat_custom_poweraxe")
                bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A ruling Chem Lord of Vagrant Spire, protected by stolen armour and a private army of spook-addled killers.")
                bot.Human = true
                bot.hasGasMask = true
                bot.ShootingSkill = 2
                health = math.max(health * 5, 2500)

            elseif roll <= 22 then
                bot:SetNWString("Name", "Slaaneshi Spook Prophet")
                bot:SetModel(SlaaneshModels[math.random(#SlaaneshModels)])
                SetHybrid("cat_chaos_legacy_sorcererstaff", SlaaneshWeapons[math.random(#SlaaneshWeapons)])
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)
                bot:SetNWBool("ShieldEnable", true)
                SetSlaaneshColour()
                bot.Slaanesh = true
                bot.pysker = true
                bot:SetNWString("Description", "A pleasure-mad prophet selling divine visions through corrupted SPOOK and Slaaneshi whispers.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 4, 1800)

            elseif roll <= 35 then
                bot:SetNWString("Name", "Master Spook Manufacturer")
                bot:SetModel(bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "A senior chem-cooker from the great spook manufactorum, armed with a pressurised alchemical burner.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 4, 1700)

            elseif roll <= 50 then
                bot:SetNWString("Name", "Armoured Chem Enforcer")
                bot:SetModel(GetEnforcerModel())
                SetHybrid(HeavyWeapons[math.random(#HeavyWeapons)], MeleeWeapons[math.random(#MeleeWeapons)])
                bot:SetRunSpeed(220)
                bot:SetWalkSpeed(220)
                bot:SetNWBool("ShieldEnable", true)
                bot.ChaosDwarf = true
                bot:SetNWString("Description", "A heavy enforcer wearing clanking black-market armour, sent to collect debts in blood and teeth.")
                bot.Human = true
                bot.hasGasMask = true
                bot.ShootingSkill = 2
                health = math.max(health * 5, 2200)

            elseif roll <= 63 then
                bot:SetNWString("Name", "Spook-Bulked Ogryn")
                bot:SetModel("models/dizcordum/wk/ogryn/ogryn_chaos.mdl")
                if math.random(1, 100) <= 60 then
                    SetHybrid("cat_legacy_heavybolterheresy", "cat_legacy_chainaxeheresy")
                else
                    bot.FightType = "melee"
                    bot.weapon = "cat_legacy_chainaxeheresy"
                end
                bot:SetRunSpeed(260)
                bot:SetWalkSpeed(260)
                bot:SetColor(Color(110, 255, 90))
                bot:SetNWString("Description", "An Ogryn swollen with combat chems, too drugged to feel pain and too angry to die quietly.")
                bot.hasGasMask = true
                health = math.max(health * 6, 3000)

            elseif roll <= 73 then
                bot:SetNWString("Name", "Squat Chem Mercenary")
                bot:SetModel("models/dizcordum/abhumans/squat.mdl")
                SetHybrid("cat_legacy_bolterheresy", "cat_chaos_legacy_poweraxe")
                bot:SetNWBool("ShieldEnable", true)
                bot.ChaosDwarf = true
                bot:SetNWString("Description", "A squat mercenary paid in credits, salvage rights, and enough SPOOK to keep his clan armed.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 4, 1800)

            elseif roll <= 83 then
                bot:SetNWString("Name", "Ork Spook Gunner")
                bot:SetModel(GetOrkModel())
                bot.FightType = "shooting"
                bot.weapon = "tfa_big_shoota"
                bot.ork = true
                bot:SetNWString("Description", "An Ork gunner from the KAPTAIN's crews, trading dakka for chem barrels and loot.")
                health = math.max(health * 5, 2200)

            else
                bot:SetNWString("Name", "Chem Aberrant")
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_minotaur.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(320)
                bot:SetWalkSpeed(320)
                bot:SetColor(Color(190, 80, 220))
                bot:SetNWString("Description", "A failed spook experiment, all muscle, claws, twitching eyes, and chemical fury.")
                bot.hasGasMask = true
                health = math.max(health * 5, 2400)
            end
        else
            local roll = math.random(1, 100)

            if roll <= 18 then
                bot:SetNWString("Name", "Chem Runner Gunman")
                bot:SetModel(ChemRunnerModels[math.random(#ChemRunnerModels)])
                bot.FightType = "shooting"
                bot.weapon = ShootingWeapons[math.random(#ShootingWeapons)]
                bot:SetNWString("Description", "A hardened Chem Runner with a proper long gun, guarding the flow of SPOOK through Vagrant Spire.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 2, 700)

            elseif roll <= 38 then
                bot:SetNWString("Name", "Chem Runner Cutthroat")
                bot:SetModel(ChemRunnerModels[math.random(#ChemRunnerModels)])
                SetHybrid(ShootingWeapons[math.random(#ShootingWeapons)], MeleeWeapons[math.random(#MeleeWeapons)])
                bot:SetNWString("Description", "A chem-dealer and killer who shoots from the shadows before closing in with a blade.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 2, 800)

            elseif roll <= 53 then
                bot:SetNWString("Name", "Drugged Spook Junkie")
                bot:SetModel(bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl")
                SetHybrid("murlock_autogun", "bowie_knife")
                bot:SetRunSpeed(375)
                bot:SetWalkSpeed(375)
                if math.random(1, 100) <= 35 then
                    bot:SetColor(Color(180, 255, 80))
                end
                bot:SetNWString("Description", "A spook junkie dosed past sanity, moving too fast and hitting far harder than their body should allow.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 2, 750)

            elseif roll <= 66 then
                bot:SetNWString("Name", "Slaaneshi Chem Thrall")
                bot:SetModel(SlaaneshModels[math.random(#SlaaneshModels)])
                SetHybrid("cat_custom_lasgun_galaxy", SlaaneshWeapons[math.random(#SlaaneshWeapons)])
                bot:SetRunSpeed(340)
                bot:SetWalkSpeed(340)
                SetSlaaneshColour()
                bot.Slaanesh = true
                bot:SetNWString("Description", "A thrill-addicted chem thrall blessed by Slaanesh, hunting sensation through gunfire and slaughter.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 2, 800)

            elseif roll <= 76 then
                bot:SetNWString("Name", "Spook Burner")
                bot:SetModel(bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl")
                bot.FightType = "flamer"
                bot.weapon = "cat_legacy_flamerheresy"
                bot:SetNWString("Description", "A manufactorum worker carrying a stolen burner loaded with volatile spook runoff.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 2, 900)

            elseif roll <= 85 then
                bot:SetNWString("Name", "Armoured Chem Guard")
                bot:SetModel(GetEnforcerModel())
                SetHybrid(ShootingWeapons[math.random(#ShootingWeapons)], "cat_legacy_chainswordheresy")
                bot.ChaosDwarf = true
                bot:SetNWString("Description", "An upgraded Chem Runner wearing scavenged armour and carrying both a rifle and a chainblade.")
                bot.Human = true
                bot.hasGasMask = true
                health = math.max(health * 3, 1100)

            elseif roll <= 91 then
                bot:SetNWString("Name", "Spook Mutant")
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)
                bot:SetColor(Color(190, 80, 220))
                bot:SetNWString("Description", "A chem-warped mutant born in the dark tanks below the spook manufactorum.")
                bot.hasGasMask = true
                health = math.max(health * 2, 850)

            elseif roll <= 97 then
                bot:SetNWString("Name", "Ork Spook Boy")
                bot:SetModel(GetOrkModel())
                if math.random(1, 100) <= 70 then
                    bot.FightType = "shooting"
                    bot.weapon = "tfa_shoota"
                else
                    SetHybrid("tfa_shoota", "tfa_choppa")
                end
                bot.ork = true
                bot:SetNWString("Description", "An Ork hanger-on paid in barrels of bad chems and promises of a good scrap.")
                health = math.max(health * 3, 1200)

            else
                bot:SetNWString("Name", "Spook Squig")
                bot:SetModel("models/astartes/squig/squig.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(420)
                bot:SetWalkSpeed(420)
                bot:SetColor(Color(140, 255, 80))
                bot:SetNWString("Description", "A frothing squig fed on raw spook sludge until its eyes glow and its jaws never stop snapping.")
                bot.ork = true
                health = math.max(health * 1, 500)
            end
        end

        bot:SetNWString("Status", "CHEM_LORDS")
        bot:StripWeapons()

        if bot.ork then
            RandomonizeBodygroupsAndSkinsOrks(bot)
        else
            RandomonizeBodygroupsAndSkins(bot)
        end

        bot.IsHostile = true
        bot.GoneMad = true
        bot.hasGasMask = bot.hasGasMask or true

        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)

        SpawnHostileBot(bot)
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
        if not IsValid(bot) then return end

        local chemType = math.random(1, 2)
        if chemType == 1 then
            SpawnItemEntity("item_441154", bot:GetPos() + Vector(0, 0, 10))
        elseif chemType == 2 then
            SpawnItemEntity("item_204139", bot:GetPos() + Vector(0, 0, 10))
        end
    end,

    Think = function(self)
        if BOT_INVASION ~= "CHEM_LORDS" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "CHEM_LORDS" then
                self:CreateChemLords(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}


BOT_SOUND_MANAGER = BOT_SOUND_MANAGER or {}

BOT_SOUND_MANAGER["CHEM_LORDS"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/b_attack02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/b_attack04.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/b_attack05.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_alerttocombat01.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_attack01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_attack02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_attack03.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_deathresponse01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_deathresponse05.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_deathresponse06.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/raiders/fiend_lostidle01.mp3"
    },

    COOLDOWN_MIN = 10,
    COOLDOWN_MAX = 20
}
