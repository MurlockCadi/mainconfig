------------------------------------------------------
-------------------- DUNGEON BOTS --------------------
------------------------------------------------------

--This file contains the code for all the dungeon bots found in the economy gamemode.
--In general, we want 5000HP to be for big elites, 2500 for mid tier doods, and 500 for non elites, but this can be adjusted as needed for balance and fun.
--The higher the HP, the more XP and loot chance the bot should have. HP is currently the only factor.

FALLOUT_HOSTILE_FACTIONS = FALLOUT_HOSTILE_FACTIONS or {}
BOT_SOUND_MANAGER = BOT_SOUND_MANAGER or {}

FALLOUT_HOSTILE_FACTIONS["Khornate Forces"] = {
    Name = "Khornate Forces",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Khornate Forces"
        bot.HasLoot = true

        local TraitorModels = {
            "models/wk/cult/cult_shooter.mdl",
            "models/wk/cult/cult_subof.mdl",
            "models/wk/cult/tr_guardsmen.mdl",
            "models/wk/cult/tr_cult_cu_sup.mdl",
            "models/dizcordum/sodium_blood_pact.mdl"
        }

        if chance <= 72 then
            model = table.Random(TraitorModels)
            health = 2500
            damage = 150
            name = "Khornate Cultist"
            description = "A blood-crazed cultist driven by slaughter."
            bot.xp = 250
            bot.lootchancebonus = 5
            bot.Chaos = true
            bot.GoneMad = true

            local weapons = {
                {w="murlock_chaos_knife", t="melee"},
                {w="murlock_weapon_pistol", t="shooting"},
                {w="cat_custom_lasgun_galaxy", t="shooting"},
                {w="cat_legacy_chainswordheresy", t="melee"},
                {w="cat_chaos_legacy_boltpistol", t="shooting"}
            }

            local pick = table.Random(weapons)
            weapon = pick.w
            fighttype = pick.t

            model = table.Random({
                "models/wk/cult/cul_cap.mdl",
                "models/wk/cult/cult_cu_heavy.mdl"
            })
            health = 1800
            damage = 200
            bot.xp = 450
            bot.lootchancebonus = 8
            bot.Chaos = true
            bot.GoneMad = true

        elseif chance <= 95 then
            local variants = {
                {
                    m = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl",
                    n = "Bloodletter",
                    d = "A daemonic servant of Khorne manifested in the mortal realm to reap skulls.",
                    hp = 5000,
                    dmg = 260,
                    w = "cat_chaos_legacy_powerswordkhorne",
                    t = "melee",
                    demon = true,
                    shield = true,
                    food = 5
                },
                {
                    m = "models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur_khorne.mdl",
                    n = "Khorngor",
                    d = "A monstrous beast of Khorne that tears through flesh and steel alike.",
                    hp = 10000,
                    dmg = 300,
                    w = "cat_chaos_legacy_powerbattleaxe",
                    t = "melee",
                    demon = true,
                    food = 15
                },
                {
                    m = "models/sodium_cultist.mdl",
                    n = "Skull Taker",
                    d = "A swift and deadly champion of Khorne who lives only to claim worthy skulls.",
                    hp = 5000,
                    dmg = 275,
                    w = "cat_chaos_legacy_powerswordkhorne",
                    t = "melee",
                    fast = true,
                    food = 0
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 850
            bot.lootchancebonus = 12
            bot.Chaos = true
            bot.GoneMad = true

            if pick.demon then
                bot.demon = true
            end

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            if pick.fast then
                bot.speed = 500
                bot:SetRunSpeed(500)
                bot:SetWalkSpeed(500)
            end

        else
            model = table.Random({
                "models/dizcordum/wk/ogryn/ogryn_chaos.mdl",
                "models/sodium_cultist.mdl",
                "models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur_khorne.mdl"
            })
            health = 10000
            damage = 350
            name = "Champion of Khorne"
            description = "A mighty warlord of Khorne, surrounded by slaughter and driven by endless rage."
            bot.xp = 1200
            bot.lootchancebonus = 15
            bot.Chaos = true
            bot.GoneMad = true

            local weapons = {
                {w="cat_chaos_legacy_powerbattleaxe", t="melee"},
                {w="cat_chaos_legacy_boltpistolpowersword", t="shooting"},
                {w="cat_chaos_legacy_heavyboltershoulder", t="shooting"},
                {w="cat_legacy_chainaxeheresy", t="melee"}
            }

            local pick = table.Random(weapons)
            weapon = pick.w
            fighttype = pick.t

            bot.Elite = true
            bot.demon = true
            bot:SetNWBool("ShieldEnable", true)
            bot.speed = 500
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
    end
}


BOT_SOUND_MANAGER["Khornate Forces"] = {
    SONG_LOCAL = {
        "cultist/attack/attack-01.wav",
        "cultist/attack/attack-02.wav",
        "cultist/attack/attack-03.wav",
        "cultist/attack/attack-04.wav",
        "cultist/charge/charge-01.wav",
        "cultist/charge/charge-02.wav",
        "cultist/combat/combat-01.wav",
        "cultist/combat/combat-02.wav",
        "cultist/combat/combat-03.wav",
        "cultist/combat/combat-04.wav",
        "cultist/combat/combat-05.wav",
        "cultist/combat/combat-06.wav",
        "cultist/combat/combat-07.wav",
        "cultist/combat/combat-08.wav"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}


FALLOUT_HOSTILE_FACTIONS["Skaven Hive"] = {
    Name = "Skaven Hive",
    RandomEncounter = false,
    WasteLandSpawnWeight = 0,
    DungeonBot = true,
    DungeonHealth = 100,
    
    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Skaven Hive"
        bot.HasLoot = true

        if chance <= 50 then
            model = "models/ulman/clan_rat_1.mdl"
            health = 500
            damage = 30
            name = "Clanrat"
            description = "A filthy Skaven Clanrat, weak alone but dangerous in numbers."
            bot.xp = 200
            bot.lootchancebonus = 4

            local weapons = {
                {w="murlock_melee", t="melee"},
                {w="murlock_chaos_knife", t="melee"}
            }

            local pick = table.Random(weapons)
            weapon = pick.w
            fighttype = pick.t

            bot:SetRunSpeed(300)
            bot:SetWalkSpeed(300)

        elseif chance <= 72 then
            local variants = {
                {
                    m = "models/ulman/red_war_skv.mdl",
                    n = "Red Guard Skaven",
                    d = "A tougher Skaven warrior bearing crude armor and a battered shield.",
                    hp = 2000,
                    dmg = 145,
                    w = "cat_legacy_murlock_necron_shield",
                    t = "melee",
                    shield = true
                },
                {
                    m = "models/ulman/skv_eshin.mdl",
                    n = "Plague Eshin",
                    d = "A sneaky Skaven assassin armed with toxic flame and foul cunning.",
                    hp = 1000,
                    dmg = 160,
                    w = "cat_legacy_flamerheresy",
                    t = "flamer"
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 325
            bot.lootchancebonus = 6

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            bot:SetRunSpeed(320)
            bot:SetWalkSpeed(320)

        elseif chance <= 86 then
            local variants = {
                {
                    m = "models/ulman/storm_rat.mdl",
                    n = "Stormvermin",
                    d = "An elite Skaven enforcer clad in heavy gear and trained for brutal close combat.",
                    hp = 2500,
                    dmg = 190,
                    w = "cat_legacy_murlock_necron_shield",
                    t = "melee",
                    shield = true
                },
                {
                    m = "models/ulman/skv_eshin.mdl",
                    n = "Rattling Gunner",
                    d = "A crazed Skaven gunner unleashing a storm of unstable fire.",
                    hp = 1000,
                    dmg = 200,
                    w = "murlock_rapid_fire",
                    t = "shooting",
                    shield = true
                },
                {
                    m = "models/ulman/clan_rat_1.mdl",
                    n = "Skaven Warlock",
                    d = "A warpstone-crazed sorcerer channeling volatile powers into battle.",
                    hp = 2500,
                    dmg = 210,
                    w = "cat_chaos_legacy_sorcererstaff",
                    t = "shooting",
                    shield = true,
                    psyker = true
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 525
            bot.lootchancebonus = 9
            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            if pick.pysker then
                bot.pysker = true
            end

            bot:SetRunSpeed(320)
            bot:SetWalkSpeed(320)

        elseif chance <= 96 then
            local variants = {
                {
                    m = "models/ulman/clan_rat_1.mdl",
                    n = "Rat Ogre",
                    d = "A monstrous Rat Ogre swollen with brute strength and warp-bred rage.",
                    hp = 5000,
                    dmg = 260,
                    w = "cat_chaos_legacy_crozius",
                    t = "melee",
                    scale = 1.5
                },
                {
                    m = "models/ulman/skv_eshin.mdl",
                    n = "Warpfire Rattler",
                    d = "A Skaven weapons specialist armed with devastating warp-powered firepower.",
                    hp = 2500,
                    dmg = 240,
                    w = "murlock_gauss_cannon",
                    t = "shooting"
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 800
            bot.lootchancebonus = 12

            if pick.scale then
                --scale after 2 seconds to prevent model issues on spawn
                timer.Simple(2, function()
                    if IsValid(bot) then
                        bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            bot:SetRunSpeed(340)
            bot:SetWalkSpeed(340)

        else
            local variants = {
                {
                    m = "models/ulman/clan_rat_1.mdl",
                    n = "Bomb Rat",
                    d = "A crazed Skaven explosive carrier that rushes forward in a suicidal blast.",
                    hp = 100,
                    dmg = 320,
                    w = "cat_custom_meltabomb",
                    t = "melee"
                },
                {
                    m = "models/ulman/storm_rat.mdl",
                    n = "Stormvermin Warlord",
                    d = "A ruthless Skaven warlord clad in brutal armor and surrounded by chittering bodyguards.",
                    hp = 5000,
                    dmg = 290,
                    w = "cat_legacy_murlock_necron_shield",
                    t = "melee",
                    shield = true
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            bot:SetRunSpeed(360)
            bot:SetWalkSpeed(360)
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.nocrouch = true
    end
}

BOT_SOUND_MANAGER["Skaven Hive"] = {
    SONGS_URL = {
    "https://www.imperiumgaming.net/skavenlines/attackallthings.mp3",
    "https://www.imperiumgaming.net/skavenlines/hornedrat.mp3",
    "https://www.imperiumgaming.net/skavenlines/marchskurryyes.mp3",
    "https://www.imperiumgaming.net/skavenlines/quick.mp3",
    "https://www.imperiumgaming.net/skavenlines/raka.mp3",
    "https://www.imperiumgaming.net/skavenlines/skitterthanleap.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}
--Bufō
FALLOUT_HOSTILE_FACTIONS["Bufō"] = {
    Name = "Bufō", -- The name of the faction.
    RandomEncounter = true, -- Can this faction spawn a random bot on a random encounter node?
    DungeonBot = false, -- Can this faction infest dungeons?
    WasteLandSpawnWeight = 10, -- The relative weight for spawning in the wasteland compared to other factions.
    CreateBot = function(bot, type)
        bot:StripWeapons()
        bot:SetNWString("Status", "Bufō")
        bot:SetNWInt("MAX_HEALTH", 1000)
        bot:SetMaxHealth(1000)
        bot:SetHealth(1000)
        bot.Damage = 200
        bot.xp = 50
        bot:SetModel("models/echo/ark/toad_pm.mdl")
        bot.weapon = "murlock_fists"
        bot.FightType = "melee"
        bot:SetNWString("Name", "Bufō")
        bot:SetNWString("Description", "Large native toad like beast that is peaceful unless provoked.")
        bot.IsHostile = false
        bot.HasFood = 25
    end
}

BOT_SOUND_MANAGER["Bufō"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/molerats/molerat_hiss01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/molerats/molerat_hiss02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/molerats/molerat_hiss03.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 25
}


FALLOUT_HOSTILE_FACTIONS["Vipera Mortis"] = {
    Name = "Vipera Mortis",
    RandomEncounter = true,
    DungeonBot = false,
    WasteLandSpawnWeight = 5,
    DungeonHealth = 100,
    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, radioactivity
        local status = "Geckos"

        model = "models/echo/ark/boa_pm.mdl"
        bot:SetModel(model)
        bot.poisonous = true

        if chance <= 50 then
            -- Normal Gecko (50%)
            health = 500
            damage = 100
            name = "Vipera Mortis"
            bot.xp = 100
            description = "Hostile Native Snakes, highly aggressive and venomous."
        elseif chance <= 75 then
            name = "Golden Vipera"
            health = 500
            damage = 150
            bot.xp = 200
            description = "A rare golden variant of the Vipera Mortis."
            bot.firedamage = true
            bot.lootchancebonus = 2
            bot:SetColor(Color(255, 215, 0)) -- golden color
        else
            name = "Giant Vipera"
            bot:SetModel("models/echo/ark/boa_pm_bigger.mdl")
            health = 1000
            damage = 150
            bot.xp = 200
            description = "A much larger and more dangerous variant of the Vipera Mortis."
            bot.lootchancebonus = 5
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot.weapon = "murlock_fists"
        bot.FightType = "melee"
        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        RandomonizeBodygroupsAndSkins(bot)
        bot.HasFood = 10
    end
}


BOT_SOUND_MANAGER["Vipera Mortis"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/nightstalker/nightstalker_conscious_lp.wav"
    },

    COOLDOWN_MIN = 10,
    COOLDOWN_MAX = 15
}

FALLOUT_HOSTILE_FACTIONS["Griffin"] = {
    Name = "Griffin", -- The name of the faction.
    RandomEncounter = true, -- Can this faction spawn a random bot on a random encounter node?
    DungeonBot = false, -- Can this faction infest dungeons?
    WasteLandSpawnWeight = 1, -- The relative weight for spawning in the wasteland compared to other factions.
    CreateBot = function(bot, type)
        bot:StripWeapons()
        bot:SetNWString("Status", "Griffin")
        bot:SetNWInt("MAX_HEALTH", 100000)
        bot:SetMaxHealth(100000)
        bot:SetHealth(100000)
        bot.Damage = 500
        bot.xp = 500
        bot:SetModel("models/echo/ark/griffin_pm.mdl")
        bot.weapon = "murlock_fists"
        bot.FightType = "melee"
        bot:SetNWString("Name", "Griffin")
        bot:SetNWString("Description", "A Mighty Griffin, Allied to the Imperium.")
        bot.IsHostile = false
        RandomonizeBodygroupsAndSkins(bot)
        bot:SetRunSpeed(300)
        bot:SetWalkSpeed(300)
        bot.claws = true
        bot.HasFood = 100
    end
}

BOT_SOUND_MANAGER["Griffin"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/40k/fantasy/pictures/griffon.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 25
}


--Gallus Imperialis
FALLOUT_HOSTILE_FACTIONS["Gallus Imperialis"] = {
    Name = "Gallus Imperialis", -- The name of the faction.
    RandomEncounter = true, -- Can this faction spawn a random bot on a random encounter node?
    DungeonBot = false, -- Can this faction infest dungeons?
    WasteLandSpawnWeight = 20, -- The relative weight for spawning in the wasteland compared to other factions.
    CreateBot = function(bot, type)
        bot:StripWeapons()
        bot:SetNWString("Status", "Bufō")
        bot:SetNWInt("MAX_HEALTH", 1000)
        bot:SetMaxHealth(1000)
        bot:SetHealth(1000)
        bot.Damage = 200
        bot.xp = 50
        bot:SetModel("models/echo/ark/lanternbird_pm.mdl")
        bot.weapon = "murlock_fists"
        bot.FightType = "melee"
        bot:SetNWString("Name", "Gallus Imperialis")
        bot:SetNWString("Description", "Large Bird native to the World, often Hunted.")
        bot.IsHostile = false
        bot.HasFood = 20

        if math.random(1, 100) <= 20 then
            --golden one can do fire
            bot.firedamage = true
            bot.lootchancebonus = 2
            bot:SetColor(Color(255, 215, 0)) -- golden color
            bot:SetNWString("Name", "Golden Gallus Imperialis")
        end
    end
}

BOT_SOUND_MANAGER["Gallus Imperialis"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream03.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/cazadors/caz_chasevox01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/cazadors/caz_chasevox02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/cazadors/caz_chasevox03.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/cazadors/caz_chasevox04.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}


FALLOUT_HOSTILE_FACTIONS["Goblins"] = {
    Name = "Goblins",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Goblins"
        bot.HasLoot = true
        if chance <= 45 then
            local variants = {
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin",
                    d = "A sneaky little goblin armed with crude weapons and spite.",
                    hp = 100,
                    dmg = 90,
                    scale = 1,
                    speed = 260,
                    weapons = {
                        {w = "murlock_chaos_knife", t = "melee"},
                        {w = "chitin_spear", t = "melee"},
                        {w = "weapon_huntingbow", t = "shooting"}
                    }
                },
                {
                    m = "models/barbossa/snotling/snotling_pm.mdl",
                    n = "Snotling",
                    d = "A tiny vicious greenskin that bites, stabs, and scampers underfoot.",
                    hp = 200,
                    dmg = 75,
                    scale = 1,
                    speed = 320,
                    weapons = {
                        {w = "murlock_chaos_knife", t = "melee"},
                        {w = "chitin_spear", t = "melee"},
                    }
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            bot.xp = 180
            bot.lootchancebonus = 4

            if pick.scale then
                timer.Simple(2, function()
                    if IsValid(bot) then
                        bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            if pick.speed then
                bot:SetRunSpeed(pick.speed)
                bot:SetWalkSpeed(pick.speed)
            end

            local wpick = table.Random(pick.weapons)
            weapon = wpick.w
            fighttype = wpick.t

        elseif chance <= 70 then
            local variants = {
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Archer",
                    d = "A cruel goblin archer loosing arrows from behind the bigger lads.",
                    hp = 500,
                    dmg = 110,
                    scale = 1.1,
                    speed = 250,
                    w = "weapon_huntingbow",
                    t = "shooting"
                },
                {
                    m = "models/barbossa/snotling/snotling_pm.mdl",
                    n = "Greater Snotling",
                    d = "A meaner, nastier snotling that throws itself at enemies in a frenzy.",
                    hp = 500,
                    dmg = 105,
                    speed = 300,
                    w = "murlock_chaos_knife",
                    t = "melee"
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Greater Goblin",
                    d = "A tougher goblin who has survived enough fights to become bold.",
                    hp = 500,
                    dmg = 125,
                    speed = 255,
                    w = "murlock_chaos_knife",
                    t = "melee"
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 300
            bot.lootchancebonus = 6

            if pick.scale then
                timer.Simple(2, function()
                    if IsValid(bot) then
                        bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            if pick.speed then
                bot:SetRunSpeed(pick.speed)
                bot:SetWalkSpeed(pick.speed)
            end

        elseif chance <= 85 then
            local variants = {
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Weirdo",
                    d = "A warp-touched goblin shaman muttering curses and hurling foul magic.",
                    hp = 800,
                    dmg = 150,
                    scale = 1.4,
                    speed = 240,
                    w = "cat_chaos_legacy_sorcererstaff",
                    t = "shooting",
                    shield = true,
                    psyker = true
                },
                {
                    m = "models/astartes/squig/squig.mdl",
                    n = "Squig",
                    d = "A ravenous squig that bounds forward to tear flesh with fang and fury.",
                    hp = 800,
                    dmg = 170,
                    speed = 340,
                    w = "murlock_melee",
                    t = "melee"
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Stabba",
                    d = "A vicious goblin veteran armed with a filthy blade and too much confidence.",
                    hp = 1000,
                    dmg = 160,
                    scale = 1.2,
                    speed = 270,
                    w = "murlock_chaos_knife",
                    t = "melee"
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 500
            bot.lootchancebonus = 9

            if pick.scale then
                timer.Simple(2, function()
                    if IsValid(bot) then
                         bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            if pick.speed then
                bot:SetRunSpeed(pick.speed)
                bot:SetWalkSpeed(pick.speed)
            end

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            if pick.psyker then
                bot.pysker = true
            end

        elseif chance <= 96 then
            local variants = {
                {
                    m = "models/astartes/squig/squig.mdl",
                    n = "Great Squig",
                    d = "A huge snapping squig that barrels into battle with unstoppable hunger.",
                    hp = 2000,
                    dmg = 220,
                    speed = 360,
                    w = "murlock_melee",
                    t = "melee"
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Hexer",
                    d = "A sinister goblin sorcerer wielding unstable and spiteful magic.",
                    hp = 2000,
                    dmg = 210,
                    scale = 1.3,
                    speed = 245,
                    w = "cat_chaos_legacy_sorcererstaff",
                    t = "shooting",
                    shield = true,
                    psyker = true
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Arrowboss",
                    d = "A seasoned goblin archer capable of peppering foes with relentless arrows.",
                    hp = 2500,
                    dmg = 190,
                    scale = 1.4,
                    speed = 255,
                    w = "weapon_huntingbow",
                    t = "shooting"
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            weapon = pick.w
            fighttype = pick.t
            bot.xp = 750
            bot.lootchancebonus = 12
            bot.Elite = true

            if pick.scale then
                timer.Simple(2, function()
                    if IsValid(bot) then
                         bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            if pick.speed then
                bot:SetRunSpeed(pick.speed)
                bot:SetWalkSpeed(pick.speed)
            end

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            if pick.psyker then
                bot.pysker = true
            end

        else
            local variants = {
                {
                    m = "models/astartes/squig/squig.mdl",
                    n = "Squig Alpha",
                    d = "A monstrous squig beast that leads the charge in a blur of teeth and muscle.",
                    hp = 5000,
                    dmg = 280,
                    speed = 380,
                    w = "murlock_melee",
                    t = "melee"
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Warshaman",
                    d = "A crazed goblin warshaman shrieking curses and channeling baleful magic.",
                    hp = 5000,
                    dmg = 250,
                    scale = 1.5,
                    speed = 250,
                    w = "cat_chaos_legacy_sorcererstaff",
                    t = "shooting",
                    shield = true,
                    psyker = true
                },
                {
                    m = "models/barbossa/goblin/goblin_pm.mdl",
                    n = "Goblin Boss",
                    d = "A nasty goblin leader with enough cunning and cruelty to command the mob.",
                    hp = 10000,
                    dmg = 240,
                    scale = 2,
                    speed = 270,
                    weapons = {
                        {w = "cat_chaos_legacy_crozius", t = "melee"},
                        {w = "tfa_big_shoota", t = "shooting"}
                    }
                }
            }

            local pick = table.Random(variants)
            model = pick.m
            name = pick.n
            description = pick.d
            health = pick.hp
            damage = pick.dmg
            bot.xp = 1000
            bot.lootchancebonus = 15
            bot.Elite = true

            if pick.scale then
                --set it 2 seconds later to prevent model issues on spawn
                timer.Simple(2, function()
                    if IsValid(bot) then
                         bot:SetModelScale(pick.scale, 0)
                    end
                end)
            end

            if pick.speed then
                bot:SetRunSpeed(pick.speed)
                bot:SetWalkSpeed(pick.speed)
            end

            if pick.weapons then
                local wpick = table.Random(pick.weapons)
                weapon = wpick.w
                fighttype = wpick.t
            else
                weapon = pick.w
                fighttype = pick.t
            end

            if pick.shield then
                bot:SetNWBool("ShieldEnable", true)
            end

            if pick.psyker then
                bot.pysker = true
            end
        end

        bot:StripWeapons()
        bot.goblin = true
        bot.ork = true
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNoTarget(true)
    end
}

BOT_SOUND_MANAGER["Goblins"] = {
    SONG_LOCAL = {
            "ork/waaagh_1-01.wav",
            "ork/waaagh_1-02.wav",
            "ork/waaagh_1-03.wav",
            "ork/Ork_Grenade_Attack1.mp3",
            "ork/Ork_Grenade_Attack2.mp3",
            "ork/Ork_Grenade_Attack3.mp3",
            "ork/Ork_Grenade_Attack4.mp3",
            "ork/Ork_Grenade_Attack5.mp3",
            "ork/Ork_Alert1.mp3",
            "ork/Ork_Alert2.mp3",
            "ork/Ork_Alert3.mp3",
            "ork/Ork_Alert4.mp3",
            "ork/Ork_Alert5.mp3",
            "ork/Ork_Alert6.mp3",
            "ork/Ork_Alert7.mp3",
            "ork/Ork_Alert8.mp3",
            "ork/Ork_Alert9.mp3",
            "ork/Ork_Idle1.mp3",
            "ork/Ork_Idle2.mp3",
            "ork/Ork_Idle3.mp3",
            "ork/Ork_Idle4.mp3",
            "ork/Ork_Idle5.mp3",
            "ork/Ork_Idle6.mp3",
            "ork/Ork_Idle7.mp3",
            "ork/Ork_Idle8.mp3",
            "ork/Ork_Idle9.mp3",
            "ork/Ork_Idle10.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10,
    Pitch = {min = 150, max = 200}
}


FALLOUT_HOSTILE_FACTIONS["NECRONS"] = {
    Name = "NECRONS",
    RandomEncounter = false,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local TotalPlayers = #player.GetHumans()
        local baseHealth = 1000
        local damage = 120
        local weapon, fighttype, model, name, description
        local status = "NECRONS"

        bot.HasLoot = true

        local spawn_elite = (math.random(1, 100) <= 10)

        if spawn_elite then
            bot.Elite = true
            local elite_roll = math.random(1, 100)

            if elite_roll <= 20 then
                name = "Necron Cryptek"
                model = table.Random({
                    "models/wk/necrons/personal/wk_fida.mdl",
                    "models/wk/necrons/personal/wk_kirsa.mdl",
                    "models/wk/necrons/personal/wk_klaus.mdl",
                    "models/wk/necrons/personal/wk_lappy.mdl",
                    "models/wk/necrons/personal/wk_vindicar.mdl",
                    "models/wk/necrons/personal/wk_yarik.mdl"
                })
                weapon = "cat_chaos_legacy_murlock_necron"
                fighttype = "shooting"
                description = "A twisted Necron Cryptek wielding ancient eldritch technology."
                damage = 260
                baseHealth = math.max(baseHealth * 3, 1000)
                bot.pysker = true
                bot:SetNWBool("ShieldEnable", true)
                bot.xp = 900
                bot.lootchancebonus = 12

            elseif elite_roll <= 60 then
                name = "Necron Lychguard"
                model = "models/wk/necrons/base/wk_lychguard.mdl"
                weapon = "cat_legacy_murlock_necron_shield"
                fighttype = "melee"
                description = "Heavily armored Lychguard serving the Silent King."
                damage = 300
                baseHealth = math.max(baseHealth * 3, 1000)
                bot:SetNWBool("ShieldEnable", true)
                bot.xp = 1000
                bot.lootchancebonus = 14

            else
                name = "Necron Destroyer"
                model = "models/lorddestroyer.mdl"
                weapon = "murlock_gauss_cannon"
                fighttype = "shooting"
                description = "A floating harbinger of annihilation."
                damage = 420
                baseHealth = math.max(baseHealth * 3, 1000)
                bot.xp = 1400
                bot.lootchancebonus = 18
            end
        else
            local normal_roll = math.random(1, 100)

            if normal_roll <= 60 then
                name = "Necron Warrior"
                model = "models/wk/necrons/base/wk_necronwarrior.mdl"
                weapon = "murlock_gauss"
                fighttype = "shooting"
                description = "A basic yet deadly Necron foot soldier."
                damage = 140
                baseHealth = baseHealth * 2
                bot.xp = 250
                bot.lootchancebonus = 5

            elseif normal_roll <= 90 then
                name = "Flayed One"
                model = "models/wk/necrons/base/wk_flayed_one.mdl"
                weapon = "murlock_melee"
                fighttype = "melee"
                description = "Terrifying melee unit covered in flayed skin."
                damage = 190
                baseHealth = baseHealth * 3
                bot.xp = 400
                bot.lootchancebonus = 8
                bot.speed = 360
                bot:SetRunSpeed(360)
                bot:SetWalkSpeed(360)

            else
                name = "Necron Immortal"
                model = "models/wk/necrons/base/wk_immortal.mdl"
                weapon = "murlock_gauss_cannon"
                fighttype = "shooting"
                description = "Elite ranged unit with deadly firepower."
                damage = 240
                baseHealth = baseHealth * 4
                bot.xp = 600
                bot.lootchancebonus = 10
            end
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", baseHealth)
        bot:SetMaxHealth(baseHealth)
        bot:SetHealth(baseHealth)
        bot.Damage = damage
        bot:SetModel(model)
        timer.Simple(2, function()
            if IsValid(bot) then
                 bot:SetModelScale(1.25, 0)
            end
        end)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.CanRegenerate = true
        bot.GoneMad = true
        bot.IsMechanical = true
        bot.hasGasMask = true
        bot.Chaos = false
    end
}

FALLOUT_HOSTILE_FACTIONS["Slaanesh Forces"] = {
    Name = "Slaanesh Forces",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Slaanesh Forces"
        bot.HasLoot = true

        if chance <= 60 then
            -- Cultists
            local cultistType = math.random(1, 100)
            if cultistType <= 85 then
                name = "Slaaneshi Cultist"
                model = "models/gonzo/cultistcolours/cultistcolours.mdl"
                health = 250
                damage = 130
                description = "A depraved mortal in thrall to the Dark Prince."
                bot.xp = 250
                bot.lootchancebonus = 5

                if math.random(1, 100) <= 70 then
                    weapon = "murlock_weapon_pistol"
                    fighttype = "shooting"
                else
                    weapon = "murlock_melee"
                    fighttype = "melee"
                end
            else
                name = "Slaaneshi Sorcerer"
                model = "models/gonzo/cultistcolours/cultistcolours.mdl"
                health = 500
                damage = 160
                description = "A warp-touched psyker devoted to Slaanesh."
                weapon = "cat_chaos_legacy_sorcererstaff"
                fighttype = "shooting"
                bot.pysker = true
                bot.xp = 400
                bot.lootchancebonus = 7
                bot:SetNWBool("ShieldEnable", true)
            end

            bot:SetSkin(1)
            bot:SetColor(Color(255, 100, 180))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            bot.Chaos = true
            bot.GoneMad = true

        elseif chance <= 95 then
            -- Daemonettes
            name = "Daemonette"
            model = math.random(1, 2) == 1 and "models/player/hsc/taryel_the_demon.mdl" or "models/ulman/nkari_demoman.mdl"
            health = 500
            damage = 250
            description = "A lithe Daemonette of Slaanesh, deadly fast and seductively cruel."
            weapon = "cat_chaos_legacy_powerswordslaanesh"
            fighttype = "melee"
            bot.xp = 850
            bot.lootchancebonus = 12
            bot.demon = true
            bot.Chaos = true
            bot.GoneMad = true
            bot.Elite = true
            bot:SetRunSpeed(500)
            bot:SetWalkSpeed(500)
            bot:SetColor(Color(255, 100, 180))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)

        else
            -- Keeper of Secrets
            name = "Keeper of Secrets"
            model = "models/ulman/nkari_demoman.mdl"
            health = 5000
            damage = 500
            description = "A towering Daemon Prince of Slaanesh, embodying excess and pleasure."
            weapon = "murlock_melee"
            fighttype = "melee"
            bot.xp = 1500
            bot.lootchancebonus = 20
            bot.demon = true
            bot.Chaos = true
            bot.GoneMad = true
            bot.Elite = true
            bot:SetRunSpeed(450)
            bot:SetWalkSpeed(450)
            bot:SetColor(Color(255, 100, 180))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)

            timer.Simple(2, function()
                if IsValid(bot) then
                    bot:SetModelScale(1.75, 0)
                end
            end)
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        bot.nobodygroups = true

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
    end
}

FALLOUT_HOSTILE_FACTIONS["Tyranid Swarm"] = {
    Name = "Tyranid Swarm",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Tyranid Swarm"
        bot.HasLoot = true

        if chance <= 65 then
            -- Hormagaunt
            name = "Tyranid Hormagaunt"
            model = "models/tyranids/hormagaunt/hormaguant.mdl"
            health = 500
            damage = 100
            description = "Fast melee gaunt that swarms its enemies."
            weapon = "murlock_melee"
            fighttype = "tyrranid"
            bot.xp = 200
            bot.lootchancebonus = 3
            bot:SetRunSpeed(300)
            bot:SetWalkSpeed(300)

        elseif chance <= 85 then
            -- Termagant
            name = "Tyranid Termagant"
            model = "models/tyranids/termagaunt/thermagaunt.mdl"
            health = 500
            damage = 130
            description = "Ranged gaunt that fires living ammunition."
            weapon = "cat_legacy_librarianstaff"
            fighttype = "shooting"
            bot.xp = 325
            bot.lootchancebonus = 6

        elseif chance <= 95 then
            -- Tyranid Warrior
            name = "Tyranid Warrior"
            model = "models/tyranids/warrior/warrior.mdl"
            health = 2500
            damage = 240
            description = "A Tyranid Warrior commanding smaller broods."
            weapon = "murlock_melee"
            fighttype = "tyrranid"
            bot.xp = 700
            bot.lootchancebonus = 10
            bot.Elite = true
            bot:SetRunSpeed(400)
            bot:SetWalkSpeed(400)

        else
            -- Tyranid Warrior Prime
            name = "Tyranid Warrior Prime"
            model = "models/tyranids/warrior/warrior.mdl"
            health = 5000
            damage = 300
            description = "An elite Tyranid Warrior adapted for greater strength."
            weapon = "murlock_melee"
            fighttype = "tyrranid"
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true
            bot:SetRunSpeed(420)
            bot:SetWalkSpeed(420)
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
    end
}


BOT_SOUND_MANAGER["Tyranid Swarm"] = {
    SONG_LOCAL = {
        "tyranids/hormagaunt/idle1.mp3",
        "tyranids/hormagaunt/idle2.mp3",
        "tyranids/hormagaunt/idle3.mp3",
        "tyranids/hormagaunt/idle4.mp3",
        "tyranids/hormagaunt/idle5.mp3",
        "tyranids/hormagaunt/idle6.mp3",
        "tyranids/hormagaunt/idle7.mp3",
        "tyranids/hormagaunt/idle8.mp3",
        "tyranids/hormagaunt/idle9.mp3",
        "tyranids/hormagaunt/idle10.mp3",
        "tyranids/hormagaunt/idle11.mp3",
        "tyranids/hormagaunt/idle12.mp3",
        "tyranids/hormagaunt/idle13.mp3",
        "tyranids/hormagaunt/idle14.mp3",
        "tyranids/hormagaunt/idle15.mp3",
        "tyranids/hormagaunt/idle16.mp3",
        "tyranids/hormagaunt/idle17.mp3",
        "tyranids/hormagaunt/idle18.mp3",
        "tyranids/hormagaunt/idle19.mp3"
    },

    COOLDOWN_MIN = 3,
    COOLDOWN_MAX = 7
}


BOT_SOUND_MANAGER["Slaanesh Forces"] = {
    SONGS_URL = {
        "https://imperiumgaming.net/lust/anything.mp3",
        "https://imperiumgaming.net/lust/obey.mp3",
        "https://imperiumgaming.net/lust/subjucate.mp3",
        "https://imperiumgaming.net/lust/takethespook.mp3",
        "https://imperiumgaming.net/lust/thankyou.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}


FALLOUT_HOSTILE_FACTIONS["Chem Lords"] = {
    Name = "Chem Lords",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Chem Lords"
        bot.HasLoot = true

        if chance <= 55 then
            -- Spook Junkie
            name = "Spook Junkie"
            model = bot.IsFemale and "models/dizcordum/notloyal/thugs/thug_female.mdl" or "models/dizcordum/notloyal/thugs/thug_male.mdl"
            health = 500
            damage = 80
            description = "A violent junkie addicted to chems and chaos."
            bot.xp = 150
            bot.lootchancebonus = 3

            if math.random(1, 100) <= 50 then
                weapon = "murlock_weapon_pistol"
                fighttype = "shooting"
            else
                weapon = "bowie_knife"
                fighttype = "melee"
            end

        elseif chance <= 75 then
            -- Spook Manufacturer
            name = "Spook Manufacturer"
            model = bot.IsFemale and "models/dizcordum/civ/workers/civ_female.mdl" or "models/dizcordum/civ/workers/civ_male.mdl"
            health = 1500
            damage = 130
            description = "A chemical expert responsible for the production of Spook."
            weapon = "cat_legacy_flamerheresy"
            fighttype = "flamer"
            bot.xp = 300
            bot.lootchancebonus = 6

        elseif chance <= 90 then
            -- Chem Enforcer
            name = "Chem Enforcer"
            model = bot.IsFemale and "models/dizcordum/imperium/enforcer/enf_female.mdl" or "models/dizcordum/imperium/enforcer/enf_male.mdl"
            health = 3000
            damage = 200
            description = "A heavily armed enforcer of the Chem Lords."
            weapon = "cat_chaos_legacy_boltpistol"
            fighttype = "shooting"
            bot.xp = 550
            bot.lootchancebonus = 9
            bot.Elite = true
            bot:SetNWBool("ShieldEnable", true)

        else
            -- Squat Mercenary
            name = "Squat Mercenary"
            model = "models/dizcordum/abhumans/squat.mdl"
            health = 5000
            damage = 260
            description = "A mercenary from the Squat Clans, paid by the Chem Lords."
            bot.xp = 1000
            bot.lootchancebonus = 14
            bot.Elite = true
            bot:SetNWBool("ShieldEnable", true)

            if math.random(1, 100) <= 50 then
                weapon = "cat_chaos_legacy_bolter"
                fighttype = "shooting"
            else
                weapon = "cat_legacy_forceaxe"
                fighttype = "melee"
            end
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.hasGasMask = true
    end
}


BOT_SOUND_MANAGER["Chem Lords"] = {
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

--CHEM_HORDE

BOT_SOUND_MANAGER["CHEM_HORDE"] = {
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


BOT_SOUND_MANAGER["NURGLE_HORDE"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_01.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_02.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_03.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_04.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_01.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_02.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_03.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_04.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_05.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_06.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_07.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_08.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_09.mp3"
    },
    COOLDOWN_MIN = 3,
    COOLDOWN_MAX = 6
}

FALLOUT_HOSTILE_FACTIONS["Nurgle Horde"] = {
    Name = "Nurgle Horde",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Nurgle Horde"
        bot.HasLoot = true

        if chance <= 25 then
            -- Nurgling
            name = "Nurgling"
            model = "models/wk/nurglit/wk_nuglin.mdl"
            health = 500
            damage = 70
            description = "A small but deadly servant of Nurgle."
            weapon = "murlock_chaos_knife"
            fighttype = "melee"
            bot.xp = 150
            bot.lootchancebonus = 3
            bot.demon = true

        elseif chance <= 50 then
            -- Poxwalker
            name = "Poxwalker"
            model = "models/wk/nurglit/poxwalker.mdl"
            health = 1000
            damage = 90
            description = "A grotesque servant of Nurgle, spreading disease and decay."
            bot.xp = 225
            bot.lootchancebonus = 5
            bot.hasGasMask = true

            if math.random(1, 100) <= 50 then
                weapon = "murlock_chaos_knife"
                fighttype = "melee"
            else
                weapon = "murlock_weapon_pistol"
                fighttype = "shooting"
            end

        elseif chance <= 72 then
            -- Nurgle Cultist
            name = "Nurgle Cultist"
            model = "models/wk/nurglit/wk_nurcul.mdl"
            health = 1500
            damage = 120
            description = "A diseased and mutated cultist of Nurgle."
            weapon = "murlock_weapon_pistol"
            fighttype = "shooting"
            bot.xp = 325
            bot.lootchancebonus = 6
            bot.Chaos = true

        elseif chance <= 87 then
            -- Plague Sorcerer
            name = "Plague Sorcerer"
            model = "models/wk/nurglit/wk_nur_sor.mdl"
            health = 2500
            damage = 160
            description = "A cultist granted the power of decay by Nurgle."
            weapon = "cat_chaos_legacy_sorcererstaff"
            fighttype = "shooting"
            bot.xp = 525
            bot.lootchancebonus = 9
            bot.pysker = true
            bot.Chaos = true
            bot:SetNWBool("ShieldEnable", true)

        elseif chance <= 97 then
            -- Champion of Nurgle
            name = "Champion of Nurgle"
            model = "models/wk/nurglit/wk_nurgl.mdl"
            health = 3500
            damage = 220
            description = "A vile mutant champion of Nurgle, spreading disease and decay."
            bot.xp = 800
            bot.lootchancebonus = 12
            bot.Elite = true
            bot.demon = true
            bot.Chaos = true
            bot.speed = 500
            bot:SetNWBool("ShieldEnable", true)

            if math.random(1, 2) == 1 then
                weapon = "cat_chaos_legacy_boltpistoldual"
                fighttype = "shooting"
            else
                weapon = "cat_chaos_legacy_powerswordnurgle"
                fighttype = "melee"
            end

        else
            -- Plague Ogryn
            name = "Plague Ogryn"
            model = "models/dizcordum/wk/ogryn/ogryn_chaos_plague.mdl"
            health = 5000
            damage = 300
            description = "A hulking brute infused with the plague of Nurgle."
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true
            bot.Chaos = true

            if math.random(1, 2) == 1 then
                weapon = "cat_chaos_legacy_heavyboltershoulder"
                fighttype = "shooting"
            else
                weapon = "cat_chaos_legacy_crozius"
                fighttype = "melee"
            end
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
    end
}


BOT_SOUND_MANAGER["Nurgle Horde"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_01.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_02.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_03.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idle_generic_04.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_01.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_02.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_03.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_04.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_05.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_06.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_07.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_08.mp3",
        "https://www.imperiumgaming.net/fallout/ghoulsounds/npc_feralghoul_idleanim_09.mp3"
    },
    COOLDOWN_MIN = 3,
    COOLDOWN_MAX = 6
}

FALLOUT_HOSTILE_FACTIONS["Tzeentch Cult"] = {
    Name = "Tzeentch Cult",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Tzeentch Cult"
        bot.HasLoot = true

        if chance <= 60 then
            -- Tzeentch Cultist
            name = "Tzeentch Cultist"
            model = math.random(2) == 1 and "models/wk/cult/tzeentch_cultist.mdl" or "models/wk/cult/tzeentch_cultist_heavy.mdl"
            health = 500
            damage = 90
            description = "A cultist of Tzeentch, ready to warp reality in his name."
            bot.xp = 200
            bot.lootchancebonus = 4
            bot.Chaos = true

            if math.random(1, 100) <= 25 then
                weapon = "cat_chaos_legacy_sorcererstaff"
                fighttype = "shooting"
            else
                weapon = "murlock_chaos_knife"
                fighttype = "melee"
            end

        elseif chance <= 85 then
            -- Tzeentch Sister
            name = "Tzeentch Sister"
            model = "models/wk/sister_tz/tzeentch_sister.mdl"
            health = 2500
            damage = 200
            description = "A powerful sorcerer of Tzeentch, master of change and manipulation."
            weapon = "cat_chaos_legacy_boltpistoldual"
            fighttype = "shooting"
            bot.xp = 600
            bot.lootchancebonus = 10
            bot.Elite = true
            bot.Chaos = true
            bot:SetNWBool("ShieldEnable", true)
            bot:SetColor(Color(80, 100, 255))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            bot:SetRenderFX(kRenderFxPulseFast)

        else
            -- Tzeentch Demon
            name = "Tzeentch Demon"
            model = math.random(2) == 1 and "models/bloodletterc.mdl" or "models/bloodletter1.mdl"
            health = 5000
            damage = 280
            description = "A demon of Tzeentch ready to sow discord and chaos."
            weapon = "cat_chaos_legacy_powerswordtzeentch"
            fighttype = "melee"
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true
            bot.demon = true
            bot.Chaos = true
            bot:SetNWBool("ShieldEnable", true)
            bot:SetColor(Color(80, 100, 255))
            bot:SetRenderMode(RENDERMODE_TRANSALPHA)
            bot:SetRenderFX(kRenderFxPulseFast)
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)
        bot:SetSkin(0)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Chaos = true
    end
}

FALLOUT_HOSTILE_FACTIONS["Chaos Dwarfs"] = {
    Name = "Chaos Dwarfs",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Chaos Dwarfs"
        bot.HasLoot = true

        local ShootingWeapons = {
            "cat_chaos_legacy_heavyboltershoulder",
            "cat_chaos_legacy_bolter",
            "cat_chaos_legacy_stormbolter",
            "cat_chaos_legacy_boltercombi"
        }

        local MeleeWeapons = {
            "cat_chaos_legacy_poweraxe",
            "cat_chaos_legacy_powerfist",
            "cat_chaos_legacy_chainaxeheavy",
            "cat_chaos_legacy_crozius",
            "cat_chaos_legacy_chainsword"
        }

        if chance <= 50 then
            -- Chaos Dwarf Slave
            name = "Ork Labourer"
            model = "models/barbossa/orc_laborer/orc_laborer_pm.mdl"
            health = 500
            damage = 80
            description = "Forced to serve their masters, they fight or die."
            weapon = "cat_chaos_legacy_combatknife"
            fighttype = "melee"
            bot.xp = 150
            bot.lootchancebonus = 3

        elseif chance <= 75 then
            -- Chaos Dwarf Warrior
            name = "Chaos Dwarf Warrior"
            model = "models/knight_ig/muschi_ig_squat.mdl"
            health = 1000
            damage = 220
            description = "Industrial infantry of the Chaos Dwarf empire."
            fighttype = "hybrid"
            weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot.xp = 750
            bot.lootchancebonus = 11
            bot.Elite = true
            bot.ChaosDwarf = true
            bot:SetNWBool("ShieldEnable", true)
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)

        elseif chance <= 85 then
            -- Daemonsmith
            name = "Daemonsmith"
            model = "models/knight_ig/muschi_ig_squat.mdl"
            health = 3500
            damage = 240
            description = "Sorcerer-engineers who bind daemons into war machines."
            fighttype = "hybrid"
            weapon = "cat_chaos_legacy_sorcererstaff"
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot.xp = 900
            bot.lootchancebonus = 13
            bot.Elite = true
            bot.ChaosDwarf = true
            bot.pysker = true
            bot:SetRunSpeed(200)
            bot:SetWalkSpeed(200)

        else
            -- Infernal Guard
            name = "Infernal Guard"
            model = "models/knight_ig/muschi_ig_squat_kalt.mdl"
            health = 5000
            damage = 300
            description = "Elite warrior-cults sworn eternally to Hashut."
            fighttype = "hybrid"
            weapon = ShootingWeapons[math.random(#ShootingWeapons)]
            bot.meleeweapon = MeleeWeapons[math.random(#MeleeWeapons)]
            bot.xp = 1200
            bot.lootchancebonus = 15
            bot.Elite = true
            bot.ChaosDwarf = true
            bot.ShootingSkill = 2
            bot:SetNWBool("ShieldEnable", true)
            bot:SetRunSpeed(150)
            bot:SetWalkSpeed(150)

            local bodygroupchoice = math.random(1, 2)
            if bodygroupchoice == 1 then
                bot:SetBodygroup(1, 2)
                bot:SetBodygroup(4, 0)
            else
                bot:SetBodygroup(1, 2)
                bot:SetBodygroup(4, 1)
            end
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
    end
}

BOT_SOUND_MANAGER["Chaos Dwarfs"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/chaosdwarfs/dwarfline1_improved.mp3",
        "https://www.imperiumgaming.net/chaosdwarfs/dwarfline2_improved.mp3",
        "https://www.imperiumgaming.net/chaosdwarfs/dwarfline3_improved.mp3",
        "https://www.imperiumgaming.net/chaosdwarfs/dwarfline4_improved.mp3"
    },
    COOLDOWN_MIN = 10,
    COOLDOWN_MAX = 20
}


FALLOUT_HOSTILE_FACTIONS["Aeldari"] = {
    Name = "Aeldari",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Aeldari"
        bot.HasLoot = true

        if chance <= 45 then
            -- Guardian Defender
            name = "Guardian Defender"
            model = "models/astartes/eldar/guardian_npc.mdl"
            health = 500
            damage = 90
            description = "A citizen-soldier of the Aeldari, called to war in times of need and armed with standard infantry weapons."
            weapon = "zad_eldar_lasblaster"
            fighttype = "shooting"
            bot.xp = 175
            bot.lootchancebonus = 4
            bot:SetRunSpeed(300)
            bot:SetWalkSpeed(300)

        elseif chance <= 65 then
            -- Dark Reaper
            name = "Dark Reaper"
            model = "models/astartes/eldar/dark_reapers_npc.mdl"
            health = 1000
            damage = 130
            description = "A deadly long-range marksman that picks off high-value targets with precision and lethality."
            weapon = "zad_eldar_longrifle"
            fighttype = "shooting"
            bot.xp = 300
            bot.lootchancebonus = 6
            bot:SetRunSpeed(350)
            bot:SetWalkSpeed(350)

        elseif chance <= 82 then
            -- Dire Avenger
            name = "Dire Avenger"
            model = "models/astartes/eldar/avenger_npc.mdl"
            health = 1500
            damage = 160
            description = "A disciplined Aspect Warrior specialising in mid-range firefights and rapid battlefield control."
            weapon = "zad_eldar_lasblaster"
            fighttype = "shooting"
            bot.xp = 425
            bot.lootchancebonus = 8
            bot:SetRunSpeed(300)
            bot:SetWalkSpeed(300)

        elseif chance <= 94 then
            -- Warp Spider
            name = "Warp Spider"
            model = "models/astartes/eldar/spiders_npc.mdl"
            health = 3000
            damage = 230
            description = "A highly mobile Aspect Warrior specialising in hit-and-run tactics and close-quarters combat."
            weapon = "zad_eldar_spinneret"
            fighttype = "shooting"
            bot.xp = 750
            bot.lootchancebonus = 12
            bot.Elite = true
            bot:SetNWBool("ShieldEnable", true)
            bot:SetRunSpeed(350)
            bot:SetWalkSpeed(350)

        else
            -- Banshee
            name = "Banshee"
            model = "models/astartes/eldar/banshees.mdl"
            health = 5000
            damage = 300
            description = "An elite Aspect Warrior known for terrifying close-combat prowess and the ability to strike fear into the hearts of enemies."
            weapon = "murlock_melee"
            fighttype = "melee"
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true
            bot:SetNWBool("ShieldEnable", true)
            bot:SetRunSpeed(450)
            bot:SetWalkSpeed(450)
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
    end
}


BOT_SOUND_MANAGER["Aeldari"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/elves/402220.mp3",
        "https://www.imperiumgaming.net/elves/402220.mp3",
        "https://www.imperiumgaming.net/elves/402582.mp3",
        "https://www.imperiumgaming.net/elves/402771.mp3",
        "https://www.imperiumgaming.net/elves/402781.mp3",
        "https://www.imperiumgaming.net/elves/402782.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}


FALLOUT_HOSTILE_FACTIONS["Lizardmen"] = {
    Name = "Lizardmen",
    RandomEncounter = true,
    WasteLandSpawnWeight = 2,
    DungeonBot = true,
    DungeonHealth = 100,

    CreateBot = function(bot, type)
        local chance = math.random(1, 100)
        local health, damage, model, name, description, weapon, fighttype
        local status = "Lizardmen"
        bot.HasLoot = true

        local LizardmanModels = {
            "models/lizards/lizardmanekinar.mdl",
            "models/lizards/lizardmangarway.mdl",
            "models/lizards/lizardmankazgulam.mdl",
            "models/lizards/lizardmankeser.mdl",
            "models/lizards/lizardmanshaman.mdl",
            "models/lizards/lizardmanshark.mdl",
            "models/lizards/lizardmansharkalt.mdl",
            "models/lizards/lizardmanvd.mdl",
            "models/lizards/lizardmanverafim.mdl",
            "models/lizards/lizardmanwarrior.mdl"
        }

        if chance <= 55 then
            -- Skink Hunter
            name = "Skink Hunter"
            model = LizardmanModels[math.random(#LizardmanModels)]
            health = 500
            damage = 80
            description = "A swift cold-blooded hunter armed with bow and spear."
            bot.xp = 175
            bot.lootchancebonus = 4
            bot.instant_reload = true
            bot.LittleShit = true
            bot:SetRunSpeed(300)
            bot:SetWalkSpeed(300)
            bot.nocrouch = true

            timer.Simple(1, function()
                if IsValid(bot) then
                    bot:SetModelScale(0.6, 0)
                end
            end)

            if math.random(1, 100) <= 30 then
                description = "A nimble skink skirmisher darting between reeds and ruins."
                weapon = "tfa_stikk_bomb"
                fighttype = "flamer"
            else
                weapon = "weapon_huntingbow"
                fighttype = "hybrid"
                bot.meleeweapon = math.random(1, 100) <= 50 and "chitin_spear" or "bowie_knife"
            end

        elseif chance <= 85 then
            -- Saurus Warrior
            name = "Saurus Warrior"
            model = LizardmanModels[math.random(#LizardmanModels)]
            health = 2000
            damage = 180
            description = "A broad-scaled warrior bred for nothing but disciplined slaughter."
            weapon = math.random(1, 100) <= 50 and "chitin_spear" or "cat_chaos_legacy_crozius"
            fighttype = "melee"
            bot.xp = 500
            bot.lootchancebonus = 8

        else
            -- Kroxigor
            name = "Kroxigor"
            model = "models/barbossa/nakai_the_wanderer/nakai_pm.mdl"
            health = 5000
            damage = 300
            description = "A massive temple-guardian spawned for war."
            weapon = "cat_chaos_legacy_crozius"
            fighttype = "melee"
            bot.xp = 1100
            bot.lootchancebonus = 15
            bot.Elite = true
        end

        bot:StripWeapons()
        bot:SetNWString("Status", status)
        bot:SetNWInt("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        bot.Damage = damage
        bot:SetModel(model)

        RandomonizeBodygroupsAndSkins(bot)

        bot.weapon = weapon
        bot.FightType = fighttype

        bot:SetNWString("Name", name)
        bot:SetNWString("Description", description)
        bot.IsHostile = true
        bot.GoneMad = true
        bot.Lizardmen = true
    end
}


BOT_SOUND_MANAGER["Lizardmen"] = {
    SONGS_URL = {
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting03.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting04.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting05.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_panting06.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_scream03.mp3",

        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_snarl01.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_snarl02.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_snarl03.mp3",
        "https://www.imperiumgaming.net/fallout/wastelandnpcs/geckos/gecko_snarl04.mp3"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10
}