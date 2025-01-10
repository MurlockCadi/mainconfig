imperium_specializations = {
    ["Sniper"] = {
        DivisionTypes = {"Commonwealth Forces", "U.S Infantry", "Wehrmacht"},
        Supply = 5000,
        Class = {
            Name = "Sniper",
            weeklyActivity = 0,
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["U.S Medic"] = {
        DivisionTypes = {"U.S Infantry"},
        Supply = 5000,
        Class = {
            Name = "Medic",
            weeklyActivity = 0,
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    }
}


--HARDCODED TO BE AT MAX 5 RANKS
group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 30, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 175, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 250, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}





DivisionTypes = {
    ["Commonwealth Forces"] = {
        Team = "allies",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = BC_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["U.S Paratroopers"] = {
        Team = "allies",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Technical Sergeant", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "First Sergeant", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["Wehrmacht"] = {
        Team = "axis",
        Ranks = {
            {ID = 1, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Obergefreiter", Rank_Prefix = "OGF", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Unteroffizier", Rank_Prefix = "UO", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Hauptfeldwebel", Rank_Prefix = "HFW", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Oberstleutnant", Rank_Prefix = "OLT", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Soldat",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
}

ROLES = ROLES or {
    STAFF = {
        NiceName = "STAFF ON DUTY",
        Prefix = "",
        Color = Color(0, 0, 0, 255),
        Description = "Staff",
        Default = false,
        Classes = {
            {
                Name = "Staff",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_physgun", "gmod_tool"},
                Prefix = ""
            },
        },
        Ranks = {
            {
                ID = 1,
                Name = "Staff",
                Rank_Prefix = "",
                ModelsAllowed = {"models/player/combine_super_soldier.mdl", "models/player/combine_soldier_prisonguard.mdl", "models/player/breen.mdl", "models/player/monk.mdl", "models/player/odessa.mdl", "models/player/skeleton.mdl"},
                WeaponsAllowed = {},
                CanPromote = true
            },
        },
        Team = "staff",
        staff = true
    },
    DIVISION_ALLIES = {
        NiceName = "Allied Recruits",
        Prefix = "ALLIED",
        Color = Color(75, 97, 47, 255),
        Description = "Enlist in the A.E.F and help Liberate Europe from the Nazi.\n Your task will not be an easy one. Your enemy is well trained, well equipped and battle-hardened.\n He will fight savagely.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = US_ENLISTED_MODELS,
                WeaponsAllowed = {"doi_atow_m1garand", "doi_atow_etoolus", "doi_atow_m1903a3"},
                CanPromote = false
            },
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "allies"
    },
    DIVISION_AXIS = {
        NiceName = "Axis Recruits",
        Prefix = "AXIS",
        Color = Color(70, 80, 90, 255),
        Description = "Conscripted into the Wermarcht you have orders to defend the Reich against Allied Forces.\n If we can't throw the enemy into the sea within twenty-four hours then that will be.\n the beginning of the end.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = DE_ENLISTED_MODELS,
                WeaponsAllowed = {"doi_atow_k98k", "doi_atow_etoolde", "doi_atow_g43"},
                CanPromote = false
            },
        },
        Classes = {
            {
                Name = "Soldat",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "axis"
    },
}
DEFAULT_ROLE = ROLES.DIVISION_ALLIES
