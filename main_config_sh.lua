--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/coldwar.lua
--DO NOT ANGER MURLOCK, EDIT IT IN GITHUB, OR 1. YOUR CHANGES WILL GET REMOVED, AND 2. HE WILL BE VERY ANGRY!!

imperium_rp_font = "Bahnschrift"
gamemode_name = "Cold War RP"

----------INTRO CONFIG-----------------------------------

mapMessages = {
    ["gm_flatgrass"] = "Welcome to Murlocks Testing gm_flatgrass. If you have money... I would run...",

    ["rp_fork_stasiland_fog"] = "Stralsund: East Germany. Under NATO Assault.",
    ["rp_zaton_remaster_1"] = "Communist Tito Yugoslavia: Zaton. Under NATO Intervention.",

    ["rp_clazfort"] = "Somewhere on the American East Coast: Communist Uprising.",


}


mapMessage_defualt = "Somewhere during the Cold War..."

configTexts = {
    "In the long run, there is no alternative to a world of freedom, justice, and peace.\n― John F. Kennedy",
    "We will bury you!\n― Nikita Khrushchev",
    "The supreme art of war is to subdue the enemy without fighting.\n― Sun Tzu",
    "The only thing we have to fear is fear itself.\n― Franklin D. Roosevelt",
    "An iron curtain has descended across the continent.\n― Winston Churchill",
    "The Cold War isn't thawing; it is burning with a deadly heat.\n― Richard M. Nixon",
    "Peace is not absence of conflict, it is the ability to handle conflict by peaceful means.\n― Ronald Reagan",
    "In the end, we will remember not the words of our enemies, but the silence of our friends.\n― Martin Luther King Jr.",
    "The most terrifying words in the English language are: I'm from the government and I'm here to help.\n― Ronald Reagan",
    "Mr. Gorbachev, tear down this wall!\n― Ronald Reagan",
    "We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard.\n― John F. Kennedy",
    "The only way to win the next world war is to prevent it.\n― Dwight D. Eisenhower",
    "The future belongs to those who prepare for it today.\n― Malcolm X",
    "The great question of the 20th century is whether the world can avoid a nuclear holocaust.\n― Albert Einstein",
    "Freedom is never more than one generation away from extinction.\n― Ronald Reagan",
    "Mankind must put an end to war, or war will put an end to mankind.\n― John F. Kennedy",
    "History is written by the victors.\n― Winston Churchill",
    "I know not with what weapons World War III will be fought, but World War IV will be fought with sticks and stones.\n― Albert Einstein",
    "To be prepared for war is one of the most effective means of preserving peace.\n― George Washington",
    "The price of freedom is eternal vigilance.\n― Thomas Jefferson",
    "Power tends to corrupt, and absolute power corrupts absolutely.\n― Lord Acton",
    "A lie told often enough becomes the truth.\n― Vladimir Lenin",
    "The object of war is not to die for your country but to make the other bastard die for his.\n― George S. Patton",
    "The pen is mightier than the sword.\n― Edward Bulwer-Lytton",
    "The world is not dangerous because of those who do harm but because of those who look at it without doing anything.\n― Albert Einstein",
    "You can't separate peace from freedom because no one can be at peace unless he has his freedom.\n― Malcolm X",
    "Those who make peaceful revolution impossible will make violent revolution inevitable.\n― John F. Kennedy",
    "Wars are poor chisels for carving out peaceful tomorrows.\n― Martin Luther King Jr.",
    "Diplomacy is the art of letting someone else have your way.\n― Daniele Varè",
    "Only the dead have seen the end of war.\n― Plato",
    "He who controls the past controls the future. He who controls the present controls the past.\n― George Orwell",
    "The best way to predict the future is to create it.\n― Peter Drucker",
    "Courage is what it takes to stand up and speak; courage is also what it takes to sit down and listen.\n― Winston Churchill",
    "A nation that continues year after year to spend more money on military defense than on programs of social uplift is approaching spiritual doom.\n― Martin Luther King Jr.",
    "Peace cannot be kept by force; it can only be achieved by understanding.\n― Albert Einstein"
}


intro_songs = {
    "https://www.imperiumgaming.net/coldwar/1981.mp3",
    "https://www.imperiumgaming.net/coldwar/bell.mp3"
}

intro_image_urls = {
    "https://i.imgur.com/STfxKiS.jpeg"
}


---NON OFFENSIVE COST------------------

non_attack_reduction = 0.25

outpost_cost = 500

--GAMEPLAY VARS------------------------

preperation_stage_timer = 1800
build_up_stage_timer = 900
combat_phase = 2700

---COOL DOWNS FOR TANKS------------------

entityCooldowns = {
    ["M4 Sherman"] = {cooldown = 140, lastSpawnTime = 0},
    ["M10 Wolverine"] = {cooldown = 140, lastSpawnTime = 0},
    ["M36 Slugger/Jackson"] = {cooldown = 300, lastSpawnTime = 0},
    ["M4A3E2 Jumbo"] = {cooldown = 235, lastSpawnTime = 0},
    ["M4A3E28 Easy Eight"] = {cooldown = 250, lastSpawnTime = 0},
    ["M4 Sherman Firefly"] = {cooldown = 270, lastSpawnTime = 0},
    ["Churchill MK.V"] = {cooldown = 300, lastSpawnTime = 0},
    ["Panzer VI Tiger"] = {cooldown = 270, lastSpawnTime = 0},
    ["Panzer IV F2"] = {cooldown = 140, lastSpawnTime = 0},
    ["Panzer 2 C"] = {cooldown = 60, lastSpawnTime = 0},
    ["Jagdpanzer V"] = {cooldown = 300, lastSpawnTime = 0},
    ["Panther G"] = {cooldown = 280, lastSpawnTime = 0},
    ["Stug IV"] = {cooldown = 140, lastSpawnTime = 0},
    ["Panzer III F"] = {cooldown = 90, lastSpawnTime = 0},
}

---------PROX CHAT------------------------------------------------------------------------------------

proximityDistance = 750

-------------------------------------------------------------------------------------------------------

CAPTURE_SIZE = 1250

-------XP SYSTEM CONFIG-----------------------
--XP_SCALING_FACTOR = 1.15
--baseXP = 250

MIN_XP = 500
MAX_XP = 20000
MAX_LEVEL = 80

function getXPForNextLevel(level)
    if level < 1 then return MIN_XP end
    if level > MAX_LEVEL then return MAX_XP end

    local t = (level - 1) / (MAX_LEVEL - 1)
    return math.floor(MIN_XP + (MAX_XP - MIN_XP) * (t ^ 2))
end

---------------------------------------------

faction_player_count_limit = 0

--------SPEED-----------

WALK_SPEED = 145
RUN_SPEED = 280
JUMP_POWER = 210
MAX_HEALTH = 100

------REVIVE TIME AND LOOT TIME--------

REVIVE_TIME = 20

LOOT_TIME = 10

--------------------HELP CONFIG----------------------------------------


helpTopics = {
    ["Intro"] = "Welcome to Imperium Gamings Cold War RP!\n\nThis server is running our custom ImperiumRP gamemode. That's right, this is not another Nutscript clone or a DarkRP reskin! This is a fully custom, player driven MRP gamemode! This is the MRP server you've been looking for!\n\nThis Help Menu is here to guide you through the server's extensive custom content, gameplay, and features. If you ever need to open this menu again, simply type /help in the chat! Select any topic on the right for more information.\n\n\nGetting Started:\n\nYou have already created a character and chosen your side. Now, it's time to join your first Division! On this server, all Divisions are 100% player-controlled and managed in-game. To create a new Division, a player needs 60,000 QM Points and can then work to unlock classes, additional ranks, and upgrades. As you're just starting out, it's better to join someone else's Division, where you can unlock custom classes they offer and work your way up the ranks.",
    ["Unlocking Weapons"] = "You can unlock weapons at the Weapon Crate located near spawn. Your Division, including recruits, will have base weapons already unlocked for you to use.\n\nThere are Primary, Secondary, and Miscellaneous slots where you can customize your loadout. You earn QM Points by killing players, collecting supplies, looting bodys, and actively playing on the server. These QM Points can then be used at the Weapon Crate to unlock new weapons!\n\nIn addition to Division-provided base weapons, some weapons are unlocked through specific classes, such as the Sniper class. There are also VIP only weapons that are not overpowered and are just for fun.",
    ["Divisions"] = "All Divisions on this server are player-managed, created, and controlled.\n\nWho is allowed into a Division is entirely up to the Division owner. The owner can also decide which classes can be unlocked and spends divisional supplies to unlock these classes, making their Division unique. The owner's rank is tied to the rank of the Division, which is determined by weekly activity. This means that inactive Divisions will have lower ranks, while active Divisions will achieve higher ranks.\n\nDivision ranks also determine how many classes a Division can have.\n\nAnyone on the server can create a Division for 60,000 QM Points and invite players to grow it to its maximum rank. This is a fully player-driven experience. Click F3 to open the Division Menu.",
    ["Specializations"] = "Specializations (or classes) are unlockable by Divisions through the use of divisional supply.\nSpecializations require a certain level of weekly activity and may have prerequisite Specializations that need to be unlocked first, along with the necessary supply.\n\nOnce a Division owner or Division admin unlocks a Specialization, they can whitelist members of their Division for that class, giving them full control over who has access to these roles. Classes can include Medics, Engineers, Tankers, Pilots, and more!\n\nWe encourage Division owners to be creative and build unique Divisions. Specializations can always be replaced if needed.",
    ["Outposts"] = "Outposts are extremely important for reinforcing the frontline. Without an outpost, it will be difficult to get players to the front lines, and you may lose the objective!\n\nOutposts can be created by trusted+ members of a Division as well as Engineers. These outposts take about 90 seconds to construct, and each Division is limited to one outpost at a time.\n\nOnce an outpost is constructed, players can use the Outpost Radio at spawn to spawn at these locations. However, if an enemy player is near an outpost, it will be considered under attack, and spawning will be disabled until the threat is resolved.\n\nWe encourage players to prioritize constructing and protecting forward outposts to maintain control of the battlefield!",
    ["Supply"] = "Supply is essential for deploying vehicles, aircraft, spawning entities, and constructing outposts.\n\nWithout supply, your side will struggle to maintain combat effectiveness and fight effectively.\n\nThere are two types of supply: Global and Local Division supply.\n\nWhen you collect supply, it contributes to both your Division's supply and the global supply. For example, if you collect a barrel worth 100 supply, it will add 100 supply to both your Division and the global pool.\n\n When using supply, you will use your Division supply. If your Division is out of supply, it will use the Global Supply Instead.\n\nYou can use the command /supply to view the supply log. There is zero tolerance for supply wastage, and actions are logged for accountability.\n\nOutside of the Daily Operation, the cost of everything is reduced by 75%.",
    ["Frontline System"] = "There are 5 objectives: A, B, C, D, and E.\n\nObjectives spawn supply barrels that can be collected and also indicate the current battlefield supremacy.\n\nObjectives must be captured in order. The highlighted objectives on the bottom-right of your screen show the current frontline points, which are the ones that should be attacked or defended.\n\nThe capture rate is static and only requires a majority presence to begin capturing. To locate an objective, use the compass and the distance indicator at the bottom-right of your screen. By monitoring the distance as it decreases while following a direction, you can pinpoint the location of the objective.\n\nAll maps have 5 objectives.",
    ["Daily Operation"] = "Every day at 5 EST, the Daily Operation takes place.\n\nThe current frontline and ongoing battle can be seen at the bottom-right of your screen. The Daily Operation (or Daily Offensive, as some call it) is the opportunity for the attackers to push the defenders back. If one side wins all maps, they win the war, and the system will be reset.\n\nDuring the operation, defenders are given time to prepare a defense for all 5 objectives on the map. Once the preparation time is over, the attackers must attempt to capture all 5 objectives.\n\nThe attackers have a time limit to complete their mission but gain additional time with each objective they capture. If the frontline objective is contested, the battle will not end, even if the timer reaches 0.\n\nThe Daily Operation is the most intense and exciting event this server has to offer. We encourage all players to join at 5 EST to help their side achieve victory!",
    ["Commands and Links"] = "/discord (Opens the Discord Server)\n/donate (Opens our Donation Store)\n/website (Opens our Website)\n/content (Opens the Content Pack)\n/steamgroup (Opens the Steam Group)\n\n/ooc (For Global OOC chat)\n/radio (For Team Radio)\n/r (For Global Radio)\n\n/help (Opens this Menu)\n/supply (Opens the Supply Logs).\n/options (Opens the Options Menu for ImperiumRP)\n\nF1 (Opens the Character Edit Menu)\nF2 (Opens the Promotion and Whitelist Menu)\nF3 (Opens the Division Menu)\nF4 (Opens the Character Selection Menu)\nF6 (Opens the Squad Menu)",
    ["Hand Swep"] = "The Hand Swep is a custom SWEP that allows you to move props and objects by holding left click and dragging.\n\nThis can be used to move barrles, corpses, props, and anything else that is not nailed down!\n\nIts a very fun swep and adds a lot of gmod goofines to the server... Prop Killing is allowed if you can pull it off, and can lead to some extreamly fun moments.\n\nRight Click allows you to Salute, and Left Click allows you to move objects.",
    ["Levels and XP"] = "ImperiumRP has three main stats:\n\nEndurance (Health Regen)\nAthletics (Faster Run and Higher Jump)\nBallistics (Less Recoil and Spread)\n\nAll these states give a small bonus in its respective field, making high level players more effective in combat. Saying that, a level 1 player can still kill a level 70 player, but the level 70 player will have a slight advantage. Killing a higher level player means you gain more XP!\n\nYou can level up and gain XP by playing on the server, killing players, looting bodys, and collecting Supply. You can view your level and stats by pressing F1. You start with 10 points to spend.\n\nEvery Level gets you 2 points to spend on your Character, however levels will get exponentially harder to obtain, being around level 70+ is considered a max leveled player.\n\nSome players played during WW2, and this allows them to carry over there skils they had before, as they are veterans.",
    ["VIP"] = "This server is run on donations. All of the money goes into funding custom content (like the ImperiumRP gamemode!) and paying for the Server Box, our Linux Machine in the Background that runs alot of our custom features, and our Webiste!\n\nDonate by typing /donate\n\nVIP gets you VIP only weapons, Double XP and QM points, and a role in our discord! The Donation helps us keep this server alive, and we are beyond appreciative for everyone who has helped us financially in making our dream server!\n\nIf you buy a Supply Drop package do /claim to get it in game!",
}




----------------------COMMANDS FOR CHAT--------------------------------------------------------------------

commands = {
    ["!intro"] = function(ply) handleIntroCommand(ply) end,
    ["/char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["!char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["/setspawn"] = function(ply, args) return handleSetSpawnCommand(ply, args) end,
    ["/ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["//"] = function(ply, args) return ooc_command(ply, args) end,
    ["!ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["/me"] = function(ply, args) return me_command(ply, args) end,
    ["!me"] = function(ply, args) return me_command(ply, args) end,
    ["!radio"] = function(ply, args) return radio_command(ply, args) end,
    ["/radio"] = function(ply, args) return radio_command(ply, args) end,
    ["!r"] = function(ply, args) return radio_command_ALL(ply, args) end,
    ["/r"] = function(ply, args) return radio_command_ALL(ply, args) end,
    ["!gradio"] = function(ply, args) return radio_command_ALL(ply, args) end,
    ["/gradio"] = function(ply, args) return radio_command_ALL(ply, args) end,
    ["/song"] = function(ply, args) return play_song(ply, args) end,
    ["!song"] = function(ply, args) return play_song(ply, args) end,
    ["!announce"] = function(ply, args) return announce_command(ply, args) end,
    ["/announce"] = function(ply, args) return announce_command(ply, args) end,
    ["/changemap"] = function(ply, args) return rockthevote(ply, args) end,
    ["!changemap"] = function(ply, args) return rockthevote(ply, args) end,
    ["!givevip"] = function(ply, args) return set_vip(ply, args) end,
    ["/givevip"] = function(ply, args) return set_vip(ply, args) end,
    ["/claim"] = function(ply) RedeemQMPackage(ply) end,
    ["!claim"] = function(ply) RedeemQMPackage(ply) end,
    ["!options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,
    ["/options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,
    ["!event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["!discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["/donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["!donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["!store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3224542058") end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3224542058") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3224542058") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3224542058") end,
    ["/group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!logs"] = function(ply) mLogs.Open(ply) end,
    ["/logs"] = function(ply) mLogs.Open(ply) end,
    ["/pm"] = function(ply, args) return privat_radio_msg(ply, args) end,
    ["!pm"] = function(ply, args) return privat_radio_msg(ply, args) end,
    ["!rank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/rank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!changerank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/changerank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!promote"] = function(ply, args) return promote_player(ply, args) end,
    ["/promote"] = function(ply, args) return promote_player(ply, args) end,
    ["!demote"] = function(ply, args) return demote_player(ply, args) end,
    ["/demote"] = function(ply, args) return demote_player(ply, args) end,
    ["!supply"] = function(ply) SendLatestLogData(ply) end,
    ["/supply"] = function(ply) SendLatestLogData(ply) end,
    ["!roll"] = function(ply, args) return roll_command(ply, args) end,
    ["/roll"] = function(ply, args) return roll_command(ply, args) end,
    ["!confuse"] = function(ply, args) return radio_command_confuse(ply, args) end,
    ["/confuse"] = function(ply, args) return radio_command_confuse(ply, args) end,
    ["!disguise"] = function(ply) return HideAsRandomAlly(ply) end,
    ["/disguise"] = function(ply) return HideAsRandomAlly(ply) end,
    ["!removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["!unvip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/unvip"] = function(ply, args) return remove_vip(ply, args) end,
    ["!ceasefire"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["/ceasefire"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["!pause"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["/pause"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["!cease"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["/cease"] = function(ply, args) return toggle_cease_fire(ply, args) end,
    ["!reset"] = function(ply) ResetPoints(ply) end,
    ["/reset"] = function(ply) ResetPoints(ply) end,
    ["!artillery"] = function(ply) call_in_arty(ply) end,
    ["/artillery"] = function(ply) call_in_arty(ply) end,
    ["!arty"] = function(ply) call_in_arty(ply) end,
    ["/arty"] = function(ply) call_in_arty(ply) end,
    ["!bombardment"] = function(ply) call_in_arty(ply) end,
    ["/bombardment"] = function(ply) call_in_arty(ply) end,
    ["/setalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/setaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["/addalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/addaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["/resetevent"] = function(ply) ResetGMPoints(ply) end,
    ["!resetevent"] = function(ply) ResetGMPoints(ply) end,
    ["/createdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!createdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["/newdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!newdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["/division"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!division"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!givepoints"] = function(ply) SetPlayerPointsAdmin(ply) end,
    ["!help"] = function(ply) OpenHelpMenu(ply) end,
    ["/help"] = function(ply) OpenHelpMenu(ply) end,
}

----------------------DEFUALT WEAPONS-------------------------------------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things"
}

----------------------ROLES-------------------------------------------------------------------------------

-------------------------NATO------------------------------


imperium_specializations = {
    ["Sniper"] = {
        DivisionTypes = {"U.S Infantry", "Commonwealth Division"},
        Supply = 5000,
        Description = "This class will unlock a sniper blah blah, and can also use a para shoot.",
        Prerequisites = {"Engineer", "Medic"},
        WeeklyActivity = 30,
        Class = {
            Name = "Sniper",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
     ["Engineer"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 7500,
        Class = {
            Name = "Engineer",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US AA"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 10000,
        Class = {
            Name = "Anti Air",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US Tanker"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 25000,
        Class = {
            Name = "Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US LG"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 10000,
        Class = {
            Name = "Logistics",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US MG"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 6000,
        Class = {
            Name = "Machine Gunner",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
   ["US AT"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 7500,
        Class = {
            Name = "Anti Tank",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US ART"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 15000,
        Class = {
            Name = "Artillery",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["US PILOT"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
        Supply = 30000,
        Class = {
            Name = "Pilot",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {},
            Prefix = ""
        }
    },
    ["U.S Medic"] = {
        DivisionTypes = {"U.S Infantry","Francoist Spain Infantry Division"},
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

COMMONWEALTH_MODELS = {"models/player/dod_american.mdl"}
COMMONWEALTH_WEAPONS = {}

DivisionTypes = {
    ["Commonwealth Division"] = {
        Team = "NATO",
        Description = "Generic Commonwealth Anglophilic Forces",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_WEAPONS},
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
        ["Japanese Infantry Division"] = {
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
            {ID = 4, Name = "Stabsgefreiter", Rank_Prefix = "STAB", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "UFFZ", Rank_Prefix = "UFFZ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Stabsfeldwebel", Rank_Prefix = "STFW", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
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
        ["PRC Infantry Division"] = {
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Lièbīng", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Shàngděngbīng", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Bānzhǎng", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Zǔzhǎng", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Zhōngshì", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Shàngshì", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Jūnshì Zhǎng", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Yī jí Jūnshì Zhǎng", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Pái Zhǎng", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Fù Lián Zhǎng", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Lián Zhǎng", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Shàoxiào", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Fù Yíng Zhǎng", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Bùqiāng shǒu RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
            ["Czechoslovak Infantry Division"] = {
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Vojín", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Desátník", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Svobodník", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Četař", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Seržant", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Štábní seržant", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Hlavní četař", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Štábní rotmistr", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Poručík", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Nadporučík", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Kapitan", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Plukovník", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Střelec RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
                ["Yugoslav JNA Infantry Division"] = {
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Vojnik", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Vojnik prve klasek", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Desetar", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Vojvoda", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Narednik", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Stariji narednik", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Šef čete", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Načelnik štaba", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Potporučnik", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Poručnik", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Kapetan", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Majoru", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Pukovnik", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Strelac RF",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
        },
                ["Vietnamese PAVN/VIETCONG Infantry Division"] = {
        Team = "WARSAW",
        Ranks = {
            {ID = 1, Name = "Binh sĩ", Rank_Prefix = "RCT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 2, Name = "Hạ sĩ", Rank_Prefix = "PVT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 3, Name = "Trung sĩ", Rank_Prefix = "PFC", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 4, Name = "Thượng sĩ", Rank_Prefix = "CPL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 5, Name = "Thiếu úy Quân", Rank_Prefix = "SGT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 6, Name = "Trung úy Quân", Rank_Prefix = "SSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 7, Name = "Thượng úy", Rank_Prefix = "TSG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 8, Name = "Đại úy Quân", Rank_Prefix = "1SG", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 9, Name = "Thiếu úy", Rank_Prefix = "2LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 10, Name = "Trung úy", Rank_Prefix = "1LT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 11, Name = "Đại úy", Rank_Prefix = "CPT", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 12, Name = "Thượng tá", Rank_Prefix = "MAJ", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
            {ID = 13, Name = "Đại tá", Rank_Prefix = "COL", ModelsAllowed = AIRBORN_MODELS, WeaponsAllowed = {}},
        },
        Classes = {
            {
                Name = "Lính bộ binh RF",
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

--HARDCODED TO BE AT MAX 5 RANKS
group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 30, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 175, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 250, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}

-----------------LOAD MODELS------------------

modelsToPreload = {
	"models/hts/comradebear/pm0v3/player/heer/infantry/en/m40_s1_01.mdl",
}

print("Imperium RP Config Loaded!")