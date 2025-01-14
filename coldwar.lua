imperium_specializations = {
    ["Sniper"] = {
        DivisionTypes = {"Commonwealth Forces", "U.S Infantry", "Wehrmacht"},
        Supply = 5000,
        Class = {
            Name = "Sniper",
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
    ["Commonwealth Division"] = {
        Team = "NATO",
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
    ["U.S Division"] = {
        Team = "NATO",
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
        ["JSDF Infantry Division"] = {
        Team = "NATO",
        Ranks = {
            {ID = 1, Name = "Sōrudāto", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Sōrudāto Ichidai", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Kabo", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Kabo Ichidai", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sagian", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Sagian Ichidai", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Ajudanto", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Ajudanto Ichidai", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Shōtei", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Tei", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Kaputen", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Meiyo", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Rīda Kōsa", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Raifuruman RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
        ["French Republic Infantry Division"] = {
        Team = "NATO",
        Ranks = {
            {ID = 1, Name = "Soldat", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Soldat de deuxième classe", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Soldat de première classe", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Caporal", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Sergent-chef", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Sergent-chef brevet militaire de 2e niveau", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Adjutant", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Sous-lieutenant", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Capitaine", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Commandant", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Fusilier RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
        ["Francoist Spain Infantry Division"] = {
        Team = "NATO",
        Ranks = {
            {ID = 1, Name = "Soldado", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Soldado de Primera", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Cabo", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Cabo Primero", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Sargento", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Sargento Primero", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Brigdada", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Bridada Primero", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Subtiente", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Tiente", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Capitán", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Comandante", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Coronel", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Soldado RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["West German Division"] = {
        Team = "NATO",
        Ranks = {
            {ID = 1, Name = "Schütze", Rank_Prefix = "SCH", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Obergrefreiter", Rank_Prefix = "OGFR", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Stabsgefreiter", Rank_Prefix = "STAB", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UFFZ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Stabsfeldwebel", Rank_Prefix = "STFW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Oberst der BRD", Rank_Prefix = "OBT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Soldat RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["East German Division"] = {
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Schütze", Rank_Prefix = "SOL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Obergrefreiter", Rank_Prefix = "OGRF", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Unteroffizier", Rank_Prefix = "UFFZ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Stabsunteroffizier", Rank_Prefix = "STABU", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Oberstleutnant", Rank_Prefix = "OBLT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Oberst der DDR", Rank_Prefix = "OBT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Soldat RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["Soviet Division"] = {   
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Novobranets", Rank_Prefix = "NOV", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}}, -- I could make it that the names are the respective language, and that the Prefix stays american yk like RCT etc.
            {ID = 2, Name = "Riadovoy", Rank_Prefix = "RIA", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Yefreytor", Rank_Prefix = "YEF", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Mladshiy Serzhant", Rank_Prefix = "MLS", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Serzhant", Rank_Prefix = "SER", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Starshiy Serzhant", Rank_Prefix = "SST", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Starshina", Rank_Prefix = "SAR", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Mladshiy Leytenant", Rank_Prefix = "MLY", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Leytenant", Rank_Prefix = "LEY", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Kapitan", Rank_Prefix = "KAP", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Mayor", Rank_Prefix = "MAJ", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Podpolkovnik", Rank_Prefix = "POD", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Polkovnik", Rank_Prefix = "POL", ModelsAllowed = DE_ENLISTED_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Strelkovye voyska RF",
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
    DIVISION_NATO = {
        NiceName = "NATO Recruits",
        Prefix = "NATO",
        Color = Color(100, 150, 255),
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
        Team = "NATO"
    },
    DIVISION_WARSAW = {
        NiceName = "WARSAW Recruits",
        Prefix = "WARSAW",
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
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "WARSAW"
    },
}
DEFAULT_ROLE = ROLES.DIVISION_WARSAW
