--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/main_config_sh.lua
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

-- Predefined Models and Loadouts

--==============================================================================================
-- NATO Division Types --
--==============================================================================================

-- United States Division
US_MODELS = {"models/player/dod_american.mdl"}
US_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Commonwealth Division
COMMONWEALTH_MODELS = {"models/player/dod_american.mdl"}
COMMONWEALTH_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Latin American Fascists
LATIN_FASCISTS_MODELS = {"models/player/dod_american.mdl"}
LATIN_FASCISTS_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Israeli Defense Forces
IDF_MODELS = {"models/player/dod_american.mdl"}
IDF_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- West German
WEST_GERMAN_MODELS = {"models/player/dod_american.mdl"}
WEST_GERMAN_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Rhodesians
RHODESIAN_MODELS = {"models/player/dod_american.mdl"}
RHODESIAN_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- French Division
FRENCH_MODELS = {"models/player/dod_american.mdl"}
FRENCH_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}


--==============================================================================================
-- WARSAW Division Types --
--==============================================================================================

-- East Germany
EAST_GERMANY_MODELS = {"models/player/dod_american.mdl"}
EAST_GERMANY_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Soviets (Russians)
SOVIETS_MODELS = {"models/player/dod_american.mdl"}
SOVIETS_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Generic Eastern Bloc
EASTERN_BLOC_MODELS = {"models/player/dod_american.mdl"}
EASTERN_BLOC_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- North Korea
NORTH_KOREA_MODELS = {"models/player/dod_american.mdl"}
NORTH_KOREA_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Communist Latin American
COMMUNIST_LATIN_MODELS = {"models/player/dod_american.mdl"}
COMMUNIST_LATIN_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- African Communists
AFRICAN_COMMUNISTS_MODELS = {"models/player/dod_american.mdl"}
AFRICAN_COMMUNISTS_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Vietcong
VIETCONG_MODELS = {"models/player/dod_american.mdl"}
VIETCONG_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- Communist China (PLA)
COMMUNIST_CHINA_MODELS = {"models/player/dod_american.mdl"}
COMMUNIST_CHINA_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- American Communists
AMERICAN_COMMUNISTS_MODELS = {"models/player/dod_american.mdl"}
AMERICAN_COMMUNISTS_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}


-- NATO Divisions

--1. Commonwealth Division  
--2. United States Division  
--3. Latin American Fascists  
--4. Israeli Defense Forces  
--5. West German Division  
--6. Rhodesian Division  
--7. French Division  

-- Warsaw Divisions

--1. East German Division  
--2. Soviet Division  
--3. Generic Eastern Bloc Division  
--4. North Korea Division  
--5. Communist Latin American Guerrilla Force  
--6. African Communist Force  
--7. Vietcong Division  
--8. Communist China (PLA) Division  
--9. American Communists Insurgents  

DivisionTypes = {
    ["Commonwealth Division"] = {
        Team = "NATO",
        Description = "Generic Commonwealth Anglophilic Forces. These can be British, Canadian, Australian, or any other Anglophilic force. With the fall of the Empire, Communism stands to replace the Anglophilic Democracies we left behind.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = COMMONWEALTH_MODELS, WeaponsAllowed = COMMONWEALTH_DEFAULT_LOADOUT},
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
    ["United States Division"] = {
        Team = "NATO",
        Description = "Generic United States Armed Forces. These can be Marines, Army, Air Force, or any other US Military Force. Communism threatens the American way of life, Democracy, and the Free World.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 3, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSG", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 7, Name = "Sergeant First Class", Rank_Prefix = "SFC", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 8, Name = "Master Sergeant", Rank_Prefix = "MSG", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 10, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = US_MODELS, WeaponsAllowed = US_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Latin American Fascists"] = {
        Team = "NATO",
        Description = "Latin American authoritarian forces. Latin America became a battleground for the Cold War, with many countries falling to Communism or Authoritarianism. Communism is a threat to the Catholic Church and the Latin American way of life.",
        Ranks = {
            {ID = 1, Name = "Recluta", Rank_Prefix = "REC", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 2, Name = "Soldado", Rank_Prefix = "SDO", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 3, Name = "Soldado de Primera", Rank_Prefix = "SDP", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 4, Name = "Cabo", Rank_Prefix = "CAB", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sargento", Rank_Prefix = "SGT", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 6, Name = "Sargento Primero", Rank_Prefix = "SGP", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 7, Name = "Subteniente", Rank_Prefix = "SUB", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 8, Name = "Teniente", Rank_Prefix = "TEN", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 9, Name = "Capitán", Rank_Prefix = "CAP", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 10, Name = "Mayor", Rank_Prefix = "MYR", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 11, Name = "Comandante", Rank_Prefix = "CMD", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 12, Name = "Coronel", Rank_Prefix = "CRN", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
            {ID = 13, Name = "General", Rank_Prefix = "GEN", ModelsAllowed = LATIN_FASCISTS_MODELS, WeaponsAllowed = LATIN_FASCISTS_DEFAULT_LOADOUT},
        },        
        Classes = {
            {
                Name = "Infantero", -- Spanish for "Rifleman"
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Israeli Defense Forces"] = {
        Team = "NATO",
        Description = "The IDF played a significant role in the Cold War, combating Communism in the Middle East while supporting Democracy and Authoritarianism globally",
        Ranks = {
            {ID = 1, Name = "טירון (Recruit)", Rank_Prefix = "RCT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 2, Name = "חייל (Private)", Rank_Prefix = "PVT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 3, Name = "טוראי ראשון (Private First Class)", Rank_Prefix = "PFC", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 4, Name = "רב טוראי (Corporal)", Rank_Prefix = "CPL", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 5, Name = "סמל (Sergeant)", Rank_Prefix = "SGT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 6, Name = "סמל ראשון (Staff Sergeant)", Rank_Prefix = "SSG", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 7, Name = "רס״ל (Sergeant First Class)", Rank_Prefix = "SFC", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 8, Name = "רב סמל בכיר (Master Sergeant)", Rank_Prefix = "MSG", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 9, Name = "סגן משנה (Second Lieutenant)", Rank_Prefix = "2LT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 10, Name = "סגן (Lieutenant)", Rank_Prefix = "1LT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 11, Name = "סרן (Captain)", Rank_Prefix = "CPT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 12, Name = "רב סרן (Major)", Rank_Prefix = "MAJ", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 13, Name = "אלוף משנה (Colonel)", Rank_Prefix = "COL", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Rovai (Rifleman)",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["West German Division"] = {
        Team = "NATO",
        Description = "The Bundeswehr was formed in 1955 to defend West Germany from the threat of Communism.",
        Ranks = {
            {ID = 1, Name = "Rekrut", Rank_Prefix = "RKT", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 2, Name = "Schütze", Rank_Prefix = "SCH", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 3, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 4, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UOF", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 8, Name = "Hauptfeldwebel", Rank_Prefix = "HFW", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 9, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 10, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 11, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
            {ID = 13, Name = "Oberst", Rank_Prefix = "OBR", ModelsAllowed = WEST_GERMAN_MODELS, WeaponsAllowed = WEST_GERMAN_DEFAULT_LOADOUT},
        },        
        Classes = {
            {
                Name = "Soldat",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Rhodesian Division"] = {
        Team = "NATO",
        Description = "The Rhodesian Security Forces during the Cold War were a highly trained and disciplined military organization, specializing in counterinsurgency warfare. They were known for their effective small-unit tactics, resilience, and adaptability in combating guerrilla fighters during the Bush War. They were hired mercenaries after the war, fighting Communism in Africa, Vietnam, and other hotspots.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 2, Name = "Private", Rank_Prefix = "TRP", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = RHODESIAN_MODELS, WeaponsAllowed = RHODESIAN_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Trooper",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["French Division"] = {
        Team = "NATO",
        Description = "The French Armed Forces were a mix of traditional military heritage and modernized tactics, adapting to the geopolitical challenges of the era. Known for their involvement in post-colonial conflicts, including Algeria and Indochina, they maintained a focus on expeditionary warfare, rapid deployment, and elite paratrooper units.",
        Ranks = {
            {ID = 1, Name = "Recrue", Rank_Prefix = "REC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 2, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 3, Name = "Soldat de Première Classe", Rank_Prefix = "SPC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 4, Name = "Caporal", Rank_Prefix = "CPL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 5, Name = "Caporal-Chef", Rank_Prefix = "CPC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 6, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 7, Name = "Sergent-Chef", Rank_Prefix = "SCF", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 8, Name = "Adjudant", Rank_Prefix = "ADJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 9, Name = "Sous-Lieutenant", Rank_Prefix = "SLT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LTN", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 11, Name = "Capitaine", Rank_Prefix = "CAP", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 12, Name = "Commandant", Rank_Prefix = "CMD", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
        },        
        Classes = {
            {
                Name = "Fusilier", -- French for "Rifleman"
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },    
    ["East German Division"] = {
        Team = "WARSAW",
        Description = "The East German National People's Army (Nationale Volksarmee, NVA) was one of the most disciplined and modernized militaries of the Warsaw Pact. Known for its strong Soviet influence and emphasis on ideological training, the NVA focused on heavy mechanization, border security, and loyalty to the socialist state.",
        Ranks = {
            {ID = 1, Name = "Wehrpflichtiger", Rank_Prefix = "WPF", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 2, Name = "Schütze", Rank_Prefix = "SCH", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 3, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 4, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UOF", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 6, Name = "Unterfeldwebel", Rank_Prefix = "UF", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 7, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 8, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 9, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 10, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 11, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
            {ID = 13, Name = "Oberst", Rank_Prefix = "OB", ModelsAllowed = EAST_GERMANY_MODELS, WeaponsAllowed = EAST_GERMANY_DEFAULT_LOADOUT},
        },        
        Classes = {
            {
                Name = "Soldat",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Soviet Division"] = {
        Team = "WARSAW",
        Description = "The Soviet Armed Forces (Вооружённые Си́лы СССР) were a highly centralized and massive military force, focused on large-scale warfare and strategic operations. They emphasized combined arms tactics, mechanized infantry, and loyalty to the communist state.",
        Ranks = {
            {ID = 1, Name = "Рядовой (Private)", Rank_Prefix = "RYD", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 2, Name = "Ефрейтор (Corporal)", Rank_Prefix = "YEF", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 3, Name = "Младший сержант (Junior Sergeant)", Rank_Prefix = "MLS", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 4, Name = "Сержант (Sergeant)", Rank_Prefix = "SRZ", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 5, Name = "Старший сержант (Senior Sergeant)", Rank_Prefix = "SSZ", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 6, Name = "Старшина (Sergeant Major)", Rank_Prefix = "STN", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 7, Name = "Младший лейтенант (Junior Lieutenant)", Rank_Prefix = "MLT", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 8, Name = "Лейтенант (Lieutenant)", Rank_Prefix = "LT", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 9, Name = "Старший лейтенант (Senior Lieutenant)", Rank_Prefix = "SLT", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 10, Name = "Капитан (Captain)", Rank_Prefix = "KPT", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 11, Name = "Майор (Major)", Rank_Prefix = "MAJ", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 12, Name = "Подполковник (Lieutenant Colonel)", Rank_Prefix = "PPK", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 13, Name = "Полковник (Colonel)", Rank_Prefix = "PLK", ModelsAllowed = SOVIETS_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
        },        
        Classes = {
            {
                Name = "Strelok (Rifleman)",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Generic Eastern Bloc Division"] = {
        Team = "WARSAW",
        Description = "Representing the militaries of various Eastern Bloc nations, this division focuses on generic ranks and structures influenced by Soviet military doctrine. These forces are characterized by their emphasis on mechanization, ideological training, and loyalty to socialist regimes. This can be Yugoslavia, Poland, Czechoslovakia, or any other Eastern Bloc nation.",
        Ranks = {
            {ID = 1, Name = "Рядовой (Private)", Rank_Prefix = "RYD", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 2, Name = "Ефрейтор (Corporal)", Rank_Prefix = "YEF", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 3, Name = "Младший сержант (Junior Sergeant)", Rank_Prefix = "MLS", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 4, Name = "Сержант (Sergeant)", Rank_Prefix = "SRZ", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 5, Name = "Старший сержант (Senior Sergeant)", Rank_Prefix = "SSZ", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 6, Name = "Старшина (Sergeant Major)", Rank_Prefix = "STN", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 7, Name = "Младший лейтенант (Junior Lieutenant)", Rank_Prefix = "MLT", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 8, Name = "Лейтенант (Lieutenant)", Rank_Prefix = "LT", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 9, Name = "Старший лейтенант (Senior Lieutenant)", Rank_Prefix = "SLT", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 10, Name = "Капитан (Captain)", Rank_Prefix = "KPT", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 11, Name = "Майор (Major)", Rank_Prefix = "MAJ", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 12, Name = "Подполковник (Lieutenant Colonel)", Rank_Prefix = "PPK", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
            {ID = 13, Name = "Полковник (Colonel)", Rank_Prefix = "PLK", ModelsAllowed = EASTERN_BLOC_MODELS, WeaponsAllowed = EASTERN_BLOC_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Strelok (Rifleman)",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["North Korea Division"] = {
        Team = "WARSAW",
        Description = "The Korean People's Army (KPA) was a highly centralized and disciplined force, focused on guerrilla tactics and large-scale infantry operations. The KPA was heavily influenced by Soviet and Chinese military doctrines, with a strong emphasis on loyalty to the regime and ideological indoctrination.",
        Ranks = {
            {ID = 1, Name = "사병 (Private)", Rank_Prefix = "SAB", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 2, Name = "상등병 (Private First Class)", Rank_Prefix = "SDB", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 3, Name = "하사 (Corporal)", Rank_Prefix = "HAS", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 4, Name = "중사 (Sergeant)", Rank_Prefix = "JSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 5, Name = "상사 (Senior Sergeant)", Rank_Prefix = "SSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 6, Name = "원사 (Master Sergeant)", Rank_Prefix = "WSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 7, Name = "소위 (Junior Lieutenant)", Rank_Prefix = "SWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 8, Name = "중위 (Lieutenant)", Rank_Prefix = "JWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 9, Name = "대위 (Captain)", Rank_Prefix = "DWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 10, Name = "소령 (Major)", Rank_Prefix = "SLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 11, Name = "중령 (Lieutenant Colonel)", Rank_Prefix = "JLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 12, Name = "대령 (Colonel)", Rank_Prefix = "DLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
            {ID = 13, Name = "장군 (General)", Rank_Prefix = "JGN", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Communist Latin American Guerrilla Force"] = {
        Team = "WARSAW",
        Description = "The Communist revolutionary forces of Latin America were characterized by guerrilla warfare, ideological commitment to Marxist-Leninist principles, and strong ties to Soviet and Cuban military advisors. These forces aimed to destabilize authoritarian regimes and implement socialist governance.",
        Ranks = {
            {ID = 1, Name = "Recluta (Private)", Rank_Prefix = "REC", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 2, Name = "Soldado (Soldier)", Rank_Prefix = "SDO", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 3, Name = "Combatiente (Fighter)", Rank_Prefix = "CBT", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 4, Name = "Capitán del Pueblo (People's Captain)", Rank_Prefix = "CAP", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 5, Name = "Comandante (Commander)", Rank_Prefix = "CMD", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 6, Name = "Jefe de Guerrilla (Guerrilla Leader)", Rank_Prefix = "JGR", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 7, Name = "Líder Revolucionario (Revolutionary Leader)", Rank_Prefix = "LRV", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 8, Name = "Comisario Político (Political Commissar)", Rank_Prefix = "CPC", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 9, Name = "Teniente Popular (People's Lieutenant)", Rank_Prefix = "TNP", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 10, Name = "Mayor Revolucionario (Revolutionary Major)", Rank_Prefix = "MRV", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 11, Name = "Coronel del Pueblo (People's Colonel)", Rank_Prefix = "CRP", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 12, Name = "General Revolucionario (Revolutionary General)", Rank_Prefix = "GRV", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 13, Name = "Comandante Supremo (Supreme Commander)", Rank_Prefix = "CSM", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Guerrillero",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["African Communist Force"] = {
        Team = "WARSAW",
        Description = "African revolutionary groups and militias inspired by Marxist-Leninist ideology. These forces, often supported by Soviet and Cuban advisors, sought to overthrow colonial or imperial regimes and establish socialist states across the African continent. Their operations emphasized guerrilla warfare, ideological commitment, and local adaptability.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "REC", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 2, Name = "Fighter", Rank_Prefix = "FTR", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 3, Name = "Militiaman", Rank_Prefix = "MLT", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 6, Name = "Major Sergeant", Rank_Prefix = "MSR", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 7, Name = "Guerrilla Leader", Rank_Prefix = "GLR", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 8, Name = "People's Lieutenant", Rank_Prefix = "PLT", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 9, Name = "People's Captain", Rank_Prefix = "PCP", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 10, Name = "Commander", Rank_Prefix = "CMD", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 11, Name = "Revolutionary Major", Rank_Prefix = "RMA", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 12, Name = "Revolutionary Colonel", Rank_Prefix = "RCL", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 13, Name = "Supreme General", Rank_Prefix = "SGN", ModelsAllowed = AFRICAN_COMMUNISTS_MODELS, WeaponsAllowed = AFRICAN_COMMUNISTS_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Guerilla",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Vietcong Division"] = {
        Team = "WARSAW",
        Description = "The Vietcong, officially known as the National Liberation Front (NLF), were a highly effective guerrilla force. They combined traditional guerrilla tactics with political and ideological training, operating in dense jungles and rural areas.",
        Ranks = {
            {ID = 1, Name = "Chiến Sĩ (Fighter)", Rank_Prefix = "CS", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 2, Name = "Du Kích (Guerrilla)", Rank_Prefix = "DK", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 3, Name = "Trung Sĩ (Sergeant)", Rank_Prefix = "TS", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 4, Name = "Thượng Sĩ (Senior Sergeant)", Rank_Prefix = "THS", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 5, Name = "Chính Trị Viên (Political Officer)", Rank_Prefix = "CTV", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 6, Name = "Đội Trưởng (Team Leader)", Rank_Prefix = "DT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 7, Name = "Trung Úy (Junior Lieutenant)", Rank_Prefix = "TU", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 8, Name = "Thiếu Úy (Lieutenant)", Rank_Prefix = "LU", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 9, Name = "Đại Úy (Captain)", Rank_Prefix = "DU", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 10, Name = "Thiếu Tá (Major)", Rank_Prefix = "TT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 11, Name = "Trung Tá (Lieutenant Colonel)", Rank_Prefix = "TT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 12, Name = "Đại Tá (Colonel)", Rank_Prefix = "DT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
            {ID = 13, Name = "Tư Lệnh (Commander)", Rank_Prefix = "TL", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = VIETCONG_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Bộ Đội (Rifleman)",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["Communist China (PLA) Division"] = {
        Team = "WARSAW",
        Description = "The People's Liberation Army (PLA) of Communist China during the Cold War was a massive, disciplined force emphasizing guerrilla warfare, revolutionary ideology, and large-scale infantry operations. Heavily influenced by Maoist doctrine, the PLA became a key symbol of the Chinese Communist Party's military and political power.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 2, Name = "列兵 (Private)", Rank_Prefix = "PVT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 3, Name = "上等兵 (Private First Class)", Rank_Prefix = "PFC", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 4, Name = "下士 (Corporal)", Rank_Prefix = "CPL", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 5, Name = "中士 (Sergeant)", Rank_Prefix = "SGT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 6, Name = "上士 (Senior Sergeant)", Rank_Prefix = "SSG", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 7, Name = "士官长 (Sergeant Major)", Rank_Prefix = "SMG", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 8, Name = "少尉 (Second Lieutenant)", Rank_Prefix = "2LT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 9, Name = "中尉 (Lieutenant)", Rank_Prefix = "1LT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 10, Name = "上尉 (Captain)", Rank_Prefix = "CPT", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 11, Name = "少校 (Major)", Rank_Prefix = "MAJ", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 12, Name = "中校 (Lieutenant Colonel)", Rank_Prefix = "LTC", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
            {ID = 13, Name = "上校 (Colonel)", Rank_Prefix = "COL", ModelsAllowed = COMMUNIST_CHINA_MODELS, WeaponsAllowed = COMMUNIST_CHINA_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "步兵 (Infantry)", -- Chinese for "Rifleman"
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },
    ["American Communists Insurgents"] = {
        Team = "WARSAW",
        Description = "Hypothetical revolutionary force inspired by Marxist-Leninist ideology, seeking to overthrow capitalist structures in the United States. Operating as underground cells, these insurgents focus on guerrilla tactics, sabotage, and spreading communist propaganda. These could be inspired by Anarchists, Syndicalists, or other leftist groups.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 2, Name = "Militant", Rank_Prefix = "MLT", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 3, Name = "Fighter", Rank_Prefix = "FTR", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 6, Name = "Senior Sergeant", Rank_Prefix = "SSG", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 7, Name = "Cell Leader", Rank_Prefix = "CLD", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 8, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 9, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 10, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 11, Name = "Lieutenant Colonel", Rank_Prefix = "LTC", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 12, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
            {ID = 13, Name = "Revolutionary Commander", Rank_Prefix = "RCM", ModelsAllowed = AMERICAN_COMMUNISTS_MODELS, WeaponsAllowed = AMERICAN_COMMUNISTS_DEFAULT_LOADOUT},
        },
        Classes = {
            {
                Name = "Revolutionary",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
            },
        },
    },    
}



ALL_DIVISIONS = {}

for divisionName, _ in pairs(DivisionTypes) do
    table.insert(ALL_DIVISIONS, divisionName)
end

--==============================================================================================
-- Specializations --
--==============================================================================================

--Prerequisites = {"Engineer", "Medic"},
--WeeklyActivity = 30,

imperium_specializations = {

    --Global Specializations

    ["Medic"] = {
        DivisionTypes = ALL_DIVISIONS,
        Supply = 100, --5000
        Description = "Medics are incredibly useful on the frontlines, as they can heal and revive dead players. They can also deploy health crates. Medics are critical for keeping troops alive on the frontline.\nDead players will have a green glow, allowing medics to get to them before they respawn.\nIt might be a good idea to drag the body out of combat before healing the player.",
        Class = {
            Name = "Medic",
            Medic = true,
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"fas2_ifak","ent_spawner"},
            Prefix = "MD",
            EntitySpawner = {
                {
                    name = "Medic Box",
                    entityname = "medic_box",
                    description = "Deploy a Box filled with medic items so they can heal themselves.",
                    price = 10
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                }
            }
        }
    },
    ["Engineer"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Engineers are essential for building fortifications, repairing vehicles, and establishing Outposts. They can also deploy ammo crates to resupply troops on the frontline, and lay mines to stop both tanks and infantry. They also have the Rope tool to bind objects together.\nBuilding Forward Bases creates control over the area, helping in domination of the battlefield. When defending, creating chokepoints and fortifications are essential for victory.",
        Supply = 7500,
        Class = {
            Name = "Engineer",
            Default = false,
            Create_Outposts = true,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","ent_spawner","alydus_fortificationbuildertablet","weapon_lvsmines","weapon_lvsrepair","weapon_lvsrepair"},
            Prefix = "ENG",
            EntitySpawner = {
                {
                    name = "Ammo Supplies",
                    entityname = "universal_ammo_small",
                    description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                    price = 10
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                }
            }
        }
    }
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
                ModelsAllowed = US_MODELS,
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
                ModelsAllowed = SOVIETS_MODELS,
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