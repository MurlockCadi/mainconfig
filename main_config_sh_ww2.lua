-- Server
imperium_rp_font = "Bahnschrift"
gamemode_name = "WW2 Axis VS Allies RP"
CHARACTER_SLOTS = 5

-- Loading messages
configTexts = {
    "The Allies stand at the borders of the Reich.",
    "Hold the line. Watch the roads. Take the objectives.",
    "Every week the front moves. Every battle decides where.",
    "Trust your NCOs. Listen to your officers. Keep your ammunition close.",
    "The Western Front will be decided in mud, frost and steel."
}

-- Maps
mapMessage_defualt = "The Western Front | Europe"
MAIN_MAP = "rnl_ardennes"
mapMessages = {
    ["rnl_ardennes"] = "The Ardennes | Belgium",
    ["rnl_adenau"] = "Adenau | The Eifel, Germany",
    ["rp_lapadite_2"] = "French Countryside | Western Front",
    ["rp_falaise_td"] = "Falaise | Normandy",
    ["gm_eglise_rp"] = "Belgian Village | Western Front",
    ["gm_rhine"] = "The Rhine | Germany",
    ["rp_1944rpgtown_v2a"] = "Rhineland Town | Western Germany"
}

-- Intro media
intro_image_urls = {
    "https://www.imperiumgaming.net/ww2photos/1.jpg",
    "https://www.imperiumgaming.net/ww2photos/2.png",
    "https://www.imperiumgaming.net/ww2photos/4.png",
    "https://www.imperiumgaming.net/ww2photos/5.jpg",
    "https://www.imperiumgaming.net/ww2photos/6.jpg",
    "https://www.imperiumgaming.net/ww2photos/7.jpg",
    "https://www.imperiumgaming.net/ww2photos/8.jpg",
    "https://www.imperiumgaming.net/ww2photos/9.jpg",
    "https://www.imperiumgaming.net/ww2photos/10.jpg",
    "https://www.imperiumgaming.net/ww2photos/11.jpg",
    "https://www.imperiumgaming.net/ww2photos/12.jpg",
    "https://www.imperiumgaming.net/ww2photos/13.jpg",
    "https://www.imperiumgaming.net/ww2photos/14.jpg",
    "https://www.imperiumgaming.net/ww2photos/15.png",
    "https://www.imperiumgaming.net/ww2photos/16.png",
    "https://www.imperiumgaming.net/ww2photos/17.png",
    "https://www.imperiumgaming.net/ww2photos/18.png",
    "https://www.imperiumgaming.net/ww2photos/19.png",
    "https://www.imperiumgaming.net/ww2photos/20.png",
    "https://www.imperiumgaming.net/ww2photos/21.png",
    "https://www.imperiumgaming.net/ww2photos/22.png",
    "https://www.imperiumgaming.net/ww2photos/23.png",
    "https://www.imperiumgaming.net/ww2photos/24.png",
    "https://www.imperiumgaming.net/ww2photos/25.png",
    "https://www.imperiumgaming.net/ww2photos/26.png",
    "https://www.imperiumgaming.net/ww2photos/27.png",
    "https://www.imperiumgaming.net/ww2photos/28.png",
    "https://www.imperiumgaming.net/ww2photos/29.png",
    "https://www.imperiumgaming.net/ww2photos/30.png",
    "https://www.imperiumgaming.net/ww2photos/31.jpg",
    "https://www.imperiumgaming.net/ww2photos/32.jpg",
    "https://www.imperiumgaming.net/ww2photos/33.jpg"
}
intro_background_interval = 24
intro_background_fade = 2
intro_background_darkness = 145
intro_songs = { "https://www.imperiumgaming.net/ww2avatheme/ww2avatheme1.mp3", "https://www.imperiumgaming.net/ww2avatheme/ww2avatheme2.mp3" }

-- Character introduction
character_intro = {
    Enabled = true,
    DefaultImage = "https://www.imperiumgaming.net/ww2photos/26.png",
    MusicURL = "https://www.imperiumgaming.net/ww2missionsongs/finalstrike.mp3",
    PreloadFirstImage = true,
    PreserveMusicUntilSkip = true,
    Stages = {
        { Image = "https://www.imperiumgaming.net/ww2photos/26.png", Duration = 12, Lines = {
            { Text = "THE WESTERN FRONT", At = 0.65, Color = Color(218, 195, 143) },
            { Text = "Allied Forces have landed in Western Europe to liberate it from Nazi control.", At = 2.8 },
            { Text = "The Reich is on the defensive, facing the full might of the Allied Liberation Force.", At = 6.1 }
        } },
        { Image = "https://www.imperiumgaming.net/ww2photos/21.png", Duration = 12, Lines = {
            { Text = "DEATH BEFORE DISHONOR", At = 0.65, Color = Color(218, 195, 143) },
            { Text = "Germany throws its last reserves into the line. Cowards are hanged, deserters shot.", At = 3.0 },
            { Text = "They fight with the knowledge that defeat is near, but duty has been drilled into them.", At = 6.2 }
        } },
        { Image = "https://www.imperiumgaming.net/ww2photos/25.png", Duration = 12, Lines = {
            { Text = "ENDSIEG", At = 0.65, Color = Color(218, 195, 143) },
            { Text = "The Talk of Final Victory echoes through the ranks, of the great battle to come.", At = 2.8 },
            { Text = "It is the final stand of the Reich, blood will be spilled on the fields of Europe one last time.", At = 6.2, Color = Color(218, 195, 143) }
        } }
    }
}

-- Vehicles
VEHICLE_LIMITS = {
    { players = 40, Armour = 4, Transport = 3 },
    { players = 30, Armour = 4, Transport = 4 },
    { players = 20, Armour = 5, Transport = 4 },
    { players = 10, Armour = 5, Transport = 5 },
    { players = 0,  Armour = 6, Transport = 5 },
}
VEHICLE_LIMIT_ARMOUR = { "Light Tanks", "Light Medium Tanks", "Medium Tanks", "Heavy Tanks", "Super Heavy Tanks", "Tank Destroyers", "Armed Mechanized Vehicles" }

VEHICLE_ENEMY_MINIMUM = {
    ["Super Heavy Tanks"]  = 15,
    ["Heavy Tanks"]        = 15,
    ["Medium Tanks"]       = 10,
    ["Light Medium Tanks"] = 10,
    ["Light Tanks"]        = 10,
    ["Tank Destroyers"]    = 10,
}

TANK_CREW = { Enabled = true, Types = { "Light Tanks", "Light Medium Tanks", "Medium Tanks", "Heavy Tanks", "Super Heavy Tanks", "Tank Destroyers" } }

VEHICLE_WRECK_TIME = 120

-- Salvage
SALVAGE = {
    Time = 8, -- seconds
    Range = 200, -- units
    QM = 100,
    Supply = {
        ["Super Heavy Tanks"] = 250, ["Heavy Tanks"] = 150, ["Medium Tanks"] = 100, ["Light Medium Tanks"] = 80,
        ["Tank Destroyers"] = 80, ["Light Tanks"] = 60, ["Armed Mechanized Vehicles"] = 50, ["Mechanized Vehicles"] = 40,
        ["Mobile Outpost"] = 40, Default = 20,
    },
}

-- Tank camera
TANK_CAMERA = { Smoothing = 0.25 }

-- Vehicle cooldowns
RESPAWN_TIMERS_IMPERIUMRP = {
    ["Small Vehicles"]            = 60,
    ["Motorcycles"]               = 60,
    ["Trucks"]                    = 60,
    ["Mechanized Vehicles"]       = 250,
    ["Armed Mechanized Vehicles"] = 360,
    ["Light Tanks"]               = 500,
    ["Light Medium Tanks"]        = 750,
    ["Tank Destroyers"]           = 800,
    ["Medium Tanks"]              = 950,
    ["Heavy Tanks"]               = 1900,
    ["Super Heavy Tanks"]         = 3600,
    ["Mobile Outpost"]            = 500,
    ["Horses"]                    = 60,
    ["Small Vehicle"]             = 300,
    ["Heavy Emplacement"]         = 180,
    ["Light Vehicle"]             = 600,
    ["Heavy Vehicle"]             = 900,
}
FIXED_VEHICLE_COOLDOWNS = { ["Super Heavy Tanks"] = true }

-- Vehicle damage
VEHICLE_DAMAGE = {
    Rocket = 1500,
    Hits = {
        ["Super Heavy Tanks"]         = 10,
        ["Heavy Tanks"]               = 6,
        ["Medium Tanks"]              = 4,
        ["Light Medium Tanks"]        = 3,
        ["Tank Destroyers"]           = 3,
        ["Light Tanks"]               = 2,
        ["Armed Mechanized Vehicles"] = 2,
        ["Mechanized Vehicles"]       = 2,
        ["Mobile Outpost"]            = 2,
        ["Trucks"]                    = 1,
        ["Small Vehicles"]            = 1,
        ["Motorcycles"]               = 1,
    },
    Guns = {
        MinDamage = 1000,
        ["Super Heavy Tanks"]         = 3,
        ["Heavy Tanks"]               = 2.6,
        ["Tank Destroyers"]           = 2.6,
        ["Medium Tanks"]              = 1.5,
        ["Light Medium Tanks"]        = 1.2,
        ["Armed Mechanized Vehicles"] = 1.4,
        ["Light Tanks"]               = 0.8,
    },
    RocketHits = {
        ["Super Heavy Tanks"]         = 8,
        ["Heavy Tanks"]               = 4,
        ["Medium Tanks"]              = 3,
        ["Light Medium Tanks"]        = 2,
        ["Tank Destroyers"]           = 2,
        ["Light Tanks"]               = 1,
        ["Armed Mechanized Vehicles"] = 1,
        ["Mechanized Vehicles"]       = 1,
        ["Mobile Outpost"]            = 2,
        ["Trucks"]                    = 1,
        ["Small Vehicles"]            = 1,
        ["Motorcycles"]               = 1,
    },
    HE = {
        ["Super Heavy Tanks"]         = 0.75,
        ["Heavy Tanks"]               = 0.65,
        ["Tank Destroyers"]           = 0.5,
        ["Medium Tanks"]              = 0.6,
        ["Armed Mechanized Vehicles"] = 0.6,
    },
    Fire = 2,
}

-- Anti-tank rockets
AT_ROCKETS = {
    VehicleDamage = 1500,
    Splash = 250,
    Radius = 200, -- units
    Gravity = 300,
}

-- Supply
SUPPLY = {
    Max = 5000,
    PerSecond = 1,
    OutsidePerSecond = 20,
    OperationStart = 300,
    CaptureBonus = 60,
    KillBonus = 1,
    TimerSkip = 1,
}
ORGANIZATION_MULTIPLIER = 0.5

-- Vehicle Spawner
VEHICLE_SPAWN_GAP = 150

VEHICLE_SPAWNER = {
    allies = {
        { name = "Willys MB", entityname = "lvs_wheeldrive_dodwillyjeep", type = "Small Vehicles", description = "The iconic Willys jeep. Fast, nimble and reliable on any ground. Three seats.", certs = { "Logistics", "Engineer" } },
        { name = "Willys MB (M1919)", entityname = "lvs_wheeldrive_dodwillyjeep_mg", type = "Small Vehicles", description = "Willys jeep with a .30 cal on a pintle mount.", certs = { "Logistics" } },
        { name = "GMC CCKW", entityname = "lvs_wheeldrive_gmc", type = "Trucks", description = "The deuce and a half. A 6x6 transport and the backbone of Allied logistics.", certs = { "Logistics" } },
        { name = "Universal Carrier", entityname = "lvs_wheeldrive_uc_bren", type = "Mechanized Vehicles", roles = { "DIVISION_50TH" }, description = "Light tracked carrier with a Bren gun. Quick across rough ground.", certs = { "Logistics", "Tanker" } },
        { name = "M3 Half-track", entityname = "lvs_wheeldrive_m3base", type = "Mechanized Vehicles", description = "Armoured personnel carrier for a whole squad, with a .50 cal on top.", certs = { "Tanker" } },
        { name = "M5 Half-track", entityname = "lvs_wheeldrive_dodhalftrack_us", type = "Armed Mechanized Vehicles", description = "Half-track with a turret-mounted machine gun.", certs = { "Tanker" } },
        { name = "M3 GMC", entityname = "lvs_wheeldrive_m3gmc", type = "Armed Mechanized Vehicles", description = "Half-track carrying a 75mm gun. Hits hard, but the crew is in the open.", enemyMinimum = 10, certs = { "Tanker", "Anti-Tank" } },
        { name = "M8 Greyhound", entityname = "lvs_wheeldrive_greyhound", type = "Armed Mechanized Vehicles", description = "Scout and infantry support vehicle with a 37mm gun.", certs = { "Tanker" } },
        { name = "M10 Wolverine", entityname = "lvs_wheeldrive_m10", type = "Tank Destroyers", description = "Open-topped tank destroyer with a 3-inch gun.", certs = { "Tanker", "Anti-Tank" } },
        { name = "M36 Jackson", entityname = "lvs_wheeldrive_m36", type = "Tank Destroyers", description = "Tank destroyer with a 90mm gun that can take on the heaviest German armour.", certs = { "Tanker", "Anti-Tank" } },
        { name = "M4A1 Sherman", entityname = "lvs_wheeldrive_m4sherman", type = "Medium Tanks", description = "The versatile medium tank. Rounded hull and a 75mm gun.", certs = { "Tanker" } },
        { name = "M4A3E8 Sherman", entityname = "lvs_wheeldrive_m4a3e8", type = "Medium Tanks", description = "The Easy Eight. Improved suspension and a 76mm gun.", certs = { "Tanker" } },
        { name = "Sherman Firefly", entityname = "lvs_wheeldrive_sherman_firefly", type = "Medium Tanks", roles = { "DIVISION_50TH" }, description = "British Sherman with the 17-pounder, the best Allied tank gun of the war.", certs = { "Tanker" } },
        { name = "M4A3E2 Jumbo", entityname = "lvs_wheeldrive_jumbo", type = "Heavy Tanks", description = "Heavily armoured assault Sherman. Slow and tough, with a 76mm gun.", certs = { "Tanker" } },
        { name = "M26 Pershing", entityname = "lvs_wheeldrive_pershing", type = "Heavy Tanks", description = "Heavy tank with a 90mm gun, a match for the Tiger.", certs = { "Tanker" } },
        { name = "Crusader", entityname = "lvs_wheeldrive_crusader", type = "Light Medium Tanks", roles = { "DIVISION_50TH" }, description = "British cruiser tank. Fast and lightly armoured.", certs = { "Tanker" } },
        { name = "Cromwell", entityname = "lvs_wheeldrive_cromwell", type = "Medium Tanks", roles = { "DIVISION_50TH" }, description = "British cruiser tank with a 75mm gun. The fastest tank of its day.", certs = { "Tanker" } },
        { name = "Churchill", entityname = "lvs_wheeldrive_churchill", type = "Heavy Tanks", roles = { "DIVISION_50TH" }, description = "British infantry tank. Very slow, very thick armour.", certs = { "Tanker" } },

        { name = "Mobile Outpost", entityname = "lvs_wheeldrive_m3solo", type = "Mobile Outpost", MobileOutpost = true, outpostOffset = Vector(-125, 0, 34), outpostAngle = Angle(0, 180, 0), description = "Half-track carrying a Mobile Outpost. Soldiers deploy onto it from the Respawn Radio while it has supply.", certs = { "Engineer", "Logistics", "Tanker" } },
    },

    axis = {
        { name = "Kübelwagen", entityname = "lvs_wheeldrive_dodkuebelwagen", type = "Small Vehicles", description = "Simple, reliable utility car. Four seats.", certs = { "Logistics", "Engineer" } },
        { name = "Kübelwagen (MG34)", entityname = "lvs_wheeldrive_dodkuebelwagen_mg", type = "Small Vehicles", description = "Kübelwagen with an MG34 on a pintle mount.", certs = { "Logistics" } },
        { name = "BMW R75", entityname = "lvs_wheeldrive_bmw_r75", type = "Motorcycles", description = "The famous BMW R75. Fast and reliable.", certs = { "Logistics" } },
        { name = "Opel Blitz", entityname = "lvs_wheeldrive_opelblitz", type = "Trucks", description = "The standard German army truck. Versatile transport with a three ton payload.", certs = { "Logistics" } },
        { name = "Mercedes G4", entityname = "lvs_wheeldrive_generalcar", type = "Trucks", description = "Six-wheeled staff car. Six seats.", certs = { "Logistics" } },
        { name = "Sd.Kfz. 250", entityname = "lvs_wheeldrive_sdkfz250", type = "Mechanized Vehicles", description = "Light half-track for a section, with an MG34.", certs = { "Tanker" } },
        { name = "Sd.Kfz. 251", entityname = "lvs_wheeldrive_sdkfz251_infantry", type = "Mechanized Vehicles", description = "The armoured troop carrier. Room for a squad, with an MG on top.", certs = { "Tanker" } },
        { name = "Sd.Kfz. 222", entityname = "lvs_wheeldrive_dodspaehwagen", type = "Armed Mechanized Vehicles", description = "Light armoured car with a 20mm cannon.", certs = { "Tanker" } },
        { name = "Sd.Kfz. 251/22", entityname = "lvs_wheeldrive_sdkfz251_pak", type = "Armed Mechanized Vehicles", description = "Half-track carrying a Pak 40. Hits hard, but the crew is in the open.", enemyMinimum = 10, certs = { "Tanker", "Anti-Tank" } },
        { name = "Sd.Kfz. 234 Puma", entityname = "lvs_wheeldrive_puma", type = "Armed Mechanized Vehicles", description = "Fast eight-wheeled armoured car with a 50mm gun.", certs = { "Tanker" } },
        { name = "Panzer II C", entityname = "lvs_wheeldrive_pz2c", type = "Light Medium Tanks", description = "Light tank with a 20mm cannon.", certs = { "Tanker" } },
        { name = "StuG IV", entityname = "lvs_wheeldrive_stug4", type = "Tank Destroyers", description = "Low assault gun with a long 75mm gun.", certs = { "Tanker", "Anti-Tank" } },
        { name = "Jagdpanther", entityname = "lvs_wheeldrive_jagdpanther", type = "Tank Destroyers", description = "Panther chassis with a long 88mm gun. Deadly at range.", certs = { "Tanker", "Anti-Tank" } },
        { name = "Panzer IV F2", entityname = "lvs_wheeldrive_pz4f2", type = "Medium Tanks", description = "The workhorse, with a long high-velocity 75mm gun.", certs = { "Tanker" } },
        { name = "Panther G", entityname = "lvs_wheeldrive_panther", type = "Medium Tanks", description = "Sloped armour and a high-velocity 75mm gun.", certs = { "Tanker" } },
        { name = "Tiger I", entityname = "lvs_wheeldrive_tiger", type = "Heavy Tanks", description = "The iconic heavy tank. Thick armour and a powerful 88mm gun.", certs = { "Tanker" } },
        { name = "Tiger II", entityname = "lvs_wheeldrive_tiger2", type = "Heavy Tanks", description = "The King Tiger. The heaviest armour and the long 88mm gun.", certs = { "Tanker" } },
        { name = "Maus", entityname = "lvs_wheeldrive_maus", type = "Super Heavy Tanks", description = "Super-heavy tank with a 128mm and a coaxial 75mm gun. Very slow, nearly impenetrable.", certs = { "Tanker" } },

        { name = "Mobile Outpost", entityname = "lvs_wheeldrive_sdkfz250", type = "Mobile Outpost", MobileOutpost = true, outpostOffset = Vector(-98, 0, 32), outpostAngle = Angle(0, 180, 0), description = "Light half-track (Sd.Kfz. 250) carrying a Mobile Outpost. Soldiers deploy onto it from the Respawn Radio while it has supply.", certs = { "Engineer", "Logistics", "Tanker" } },
    }
}

-- Equipment
ENTITY_SPAWNER_LIMIT = 4
SMALL_AMMO_BOX = { Uses = 4, Model = "models/items/supply_chest.mdl", Scale = 0.6, Health = 40 }
ENTITY_SPAWNER = {
    allies = {
        { name = "Ammo Supplies", entityname = "universal_ammo_small", type = "Ammo", model = "models/items/supply_chest.mdl", description = "Ten resupplies for the squad. Handle with care: very explosive.", certs = { "Logistics", "Engineer" } },
        { name = "Small Ammo Box", entityname = "universal_ammo_box", type = "Ammo Box", model = "models/items/supply_chest.mdl", description = "A few resupplies for you and the men around you.", certs = { "Rifleman" } },
        { name = "Medical Box", entityname = "medic_box", type = "Medic Box", model = "models/props/cs_militia/footlocker01_closed.mdl", description = "Lets soldiers patch themselves up.", certs = { "Medic" } },
        { name = "37mm Bofors", entityname = "lvs_trailer_wz36", type = "Anti-Tank Gun", model = "models/diggercars/cannons/wz36.mdl", description = "Light anti-tank gun. Good against armoured cars and light tanks.", certs = { "Anti-Tank" } },
        { name = "75mm M1897", entityname = "lvs_trailer_75mle1897", type = "Anti-Tank Gun", model = "models/diggercars/cannons/75mle.mdl", description = "75mm field gun with armour-piercing and high-explosive shells.", certs = { "Anti-Tank" } },
        { name = "M2A1 105mm Howitzer", entityname = "lvs_m2a1", type = "Artillery", model = "models/stahl/ground/m2a1/m2a1.mdl", description = "105mm howitzer for breaking up grouped infantry and positions.", certs = { "Engineer" } },
        { name = "M2 Browning Tripod", entityname = "gred_emp_m2", type = "Machine Gun", model = "models/gredwitch/m2browning/m2_gun.mdl", description = "A .50 calibre machine gun on a tripod.", certs = { "Machine Gunner" } },
        { name = "Vickers Tripod", entityname = "gred_emp_vickers", type = "Machine Gun", model = "models/gredwitch/vickers/vickers_gun.mdl", description = "A water-cooled Vickers on a tripod.", certs = { "Machine Gunner" } },
        { name = "Radio", entityname = "newboombox", type = "Radio", model = "models/props_lab/citizenradio.mdl", description = "Play some music.", certs = { "Logistics", "Engineer", "Machine Gunner", "Medic" } },
    },
    axis = {
        { name = "Ammo Supplies", entityname = "universal_ammo_small", type = "Ammo", model = "models/items/supply_chest.mdl", description = "Ten resupplies for the squad. Handle with care: very explosive.", certs = { "Logistics", "Engineer" } },
        { name = "Small Ammo Box", entityname = "universal_ammo_box", type = "Ammo Box", model = "models/items/supply_chest.mdl", description = "A few resupplies for you and the men around you.", certs = { "Rifleman" } },
        { name = "Medical Box", entityname = "medic_box", type = "Medic Box", model = "models/props/cs_militia/footlocker01_closed.mdl", description = "Lets soldiers patch themselves up.", certs = { "Medic" } },
        { name = "7.5 cm Pak 40", entityname = "lvs_trailer_pak40", type = "Anti-Tank Gun", model = "models/blu/pak40.mdl", description = "The standard German anti-tank gun. Armour-piercing and high-explosive shells.", certs = { "Anti-Tank" } },
        { name = "8.8 cm Flak 37", entityname = "lvs_flak37", type = "Artillery", model = "models/gredwitch/flak37/flak37_base.mdl", description = "The eighty-eight. Long range and a very heavy shell.", certs = { "Engineer" } },
        { name = "10.5 cm K 331(f)", entityname = "lvs_trailer_schneider", type = "Artillery", model = "models/diggercars/cannons/schneider.mdl", description = "Captured French 105mm gun for breaking up grouped infantry and positions.", certs = { "Engineer" } },
        { name = "MG34 Tripod", entityname = "gred_emp_mg34", type = "Machine Gun", model = "models/gredwitch/mg34/mg34.mdl", scale = 1.15, description = "An MG34 on a tripod.", certs = { "Machine Gunner" } },
        { name = "MG42 Tripod", entityname = "gred_emp_mg42", type = "Machine Gun", model = "models/gredwitch/mg42/mg42_gun.mdl", scale = 1.15, description = "An MG42 on a tripod.", certs = { "Machine Gunner" } },
        { name = "Radio", entityname = "newboombox", type = "Radio", model = "models/props_lab/citizenradio.mdl", description = "Play some music.", certs = { "Logistics", "Engineer", "Machine Gunner", "Medic" } },
    }
}

-- Battle Plan
BATTLE_DOCTRINES = {
    {
        Key = "mechanized", Name = "Mechanized Warfare",
        Summary = "A new age of war: combined arms, armour, superior firepower and shock and awe. Think of the North African campaign.",
        Effects = {
            "Mobile Outposts: troops deploy from mechanized vehicles at the front. Stock them with supply to allow respawns",
            "Vehicle and equipment spawn timers are 50% shorter"
        },
        VehicleCooldown = 0.5, EntityCooldown = 0.5, MobileOutposts = true
    },
    {
        Key = "grand", Name = "Grand Battle Plan",
        Summary = "Defence in depth: a strong, stable line that makes calculated advances and spends manpower and supply wisely. Think of the Bulge, or the winter quarters before the Rhine.",
        Effects = {
            "Engineers can build a Command Post: a fortified forward spawn the enemy must cut off from supply or capture to destroy",
            "Start the operation with 600 supply instead of 300, and double supply generation"
        },
        SupplyGeneration = 2, StartSupply = 600, CommandPost = true
    },
    {
        Key = "mass", Name = "Mass Assault",
        Summary = "The queen of the battlefield, en masse. Persistent attacks by sheer numbers win through despite heavy losses. Think of Berlin.",
        Effects = {
            "Respawn timers are 50% shorter, which cancels out running out of manpower",
            "Deploy at the friendly objective two behind the front"
        },
        RespawnTime = 0.5, ForwardSpawn = true
    }
}
BATTLE_PLAN = {
    OperationRespawnTime = 10,
    ForwardSpawnBehind = 2,
    LocationRest = 2,
    MinConnections = 3,
    ResetDoctrinesAfterBattle = true,
    DoctrinesOutsideOperations = false,
    CommandPostOutsideOperations = true,
    ForwardSpawnOutsideOperations = true,
    Manpower = { Start = 500, Weekly = 250, Minimum = 250, Step = 50, DepletedRespawn = 2 },
    Supply = { Allies = { 3, 9 }, Axis = { 24 } }, -- Omaha Beach, Antwerp; Frankfurt
    EncircledRespawn = 1.25,
    EncircledSupply = 0.5,
    CampaignStart = { Year = 1944, Month = 11, Day = 1, RealStart = "2026-10-31" },
    Operation = { Day = "Saturday", Hour = 17, Minute = 0, BattleMinutes = 20, Zone = "ET", Auto = true, PrepMinutes = 15, WarningMinutes = 30, CaptureMinutes = 15, OvertimeMinutes = 15 }
}

-- Engineering
FORTIFICATION_COMBAT_DELAY = 30
FORTIFICATION_ENEMY_RANGE = 1000
FORTIFICATION_REFUND = 1
COMMAND_POST_COST = 300
COMMAND_POSTS = { Radius = 600, ObjectiveDistance = 1500, EnemyPostDistance = 2000, ContestedBy = 1, AttackRate = 2 }
FORTIFICATIONS = {
    { name = "Sandbags", model = "models/props_fortifications/sandbags_line1.mdl", category = "Sandbags", cost = 30, health = 5000 },
    { name = "Sandbags, Tall", model = "models/props_fortifications/sandbags_line1_tall.mdl", category = "Sandbags", cost = 35, health = 6000 },
    { name = "Sandbags, Wide", model = "models/props_fortifications/sandbags_line2.mdl", category = "Sandbags", cost = 45, health = 6000 },
    { name = "Sandbags, Wide and Tall", model = "models/props_fortifications/sandbags_line2_tall.mdl", category = "Sandbags", cost = 50, health = 7000 },
    { name = "Sandbag Corner", model = "models/props_fortifications/sandbags_corner1.mdl", category = "Sandbags", cost = 30, health = 5000 },
    { name = "Sandbag Corner, Tall", model = "models/props_fortifications/sandbags_corner1_tall.mdl", category = "Sandbags", cost = 35, health = 6000 },
    { name = "Sandbag Corner II", model = "models/props_fortifications/sandbags_corner2.mdl", category = "Sandbags", cost = 30, health = 5000 },
    { name = "Sandbag Corner II, Tall", model = "models/props_fortifications/sandbags_corner2_tall.mdl", category = "Sandbags", cost = 35, health = 6000 },
    { name = "Trench", model = "models/fortification collection/trench_straight.mdl", category = "Trenches", cost = 60, health = 10000 },
    { name = "Trench Corner", model = "models/fortification collection/trench_turn.mdl", category = "Trenches", cost = 60, health = 10000 },
    { name = "Trench T-Junction", model = "models/fortification collection/trench_end_corridor.mdl", category = "Trenches", cost = 60, health = 10000 },
    { name = "Trench Crossroads", model = "models/fortification collection/trench_4way.mdl", category = "Trenches", cost = 75, health = 10000 },
    { name = "Trench Bunker", model = "models/fortification collection/trench_free_a_double.mdl", category = "Trenches", cost = 100, health = 12000 },
    { name = "Small Bunker", model = "models/fortification collection/small_bunker1.mdl", category = "Bunkers", cost = 120, health = 14000 },
    { name = "Bunker", model = "models/props_phx/misc/bunker01.mdl", material = "models/props_wasteland/wood_fence01a", category = "Bunkers", cost = 120, health = 14000 },
    { name = "Tank Trap", model = "models/fortification collection/hedgehog_big.mdl", category = "Obstacles", cost = 40, health = 8000 },
    { name = "Dragon's Teeth", model = "models/fortification collection/dragons_teeth_small.mdl", category = "Obstacles", cost = 50, health = 12000 },
    { name = "Barbed Wire", model = "models/fortification collection/barbed_wire3.mdl", category = "Obstacles", cost = 20, health = 3000 },
    { name = "Barbed Fence", model = "models/fortification collection/barbed_wire2.mdl", category = "Obstacles", cost = 20, health = 3000 },
    { name = "Stone Wall", model = "models/props_fences/ah_stone_wall_256.mdl", category = "Walls", cost = 60, health = 10000 },
    { name = "Wooden Wall", model = "models/props_fences/gate02.mdl", category = "Walls", cost = 35, health = 4000 },
    { name = "Firing Door", model = "models/props_interior/s_door02.mdl", category = "Walls", cost = 35, health = 4000 },
    { name = "Concrete Tube", model = "models/props_trenches/r_concretetube.mdl", category = "Walls", cost = 45, health = 8000 },
    { name = "Hay Bale", model = "models/props_farm/ah_round_hay_bale001.mdl", category = "Walls", cost = 20, health = 2500 },
    { name = "Wooden Stairs", model = "models/hunter/misc/stair1x1.mdl", material = "models/props_wasteland/wood_fence01a", category = "Walls", cost = 15, health = 3000 },
}

-- Proximity chat
proximityDistance = 750

-- Bot health
function GetHealthByTotalPlayers()
    local TotalPlayers = #player.GetHumans()
    local health = 500
	if true then
		return 500
	end
    if TotalPlayers < 5 then
        health = 500
    elseif TotalPlayers < 10 then
        health = 1000
    elseif TotalPlayers < 20 then
        health = 2000
    elseif TotalPlayers < 30 then
        health = 4000
    elseif TotalPlayers < 40 then
        health = 5000
    elseif TotalPlayers < 50 then
        health = 6000
    end

    health = health * HEALTH_MULTIPLIER_BOTS
    return health
end

-- Equipment cooldowns
ENTITY_RESPAWN_TIMERS = {
    ["Ammo"] = 120,
    ["Ammo Box"] = 180,
    ["Machine Gun"] = 300,
    ["Artillery"] = 300,
    ["Anti-Tank Gun"] = 300,
    ["Medic Box"] = 120,
    ["Radio"] = 120,
    ["Turret"] = 120
}

-- VIP
VIP = {
    PackageMatch = "VIP",
    PackageIDs = {},
    ServerID = 1,
    Groups = {},
    RefreshMinutes = 5,
}

-- Experience and levels
XP_PER_LEVEL = 10000
KILL_XP = 100
KILL_SOUND = "killed.wav"
KILL_QM = 100
TESTING_MODE = true

function getXPForNextLevel(level)
    return XP_PER_LEVEL
end

-- Movement and health
WALK_SPEED = 140
RUN_SPEED = 300
MAX_SPEED = 500
JUMP_POWER = 240
MAX_HEALTH = 100
SLOW_WALK_SPEED = 80

function GetRunSpeed(athleticsLevel)
    return RUN_SPEED + athleticsLevel
end

-- Reviving and looting
REVIVE_TIME = 5
REVIVE_HEALTH = 100
REVIVE_GASP_SOUNDS = { "player/pl_pain5.wav", "player/pl_pain6.wav", "player/pl_pain7.wav" }
REVIVE_GASP_INTERVAL = 1
LOOT_TIME = 2
LOOT_QM = { Min = 25, Max = 75 }

-- Skills
SKILL_POINTS_PER_LEVEL = 1
SKILLSETS = {
    { Name = "Signals", Description = "Radios, and the men who keep them running.", Color = Color(126, 145, 158) },
    { Name = "Field Kitchen", Description = "From a mess tin of tea to a hot meal for the whole company.", Color = Color(196, 160, 96) },
}
SKILLS = {
    { Key = "radio_operator", Name = "Radio Operator", Skillset = "Signals", Points = 10, Weapon = "weapon_ww2_radio",
      Description = "You carry a field radio set of your own. Set it down anywhere and put on music for everyone around it. Setting it up somewhere new packs up the old one.",
      Gives = { "Only you and admins can change what your radio plays" } },
    { Key = "brewer", Name = "Brewer", Skillset = "Field Kitchen", Points = 10,
      Description = "You know your way around a field stove and a kettle. Tea and coffee for the lads, brewed properly." },
    { Key = "baker", Name = "Baker", Skillset = "Field Kitchen", Points = 10, Requires = "brewer",
      Description = "Flour, lard and sugar turned into bread and cakes for the mess. Nothing lifts a platoon like a slice of cake." },
    { Key = "chef", Name = "Chef", Skillset = "Field Kitchen", Points = 10, Requires = "baker",
      Description = "You run the field kitchen. Hot cooked meals for the whole company, and the last word on what goes in the pot." },
}

-- Capture points
CAPTURE_RADIUS = 300

-- Tactical map
TACMAP = {
    SpotRange = 3000, -- units
    SpotFov = 120,
    SpotInterval = 1,
    SeenFor = 90,
}

-- Anti-cheat
ANTICHEAT = {
    Enabled = true,
    NotifyEvery = 60,
    Window = 600,
    FlagPoints = 3,
    Points = { snap = 1, silent = 2, spin = 3, jitter = 3, angles = 3 },
    SnapDegrees = 12,
    SpinRate = 1080,
    SpinSeconds = 2,
    QuietAfter = 120,
}

-- Server rules
ALL_PLAYERS_KNOW_EVERYONE = true

-- Help
helpTopics = { Intro = [[Welcome to WW2 Axis VS Allies RP by Imperium Gaming. Choose Axis or Allies, create a character, and deploy. F4 opens your character; F3 opens the division roster; TAB opens equipment and settings.]] }

-- Chat commands
commands = {
    ["!roster"] = function(ply) if MFRP.SendDivisionRoster then MFRP.SendDivisionRoster(ply) end return "" end,
    ["/roster"] = function(ply) if MFRP.SendDivisionRoster then MFRP.SendDivisionRoster(ply) end return "" end,

    ["//"] = function(ply, args) return ooc_command(ply, args) end,

    [".//"] = function(ply, args) looc_command(ply, args) end,

    ["[["] = function(ply, args) looc_command(ply, args) end,

    ["/addalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/addaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["!announce"] = function(ply, args) return announce_command(ply, args) end,
    ["/announce"] = function(ply, args) return announce_command(ply, args) end,
    ["!artillery"] = function(ply) call_in_arty(ply) end,
    ["/artillery"] = function(ply) call_in_arty(ply) end,
    ["!arty"] = function(ply) call_in_arty(ply) end,
    ["/arty"] = function(ply) call_in_arty(ply) end,

    ["!bombardment"] = function(ply) call_in_arty(ply) end,
    ["/bombardment"] = function(ply) call_in_arty(ply) end,

    ["!ac"] = function(ply) return MFRP.AntiCheat and MFRP.AntiCheat.Command and MFRP.AntiCheat.Command(ply) or "" end,
    ["/ac"] = function(ply) return MFRP.AntiCheat and MFRP.AntiCheat.Command and MFRP.AntiCheat.Command(ply) or "" end,
    ["!antihack"] = function(ply) return MFRP.AntiCheat and MFRP.AntiCheat.Command and MFRP.AntiCheat.Command(ply) or "" end,
    ["/antihack"] = function(ply) return MFRP.AntiCheat and MFRP.AntiCheat.Command and MFRP.AntiCheat.Command(ply) or "" end,

    ["!bot"] = function(ply) return MFRP.TestBots and MFRP.TestBots.Command(ply) or "" end,
    ["/bot"] = function(ply) return MFRP.TestBots and MFRP.TestBots.Command(ply) or "" end,

    ["!char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["/char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["/map"] = function(ply) if MFRP.TacMap and MFRP.TacMap.Open then MFRP.TacMap.Open(ply) end return "" end,
    ["!charisma"] = function(ply) charisma_roll_command(ply) end,
    ["/charisma"] = function(ply) charisma_roll_command(ply) end,
    ["!charismaroll"] = function(ply) charisma_roll_command(ply) end,
    ["/charismaroll"] = function(ply) charisma_roll_command(ply) end,
    ["!charoll"] = function(ply) charisma_roll_command(ply) end,
    ["/charoll"] = function(ply) charisma_roll_command(ply) end,
    ["!charroll"] = function(ply) charisma_roll_command(ply) end,
    ["/charroll"] = function(ply) charisma_roll_command(ply) end,

    ["!discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["/discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["!donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,

    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3468333763") end,
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3468333763") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3468333763") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3468333763") end,

    ["!event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,
    ["/eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,

    ["!frontline"] = function(ply) ChangeToFrontlineMap(ply) end,
    ["/frontline"] = function(ply) ChangeToFrontlineMap(ply) end,

    ["!give"] = function(ply, args) GivePlayerMoney(ply, args) end,
    ["/give"] = function(ply, args) GivePlayerMoney(ply, args) end,
    ["!giveitem"] = function(ply, args) AdminGiveItem(ply,args) end,
    ["/giveitem"] = function(ply, args) AdminGiveItem(ply,args) end,
    ["!givepoints"] = function(ply, args) SetPlayerPointsAdmin(ply, args) end,
    ["!givevip"] = function(ply, args) return set_vip(ply, args) end,
    ["/givevip"] = function(ply, args) return set_vip(ply, args) end,
    ["/gotonode"] = function(ply, args) GoToNodeID(ply, args) end,
    ["!gradio"] = function(ply, args) return radio_command(ply, args) end,
    ["/gradio"] = function(ply, args) return radio_command(ply, args) end,
    ["!gr"] = function(ply, args) return radio_command(ply, args) end,
    ["/gr"] = function(ply, args) return radio_command(ply, args) end,
    ["!globalradio"] = function(ply, args) return radio_command(ply, args) end,
    ["/globalradio"] = function(ply, args) return radio_command(ply, args) end,

    ["!help"] = function(ply) OpenHelpMenu(ply) end,
    ["/help"] = function(ply) OpenHelpMenu(ply) end,

    ["!intro"] = function(ply) handleIntroCommand(ply) end,
    ["!it"] = function(ply, args) return it_command(ply, args) end,
    ["/it"] = function(ply, args) return it_command(ply, args) end,
    ["!items"] = function(ply) OpenItemManager(ply) end,
    ["/items"] = function(ply) OpenItemManager(ply) end,

    ["!landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["/landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["!logs"] = function(ply) mLogs.Open(ply) end,
    ["/logs"] = function(ply) mLogs.Open(ply) end,
    ["!looc"] = function(ply, args) looc_command(ply, args) end,
    ["/looc"] = function(ply, args) looc_command(ply, args) end,

    ["!me"] = function(ply, args) return me_command(ply, args) end,
    ["/me"] = function(ply, args) return me_command(ply, args) end,
    ["!menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,

    ["!ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["/ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["!options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,
    ["/options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,

    ["!playerstats"] = function(ply) OpenPlayerStats(ply) end,
    ["/playerstats"] = function(ply) OpenPlayerStats(ply) end,
    ["!pm"] = function(ply, args) return privat_radio_msg(ply, args) end,
    ["/pm"] = function(ply, args) return privat_radio_msg(ply, args) end,

    ["!r"] = function(ply, args) return radio_command_side(ply, args) end,
    ["/r"] = function(ply, args) return radio_command_side(ply, args) end,
    ["!radio"] = function(ply, args) return radio_command_side(ply, args) end,
    ["/radio"] = function(ply, args) return radio_command_side(ply, args) end,

    ["!removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["!reset"] = function(ply) ResetPoints(ply) end,
    ["/reset"] = function(ply) ResetPoints(ply) end,
    ["!rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["/rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["!roll"] = function(ply) PlayerRoll(ply) end,
    ["/roll"] = function(ply) PlayerRoll(ply) end,
    ["!rp"] = function(ply, args) return rp_command(ply, args) end,
    ["/rp"] = function(ply, args) return rp_command(ply, args) end,
    ["!rules"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1iqMBUUaCexByDInm-ubRuPgn-qh_QxhpvwYgHwG6bS8/edit?usp=sharing") end,
    ["/rules"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1iqMBUUaCexByDInm-ubRuPgn-qh_QxhpvwYgHwG6bS8/edit?usp=sharing") end,

    ["/setalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/setaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["!setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!setspawn"] = function(ply, args) return handleSetSpawnCommand(ply, args) end,
    ["/setspawn"] = function(ply, args) return handleSetSpawnCommand(ply, args) end,
    ["!song"] = function(ply, args) return play_song(ply, args) end,
    ["/song"] = function(ply, args) return play_song(ply, args) end,
    ["!music"] = function(ply) if ply:IsAdmin() then ply:ConCommand("murlock_music") end end,
    ["/music"] = function(ply) if ply:IsAdmin() then ply:ConCommand("murlock_music") end end,
    ["!stats"] = function(ply) OpenPlayerStats(ply) end,
    ["/stats"] = function(ply) OpenPlayerStats(ply) end,

    ["!store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,

    ["/!teamradio"] = function(ply, args) return radio_command_team(ply, args) end,
    ["/teamradio"] = function(ply, args) return radio_command_team(ply, args) end,

    ["/tradio"] = function(ply, args) return radio_command_team(ply, args) end,

    ["!unvip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/unvip"] = function(ply, args) return remove_vip(ply, args) end,

    ["!vox"] = function(ply, args) return radio_command(ply, args) end,
    ["/vox"] = function(ply, args) return radio_command(ply, args) end,

    ["!w"] = function(ply, args) whisper_command(ply, args) end,
    ["/w"] = function(ply, args) whisper_command(ply, args) end,
    ["!whisper"] = function(ply, args) whisper_command(ply, args) end,
    ["/whisper"] = function(ply, args) whisper_command(ply, args) end,

    ["!y"] = function(ply, args) PlayerYell(ply, args) end,
    ["/y"] = function(ply, args) PlayerYell(ply, args) end,
    ["!yell"] = function(ply, args) PlayerYell(ply, args) end,
    ["/yell"] = function(ply, args) PlayerYell(ply, args) end,
    ["!battleplan"] = function(ply) ply:ConCommand("ww2_battleplan") return "" end,
    ["/battleplan"] = function(ply) ply:ConCommand("ww2_battleplan") return "" end,
    ["!forts"] = function(ply) if MFRP.OpenFortificationManager then MFRP.OpenFortificationManager(ply) end return "" end,
    ["/forts"] = function(ply) if MFRP.OpenFortificationManager then MFRP.OpenFortificationManager(ply) end return "" end,
    ["!cleanup"] = function(ply) if MFRP.OpenFortificationManager then MFRP.OpenFortificationManager(ply) end return "" end,
    ["/cleanup"] = function(ply) if MFRP.OpenFortificationManager then MFRP.OpenFortificationManager(ply) end return "" end,
}

-- Default equipment
imperium_rp_defualt_weapons = {
    "move_things",
    "weapon_fists",
}

-- Sniper scopes
SNIPER_SCOPES = {
    "doi_atow_zf39", "doi_atow_zf4", "doi_atow_zf41", "doi_atow_zfg42", "doi_atow_lymanm82", "doi_atow_m73",
    "doi_atow_no32", "doi_atow_unertl", "doi_atow_wina5", "btk_atow_coltscope",
    "md_carcano_scope", "md_carcano_scope4x", "md_carcano_scope7x", "md_carcano_scope78x",
}
RESTRICTED_ATTACHMENTS = {}
for _, scope in ipairs(SNIPER_SCOPES) do RESTRICTED_ATTACHMENTS[scope] = true end

-- Regiments
--US Division
US_ENLISTED_MODELS = {"models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_01.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_02.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_03.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_04.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_05.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/en/m41_s1_06.mdl"}
US_NCO_MODELS = {"models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_01.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_02.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_03.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_04.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_05.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/nco/m37_s1_06.mdl"}
US_CO_MODELS = {"models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_01.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_02.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_03.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_04.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_05.mdl","models/hts/comradebear/pm0v3/player/usarmy/infantry/co/m41_s1_06.mdl"}
US_TANKER_MODELS = {"models/hts/comradebear/pm0v3/player/usarmy/armored/en/m41tanker_s1_01.mdl","models/hts/comradebear/pm0v3/player/usarmy/armored/en/m41tanker_s1_02.mdl","models/hts/comradebear/pm0v3/player/usarmy/armored/en/m41tanker_s1_03.mdl","models/hts/comradebear/pm0v3/player/usarmy/armored/en/m41tanker_s1_04.mdl"}

--US Airborne Division
AIRBORNE_MODELS = {"models/ibz/us_army/airborn/us_para_01.mdl","models/ibz/us_army/airborn/us_para_02.mdl","models/ibz/us_army/airborn/us_para_03.mdl","models/ibz/us_army/airborn/us_para_04.mdl","models/ibz/us_army/airborn/us_para_05.mdl","models/ibz/us_army/airborn/us_para_06.mdl"}

--Commonwealth Division
BRITISH_MODELS = {"models/ingomar/commonwelth/british/en/p37_01.mdl","models/ingomar/commonwelth/british/en/p37_02.mdl","models/ingomar/commonwelth/british/en/p37_03.mdl","models/player/player_british_01.mdl","models/player/player_british_02.mdl","models/player/player_british_03.mdl","models/player/player_british_04.mdl","models/player/player_british_05.mdl","models/player/player_british_06.mdl","models/player/player_british_07.mdl","models/player/player_british_08.mdl"}

--Wehrmacht Division
DE_ENLISTED_MODELS = {"models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_02.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_03.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_04.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_05.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_06.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40greatcoat_w1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m42smock_s1_01.mdl"}
DE_NCO_MODELS = {"models/hts/comradebear/pm0v3/player/heer/infantry/en/drill_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_02.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_03.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_04.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m40greatcoat_w1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/en/m42smock_s1_01.mdl"}
DE_CO_MODELS = {"models/hts/comradebear/pm0v3/player/heer/infantry/co/m38_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/co/m38_s1_02.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/co/m38_s1_03.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/co/m38_s1_04.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/co/m38coat_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/infantry/co/m38coat_s1_02.mdl"}
DE_MEDIC_MODELS = {"models/hts/comradebear/pm0v3/player/heer/medic/en/m36_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/medic/en/m36_s1_02.mdl"}
DE_TANKER_MODELS = {"models/hts/comradebear/pm0v3/player/heer/panzer/en/panzerwrap_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/panzer/en/panzerwrap_s1_02.mdl","models/hts/comradebear/pm0v3/player/heer/panzer/en/panzerwrap_s1_03.mdl","models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_01.mdl","models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_02.mdl","models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_03.mdl"}

--Fallschirmjäger Division
FJ_MODELS = {"models/ibz/luftwaffe/airborn/ger_para_06.mdl","models/ibz/luftwaffe/airborn/ger_para_06_a.mdl"}
FJ_CO_MODELS = {"models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male01.mdl","models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male02.mdl","models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male03.mdl","models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male04.mdl","models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male05.mdl","models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male06.mdl","models/ibz/luftwaffe/airborn/ger_para_06.mdl","models/ibz/luftwaffe/airborn/ger_para_06_a.mdl"}

-- Officer uniforms
OFFICER_MODELS = {
    US_CO_MODELS,
    DE_CO_MODELS,
    "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male01.mdl", "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male02.mdl",
    "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male03.mdl", "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male04.mdl",
    "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male05.mdl", "models/ww2rphts/playermodels/luftwaffe/luftwaffeofficer_co_male06.mdl",
    "models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_01.mdl", "models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_02.mdl",
    "models/hts/comradebear/pm0v3/player/heer/panzer/co/panzerwrap_s1_03.mdl",
}

ROLES = {
    DIVISION_29TH = {
        NiceName = "29th Infantry Division",
        Prefix = "29TH",
        Color = Color(145, 156, 116, 255),
        Description = "Blue and Gray. Landed on Omaha Beach on D-Day and fought through Normandy and Brest. Now pushing for the Roer.",
        Default = true,
        Order = 1,
        Team = "allies",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = US_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = US_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = US_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Technical Corporal", Rank_Prefix = "TCPL", ModelsAllowed = US_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = US_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = US_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = US_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Technical Sergeant", Rank_Prefix = "TSGT", ModelsAllowed = US_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "First Sergeant", Rank_Prefix = "1SGT", ModelsAllowed = US_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Master Sergeant", Rank_Prefix = "MSGT", ModelsAllowed = US_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}},
            {ID = 15, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}},
            {ID = 16, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = US_CO_MODELS, WeaponsAllowed = {}}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"fas2_ifak", "ent_spawner", "rope_tool"},
                Prefix = "MD"
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner"},
                Prefix = "MG"
            },
            {
                Name = "Tanker",
                Core = true,
                Max = 15,
                Models = US_TANKER_MODELS,
                ForceModels = true,
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair"},
                Prefix = "TK"
            },
            {
                Name = "Engineer",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner", "weapon_lvsmines", "rope_tool"},
                Prefix = "ENG"
            },
            {
                Name = "Anti-Tank",
                Core = true,
                Max = 5,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"doi_bazooka", "ent_spawner", "weapon_lvsmines"},
                Prefix = "AT"
            },
            {
                Name = "Sniper",
                Core = true,
                Max = 4,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Attachments = SNIPER_SCOPES,
                Prefix = "SN"
            }
        }
    },
    DIVISION_101ST = {
        NiceName = "101st Airborne Division",
        Prefix = "101ST",
        Color = Color(126, 142, 112, 255),
        Description = "The Screaming Eagles. Dropped into Normandy and Holland, and trained to fight surrounded and outnumbered.",
        Default = false,
        Order = 2,
        Team = "allies",
        HandsModel = US_ENLISTED_MODELS[1],
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Technical Corporal", Rank_Prefix = "TCPL", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Technical Sergeant", Rank_Prefix = "TSGT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "First Sergeant", Rank_Prefix = "1SGT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Master Sergeant", Rank_Prefix = "MSGT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 14, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}},
            {ID = 15, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = AIRBORNE_MODELS, WeaponsAllowed = {}}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"fas2_ifak", "ent_spawner", "rope_tool"},
                Prefix = "MD"
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner"},
                Prefix = "MG"
            },
            
            {
                Name = "Engineer",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner", "weapon_lvsmines", "rope_tool"},
                Prefix = "ENG"
            },
            {
                Name = "Anti-Tank",
                Core = true,
                Max = 5,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"doi_bazooka", "ent_spawner", "weapon_lvsmines"},
                Prefix = "AT"
            },
            {
                Name = "Sniper",
                Core = true,
                Max = 4,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Attachments = SNIPER_SCOPES,
                Prefix = "SN"
            }
        }
    },
    DIVISION_50TH = {
        NiceName = "2nd Infantry Division",
        Prefix = "2nd",
        Color = Color(150, 138, 108, 255),
        Description = "Commonwealth infantry who fought through Normandy, closed the Falaise Gap and cleared the Scheldt to open the port of Antwerp.",
        Default = true,
        Order = 3,
        Team = "allies",
        HandsModel = US_ENLISTED_MODELS[1],
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Junior Private", Rank_Prefix = "JPVE", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Private", Rank_Prefix = "PVE", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Platoon Sergeant Major", Rank_Prefix = "PSM", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Company Sergeant Major", Rank_Prefix = "CSM", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Regiment Sergeant Major", Rank_Prefix = "RSM", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 15, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}},
            {ID = 16, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = {}}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"fas2_ifak", "ent_spawner", "rope_tool"},
                Prefix = "MD"
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner"},
                Prefix = "MG"
            },
            {
                Name = "Tanker",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair"},
                Prefix = "TK"
            },
            {
                Name = "Engineer",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner", "weapon_lvsmines", "rope_tool"},
                Prefix = "ENG"
            },
            {
                Name = "Anti-Tank",
                Core = true,
                Max = 5,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"doi_bazooka", "ent_spawner", "weapon_lvsmines"},
                Prefix = "AT"
            },
            {
                Name = "Sniper",
                Core = true,
                Max = 4,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Attachments = SNIPER_SCOPES,
                Prefix = "SN"
            }
        }
    },
    DIVISION_21ST = {
        NiceName = "21st Panzer Division",
        Prefix = "21PZ",
        Color = Color(139, 129, 119, 255),
        Description = "Rebuilt in France after Africa. Met the invasion at Caen and has fought on every line since.",
        Default = true,
        Order = 4,
        Team = "axis",
        Ranks = {
            {ID = 1, Name = "Rekrut", Rank_Prefix = "REK", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Grenadier", Rank_Prefix = "GRN", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Obergrenadier", Rank_Prefix = "OGRN", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Unteroffizier", Rank_Prefix = "UFFZ", ModelsAllowed = DE_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Unterfeldwebel", Rank_Prefix = "UFW", ModelsAllowed = DE_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = DE_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = DE_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Stabsfeldwebel", Rank_Prefix = "STFW", ModelsAllowed = DE_NCO_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}},
            {ID = 15, Name = "Oberstleutnant", Rank_Prefix = "OBTLT", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}},
            {ID = 16, Name = "Oberst", Rank_Prefix = "OBT", ModelsAllowed = DE_CO_MODELS, WeaponsAllowed = {}}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Max = 15,
                Models = DE_MEDIC_MODELS,
                ForceModels = true,
                Weapons = {},
                SpawnWeapons = {"fas2_ifak", "ent_spawner", "rope_tool"},
                Prefix = "MD"
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner"},
                Prefix = "MG"
            },
            {
                Name = "Tanker",
                Core = true,
                Max = 15,
                Models = DE_TANKER_MODELS,
                ForceModels = true,
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair"},
                Prefix = "TK"
            },
            {
                Name = "Engineer",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner", "weapon_lvsmines", "rope_tool"},
                Prefix = "ENG"
            },
            {
                Name = "Anti-Tank",
                Core = true,
                Max = 5,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"doi_panzerschreck", "ent_spawner", "weapon_lvsmines"},
                Prefix = "AT"
            },
            {
                Name = "Sniper",
                Core = true,
                Max = 4,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Attachments = SNIPER_SCOPES,
                Prefix = "SN"
            }
        }
    },
    DIVISION_3FJ = {
        NiceName = "3rd Fallschirmjäger Division",
        Prefix = "3FJ",
        Color = Color(122, 128, 132, 255),
        Description = "Luftwaffe paratroopers fighting as elite infantry. Held Saint-Lô in Normandy and now defends the western border.",
        Default = false,
        Order = 5,
        Team = "axis",
        HandsModel = DE_ENLISTED_MODELS[1],
        Ranks = {
            {ID = 1, Name = "Jäger", Rank_Prefix = "JGR", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Oberjäger", Rank_Prefix = "OJGR", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UFFZ", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Unterfeldwebel", Rank_Prefix = "UFW", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Stabsfeldwebel", Rank_Prefix = "STFW", ModelsAllowed = FJ_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}},
            {ID = 14, Name = "Oberstleutnant", Rank_Prefix = "OBTLT", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}},
            {ID = 15, Name = "Oberst", Rank_Prefix = "OBT", ModelsAllowed = FJ_CO_MODELS, WeaponsAllowed = {}}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"fas2_ifak", "ent_spawner", "rope_tool"},
                Prefix = "MD"
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner"},
                Prefix = "MG"
            },
            {
                Name = "Engineer",
                Core = true,
                Max = 15,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_murlock_engineering_builder", "ent_spawner", "weapon_lvsmines", "rope_tool"},
                Prefix = "ENG"
            },
            {
                Name = "Anti-Tank",
                Core = true,
                Max = 5,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"doi_panzerschreck", "ent_spawner", "weapon_lvsmines"},
                Prefix = "AT"
            },
            {
                Name = "Sniper",
                Core = true,
                Max = 4,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Attachments = SNIPER_SCOPES,
                Prefix = "SN"
            }
        }
    }
}
DEFAULT_ROLE = "DIVISION_29TH"
DIVISION_KICK_TO = { allies = "DIVISION_29TH", axis = "DIVISION_21ST" }
DIVISION_HISTORY_DAYS = 183

-- Certifications
CERTIFICATIONS = {
    ["Logistics"] = { Weapons = { "ent_spawner", "weapon_lvsrepair", "rope_tool" }, Entitys = {} },
}

-- Vehicle assignments
VEHICLE_CERT_VEHICLES = {}

-- Old loadout shop
weaponsConfig = { primary = {}, secondary = {}, misc = {} }
defaultWeaponsConfig = {}

-- Loadout
LOADOUT_SETTINGS = {
    SpawnRange = 1500, -- units
    EnemyRange = 2500, -- units
    TryoutSeconds = 30,
    SpawnMagazines = 4,
    SpawnGrenades = 2,
    CapturedPrice = 2000,
}

-- Weapon handling
WEAPON_HANDLING = {
    RecoilSmoothing = 0.08,
    AnimatedKick = true,
    BobScale = 0.6,
    AimedSpreadScale = 0.25,
    FistsDamage = 50,
    MeleeVehicleDamage = 10,
    HitDamage = { Head = 2, Body = 1, Limbs = 0.45 },
    ClientHitreg = true,
    TracerEvery = 1,
    TracerColor = Color(255, 255, 190),
}

-- Flamethrowers
FLAMETHROWERS = {
    Classes = { "weapon_m2_flamethrower", "weapon_flammenwerfer_35" },
    Fireproof = { "Light Tanks", "Light Medium Tanks", "Medium Tanks", "Heavy Tanks", "Super Heavy Tanks", "Tank Destroyers" },
}

-- Binoculars
BINOCULARS = {
    Classes = { "doi_atow_binocularsus", "doi_atow_binocularscw", "doi_atow_binocularsde" },
    Range = 1000, -- metres
    MaxMarkers = 40,
}

-- Sight positions (ww2_sightpos)
CW_SIGHTS = {
}

-- Blocked attachments
BLOCKED_ATTACHMENTS = { "md_ins2*", "md_foregrip", "ins2_atow_*", "doi_atow_modernfinish",
    "am_slugroundsm37", "am_flechettem37", "am_atow_riot", "am_slugrounds", "am_flechetterounds" }

-- Attachment stats
ATTACHMENT_STATS = {
    doi_atow_m2carbineconv = { FireDelayMult = -0.15, RecoilMult = 0.5, AimSpreadMult = 0.5, MaxSpreadIncMult = 0.6, HipSpreadMult = 0.3 },
}

-- Leaderboards
LEADERBOARDS = {
    PageSize = 20,
    SaveSeconds = 30,
    CacheSeconds = 30,
}

-- Loadout categories
LOADOUT_CATEGORIES = {
    { Name = "Rifles", Slot = "primary" },
    { Name = "Carbines", Slot = "primary" },
    { Name = "Submachine guns", Slot = "primary" },
    { Name = "Assault rifles", Slot = "primary" },
    { Name = "Light machine guns", Slot = "primary" },
    { Name = "Machine guns", Slot = "primary" },
    { Name = "Shotguns", Slot = "primary" },
    { Name = "Flamethrowers", Slot = "primary" },
    { Name = "Pistols", Slot = "secondary" },
    { Name = "Melee", Slot = "misc" },
    { Name = "Binoculars", Slot = "misc" },
    { Name = "Grenades", Slot = "misc" },
    { Name = "Italian Weapons", Slot = "primary" },
}

-- Loadout ranks
LOADOUT_RANKS = {
    NCO = { DIVISION_29TH = "Sergeant", DIVISION_101ST = "Sergeant", DIVISION_50TH = "Sergeant", DIVISION_21ST = "Unteroffizier", DIVISION_3FJ = "Unteroffizier" },
    Officer = { DIVISION_29TH = "Second Lieutenant", DIVISION_101ST = "Second Lieutenant", DIVISION_50TH = "Second Lieutenant", DIVISION_21ST = "Leutnant", DIVISION_3FJ = "Leutnant" },
}

-- Loadout weapons
LOADOUT_WEAPONS = {
    -- Allies: primary
    { Class = "doi_atow_m1garand", Price = 0, Category = "Rifles", Side = "allies", Default = { "DIVISION_29TH", "DIVISION_101ST" },
        Fact = "The US Army's standard rifle, and the first semi-automatic rifle to be any army's standard issue. The empty en-bloc clip ejected with a 'ping'. Patton called it the greatest battle implement ever devised." },
    { Class = "doi_atow_enfield", Price = 0, Category = "Rifles", Side = "allies", Default = { "DIVISION_50TH" },
        Fact = "The Rifle No. 4 Mk I carried by British and Canadian infantry from Normandy to the Rhine. Its fast bolt and ten-round magazine let a trained rifleman put fifteen aimed shots on target in a minute." },
    { Class = "doi_atow_m1903a3", Price = 3000, Category = "Rifles", Side = "allies",
        Fact = "The simplified wartime Springfield, built by Remington and Smith-Corona. Fitted with a Weaver scope it became the M1903A4, the US Army's sniper rifle in Normandy and the Ardennes." },
    { Class = "doi_atow_m1carbine", Price = 1600, Category = "Carbines", Side = "allies", FreeFor = { "Officer" },
        Fact = "A light .30 carbine meant for officers, NCOs, radiomen and support troops in place of a pistol. Over six million were made, more than any other American small arm of the war." },
    { Class = "doi_atow_m1a1carbine", Price = 2400, Category = "Carbines", Side = "allies",
        Fact = "The folding-stock carbine built for American paratroopers. Men of the 82nd and 101st Airborne jumped with it into Normandy in June 1944 and into Holland that September." },
    { Class = "doi_atow_m1a1", Price = 6000, Category = "Submachine guns", Side = "allies", FreeFor = { "NCO" },
        Fact = "The simplified wartime Thompson: smooth barrel, fixed sights and stick magazines in place of the drum. Squad leaders and paratroopers prized it for clearing hedgerows and houses." },
    { Class = "doi_atow_m1928a1", Price = 7000, Category = "Submachine guns", Side = "allies",
        Fact = "The pre-war 'Tommy gun' with the finned barrel and Cutts compensator. Britain bought it in large numbers in 1940, and British Commandos were still carrying it in 1944." },
    { Class = "doi_atow_m3greasegun", Price = 5000, Category = "Submachine guns", Side = "allies", FreeFor = { "Tanker" },
        Fact = "Stamped from sheet steel for a fraction of a Thompson's cost. Issued first to tank crews, who stowed it in Shermans across France and Germany, and to infantry in growing numbers through 1944 and 1945." },
    { Class = "doi_atow_sten", Price = 4000, Category = "Submachine guns", Side = "allies", FreeFor = { "NCO" },
        Fact = "Britain's simple 9mm submachine gun; around four million were made. British section leaders carried it in Normandy, and thousands were dropped to the French Resistance." },
    { Class = "doi_atow_m1918a2", Price = 9000, Category = "Light machine guns", Side = "allies",
        Fact = "The Browning Automatic Rifle, the firepower of every US rifle squad. The A2 had a bipod and a fast and slow rate of fire, and its gunner anchored the squad in the bocage." },
    { Class = "doi_atow_bren", Price = 9000, Category = "Light machine guns", Side = "allies",
        Fact = "The light machine gun at the heart of every British section: a curved 30-round top magazine, a quick-change barrel and famous accuracy. Two men served it, the No. 1 firing and the No. 2 changing magazines." },
    { Class = "doi_atow_m1919a6", Price = 12000, Category = "Machine guns", Side = "allies", FreeFor = { "Machine Gunner" }, Requires = { "Machine Gunner" },
        Fact = "The belt-fed Browning .30 with a bipod, shoulder stock and carrying handle, adopted in 1943 to give rifle companies a lighter belt-fed gun that could move with the attack." },
    { Class = "doi_atow_vickers", Price = 12000, Category = "Machine guns", Side = "allies", Requires = { "Machine Gunner" },
        Fact = "Water-cooled and in British service since 1912. Machine gun battalions fired it in long indirect barrages over the heads of the infantry through Normandy and into Germany." },
    { Class = "doi_atow_m1912", Price = 5000, Category = "Shotguns", Side = "allies",
        Fact = "Winchester's Model 12 pump gun. The trench version, with a heat shield and bayonet lug, served with US military police, engineers and some infantry in Europe." },
    { Class = "doi_atow_ithaca37", Price = 5000, Category = "Shotguns", Side = "allies",
        Fact = "Ithaca's pump shotgun, bought by the US Army during the war for guard duty, military police and fighting at close quarters." },

    { Class = "doi_atow_rossrifle", Price = 2400, Category = "Rifles", Side = "allies",
        Fact = "Canada's straight-pull rifle. It jammed in the mud of 1915 and was pulled from the front, but in 1940 Ross rifles were issued again to the British Home Guard and to Canadian units at home." },
    { Class = "turner", Price = 4000, Category = "Rifles", Side = "allies",
        Fact = "A semi-automatic conversion of the Short Magazine Lee-Enfield. Several were tried, from the Howell of the First World War on, but Britain never adopted one." },
    { Class = "t20", Price = 9000, Category = "Rifles", Side = "allies",
        Fact = "A select-fire Garand fed from the BAR's 20-round magazine. The T20E2 was recommended to replace the M1 in 1945, but the war ended first; the design led on to the M14." },
    { Class = "doi_atow_win1907", Price = 2400, Category = "Carbines", Side = "allies",
        Fact = "Winchester's .351 self-loading rifle. France bought it in the First World War for aviators and trench raiders, and American police carried it for decades." },
    { Class = "doi_atow_owen", Price = 5000, Category = "Submachine guns", Side = "allies",
        Fact = "Evelyn Owen's top-fed submachine gun, made in Australia. Crude to look at but almost impossible to jam, it was the Australian soldier's favourite in the mud of New Guinea." },
    { Class = "hyde44", Price = 5000, Category = "Submachine guns", Side = "allies",
        Fact = "A .45 select-fire carbine after George Hyde's designs. Hyde, a German-born gunsmith in New York, also designed the M3 Grease Gun." },
    { Class = "doi_atow_lewis", Price = 7000, Category = "Light machine guns", Side = "allies",
        Fact = "The light machine gun of the First World War, fed from a 47-round pan. In 1940 it came out of store again for the Home Guard, merchant ships and airfield defence." },
    { Class = "m1941", Price = 8000, Category = "Light machine guns", Side = "allies",
        Fact = "Melvin Johnson's recoil-operated light machine gun with a side-mounted magazine. The 1st Special Service Force, the 'Devil's Brigade', carried it in Italy and southern France." },
    { Class = "charlton", Price = 7000, Category = "Light machine guns", Side = "allies",
        Fact = "Philip Charlton's light machine gun, converted from old Lee-Metford and Lee-Enfield rifles when New Zealand could not get enough Brens in 1941. About 1,500 were made for home defence in New Zealand and Australia." },
    -- Allies: secondary
    { Class = "doi_atow_m1911a1", Price = 0, Category = "Pistols", Side = "allies", Default = { "DIVISION_29TH", "DIVISION_101ST" },
        Fact = "The .45 pistol carried by American officers, NCOs, machine gunners, tank crews and paratroopers. It earned a reputation for stopping power that outlived the war." },
    { Class = "doi_atow_webley", Price = 0, Category = "Pistols", Side = "allies", Default = { "DIVISION_50TH" },
        Fact = "Webley's .38 revolver, issued alongside the Enfield No. 2 to British officers, tank crews, dispatch riders and military police." },
    { Class = "doi_atow_browninghp", Price = 2400, Category = "Pistols", Side = "allies",
        Fact = "A Belgian design built in Canada by John Inglis. Its 13-round magazine made it popular with British and Canadian paratroopers and commandos." },
    { Class = "doi_atow_sw1917", Price = 1200, Category = "Pistols", Side = "allies",
        Fact = "A First World War revolver firing .45 ACP from half-moon clips, issued again in the Second to rear-area troops and military police." },
    { Class = "doi_atow_colt1903", Price = 3000, Category = "Pistols", Side = "allies", FreeFor = { "Officer" },
        Fact = "The slim Colt .32 issued to US Army generals as the General Officer's pistol. OSS agents working behind the lines carried it too." },

    { Class = "doi_atow_welrod", Price = 4000, Category = "Pistols", Side = "allies",
        Fact = "A silenced bolt-action pistol designed at Station IX, the SOE workshop at The Frythe near Welwyn, which gave it its name. Issued to agents and resistance fighters." },
    { Class = "doi_atow_sw29", Price = 4000, Category = "Pistols", Side = "allies",
        Fact = "Smith & Wesson's .44 Magnum, introduced in 1955 on the same large N-frame as the wartime M1917. A post-war revolver." },
    -- Allies: misc
    { Class = "doi_atow_bayonetus", Price = 0, Category = "Melee", Side = "allies", Default = { "DIVISION_29TH", "DIVISION_101ST" },
        Fact = "The M1 bayonet for the Garand. From 1943 the old 16-inch blade was cut down to 10 inches, and it doubled as a fighting knife." },
    { Class = "doi_atow_bayonetcw", Price = 0, Category = "Melee", Side = "allies", Default = { "DIVISION_50TH" },
        Fact = "The No. 4 spike bayonet for the Lee-Enfield, nicknamed the 'pigsticker' by the men who carried it." },
    { Class = "doi_atow_etoolus", Price = 0, Category = "Melee", Side = "allies",
        Fact = "The folding M1943 entrenching tool, copied from the German design. Every GI dug in with one, and in close fighting its sharpened edge was a weapon." },
    { Class = "doi_atow_etoolcw", Price = 0, Category = "Melee", Side = "allies",
        Fact = "The British entrenching tool. Digging in came first at every halt, and in a trench raid its edge served as well as any bayonet." },
    { Class = "doi_atow_binocularsus", Price = 1000, Category = "Binoculars", Side = "allies", FreeFor = { "NCO" },
        Fact = "6x30 field glasses carried by American officers, NCOs and forward observers to spot targets and direct fire." },
    { Class = "doi_atow_binocularscw", Price = 1000, Category = "Binoculars", Side = "allies", FreeFor = { "NCO" },
        Fact = "British army binoculars, carried by officers, NCOs and observers to spot targets and call down fire." },

    { Class = "doi_atow_knifeus", Price = 0, Category = "Melee", Side = "allies",
        Fact = "The Marine Corps fighting knife adopted in 1942, best known by its maker's Ka-Bar trademark. The Navy issued it as well." },
    { Class = "doi_atow_brassknuckles", Price = 600, Category = "Melee", Side = "both",
        Fact = "Brass knuckles were common in the trenches of the First World War, and the US Mark I trench knife of 1918 built a knuckle guard into its grip." },
    -- Axis: primary
    { Class = "doi_atow_k98k", Price = 0, Category = "Rifles", Side = "axis", Default = true,
        Fact = "The Mauser Karabiner 98k, the German army's standard rifle for the whole war. Accurate and robust, and with a scope it armed the German snipers who held up the Allies in Normandy." },
    { Class = "doi_atow_g43", Price = 3600, Category = "Rifles", Side = "axis",
        Fact = "Germany's semi-automatic rifle, with a ten-round detachable magazine and a rail for a scope. Issued to marksmen and some infantry units from 1943." },
    { Class = "doi_atow_mp40", Price = 6000, Category = "Submachine guns", Side = "axis", FreeFor = { "NCO" },
        Fact = "The folding-stock 9mm submachine gun carried by German squad leaders. Allied soldiers called it the 'Schmeisser', though it was designed by Heinrich Vollmer at Erma." },
    { Class = "doi_atow_stg44", Price = 10000, Category = "Assault rifles", Side = "axis",
        Fact = "The first assault rifle issued in numbers, firing a short 7.92mm Kurz round between a pistol and a rifle cartridge. It reached units on both fronts in 1944 and fought in the Ardennes." },
    { Class = "doi_atow_fg42", Price = 9000, Category = "Light machine guns", Side = "axis",
        Fact = "Built for the Fallschirmjäger: a light select-fire automatic rifle. Paratroopers of Fallschirmjäger-Regiment 6 used it against the Americans around Carentan in June 1944." },
    { Class = "doi_atow_mg42", Price = 12000, Category = "Machine guns", Side = "axis", FreeFor = { "Machine Gunner" }, Requires = { "Machine Gunner" },
        Fact = "Around 1,200 rounds a minute. Its tearing sound earned it names like 'Hitler's buzzsaw', and it was the backbone of every German squad from Normandy to the Elbe." },
    { Class = "doi_atow_mg34", Price = 10000, Category = "Machine guns", Side = "axis", Requires = { "Machine Gunner" },
        Fact = "The first general-purpose machine gun. Replaced by the MG 42 for infantry but still common in 1944, and the standard machine gun in German tanks." },

    { Class = "doi_atow_g98", Price = 1600, Category = "Rifles", Side = "axis",
        Fact = "The long Mauser of the First World War. Replaced by the Kar98k, it was still issued in 1944 and 1945 to second-line units, police and the Volkssturm." },
    { Class = "g41", Price = 3000, Category = "Rifles", Side = "axis",
        Fact = "Walther's semi-automatic rifle with a gas trap at the muzzle. Heavy at the front and hard to keep clean, it was reworked into the Gewehr 43." },
    { Class = "gerat03", Price = 6000, Category = "Rifles", Side = "axis",
        Fact = "One of the 'Gerät' prototype rifles Mauser's engineers at Oberndorf worked on in the last years of the war. None reached production before the surrender." },
    { Class = "volksturmgewehr", Price = 2400, Category = "Rifles", Side = "axis",
        Fact = "Gustloff's last-ditch rifle of 1945, stamped from sheet steel for the 7.92mm Kurz round, with gas from the barrel slowing the bolt. It was made for the Volkssturm in the final months of the war." },
    { Class = "ermaemp44", Price = 6000, Category = "Submachine guns", Side = "axis",
        Fact = "Erma's crude 1943 prototype, built from steel tubing with two 30-round magazines side by side. It was never adopted." },
    { Class = "doi_ws_atow_kp31", Price = 5000, Category = "Submachine guns", Side = "axis",
        Fact = "Finland's Suomi, designed by Aimo Lahti. Its accuracy and big drum made it feared in the Winter War, and the Waffen-SS bought it for its own units." },
    { Class = "doi_ws_atow_mp34", Price = 5000, Category = "Submachine guns", Side = "axis",
        Fact = "The Austrian army's finely machined submachine gun. After 1938 Germany took it into service as the MP 34(ö) and issued it to police and Waffen-SS units." },
    { Class = "doi_atow_c96carbine", Price = 5000, Category = "Submachine guns", Side = "axis",
        Fact = "The select-fire 'Schnellfeuer' Broomhandle with a detachable 20-round magazine. Germany bought them in the 1930s, and the Waffen-SS issued them." },
    { Class = "stg45", Price = 12000, Category = "Assault rifles", Side = "axis",
        Fact = "Mauser's roller-delayed assault rifle, cheaper to build than the StG 44. Parts for only about thirty were finished before the war ended, but the design lived on in the CETME and the G3." },
    { Class = "mkb39", Price = 9000, Category = "Assault rifles", Side = "axis",
        Fact = "A trial Maschinenkarabiner in 7.92mm Kurz, from the work on a short rifle cartridge that produced the MKb 42 and finally the StG 44." },
    { Class = "g43kurz", Price = 8000, Category = "Assault rifles", Side = "axis",
        Fact = "A shortened Gewehr 43 with a 30-round magazine and burst fire: a 'what if' of the Walther design rather than a gun that saw service." },
    -- Axis: secondary
    { Class = "doi_atow_p38", Price = 0, Category = "Pistols", Side = "axis", Default = true,
        Fact = "Walther's double-action 9mm pistol, adopted to replace the Luger and the German army's standard sidearm by 1944." },
    { Class = "doi_atow_p08", Price = 2000, Category = "Pistols", Side = "axis",
        Fact = "The Luger. Officially replaced by the P38 but issued until the end of the war, and the souvenir every Allied soldier wanted to bring home." },
    { Class = "doi_atow_ppk", Price = 1600, Category = "Pistols", Side = "axis", FreeFor = { "Officer" },
        Fact = "Walther's compact pistol, carried by officers, Luftwaffe aircrew and staff." },
    { Class = "doi_atow_c96", Price = 2400, Category = "Pistols", Side = "axis",
        Fact = "The Mauser 'Broomhandle'. Old by 1944 but still issued to some German units, loaded from stripper clips into its fixed magazine." },

    -- Axis: misc
    { Class = "doi_atow_bayonetde", Price = 0, Category = "Melee", Side = "axis", Default = true,
        Fact = "The S84/98 bayonet that hung from every German soldier's belt, used far more often as a tool than as a weapon." },
    { Class = "doi_atow_etoolde", Price = 0, Category = "Melee", Side = "axis",
        Fact = "The folding Klappspaten. The US Army thought so well of it that its M1943 entrenching tool copied the design." },
    { Class = "doi_atow_binocularsde", Price = 1000, Category = "Binoculars", Side = "axis", FreeFor = { "NCO" },
        Fact = "The Dienstglas 6x30, the standard German field glasses, issued to officers, NCOs and observers." },

    -- Grenades
    { Class = "ig_mk2", Price = 1500, Category = "Grenades", Side = "allies",
        Fact = "The US Mk 2 fragmentation grenade, the 'pineapple', with a serrated cast-iron body and a four to five second fuse." },
    { Class = "ig_m18", Price = 1000, Category = "Grenades", Side = "allies",
        Fact = "The M18 coloured smoke grenade, used to screen a move and to mark positions for aircraft and artillery." },
    { Class = "ig_mills", Price = 1500, Category = "Grenades", Side = "allies",
        Fact = "The Mills bomb, Britain's segmented cast-iron grenade, in service from 1915 through the Second World War." },
    { Class = "ig_n69", Price = 1200, Category = "Grenades", Side = "allies",
        Fact = "The British No. 69: a Bakelite grenade that went off on impact and relied on blast, safe to throw from the open." },
    { Class = "ig_ger", Price = 1500, Category = "Grenades", Side = "axis",
        Fact = "The Stielhandgranate 24, the 'potato masher'. Its wooden handle let it be thrown further than most grenades." },

    -- Italian Weapons
    { Class = "cw_carcanom91", Price = 1200, Category = "Italian Weapons", Side = "axis",
        Fact = "The Fucile Modello 91, Italy's service rifle in both world wars. It fired a light 6.5mm round from a six-round clip, which dropped out of the bottom of the magazine once the last round was chambered." },
    { Class = "cw_tromboncino", Price = 6000, Category = "Italian Weapons", Side = "axis", ExtraAmmo = { ["40MM"] = 2 },
        Fact = "The 'little trombone': a 38.5mm grenade launcher fixed beside the barrel of the Moschetto 91 TS carbine and fired with a blank cartridge from the carbine's own bolt." },
    { Class = "cw_vetterli", Price = 600, Category = "Italian Weapons", Side = "axis",
        Fact = "Italy's black-powder rifle of 1870, given Giuseppe Vitali's four-round magazine in 1887. Long obsolete by 1940, but still issued to second-line and colonial troops." },
    { Class = "cw_pavesim42", Price = 4000, Category = "Italian Weapons", Side = "axis",
        Fact = "A semi-automatic rifle in 8mm Breda, one of the self-loading designs Italy trialled during the war. It never went into production." },
    { Class = "cw_berettam38", Price = 5500, Category = "Italian Weapons", Side = "axis",
        Fact = "Tullio Marengoni's Moschetto Automatico Beretta, finely machined and fitted with two triggers: the front for single shots, the rear for automatic. After 1943 the Germans took it into service as well." },
    { Class = "cw_berettam1", Price = 4500, Category = "Italian Weapons", Side = "axis",
        Fact = "The Villar Perosa cut in half and given a wooden stock and trigger: a light carbine firing 9mm Glisenti from a magazine on top. One of the first submachine guns issued in numbers." },
    { Class = "cw_1918_30", Price = 2400, Category = "Italian Weapons", Side = "axis",
        Fact = "Beretta's 1930 rework of the M1918 carbine: semi-automatic only and fed from below, sold to police units at home and abroad." },
    { Class = "cw_ovp1918", Price = 4500, Category = "Italian Weapons", Side = "axis",
        Fact = "Officine di Villar Perosa's own carbine made from the twin-barrelled gun, cocked by pulling back a sleeve around the receiver. Many were still in Italian hands in 1940." },
    { Class = "cw_villarperosa", Price = 8000, Category = "Italian Weapons", Side = "axis",
        Fact = "The twin-barrelled 9mm gun of the First World War, firing more than a thousand rounds a minute from each barrel. Built for aircraft and the mountains, it was a light machine gun more than a personal weapon." },
    { Class = "cw_bredamod30", Price = 8000, Category = "Italian Weapons", Side = "axis",
        Fact = "Italy's standard light machine gun of the war, fed from a fixed 20-round magazine loaded with stripper clips. Its rounds had to be oiled to extract, and the dust of North Africa made it notorious." },
    { Class = "cw_perinom", Price = 11000, Category = "Italian Weapons", Side = "axis", Requires = { "Machine Gunner" },
        Fact = "Giuseppe Perino's water-cooled machine gun, fed from 25-round trays. The army kept it secret, then chose the Fiat-Revelli instead, so only a few were made." },
    { Class = "cw_berettam1934", Price = 1200, Category = "Italian Weapons", Slot = "secondary", Side = "axis",
        Fact = "The Italian army's standard pistol: a compact blowback in 9mm Corto with a seven-round magazine, and a favourite souvenir of Allied soldiers." },
    { Class = "cw_glisenti", Price = 1000, Category = "Italian Weapons", Slot = "secondary", Side = "axis",
        Fact = "Italy's First World War pistol. Its locking was too weak for the 9mm Parabellum, so it fired a weaker 9mm Glisenti round. Still issued in 1940." },
    { Class = "cw_bodeom1889", Price = 800, Category = "Italian Weapons", Slot = "secondary", Side = "axis",
        Fact = "The 10.35mm service revolver of 1889; the enlisted men's version had a folding trigger and no trigger guard. It served through both world wars." },
    { Class = "cw_srcm", Price = 1300, Category = "Italian Weapons", Slot = "misc", Side = "axis",
        Fact = "The small red impact grenade the British called the 'Red Devil'. It went off on landing, and the duds were a danger to anyone who picked them up." },
    { Class = "cw_srcmsmoke", Price = 900, Category = "Italian Weapons", Slot = "misc", Side = "axis",
        Fact = "A smoke version of the SRCM Mod. 35, thrown to screen an advance or a withdrawal." },

    -- Flamethrowers
    { Class = "weapon_m2_flamethrower", Price = 0, Category = "Flamethrowers", Side = "allies", Requires = { "VIP" },
        Fact = "The M2 flamethrower, carried by US assault teams against bunkers and pillboxes in the last year of the war." },
    { Class = "weapon_flammenwerfer_35", Price = 0, Category = "Flamethrowers", Side = "axis", Requires = { "VIP" },
        Fact = "The Flammenwerfer 35, the German army's one-man flamethrower, used by pioneers against fortifications." },
}

-- Weapon stats
WEAPON_STATS = {
    doi_atow_m1garand = { Damage = 52, Recoil = 1.9, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    doi_atow_enfield = { Damage = 80, RPM = 47, Recoil = 1.7, Range = 150, Falloff = 0.1 },
    doi_atow_m1903a3 = { Damage = 80, Recoil = 1.8, Range = 150, Falloff = 0.1 },
    doi_atow_m1carbine = { Damage = 40, Recoil = 1.5, HorizontalRecoilMod = 0.85, Range = 50, Falloff = 0.25 },
    doi_atow_m1a1carbine = { Damage = 40, Recoil = 1.5, HorizontalRecoilMod = 0.85, Range = 50, Falloff = 0.25 },
    doi_atow_m1a1 = { Damage = 36, Recoil = 0.9, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_m1928a1 = { Damage = 36, Recoil = 1.1, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_m3greasegun = { Damage = 36, Recoil = 0.95, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_sten = { Damage = 34, Recoil = 0.95, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_m1918a2 = { Damage = 55, Recoil = 1.9, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    doi_atow_bren = { Damage = 55, Recoil = 2, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    doi_atow_m1919a6 = { Damage = 55,  RPM = 600, Recoil = 1.8, HorizontalRecoilMod = 1.3, Range = 80, Falloff = 0.2 },
    doi_atow_vickers = { Damage = 55, Recoil = 1.2, AimSpread = 0.02, HorizontalRecoilMod = 1.3, Range = 80, Falloff = 0.2 },
    doi_atow_m1912 = { Damage = 17, Recoil = 3, Range = 15, Falloff = 0.6 },
    doi_atow_ithaca37 = { Damage = 17, Recoil = 2.8, Range = 15, Falloff = 0.6 },
    doi_atow_rossrifle = { Damage = 80, Recoil = 1.7, Range = 150, Falloff = 0.1 },
    turner = { Damage = 52, Recoil = 1.95, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    t20 = { Damage = 45, Recoil = 1.4, AimSpread = 0.004, HorizontalRecoilMod = 0.9, Range = 60, Falloff = 0.25 },
    doi_atow_win1907 = { Damage = 45, Recoil = 0.9, AimSpread = 0.0042, HorizontalRecoilMod = 0.85, Range = 50, Falloff = 0.25 },
    doi_atow_owen = { Damage = 34, Recoil = 1.15, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    hyde44 = { Damage = 36, Recoil = 1, AimSpread = 0.016, SpreadPerShot = 0.008, MaxSpreadInc = 0.05, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_lewis = { Damage = 55, Recoil = 1.7, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    m1941 = { Damage = 55, Recoil = 1.75, AimSpread = 0.008, SpreadPerShot = 0.012, MaxSpreadInc = 0.06, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    charlton = { Damage = 55, Recoil = 1.6, AimSpread = 0.008, SpreadPerShot = 0.012, MaxSpreadInc = 0.06, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    doi_atow_m1911a1 = { Damage = 36, Recoil = 1.55, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_webley = { Damage = 36, Recoil = 0.95, AimSpread = 0.0065, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_browninghp = { Damage = 28, Recoil = 1, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_sw1917 = { Damage = 38, Recoil = 1.75, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_colt1903 = { Damage = 28, Recoil = 0.85, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_welrod = { Damage = 60, Recoil = 0.4, AimSpread = 0.009, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_sw29 = { Damage = 60, Recoil = 1.45, AimSpread = 0.0095, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_bayonetus = { Damage = 55, HeavyDamage = 100 },
    doi_atow_bayonetcw = { Damage = 55, HeavyDamage = 100 },
    doi_atow_etoolus = { Damage = 55, HeavyDamage = 100 },
    doi_atow_etoolcw = { Damage = 55, HeavyDamage = 100 },
    doi_atow_knifeus = { Damage = 55, HeavyDamage = 100 },
    doi_atow_brassknuckles = { Damage = 40, HeavyDamage = 60 },
    doi_atow_k98k = { Damage = 80, Recoil = 1.7, Range = 150, Falloff = 0.1 },
    doi_atow_g43 = { Damage = 52, Recoil = 2, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    doi_atow_mp40 = { Damage = 34, Recoil = 1.15, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_stg44 = { Damage = 42, Recoil = 1.35, HorizontalRecoilMod = 0.9, Range = 60, Falloff = 0.25 },
    doi_atow_fg42 = { Damage = 55, Recoil = 1.9, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    doi_atow_mg42 = { Damage = 50, RPM = 900, Recoil = 1.9, SpreadPerShot = 0.01, MaxSpreadInc = 0.08, HorizontalRecoilMod = 1.3, Range = 80, Falloff = 0.2 },
    doi_atow_mg34 = { Damage = 55, Recoil = 2.05, HorizontalRecoilMod = 1.3, Range = 80, Falloff = 0.2 },
    doi_atow_g98 = { Damage = 80, Recoil = 1.75, Range = 150, Falloff = 0.1 },
    g41 = { Damage = 52, Recoil = 2.05, HipSpread = 0.05, MaxSpreadInc = 0.065, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    gerat03 = { Damage = 52, Recoil = 1.95, HipSpread = 0.05, MaxSpreadInc = 0.065, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    volksturmgewehr = { Damage = 40, Recoil = 1.35, AimSpread = 0.006, SpreadPerShot = 0.012, MaxSpreadInc = 0.06, HorizontalRecoilMod = 0.85, Range = 50, Falloff = 0.25 },
    ermaemp44 = { Damage = 34, Recoil = 0.95, AimSpread = 0.014, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_ws_atow_kp31 = { Damage = 34, Recoil = 1, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_ws_atow_mp34 = { Damage = 34, Recoil = 1.05, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    doi_atow_c96carbine = { Damage = 34, Recoil = 1.15, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    stg45 = { Damage = 42, Recoil = 1.35, SpreadPerShot = 0.01, HorizontalRecoilMod = 0.9, Range = 60, Falloff = 0.25 },
    mkb39 = { Damage = 42, Recoil = 1.75, HorizontalRecoilMod = 0.9, Range = 60, Falloff = 0.25 },
    g43kurz = { Damage = 42, Recoil = 1.5, HorizontalRecoilMod = 0.9, Range = 60, Falloff = 0.25 },
    doi_atow_p38 = { Damage = 34, Recoil = 1.6, AimSpread = 0.009, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_p08 = { Damage = 34, Recoil = 1.7, AimSpread = 0.0075, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_ppk = { Damage = 28, Recoil = 0.6, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_c96 = { Damage = 34, Recoil = 1.8, AimSpread = 0.006, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    doi_atow_bayonetde = { Damage = 55, HeavyDamage = 100 },
    doi_atow_etoolde = { Damage = 55, HeavyDamage = 100 },
    -- Anti-tank
    doi_bazooka = { ReloadSpeed = 1.4 },
    doi_panzerschreck = { ReloadSpeed = 1.4 },
    -- Italian
    cw_carcanom91 = { Damage = 80, Recoil = 1.6, Range = 150, Falloff = 0.1 },
    cw_tromboncino = { Damage = 80, Recoil = 1.7, Range = 150, Falloff = 0.1 },
    cw_vetterli = { Damage = 80, Recoil = 2.1, Range = 150, Falloff = 0.1 },
    cw_pavesim42 = { Damage = 52, Recoil = 2, HorizontalRecoilMod = 1, Range = 50, Falloff = 0.25 },
    cw_berettam38 = { Damage = 34, Recoil = 1.35, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    cw_berettam1 = { Damage = 34, Recoil = 1.15, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    cw_1918_30 = { Damage = 36, Recoil = 1.4, HorizontalRecoilMod = 0.85, Range = 50, Falloff = 0.25 },
    cw_ovp1918 = { Damage = 34, Recoil = 1.15, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    cw_villarperosa = { Damage = 35, Recoil = 1, HorizontalRecoilMod = 0.75, Range = 35, Falloff = 0.3 },
    cw_bredamod30 = { Damage = 55, Recoil = 2, AimSpread = 0.006, HorizontalRecoilMod = 1.25, Range = 80, Falloff = 0.2 },
    cw_perinom = { Damage = 55, Recoil = 2.05, AimSpread = 0.008, HorizontalRecoilMod = 1.3, Range = 80, Falloff = 0.2 },
    cw_berettam1934 = { Damage = 28, Recoil = 0.8, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    cw_glisenti = { Damage = 28, Recoil = 0.85, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
    cw_bodeom1889 = { Damage = 36, Recoil = 0.95, AimSpread = 0.0066, HorizontalRecoilMod = 1, Range = 25, Falloff = 0.3 },
}

-- Journals
JOURNAL = {
    MaxPages = 40,
    MaxTitle = 40,
    GiveRange = 150, -- units
    PageLimit = 20000,
}

-- Item flags
PASSIVE_ITEM_FLAGS = PASSIVE_ITEM_FLAGS or {}

MAX_PASSIVE_ITEMS = 3

-- Rarity
PASSIVE_ITEM_FLAGS["Common"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Common]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Uncommon"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Uncommon]",
    Color        = Color(100, 255, 100)
}

PASSIVE_ITEM_FLAGS["Rare"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Rare]",
    Color        = Color(80, 180, 255)
}

PASSIVE_ITEM_FLAGS["Epic"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Epic]",
    Color        = Color(200, 100, 255)
}

PASSIVE_ITEM_FLAGS["Legendary"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Legendary]",
    Color        = Color(255, 180, 50)
}

PASSIVE_ITEM_FLAGS["Mythic"] = {
    FunctionName = "none",
    Rarity       = true,
    Description  = "[Mythic]",
    Color        = Color(255, 50, 255)
}

-- Trading
PASSIVE_ITEM_FLAGS["do_not_sell_or_buy"] = {
    FunctionName = "none",
    Description = "Merchants will not want to buy or sell these items.",
    Color = Color(127, 0, 95)
}

PASSIVE_ITEM_FLAGS["bot_buyable"] = {
    FunctionName = "none",
    Description = "This item will be sold by bots in the world, but also found by looting bots.",
    Color = Color(127, 0, 95)
}

PASSIVE_ITEM_FLAGS["relic_buyable"] = {
    FunctionName = "none",
    Description = "This item is a relic of worth, and merchants will sell these, or be found as rare loot.",
    Color = Color(127, 0, 95)
}

-- Model precache
modelsToPreload = {}
local seenModels = {}
for _, role in pairs(ROLES) do
    for _, rank in ipairs(role.Ranks or {}) do
        for _, model in ipairs(rank.ModelsAllowed or {}) do
            if not seenModels[model] then
                modelsToPreload[#modelsToPreload + 1] = model
                seenModels[model] = true
            end
        end
    end
end


print("Imperium RP Config Loaded!")
