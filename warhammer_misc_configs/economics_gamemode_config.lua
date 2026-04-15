--- CONFIG FOR rp_warhammer ---

EXTRA_ECON_MAPS = EXTRA_ECON_MAPS or {}

if not table.HasValue(EXTRA_ECON_MAPS, "rp_warhammer") then
    table.insert(EXTRA_ECON_MAPS, "rp_warhammer")
end

local map = game.GetMap()

if map == "rp_warhammer" then

    -- WASTELAND ENCOUNTERS
    ENCOUNTER_BOT_LIMITS[50] = 5 -- 50 players = 13 bots
    ENCOUNTER_BOT_LIMITS[40] = 8 -- 40 players = 15 bots
    ENCOUNTER_BOT_LIMITS[30] = 10 -- 30 players = 20 bots
    ENCOUNTER_BOT_LIMITS[20] = 15 -- 20 players or below = 25 bots
    ENCOUNTER_BOT_LIMITS[10] = 15 -- 10 players or below = 30 bots

    -- RAW RESOURCES

    RAW_RESOURCES_LOOT_TABLE = {
        "item_568247", -- lumber
        "item_707836", -- raw_food
        "item_884313", -- metals
        "item_157322" -- tools
    }
    
    RAW_RESOURCES = {
        ["lumber"] = "item_568247",
        ["raw_food"] = "item_707836",
        ["tools"] = "item_157322",
        ["metals"] = "item_884313",
        ["preserved_food"] = "item_537656",
        ["amenities"] = "item_296725"
    }

    RAW_RESOURCES_RESILIENCE = {
        ["item_568247"] = 500000, -- lumber
        ["item_707836"] = 500000, -- raw_food
        ["item_157322"] = 250000, -- tools
        ["item_884313"] = 250000, -- metals
        ["item_537656"] = 200000, -- processed_food
        ["item_296725"] = 100000, -- amenities
    }

    --- SETTLEMENT INFO DEFINITIONS ---

    SETTLEMENT_INFO["the_high_bastion"] = {
        Name = "The High Bastion",
        Description = "At the heart of local region is The High Bastion, a fortified settlement that serves as the administrative and military center of the Imperium on Adderoth.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "https://www.imperiumgaming.net/fallout/settlements/20251129185155_1.jpg",
        Trader = {
            Name = "High Bastion Merchant",
            TraderModel = "models/wk/civilian/wk_civilian.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4, [1] = 1, [2] = 1, [5] = 4},
            SpawnPoint = {
                Pos = Vector(379.71, 8000.43, 643.53),
                Ang = Angle(0, 52.88, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(1264.500000, 9089.468750, 930.906250),
            Ang = Angle(-0.027, 90.088, 0.038)
        },
        ProductionMethod = {
            Name = "Guilds of Adderoth",
            Description = "A traditional method of production that prioritizes manual labor and craftsmanship. In this system, workers are organized into guilds or workshops, where they produce tools, amenities and preserved food using Feudal techniques. The Guilds of Adderoth go back centuries and are deeply ingrained in the culture of the region.",
            Consumption = {
                ["raw_food"] = 100,
                ["lumber"] = 50,
                ["metals"] = 35,
                ["tools"] = 25
            },
            Production = {
                ["preserved_food"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["tools"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 75,
                    MaxStorage = 50000
                }
            }
        },
        SettlementBounderies = {
            {
                min = Vector(4088.436279, 6779.379395, 3934.723633),
                max = Vector(-3449.048828, 11345.130859, 108.525673)
            },
        },
        DesiredBotCount = 10,
        CoreNode = "settlement_core_the_high_bastion",
        BotModels = {
            Female = {"models/wk/civilian/wk_civilian.mdl"},
            Male = {"models/wk/civilian/wk_civilian.mdl"}    
        },
        BotLoadouts = {
            { Weapon = "cat_custom_lasgun_galaxy", FightType = "shooting" },
            { Weapon = "murlock_weapon_pistol", FightType = "shooting" },
            { Weapon = "bowie_knife", FightType = "melee" }
        },
        BotDescriptions = {"Wears a roughspun tunic patched many times over.", "Moves carefully through muddy village paths with a basket of grain.", "Keeps a small wooden charm of the Aquila tied around their neck.", "Carries a hand-scribed tally of harvest dues.", "Smells of smoke, soil, and beasts of burden.", "Eyes tired from long hours under the harsh sun.", "Speaks plainly, with prayers woven into common words.", "Glances nervously when the tithe-master's riders pass.", "Stacks wheat bundles with ritual precision.", "Bows head in silence when the local priest speaks.", "Checks weight of grain sacks twice before offering them.", "Files parish records into leather-bound ledgers.", "Marks offerings with wax seals blessed at the chapel.", "Knows which noble owns which field and pasture.", "Crosses themselves before entering the tithe barn.", "Helps neighbors repair broken plows and tools.", "Dreams of joining the Schola or serving the Guard.", "Keeps their hut swept and hearth fire constant.", "Warns children to keep quiet in the chapel yard.", "Spends long hours in barley fields under watch of overseers.", "Carries bundles of herbs tied with red twine.", "Wraps bread loaves in cloth to prevent spoilage.", "Pauses reverently when passing a roadside shrine.", "Maintains distance when queuing for grain allocation.", "Values honesty in trade above all else.", "Knows which messengers arrive reliably from the city.", "Recites seasonal prayers while sowing seed.", "Keeps a soot-stained quill tucked in their belt.", "Says nothing when nobles speak, only nods.", "Recalls stories of past harvests and famines by heart.", "Keeps careful notes of births, deaths, and marriages.", "Archives small scrolls of chapel sermons.", "Mends harness straps with steady hands.", "Avoids idle gossip to preserve household harmony.", "Corrects misplaced tools quietly in the storehouse.", "Recognizes the chapel bell tones instantly.", "Keeps a spare prayer candle in a clay jar.", "Takes pride in full granaries after tithe collection.", "Reviews tallies of livestock late into the night.", "Wears gloves when tending sacred seed stock.", "Falls silent when the priest begins litanies of labor.", "Carries offerings between village and chapel without delay.", "Never questions the harvest orders of the reeve.", "Checks the sundial twice before changing tasks.", "Offers no counsel unless spoken to by a higher rank.", "Avoids strangers unless directed otherwise.", "Memorizes holy feast days without fail.", "Prays to the Emperor before lighting the evening hearth.", "Polishes their wooden Aquila before chapel days.", "Keeps a stoic face during both feast and famine.", "Only speaks when proper to address the reeve.", "Studies family tales of wars and crusades for lessons.", "Reports daily labor tallies to the village scribe.", "Observes decorum when addressing nobility or clergy.", "Logs chapel attendance in local records.", "Notices even small miscounts in harvest measures.", "Trusts the word of priest and overseer above all else.", "Keeps proper tone when addressing elders.", "Carries a prayer-book of simple litanies at all times.", "Follows planting and reaping rites precisely.", "Judges neighbors for laxity in holy observances.", "Meets tithing deadlines even when harvest is meager.", "Corrects spoken prayers of children before blessing them.", "Questions the Faith of the Emperor, but never admits it.", "Strives to work for the Cause." }
    }

    SETTLEMENT_INFO["rat_hold"] = {
        Name = "Rat Hold",
        Description = "Reclaimed Squat Hold turned into a Sanctioned Imperial Kin Settlement. The offical capital of the Kin on Adderoth.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "https://www.imperiumgaming.net/fallout/settlements/20251129185155_1.jpg",
        Trader = {
            Name = "Squat Merchant",
            TraderModel = "models/muschi/knight_ig/muschi_ig_squat.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4 },
            SpawnPoint = {
                Pos = Vector(10243.34, -4052.15, -2432.97),
                Ang = Angle(0, 90, 0.000000)
            }
        },
        WorkBench = {
            Pos = Vector(10259.718750, -11521.281250, -2368.375000),
            Ang = Angle(0.000, 90.000, 0.000)
        },
        ProductionMethod = {
            Name = "Votann Industry",
            Description = "The Kin are an Industrial Race of Mutants on Adderoth, they require preserved food for there mining expeditions and lumber for supports and also to make charcoal to fuel their forges. They produce tools, metals and amenities that support the rest of the region.",
            Consumption = {
                ["lumber"] = 100,
                ["preserved_food"] = 100
            },
            Production = {
                ["metals"] = {
                    Amount = 300,
                    MaxStorage = 100000
                },
                ["tools"] = {
                    Amount = 150,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 75,
                    MaxStorage = 50000
                }
            }
        },
        SettlementBounderies = {
            {
                min = Vector(7745.470215, -11482.884766, -3052.952881),
                max = Vector(16398.929688, -328.289612, -122.828705)
            },
        },
        DesiredBotCount = 10,
        CoreNode = "settlement_core_rat_hold",
        BotModels = {
            Female = {"models/knight_ig/muschi_ig_squat.mdl","models/muschi/knight_ig/muschi_ig_squat.mdl"},
            Male = {"models/knight_ig/muschi_ig_squat.mdl","models/muschi/knight_ig/muschi_ig_squat.mdl"},
            Dwarf = {"models/knight_ig/muschi_ig_squat.mdl","models/muschi/knight_ig/muschi_ig_squat.mdl"}    
        },
        BotLoadouts = {
            { Weapon = "cat_legacy_poweraxecthonian", FightType = "melee" },
            { Weapon = "cat_legacy_shotgunassault", FightType = "shooting" }
        },
        IsDwarf = true,
        BotDescriptions = {"Born underground, suckled from a teat of stone", "Knows the tunnels like the back of their hand", "Wears a respirator to filter out dust and toxins", "Keeps a small collection of shiny trinkets found in the mines", "Speaks in guttural tones with a hint of the old language", "Covered in soot and grime from long hours in the tunnels", "Has a fondness for scrap metal and mechanical parts", "Moves with surprising agility through narrow passages", "Keeps a trusty pickaxe always within reach", "Has a deep respect for the Votann and their guidance", "Knows how to navigate by the faint echoes in the tunnels", "Wears patchwork armor made from salvaged materials", "Has a network of contacts among the other Kin settlements", "Is skilled at finding hidden veins of ore and minerals", "Keeps a small shrine to the Votann in their living quarters", "Is fiercely loyal to their fellow Kin and will defend them at all costs", "Has a knack for repairing broken machinery with limited resources", "Knows how to identify different types of rock and ore by sight and touch", "Is always on the lookout for signs of cave-ins or other dangers in the tunnels", "Has a deep connection to the underground world they call home", "A Clone from the Leagues", "Fought against the Ratmen of the Underworld", "Has a gruff exterior but a heart of gold", "Is haunted by memories of the wars fought in the tunnels", "Wears a pendant made from a rare gemstone found deep in the mines", "Is known for their stubbornness and determination", "Has a talent for finding hidden caches of supplies left by previous miners", "Is always willing to lend a hand to a fellow Kin in need", "Knows how to navigate by the faint glow of bioluminescent fungi in the tunnels", "Has a collection of old mining tools passed down through generations", "Is skilled at crafting makeshift weapons from scrap materials", "Has a deep respect for the natural world, even in the depths of the earth", "Is fiercely protective of their home and will fight to defend it against any threat" }
    }

    SETTLEMENT_INFO["axe_holm"] = {
        Name = "Axe Holm",
        Description = "Axe Holm is a quaint settlement nestled outside the walls of The High Bastion. It serves as the main hub for the lumber industry in the region.",
        Type = "major",
        CanManageInventory = true,
        CanWithDrawCaps = true,
        Picture = "https://www.imperiumgaming.net/fallout/settlements/20251129185155_1.jpg",
        Trader = {
            Name = "Lumber Merchant",
            TraderModel = "models/wk/civilian/wk_civilian.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4 },
            SpawnPoint = {
                Pos = Vector(5926.99, 4394.37, 705.28),
                Ang = Angle(0, -178.73, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(5942.625000, 5339.406250, 681.187500),
            Ang = Angle(0.000, -179.874, 0.000)
        },
        ProductionMethod = {
            Name = "Foresters Guild",
            Description = "The Foresters Guild is a traditional organization of lumberjacks and woodworkers on Adderoth who are responsible for harvesting and processing timber in the region. They need preserved food for their lumbering expeditions, and in return produce lumber for the rest of the region.",
            Consumption = {
                ["tools"] = 125,
                ["preserved_food"] = 25
            },
            Production = {
                ["lumber"] = {
                    Amount = 300,
                    MaxStorage = 200000
                },
                ["raw_food"] = {
                    Amount = 150,
                    MaxStorage = 100000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(4808.498047, 2915.703857, 2249.841797),
                max = Vector(6938.774414, 8691.460938, 570.932007)
            },
        },
        DesiredBotCount = 10,
        CoreNode = "settlement_axeholm",
        BotModels = {
            Female = {"models/wk/civilian/wk_civilian.mdl"},
            Male = {"models/wk/civilian/wk_civilian.mdl"},
        },
        BotLoadouts = {
            { Weapon = "cat_custom_lasgun_galaxy", FightType = "shooting" },
            { Weapon = "murlock_weapon_pistol", FightType = "shooting" },
            { Weapon = "bowie_knife", FightType = "melee" },
            { Weapon = "weapon_huntingbow", FightType = "shooting" }
        },
        BotDescriptions = {"Wears a roughspun tunic patched many times over.", "Moves carefully through muddy village paths with a basket of grain.", "Keeps a small wooden charm of the Aquila tied around their neck.", "Carries a hand-scribed tally of harvest dues.", "Smells of smoke, soil, and beasts of burden.", "Eyes tired from long hours under the harsh sun.", "Speaks plainly, with prayers woven into common words.", "Glances nervously when the tithe-master's riders pass.", "Stacks wheat bundles with ritual precision.", "Bows head in silence when the local priest speaks.", "Checks weight of grain sacks twice before offering them.", "Files parish records into leather-bound ledgers.", "Marks offerings with wax seals blessed at the chapel.", "Knows which noble owns which field and pasture.", "Crosses themselves before entering the tithe barn.", "Helps neighbors repair broken plows and tools.", "Dreams of joining the Schola or serving the Guard.", "Keeps their hut swept and hearth fire constant.", "Warns children to keep quiet in the chapel yard.", "Spends long hours in barley fields under watch of overseers.", "Carries bundles of herbs tied with red twine.", "Wraps bread loaves in cloth to prevent spoilage.", "Pauses reverently when passing a roadside shrine.", "Maintains distance when queuing for grain allocation.", "Values honesty in trade above all else.", "Knows which messengers arrive reliably from the city.", "Recites seasonal prayers while sowing seed.", "Keeps a soot-stained quill tucked in their belt.", "Says nothing when nobles speak, only nods.", "Recalls stories of past harvests and famines by heart.", "Keeps careful notes of births, deaths, and marriages.", "Archives small scrolls of chapel sermons.", "Mends harness straps with steady hands.", "Avoids idle gossip to preserve household harmony.", "Corrects misplaced tools quietly in the storehouse.", "Recognizes the chapel bell tones instantly.", "Keeps a spare prayer candle in a clay jar.", "Takes pride in full granaries after tithe collection.", "Reviews tallies of livestock late into the night.", "Wears gloves when tending sacred seed stock.", "Falls silent when the priest begins litanies of labor.", "Carries offerings between village and chapel without delay.", "Never questions the harvest orders of the reeve.", "Checks the sundial twice before changing tasks.", "Offers no counsel unless spoken to by a higher rank.", "Avoids strangers unless directed otherwise.", "Memorizes holy feast days without fail.", "Prays to the Emperor before lighting the evening hearth.", "Polishes their wooden Aquila before chapel days.", "Keeps a stoic face during both feast and famine.", "Only speaks when proper to address the reeve.", "Studies family tales of wars and crusades for lessons.", "Reports daily labor tallies to the village scribe.", "Observes decorum when addressing nobility or clergy.", "Logs chapel attendance in local records.", "Notices even small miscounts in harvest measures.", "Trusts the word of priest and overseer above all else.", "Keeps proper tone when addressing elders.", "Carries a prayer-book of simple litanies at all times.", "Follows planting and reaping rites precisely.", "Judges neighbors for laxity in holy observances.", "Meets tithing deadlines even when harvest is meager.", "Corrects spoken prayers of children before blessing them.", "Questions the Faith of the Emperor, but never admits it.", "Strives to work for the Cause." }
    }

    SETTLEMENT_INFO["grim_spire"] = {
        Name = "Grim Spire",
        Description = "Far beyond the walls of High Bastion lies the Dreary Settlement of Grim Spire, sitting on an ancient graveyard that dates back centuries.",
        Type = "major",
        CanManageInventory = true,
        CanWithDrawCaps = true,
        Picture = "https://www.imperiumgaming.net/fallout/settlements/20251129185155_1.jpg",
        Trader = {
            Name = "Mortician Merchant",
            TraderModel = "models/dizcordum/chaos/cultist/cultist5.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4 },
            SpawnPoint = {
                Pos = Vector(3136.26, -4405.62, 1009.51),
                Ang = Angle(0, -90, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(2955.875000, -8630.468750, 1212.875000),
            Ang = Angle(0, 160, 0.000)
        },
        ProductionMethod = {
            Name = "Morbid Extraction",
            Description = "The Dead yet provides, in Grim Spire the locals have turned into Morbid Scavengers who exhume the dead and extract resources from them to produce raw food and amenities for the rest of the region. They consume tools to perform their grim work, and lumber to cremate what is left.",
            Consumption = {
                ["tools"] = 125,
                ["lumber"] = 25
            },
            Production = {
                ["raw_food"] = {
                    Amount = 400,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 50,
                    MaxStorage = 25000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-5.659679, -9368.332031, 610.725281),
                max = Vector(4944.497559, -4405.266113, 4131.606934)
            },
        },
        DesiredBotCount = 5,
        CoreNode = "settlement_grimspire",
        BotModels = {
            Female = {"models/dizcordum/chaos/cultist/cultist5.mdl","models/dizcordum/chaos/cultist/cultist4.mdl","models/dizcordum/chaos/cultist/cultist3.mdl","models/dizcordum/chaos/cultist/cultist1.mdl","models/dizcordum/chaos/cultist/cultist2.mdl"},
            Male = {"models/dizcordum/chaos/cultist/cultist5.mdl","models/dizcordum/chaos/cultist/cultist4.mdl","models/dizcordum/chaos/cultist/cultist3.mdl","models/dizcordum/chaos/cultist/cultist1.mdl","models/dizcordum/chaos/cultist/cultist2.mdl"},
        },
        BotLoadouts = {
            { Weapon = "cat_custom_lasgun_galaxy", FightType = "shooting" },
            { Weapon = "murlock_weapon_pistol", FightType = "shooting" },
            { Weapon = "bowie_knife", FightType = "melee" },
            { Weapon = "weapon_huntingbow", FightType = "shooting" }
        },
        BotDescriptions = {"Wears a weathered wool cloak stained by forest rain and ash.", "Keeps a crude iron hatchet close at all times, even during prayer.", "Carries a chipped wooden Aquila carved by a village elder.", "Scans tree lines before speaking to strangers.", "Smells of wet timber, smoke, and animal hides.", "Walks narrow woodland paths known only to locals.", "Keeps salt charms above doorways to ward off corruption.", "Listens for distant horns that warn of raiders from the wastes.", "Stacks firewood in careful circles around their dwelling.", "Speaks quietly when mentioning the northern forests.", "Marks safe trails with hidden devotional symbols.", "Burns tainted crops without hesitation.", "Knows which families vanished during the last Chaos raids.", "Crosses themselves when crows gather too thickly overhead.", "Helps raise palisades before tending their own fields.", "Keeps a spear within reach while sleeping.", "Warns travelers not to linger after sunset.", "Remembers where the old shrines stood before they were defiled.", "Carries dried herbs believed to repel warp-spirits.", "Pauses when the wind carries unfamiliar sounds from the treeline.", "Leaves offerings at forgotten roadside chapels.", "Checks doors twice before nightfall.", "Shares news of sightings from the Northern Wastes in hushed tones.", "Refuses to walk alone beyond the last boundary stones.", "Memorizes the faces of every newcomer to the settlement.", "Keeps watch rotations with neighbors after dusk.", "Trusts pilgrims less than soldiers.", "Recites frontier litanies for protection before travel.", "Keeps lantern light low to avoid attention at night.", "Buried kin lost during the first uprising against Chaos.", "Knows hidden paths between shrines and signal posts.", "Listens carefully for chapel bells used as warning alarms.", "Stores grain in concealed cellars beneath the hut floor.", "Repairs fences damaged by things that do not leave tracks.", "Marks strange footprints before reporting them to wardens.", "Speaks respectfully of those taken by the wastes.", "Keeps spare torches ready beside the doorway.", "Recognizes corrupted soil by smell alone.", "Refuses shelter to travelers who will not pray.", "Maintains boundary markers blessed by wandering priests.", "Lights warding candles during long winter nights.", "Shares rumors of cultists moving between hamlets.", "Carries messages between settlements when roads are unsafe.", "Knows which woods are never entered anymore.", "Watches the northern sky for unnatural light.", "Remembers the sound of the first war-horns of invasion.", "Keeps iron nails above thresholds to repel spirits.", "Offers labor freely when new defenses are raised.", "Checks livestock for signs of mutation each morning.", "Trusts the Emperor but trusts a loaded crossbow as well.", "Helps escort migrants arriving from distant hive worlds.", "Maintains signal fires on hilltops during unrest.", "Studies burn scars where Chaos rituals once stood.", "Keeps children away from abandoned shrines.", "Speaks little of what lies deeper in the forest.", "Treats silence from neighboring hamlets as a warning sign.", "Carries news faster than official messengers can travel.", "Keeps relic fragments wrapped in oilcloth for protection.", "Refuses to sleep during nights when the wind turns warm.", "Believes the Emperor watches even forgotten worlds.", "Strives to reclaim the land one field at a time."}
    }

    --- EXTERNAL MARKETS DEFINITIONS ---

    EXTERNAL_MARKETS["Imperial Tithe"] = {
        Name = "Imperial Tithe",
        Description = "The Imperium forever demands its due. Worlds whom fail fulfill their tithes (stock is in the +) will face Imperial Tithe Collectors who will take what is owed without payment. Ensure the Tithe is fulfilled to avoid Tithe Collectors and to maintain good standing with the wider Imperium.",
        SellModifier = 0.9, -- Players sell at 90% of base price into this market
        MarketNode = "imperium_tithe_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/tithe.png",
    }

    EXTERNAL_MARKETS["Hive City Imperium"] = {
        Name = "Hive City Imperium",
        Description = "Hive City Imperium is the behemoth of the sub-sector, a sprawling hive city that serves as a major hub for trade and commerce in the region. The market is known for its wide variety of goods and services, but the prices can be steep due to the high demand and limited supply. Selling into Hive City Imperium can be lucrative, but be prepared to pay a premium for the privilege.",
        SellModifier = 0.8, -- Players sell at 80% of base price into this market
        MarketNode = "hive_city_imperium_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/hive.png",
        OwnerRole = "DIVISION_1218444165"
    }

    EXTERNAL_MARKETS["Local Adderoth Market"] = {
        Name = "Local Adderoth Market",
        Description = "The World of Adderoth is much larger than just the region around The High Bastion, there are many other settlements and locations across the planet that produce and consume goods. However, many of these are decentralized and operate independently from the Imperium, they are often small and harbor heretics and outlaws.",
        SellModifier = 1.1, -- Players sell at 110% of base price into this market
        MarketNode = "local_adderoth_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/local.png"
    }


    --- DUNGEON CONFIG DEFINITIONS ---

    --GLOBAL DUNGEON CONFIG--
    MAX_ACTIVE_DUNGEONS = 2
    GLOBAL_UNINFESTED_BOTS = 6
    MAX_LOOT_ITEMS = 35
    LOOT_DESPAWN_TIME = 1800 -- 30 minutes

    MURLOCK_DUNGEONS["Cathedral Cellar"] = MURLOCK_DUNGEONS["Cathedral Cellar"] or {
        dungeon_node = "dungeon_cathedral_celler",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(5137.876953, 7216.166016, -1479.084473),
            max = Vector(8994.791016, 9568.304688, -741.244568)
        }
    }

    MURLOCK_DUNGEONS["Lonely Tower"] = MURLOCK_DUNGEONS["Lonely Tower"] or {
        dungeon_node = "dungeon_the_lonely_tower",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-3214.255859, -4834.030273, 573.762329),
            max = Vector(-2070.298828, -3592.778076, 2563.214355)
        }
    }

    MURLOCK_DUNGEONS["Ritual Cave"] = MURLOCK_DUNGEONS["Ritual Cave"] or {
        dungeon_node = "dungeon_ritual_cave",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-13754.717773, -7648.581543, -483.876282),
            max = Vector(-11355.808594, -289.915161, 593.328003)
        }
    }

    MURLOCK_DUNGEONS["Ancient Crypts"] = MURLOCK_DUNGEONS["Ancient Crypts"] or {
        dungeon_node = "dungeon_ancient_crypts",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-431.728943, -4604.495605, -5906.435059),
            max = Vector(3425.064941, 775.717407, -4282.043945)
        }
    }

    MURLOCK_DUNGEONS["Crystalline Cave"] = MURLOCK_DUNGEONS["Crystalline Cave"] or {
        dungeon_node = "dungeon_crystalline_cave",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-6732.172363, -191.117249, -4047.265625),
            max = Vector(-1874.122681, 6290.736328, -3075.073486)
        }
    }

    MURLOCK_DUNGEONS["Squat Mine"] = MURLOCK_DUNGEONS["Squat Mine"] or {
        dungeon_node = "dungeon_squat_mine",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-10493.734375, -12672.648438, -5080.045898),
            max = Vector(-868.050903, -921.238464, -3109.093018)
        }
    }

    ALLOWED_CARAVAN_RAIDERS = {
        "Khornate Forces",
        "Slaanesh Forces",
        "Chem Lords",
        "Nurgle Horde",
        "Tyranid Swarm",
        "Tzeentch Cult"
    }

    SETTLEMENT_RAIDERS = true

    ALLOWED_SETTLEMENT_RAIDERS = {
        "Khornate Forces"
    }

end

--- CONFIG FOR rp_40k_hammerfall_undead ---

if not table.HasValue(EXTRA_ECON_MAPS, "rp_40k_hammerfall_undead") then
    table.insert(EXTRA_ECON_MAPS, "rp_40k_hammerfall_undead")
end

if map == "rp_40k_hammerfall_undead" then


    SETTLEMENT_RAIDERS = false


    --GLOBAL DUNGEON CONFIG--
    MAX_ACTIVE_DUNGEONS = 1
    GLOBAL_UNINFESTED_BOTS = 0
    MAX_LOOT_ITEMS = 10
    LOOT_DESPAWN_TIME = 1800 -- 30 minutes

    -- WASTELAND ENCOUNTERS --

    ENCOUNTER_BOT_LIMITS[50] = 0 -- 50 players = 13 bots
    ENCOUNTER_BOT_LIMITS[40] = 0 -- 40 players = 15 bots
    ENCOUNTER_BOT_LIMITS[30] = 0 -- 30 players = 20 bots
    ENCOUNTER_BOT_LIMITS[20] = 0 -- 20 players or below = 25 bots
    ENCOUNTER_BOT_LIMITS[10] = 0 -- 10 players or below = 30 bots

    -- RAW RESOURCES

    RAW_RESOURCES = {
        ["scrap"] = "item_410730",
        ["raw_food"] = "item_707836",
        ["preserved_food"] = "item_537656",
        ["amenities"] = "item_296725",
        ["cargo"] = "item_417492",
        ["mechanical_tools"] = "item_376421",
        ["machine_parts"] = "item_339128"
    }

    RAW_RESOURCES_RESILIENCE = {
        ["item_707836"] = 500000, -- raw_food
        ["item_410730"] = 250000, -- scrap
        ["item_537656"] = 200000, -- processed_food
        ["item_296725"] = 100000, -- amenities
        ["item_417492"] = 500000, -- cargo
        ["item_376421"] = 250000, -- mechanical_tools
        ["item_339128"] = 200000, -- machine_parts
    }

    RAW_RESOURCES_LOOT_TABLE = {
        "item_410730", -- scrap
        "item_707836", -- raw_food
        "item_339128", -- machine_parts
        "item_417492" -- cargo
    }
    SETTLEMENT_INFO["The Upper Decks"] = {
        Name = "The Upper Decks",
        Description = "Officers of the Navis Imperialis and personnel of status manage and administer ship operations and the many amenities aboard the Hammerfall.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Mess Officer",
            TraderModel = "models/krig_commissar.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4, [1] = 1, [2] = 1, [5] = 4},
            SpawnPoint = {
                Pos = Vector(136.03, 1780.60, -1788.97),
                Ang = Angle(1.91, 178.37, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(418.43, 1060.58, -1723.22),
            Ang = Angle(-0.01, 89.84, 0.00)
        },
        ProductionMethod = {
            Name = "Officers of the Hammerfall",
            Description = "The Men and Women of the Navis Imperialis fulfill a number of critical roles aboard the Hammerfall, from cooks producing better food for the crew, to officers maintaining the amenities needed to keep morale high across the decks. They are pompous in there demeanor and take pride in their work, and will refuse to work if they do not have amenities themselves.",
            Consumption = {
                ["raw_food"] = 100,
                ["machine_parts"] = 20,
                ["cargo"] = 10,
                ["amenities"] = 25,
            },
            Production = {
                ["preserved_food"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 300,
                    MaxStorage = 50000
                },
                ["scrap"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-933.541748, -8917.997070, -1740.033447),
                max = Vector(699.626099, 95.595421, -1724.968750)
            },
        },
        CoreNode = "settlement_core_1",
    }

    SETTLEMENT_INFO["The Lower Decks"] = {
        Name = "The Lower Decks",
        Description = "The Lower Decks are manned by the low-ranking workers of the Hammerfall, from engine operators, to personnel of the Cargo Bay.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Cargo Bay Quartermaster",
            TraderModel = "models/madorthene/navisimperialis2.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4 },
            SpawnPoint = {
                Pos = Vector(847.97, 3279.04, -1788.97),
                Ang = Angle(1.39, 179.60, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(536.656250, 3636.000000, -1724.281250),
            Ang = Angle(0.005, 0.110, 0.000)
        },
        ProductionMethod = {
            Name = "Hammerfall Cargo Bay Operations",
            Description = "The Cargo Bay, operated by low-ranking personnel under the oversight of the Navis Imperialis, is critical to the importation of supplies required for daily operations across the ship. Large quantities of pre-processed rations preserved for long-term transport, a wide variety of amenities, and vital machine parts and maintenance tools are first received here before being distributed throughout the vessel. Most are locked away in Crates that need to be opened in the Ships Manufactorum to be accessed.",
            Consumption = {
                ["machine_parts"] = 50,
                ["mechanical_tools"] = 50
            },
            Production = {
                ["cargo"] = {
                    Amount = 300,
                    MaxStorage = 300000
                },
                ["raw_food"] = {
                    Amount = 20,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 25,
                    MaxStorage = 50000
                },
                ["machine_parts"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
                ["mechanical_tools"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
                ["scrap"] = {
                    Amount = 75,
                    MaxStorage = 750000
                }
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-1372.515991, -8944.968750, -2412.968750),
                max = Vector(991.968750, 8788.261719, -2075.412354)
            },
        },
        CoreNode = "settlement_core_2",
    }

    SETTLEMENT_INFO["The Lower Manufactorum"] = {
        Name = "The Lower Manufactorum",
        Description = "A sprawling industrial complex where scrap and cargo are processed by low-ranking workers whom toil endlessly in the heat and noise of the Manufactorum.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Lower Manufactorum Overseer",
            TraderModel = "models/dizcordum/civ/workers/civ_male.mdl",
            BodyGroups = { [0] = 0, [0] = 0, [0] = 0 },
            SpawnPoint = {
                Pos = Vector(4527.44, -1804.72, -2620.97),
                Ang = Angle(0.00, -90.00, 0.0)
            }
        },
        WorkBench = {
            Pos = Vector(4500.12, -2243.49, -2556.85),
            Ang = Angle(0, 90, 0.00)
        },
        ProductionMethod = {
            Name = "The Manufactorum",
            Description = "The Manufactorum is a vast industrial complex where scrap and cargo are processed into usable materials and goods. Workers toil tirelessly to open locked Cargo Crates, and extract the needed resources to keep the ship running. They are also responsible for recycling and repurposing scrap and junk produced across the ship into usable materials to extract every last bit of value from the limited resources available.",
            Consumption = {
                ["cargo"] = 100,
                ["scrap"] = 50
            },
            Production = {
                ["mechanical_tools"] = {
                    Amount = 200,
                    MaxStorage = 500000
                },
                ["machine_parts"] = {
                    Amount = 450,
                    MaxStorage = 500000
                },
                ["raw_food"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 50,
                    MaxStorage = 50000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(3585.943604, -8367.968750, -2572.968750),
                max = Vector(7683.968750, -3884.295654, -1928.039673)
            },
        },
        CoreNode = "settlement_core_3",
    }

    EXTERNAL_MARKETS["Imperial Tithe"] = {
        Name = "Imperial Tithe",
        Description = "The Imperium forever demands its due. Worlds whom fail fulfill their tithes (stock is in the +) will face Imperial Tithe Collectors who will take what is owed without payment. Ensure the Tithe is fulfilled to avoid Tithe Collectors and to maintain good standing with the wider Imperium.",
        SellModifier = 0.9, -- Players sell at 90% of base price into this market
        MarketNode = "imperium_tithe_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/tithe.png",
    }

    EXTERNAL_MARKETS["The Cargo Bay"] = {
        Name = "The Cargo Bay",
        Description = "The Cargo Bay is a bustling hub of activity, where goods are loaded and unloaded from various vessels. This is managed by the Officers of the Navis Imperialis whom report directly to the Hammerfalls Master. Here, goods can be exported to other locations across the wider Imperium for Credits, this sometimes can be difficult and is therefore less effective.",
        SellModifier = 0.8, -- Players sell at 80% of base price into this market
        MarketNode = "lower_decks_shipping_yard_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/2.png",
        OwnerRole = "extra_market_1"
    }

    EXTERNAL_MARKETS["The Lower Decks"] = {
        Name = "The Lower Decks",
        Description = "Crime and Heresy breeds in the Lower Decks, with many of the lower decks inhabitants being outcasts, criminals, and heretics who have been exiled from the upper decks. They have their own black market that they use to trade goods and services with each other, and they are willing to pay a premium for goods that can be used in their illicit activities.",
        SellModifier = 1.1, -- Players sell at 110% of base price into this market
        MarketNode = "extra_market_2",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/image.png"
    }

    --- ALLOWED ECONOMIC BOTS TO RAID CARAVANS ---

    ALLOWED_CARAVAN_RAIDERS = {
        "Khornate Forces",
        "Slaanesh Forces",
        "Chem Lords",
        "Nurgle Horde",
        "Tzeentch Cult"
    }
    MURLOCK_DUNGEONS["Ships Sewers"] = MURLOCK_DUNGEONS["Hammerfall Sewers"] or {
        dungeon_node = "dungeon_core_node_1",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-1219.980835, -3880.810791, -2639.238525),
            max = Vector(1177.630127, -229.610016, -2004.733643)
        }
    }

    MURLOCK_DUNGEONS["External Ship"] = MURLOCK_DUNGEONS["External Ship"] or {
        dungeon_node = "dungeon_core_node_2",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(-11230.433594, -3865.860596, -1189.676392),
            max = Vector(-5292.690430, 8252.936523, 1196.168457)
        }
    }

    INFLUENCE_MAIN_MAP_GAMEMODE = true
    BOT_SETTLEMENT_MAP["HigherHiveCitizen"] = "The Upper Decks"
    BOT_SETTLEMENT_MAP["LowerHiveCitizen"] = "The Lower Decks"
    BOT_SETTLEMENT_MAP["OuterHiveCitizen"] = "The Lower Manufactorum"
    

end

--- CONFIG FOR necromunda_v1 ---

if not table.HasValue(EXTRA_ECON_MAPS, "necromunda_v1") then
    table.insert(EXTRA_ECON_MAPS, "necromunda_v1")
end

if map == "necromunda_v1" then


    SETTLEMENT_RAIDERS = false


    --GLOBAL DUNGEON CONFIG--
    MAX_ACTIVE_DUNGEONS = 0 -- if two make 1
    GLOBAL_UNINFESTED_BOTS = 0
    MAX_LOOT_ITEMS = 0 -- 10
    LOOT_DESPAWN_TIME = 0 -- 1800 = 30 minutes

    -- WASTELAND ENCOUNTERS --

    ENCOUNTER_BOT_LIMITS[50] = 0 -- 50 players = 13 bots
    ENCOUNTER_BOT_LIMITS[40] = 0 -- 40 players = 15 bots
    ENCOUNTER_BOT_LIMITS[30] = 0 -- 30 players = 20 bots
    ENCOUNTER_BOT_LIMITS[20] = 0 -- 20 players or below = 25 bots
    ENCOUNTER_BOT_LIMITS[10] = 0 -- 10 players or below = 30 bots

    -- RAW RESOURCES

    RAW_RESOURCES = {
        ["scrap"] = "item_410730",
        ["raw_food"] = "item_707836",
        ["preserved_food"] = "item_537656",
        ["amenities"] = "item_296725",
        ["cargo"] = "item_417492",
        ["mechanical_tools"] = "item_376421",
        ["machine_parts"] = "item_339128"
    }

    RAW_RESOURCES_RESILIENCE = {
        ["item_707836"] = 500000, -- raw_food
        ["item_410730"] = 250000, -- scrap
        ["item_537656"] = 200000, -- processed_food
        ["item_296725"] = 100000, -- amenities
        ["item_417492"] = 500000, -- cargo
        ["item_376421"] = 250000, -- mechanical_tools
        ["item_339128"] = 200000, -- machine_parts
    }

    RAW_RESOURCES_LOOT_TABLE = {
        "item_410730", -- scrap
        "item_707836", -- raw_food
        "item_339128", -- machine_parts
        "item_417492" -- cargo
    }
    SETTLEMENT_INFO["The Upper Hive"] = {
        Name = "The Upper Hive",
        Description = "The Upper Hive is the domain of the higher in class citizens of Necromunda.It is where the planet’s wealthy nobility, senior administrators, and top industrial managers live in relative comfort, with far more space, power, and privilege than those below. Separated from the lower hive by heavily guarded barriers, it is a world of political influence, trade, and constant intrigue, protected from much of the violence and decay that define the depths beneath.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Head Market Administrator",
            TraderModel = "models/wk/comm/wk_comm.mdl",
            BodyGroups = { [6] = 5, [3] = 2, [4] = 4, [1] = 1, [2] = 1, [5] = 4},
            SpawnPoint = {
                Pos = Vector(-3006.73, 12297.03, 10856.03),
                Ang = Angle(1.07, 90.80, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(-3048.18, 12711.55, 10919.34),
            Ang = Angle(0.00, -90.00, 0.00)
        },
        ProductionMethod = {
            Name = "Upper Hive Domestic Production",
            Description = "The Upper Hive is responsible for producing a significant portion of the food and amenities consumed across the ship, as well as some machine parts and scrap that are produced as byproducts of their domestic activities. The wealthy citizens of the Upper Hive have a high demand for quality food and amenities, which drives much of the production in this area. Additionally, the maintenance of their luxurious living spaces and advanced machinery generates a steady output of scrap and machine parts that are essential for the functioning of the ship.",
            Consumption = {
                ["raw_food"] = 100,
                ["machine_parts"] = 20,
                ["cargo"] = 10,
                ["amenities"] = 25,
            },
            Production = {
                ["preserved_food"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 300,
                    MaxStorage = 50000
                },
                ["scrap"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-6533.711426, 9886.348633, 10795.590820),
                max = Vector(-1656.047607, 13668.430664, 12010.702148)
            },
        },
        CoreNode = "settlement_core_1",
    }

    SETTLEMENT_INFO["The Lower Hive"] = {
        Name = "The Lower Hive",
        Description = "The Lower Hive is an area that serves as the primary residence for the working-class citizens of Necromunda. It is a labyrinthine network of cramped living quarters and bustling markets where the majority of the planet’s labor force resides. The Lower Hive is characterized by its stark contrast to the Upper Hive, with its overcrowded conditions, limited resources, and constant struggle for survival.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Adeptus Administratum Quartermaster",
            TraderModel = "models/wk/adeptus_mechanicus/wk_am_hypaspists_alpha.mdl",
            BodyGroups = {},
            SpawnPoint = {
                Pos = Vector(-5495.51, 2527.45, 7949.03),
                Ang = Angle(0.00, 180.00, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(-5422.95, 2940.59, 8020.02),
            Ang = Angle(0.00, -90.00, 0.00)
        },
        ProductionMethod = {
            Name = "Adeptus Administratum Sanctioned Lower Hive Production",
            Description = "The Adeptus Administratum oversees a portion of the production in the Lower Hive, sanctioning certain workshops and facilities to produce essential goods for the Lower Hives. These sanctioned producers focus on creating a variety of goods that are in high demand among the working-class citizens of the Lower Hive, as well as providing some materials that are necessary for the functioning of the Lower Hives. The production in this area is more focused on meeting the basic needs of the population, with an emphasis on affordability and accessibility.",
            Consumption = {
                ["cargo"] = 100,
                ["scrap"] = 50
            },
            Production = {
                ["mechanical_tools"] = {
                    Amount = 200,
                    MaxStorage = 500000
                },
                ["machine_parts"] = {
                    Amount = 450,
                    MaxStorage = 500000
                },
                ["raw_food"] = {
                    Amount = 200,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 50,
                    MaxStorage = 50000
                },
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-8202.344727, -5135.746094, 7733.286133),
                max = Vector(-2052.551758, 3536.532715, 9839.038086)
            },
        },
        CoreNode = "settlement_core_2",
    }

    SETTLEMENT_INFO["The Outer Hives"] = {
        Name = "The Outer Hives",
        Description = "The Outer Hives are a sprawling network of industrial zones, salvage yards, and freight depots that serve as the primary hubs for the processing and distribution of goods across Necromunda. The Outer Hives are responsible for a significant portion of the planet’s production, particularly in terms of machine parts, mechanical tools, and scrap that are salvaged from the various wrecks and derelict structures scattered across the planet. The Outer Hives also play a crucial role in the transportation and distribution of goods to the Upper and Lower Hives, as well as to other locations across the wider Imperium.",
        Type = "major",
        CanManageInventory = false,
        CanWithDrawCaps = false,
        Picture = "",
        Trader = {
            Name = "Frieght Master",
            TraderModel = "models/wk/jackswan/scion/scion_tempestor_prime.mdl",
            BodyGroups = { [0] = 0, [0] = 0, [0] = 0 },
            SpawnPoint = {
                Pos = Vector(-6089.18, -10806.98, 7437.03),
                Ang = Angle(0.00, 1.00, 0.00)
            }
        },
        WorkBench = {
            Pos = Vector(-6026.38, -11074.50, 7478.42),
            Ang = Angle(0.00, 90.00, 0.00)
        },
        ProductionMethod = {
            Name = "The Outer Hives Freight and Salvage Operations",
            Description = "The Outer Hives are a sprawling network of industrial zones, salvage yards, and freight depots that serve as the primary hubs for the processing and distribution of goods across Necromunda. The Outer Hives are responsible for a significant portion of the planet’s production, particularly in terms of machine parts, mechanical tools, and scrap that are salvaged from the various wrecks and derelict structures scattered across the planet. The Outer Hives also play a crucial role in the transportation and distribution of goods to the Upper and Lower Hives, as well as to other locations across the wider Imperium.",
            Consumption = {
                ["machine_parts"] = 50,
                ["mechanical_tools"] = 50
            },
            Production = {
                ["cargo"] = {
                    Amount = 300,
                    MaxStorage = 300000
                },
                ["raw_food"] = {
                    Amount = 20,
                    MaxStorage = 100000
                },
                ["amenities"] = {
                    Amount = 25,
                    MaxStorage = 50000
                },
                ["machine_parts"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
                ["mechanical_tools"] = {
                    Amount = 25,
                    MaxStorage = 250000
                },
                ["scrap"] = {
                    Amount = 75,
                    MaxStorage = 750000
                }
            }
        },
        SettlementBounderies = {
            {
                min = Vector(-7949.968750, -11112.874023, 7501.031250),
                max = Vector(-3178.354004, -6716.566406, 8316.560547)
            },
        },
        CoreNode = "settlement_core_3",
    }

    EXTERNAL_MARKETS["Imperial Tithe"] = {
        Name = "Imperial Tithe",
        Description = "The Imperium forever demands its due. Worlds whom fail fulfill their tithes (stock is in the +) will face Imperial Tithe Collectors who will take what is owed without payment. Ensure the Tithe is fulfilled to avoid Tithe Collectors and to maintain good standing with the wider Imperium.",
        SellModifier = 0.9, -- Players sell at 90% of base price into this market
        MarketNode = "imperium_tithe_market",
        Picture = "https://www.imperiumgaming.net/40k/fantasy/pictures/tithe.png",
    }

    EXTERNAL_MARKETS["The Cargo Bay"] = {
        Name = "The Cargo Bay",
        Description = "The Cargo Bay is a bustling hub of trade and commerce within the Outer Hives, where a wide variety of goods are bought and sold by merchants, traders, and scavengers. The market is known for its diverse selection of items, ranging from raw materials and industrial equipment to rare artifacts and contraband. The Cargo Bay serves as a critical link in the supply chain of Necromunda, facilitating the exchange of goods between the Outer Hives and other locations across the planet, as well as with off-world traders and buyers.",
        SellModifier = 1.0, -- Players sell at 100% of base price into this market
        MarketNode = "cargo_bay_market",
        Picture = "",
        OwnerRole = "extra_market_1"
    }

    EXTERNAL_MARKETS["The Lower Hive Networks"] = {
        Name = "The Lower Hive Networks",
        Description = "The Lower Hive Networks are a complex web of underground markets and trading hubs that operate within the Lower Hive, where a wide variety of goods are bought and sold by the working-class citizens of Necromunda. The market is known for its affordability and accessibility, with a focus on meeting the basic needs of the population. The Lower Hive Networks serve as a critical resource for the residents of the Lower Hive, providing access to essential goods and services that are often difficult to obtain through official channels.",
        SellModifier = 1.1, -- Players sell at 110% of base price into this market
        MarketNode = "extra_market_2",
        Picture = ""
    }

    --- ALLOWED ECONOMIC BOTS TO RAID CARAVANS ---

    ALLOWED_CARAVAN_RAIDERS = {
        "Khornate Forces",
        "Slaanesh Forces",
        "Chem Lords",
        "Nurgle Horde",
        "Tzeentch Cult"
    }
    MURLOCK_DUNGEONS[""] = MURLOCK_DUNGEONS[""] or {
        dungeon_node = "dungeon_core_node_1",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(),
            max = Vector()
        }
    }

    MURLOCK_DUNGEONS[""] = MURLOCK_DUNGEONS[""] or {
        dungeon_node = "",
        active = false,
        health = 0,
        cooldown = 0,
        infestation = "none",
        Bounderies = {
            min = Vector(),
            max = Vector()
        }
    }

    INFLUENCE_MAIN_MAP_GAMEMODE = true
    BOT_SETTLEMENT_MAP["HigherHiveCitizen"] = "The Upper Hives"
    BOT_SETTLEMENT_MAP["LowerHiveCitizen"] = "The Lower Hives"
    BOT_SETTLEMENT_MAP["OuterHiveCitizen"] = "The Outer Hives"
    

end
