--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/main_config_sh.lua
--DO NOT ANGER MURLOCK, EDIT IT IN GITHUB, OR 1. YOUR CHANGES WILL GET REMOVED, AND 2. HE WILL BE VERY ANGRY!!

imperium_rp_font = "Bahnschrift"
gamemode_name = "WARSAW VS NATO Cold War RP"

----------INTRO CONFIG-----------------------------------

mapMessages = {
    ["gm_flatgrass"] = "Welcome to Murlocks Testing gm_flatgrass. If you have money... I would run...",

    ["rp_fork_stasiland_fog"] = "Stralsund: East Germany. Under NATO Intervention and Occupation.",
    ["rp_zaton_remaster_1"] = "Communist Tito Yugoslavia: Zaton. Under NATO Intervention.",

    ["rp_clazfort"] = "Somewhere on the American East Coast: Communist Uprising.",

    ["rp_highland"] = "Eastern Bloc: Polish Peoples Republic. NATO Intervention.",

    ["rp_guantanamo_bay_cuba"] = "Republic of Cuba: Guantanamo Bay. 'The Bay of Pigs'",

    ["rp_junglestorm"] = "Democratic Peoples Republic of Korea: NATO Intervention Across the DMZ.",

    ["rp_asheville"] = "Ruins of Asheville, North Carolina. After the Bomb. WARSAW Invasion.",

    ["rp_sog_lgdv_v3_day"] = "North Vietnam: 'Operation Rolling Thunder' Under NATO Intervention",

    ["rp_vietnam_eclipse_v1a"] = "South Vietnam: 'The Tet Offensive' Under WARSAW Liberation",

    ["rp_1976berlin_v3_beta1"] = "East Berlin: German Democratic Republic. Under NATO Intervention",

    ["rp_vietnam_imperium_v2"] = "Somewhere in Vietnam during the hight of the conflict..."



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
    "https://i.imgur.com/NtHV39E.jpeg",
    "https://i.imgur.com/Vhn1Ee4.jpeg",
    "https://i.imgur.com/FH59CpI.jpeg",
    "https://i.imgur.com/e1LzMWE.jpeg",
    "https://i.imgur.com/EwEck2o.jpeg",
    "https://i.imgur.com/04iZo4x.jpeg",
    "https://i.imgur.com/N6ruS0g.jpeg",
    "https://i.imgur.com/hLZRdkf.jpeg"
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
JUMP_POWER = 225
MAX_HEALTH = 100

------REVIVE TIME AND LOOT TIME--------

REVIVE_TIME = 10

LOOT_TIME = 5

--------------------HELP CONFIG----------------------------------------


helpTopics = {
    ["Intro"] = "Welcome to Imperium Gaming's Cold War RP!\n\nThis server runs our custom ImperiumRP gamemode—designed from the ground up for an immersive, player-driven MRP experience. No Nutscript clones or DarkRP reskins here! This is the unique MRP server you've been searching for.\n\nThis Help Menu will guide you through the server's features, gameplay, and custom content. Need to reopen this menu? Type /help in chat anytime! Select a topic on the left to learn more.\n\nGetting Started:\n\nYou've created a character and chosen your side—great now is time to join your first Division. Divisions are fully player-controlled and managed in-game. Any player can create one and unlock classes, ranks, and upgrades! For now, we recommend joining an existing Division to access their custom classes, rank up, and learn the ropes. Ask to Join someones Division!",
    ["Unlocking Weapons"] = "You can unlock weapons at the Weapon Crate located near spawn. Your Division, including recruits, will have base weapons already unlocked for you to use.\n\nThere are Primary, Secondary, and Miscellaneous slots where you can customize your loadout. You earn QM Points by killing players, collecting supplies, looting bodys, and actively playing on the server. These QM Points can then be used at the Weapon Crate to unlock new weapons!\n\nIn addition to Division-provided base weapons, some weapons are unlocked through specific classes, such as the Sniper class. There are also VIP only weapons that are not overpowered and are just for fun.",
    ["Divisions"] = "All Divisions on this server are player-managed, created, and controlled.\n\nWho is allowed into a Division is entirely up to the Division owner. The owner can also decide which classes can be unlocked and spends divisional supplies to unlock these classes, making their Division unique. The owner's rank is tied to the rank of the Division, which is determined by weekly activity. This means that inactive Divisions will have lower ranks, while active Divisions will achieve higher ranks.\n\nDivision ranks also determine how many classes a Division can have.\n\nAnyone on the server can create a Division for 60,000 QM Points and invite players to grow it to its maximum rank. This is a fully player-driven experience. Click F3 to open the Division Menu.",
    ["Specializations"] = "Specializations (or classes) are unlockable by Divisions through the use of divisional supply.\nSpecializations require a certain level of weekly activity and may have prerequisite Specializations that need to be unlocked first, along with the necessary supply.\n\nOnce a Division owner or Division admin unlocks a Specialization, they can whitelist members of their Division for that class, giving them full control over who has access to these roles. Classes can include Medics, Engineers, Tankers, Pilots, and more!\n\nWe encourage Division owners to be creative and build unique Divisions. Specializations can always be replaced if needed.",
    ["Outposts"] = "Outposts are extremely important for reinforcing the frontline. Without an outpost, it will be difficult to get players to the front lines, and you may lose the objective!\n\nOutposts can be created by trusted+ members of a Division as well as Engineers. These outposts take about 90 seconds to construct, and each Division is limited to one outpost at a time.\n\nOnce an outpost is constructed, players can use the Outpost Radio at spawn to spawn at these locations. However, if an enemy player is near an outpost, it will be considered under attack, and spawning will be disabled until the threat is resolved.\n\nWe encourage players to prioritize constructing and protecting forward outposts to maintain control of the battlefield!",
    ["Supply"] = "Supply is essential for deploying vehicles, aircraft, spawning entities, and constructing outposts.\n\nWithout supply, your side will struggle to maintain combat effectiveness and fight effectively.\n\nThere are two types of supply: Global and Local Division supply.\n\nWhen you collect supply, it contributes to both your Division's supply and the global supply. For example, if you collect a crate worth 100 supply, it will add 100 supply to both your Division and the global pool.\n\n When using supply, you will use your Division supply. If your Division is out of supply, it will use the Global Supply Instead.\n\nYou can use the command /supply to view the supply log. There is zero tolerance for supply wastage, and actions are logged for accountability.\n\nOutside of the Daily Operation, the cost of everything is reduced by 75%.",
    ["Supply Refinery"] = "Each point outputs Crude Oil every 5 minutes. This Crude Oil can only be collected by the owner of the point. Crude Oil can then be refined into Supply.\n\nTrusted+ players can spawn a Supply Refinery that takes 10 minutes to refine 100 Crude Oil into Supply. There can only be one refinery per division on the map at any given time. Refineries cannot be placed near spawn areas, as this violates server rules.\n\nThe refinery creates 25 residue Supply for every 100 Crude Oil it refines. Enemies can destroy the refinery and collect the residue Supply. Residue Supply is deducted from the division's supply when the refinery is removed or destroyed. Be aware of this when spawning a new refinery, as it will drop residue Supply. Residue Supply only contributes to the division's supply, not the global supply, when collected.",
    ["Frontline System"] = "There are 5 objectives: A, B, C, D, and E.\n\nObjectives spawn supply barrels that can be collected and also indicate the current battlefield supremacy.\n\nObjectives must be captured in order. The highlighted objectives on the bottom-right of your screen show the current frontline points, which are the ones that should be attacked or defended.\n\nThe capture rate is static and only requires a majority presence to begin capturing. To locate an objective, use the compass and the distance indicator at the bottom-right of your screen. By monitoring the distance as it decreases while following a direction, you can pinpoint the location of the objective.\n\nAll maps have 5 objectives.",
    ["Daily Operation"] = "Every day at 5 EST, the Daily Operation takes place.\n\nThe current frontline and ongoing battle can be seen at the bottom-right of your screen. The Daily Operation (or Daily Offensive, as some call it) is the opportunity for the attackers to push the defenders back. If one side wins all maps, they win the war, and the system will be reset.\n\nDuring the operation, defenders are given time to prepare a defense for all 5 objectives on the map. Once the preparation time is over, the attackers must attempt to capture all 5 objectives.\n\nThe attackers have a time limit to complete their mission but gain additional time with each objective they capture. If the frontline objective is contested, the battle will not end, even if the timer reaches 0.\n\nThe Daily Operation is the most intense and exciting event this server has to offer. We encourage all players to join at 5 EST to help their side achieve victory!",
    ["Commands and Links"] = "/discord (Opens the Discord Server)\n/donate (Opens our Donation Store)\n/website (Opens our Website)\n/content (Opens the Content Pack)\n/steamgroup (Opens the Steam Group)\n\n/ooc (For Global OOC chat)\n/radio (For Team Radio)\n/r (For Global Radio)\n\n/help (Opens this Menu)\n/supply (Opens the Supply Logs).\n/options (Opens the Options Menu for ImperiumRP)\n\nF1 (Opens the Character Edit Menu)\nF2 (Opens the Promotion and Whitelist Menu)\nF3 (Opens the Division Menu)\nF4 (Opens the Character Selection Menu)\nF6 (Opens the Squad Menu)",
    ["Hand Swep"] = "The Hand Swep is a custom SWEP that allows you to move props and objects by holding left click and dragging.\n\nThis can be used to move barrles, corpses, props, and anything else that is not nailed down!\n\nIts a very fun swep and adds a lot of gmod goofines to the server... Prop Killing is allowed if you can pull it off, and can lead to some extreamly fun moments.\n\nRight Click allows you to Salute, and Left Click allows you to move objects.",
    ["Levels and XP"] = "ImperiumRP has three main stats:\n\nEndurance (Health Regen)\nAthletics (Faster Run and Higher Jump)\nBallistics (Less Recoil and Spread)\n\nAll these states give a small bonus in its respective field, making high level players more effective in combat. Saying that, a level 1 player can still kill a level 70 player, but the level 70 player will have a slight advantage. Killing a higher level player means you gain more XP!\n\nYou can level up and gain XP by playing on the server, killing players, looting bodys, and collecting Supply. You can view your level and stats by pressing F1. You start with 10 points to spend.\n\nEvery Level gets you 2 points to spend on your Character, however levels will get exponentially harder to obtain, being around level 70+ is considered a max leveled player.\n\nSome players played during WW2, and this allows them to carry over there skils they had before, as they are veterans.",
    ["VIP"] = "This server is run on donations. All of the money goes into funding custom content (like the ImperiumRP gamemode!) and paying for the Server Box, our Linux Machine in the Background that runs alot of our custom features, and our Webiste!\n\nDonate by typing /donate\n\nVIP gets you VIP only weapons, Double XP and QM points, and a role in our discord! The Donation helps us keep this server alive, and we are beyond appreciative for everyone who has helped us financially in making our dream server!\n\nIf you buy a Supply Drop package do /claim to get it in game!",
    ["Radiation and Atomics"] = "Ever since the splitting of the atom, the world has changed forever. Atomic warfare is now a reality, with radioactive weapons and materials commonplace.\n\nAround the map, you will find Nuclear Waste. Avoid this. Exposure to too much radiation will lead to radiation sickness and death. A little exposure is okay, but too much will guarantee your doom.\n\nIf there is an Atomic Specialist class, there is even more to be warned about. They can collect this waste and use it in nuclear reactors to create weapons-grade plutonium, which can lead to the creation of nuclear weapons.\n\nAvoid contact with both the reactors and the materials Atomic Specialists leave behind. Radiation is a silent but quick killer. Only Medics and Atomic Specialists can see radiation levels of players.\n\nYou may recover from radiation poisoning depending on how much you have been exposed, being healed by a Medic Box lowers your raditation levels quicker and can help stabilize your condition.",
    ["Reviving and Looting"] = "In this gamemode, when you die your corpse will remain on the battlefield. This can be dragged around and the player (if they have not respawned) can see whats going on.\n\nYou can be revived by a Medic, and can see how close the nearest medic is. Medics will get a green glow around all players that can be revived, so can see your corpse through walls.\n\nTo prevent players being revived you can loot there corpses, this will take 5 seconds and you will gain supply, XP and QM points!",
    ["Oil Drilling"] = "Logistics have the ability to spawn Oil Drills, which cost 250 supply to deploy. These drills can prospect for oil and take 30-60 seconds to locate any oil deposits.\n\nEvery map change or restart resets the oil deposits on the map, allowing new prospecting opportunities.\n\nWhen an oil deposit is found, you've hit black gold! Until the deposit (typically around 20,000 oil) is fully extracted, your drill will continue collecting crude oil from the earth.\n\nDrills and oil deposits cannot be placed in spawn.\n\nThe enemy will want to destroy your oil field. Once you discover an oil deposit, if they know its location they might attempt to destroy it while establishing their own.\n\nOil deposits are rare, so don’t be discouraged if it takes time to find one. However, once you do, you'll be rolling in QM Points, XP, and, of course, supply for refining!"
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
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3401523747") end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3401523747") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3401523747") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3401523747") end,
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
    ["!givepoints"] = function(ply, args) SetPlayerPointsAdmin(ply, args) end,
    ["!help"] = function(ply) OpenHelpMenu(ply) end,
    ["/help"] = function(ply) OpenHelpMenu(ply) end,
    ["!addspec"] = function(ply, args) Add_Spec_To_My_Division(ply, args) end,
    ["/addspec"] = function(ply, args) Add_Spec_To_My_Division(ply, args) end,
}

----------------------DEFUALT WEAPONS-------------------------------------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things"
}

----------------------ROLES-------------------------------------------------------------------------------

-- Predefined Models and Loadouts

--==============================================================================================
-- TO BE DONE AT LATER DATE --
--==============================================================================================

-- French Division
FRENCH_MODELS = {"models/player/dod_american.mdl"}
FRENCH_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

-- North Korea
NORTH_KOREA_MODELS = {"models/player/dod_american.mdl"}
NORTH_KOREA_DEFAULT_LOADOUT = {"doi_atow_m1903a3"}

--==============================================================================================
-- NATO Division Types --
--==============================================================================================

-- United States Division (DONE)
US_MODELS = {
    "models/hitboxedit/us/army/us_army_1_fritz.mdl",
    "models/hitboxedit/us/army/us_army_2_fritz.mdl",
    "models/hitboxedit/us/army/us_army_3_fritz.mdl",
    "models/hitboxedit/us/army/us_army_4_fritz.mdl",
    "models/hitboxedit/us/army/us_army_5_fritz.mdl",
    "models/hitboxedit/us/army/usmc_1_fritz.mdl",
    "models/hitboxedit/us/army/usmc_2_fritz.mdl",
    "models/hitboxedit/us/army/usmc_3_fritz.mdl",
    "models/hitboxedit/us/army/usmc_4_fritz.mdl",
    "models/hitboxedit/us/army/usmc_5_fritz.mdl"
}
US_DEFAULT_LOADOUT = {"cw_nam_m16a1","doi_atow_m1911a1","doi_atow_knifeus"}

-- Commonwealth Division (Done)
COMMONWEALTH_MODELS = {"models/kuge/fictional/brazil war/uk royal marines/uk-marines-pm1.mdl","models/kuge/fictional/british/1950-74s/uk-1.mdl"}
COMMONWEALTH_DEFAULT_LOADOUT = {"doi_atow_webley","doi_atow_knifeus"}

-- Latin American Fascists (Done)
LATIN_FASCISTS_MODELS = {"models/kuge/fictional/brazil war/argentina army/argentina-pm1.mdl"}
LATIN_FASCISTS_DEFAULT_LOADOUT = {"doi_atow_m1911a1","doi_atow_knifeus"}

-- Israeli Defense Forces (Done)
IDF_MODELS = {"models/coldwaridf/pm/israeli1.mdl","models/coldwaridf/pm/israeli2.mdl"}
IDF_DEFAULT_LOADOUT = {"doi_atow_m1911a1","doi_atow_knifeus"}

-- West German (Done)
WEST_GERMAN_MODELS = {"models/westgermans/soldier1_pm.mdl","models/kuge/fictional/brazil war/german volunteer army/germanvolunteer-pm1.mdl"}
WEST_GERMAN_DEFAULT_LOADOUT = {"cw_g3a3","doi_atow_p08","doi_atow_etoolde"}

-- Rhodesians (Done)
RHODESIAN_MODELS = {"models/rhods/rhod111.mdl","models/rhods/zanu22.mdl"}
RHODESIAN_DEFAULT_LOADOUT = {"doi_atow_knifeus","doi_atow_m1911a1"}

--==============================================================================================
-- WARSAW Division Types --
--==============================================================================================

-- East Germany
EAST_GERMANY_MODELS = {
    "models/eastgermans/soldier1_pm.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_01.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_02.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_03.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_04.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_05.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/enlisted/ws_enlisted_field_06.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_01.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_02.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_03.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_04.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_05.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/enlisted/lask_enlisted_field_06.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_01.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_02.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_03.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_04.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_05.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/enlisted/lask_enlisted_coat_06.mdl"
}
EAST_GERMANY_CO_MODELS = {
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_01.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_02.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_03.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_04.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_05.mdl",
    "models/strabe/ddr2/nvaspecialforces/ws/bdu/officer/ws_officer_field_06.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_01.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_02.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_03.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_04.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_05.mdl",
    "models/strabe/ddr2/nva7380/lask/bdu/officer/lask_officer_field_06.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_01.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_02.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_03.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_04.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_05.mdl",
    "models/strabe/ddr2/nva7380/lask/coat/officer/lask_officer_coat_06.mdl"
}
EAST_GERMANY_DEFAULT_LOADOUT = {"cw_nam_akm","doi_atow_p38","doi_atow_etoolde"}

-- Soviets (Russians)
SOVIETS_MODELS = {
    "models/playermodel/soviet/boris_demolition_01_pm.mdl",
    "models/playermodel/soviet/alvin_vdvscout_01_pm.mdl",
    "models/playermodel/soviet/alvin_demolition_01_pm.mdl",
    "models/playermodel/soviet/alvin_infantry_01_pm.mdl",
    "models/playermodel/soviet/alvin_infantry_02_pm.mdl",
    "models/playermodel/soviet/alvin_infantry_02_radioman_pm.mdl",
    "models/playermodel/soviet/boris_vdvscout_01_pm.mdl",
    "models/playermodel/soviet/boris_infantry_01_pm.mdl",
    "models/playermodel/soviet/boris_infantry_02_pm.mdl",
    "models/playermodel/soviet/boris_infantry_02_radioman_pm.mdl",
    "models/playermodel/soviet/helga_infantry_02_pm.mdl",
    "models/playermodel/soviet/helga_offduty_pm.mdl",
    "models/playermodel/soviet/helga_vdvscout_01_pm.mdl",
    "models/playermodel/soviet/monika_infantry_02_pm.mdl",
    "models/playermodel/soviet/monika_offduty_pm.mdl",
    "models/playermodel/soviet/monika_vdvscout_01_pm.mdl",
    "models/playermodel/soviet/tabatabai_demolition_01_pm.mdl",
    "models/playermodel/soviet/tabatabai_infantry_01_pm.mdl",
    "models/playermodel/soviet/tabatabai_infantry_02_pm.mdl",
    "models/playermodel/soviet/tabatabai_infantry_02_radioman_pm.mdl",
    "models/playermodel/soviet/viktor_demolition_01_pm.mdl",
    "models/playermodel/soviet/viktor_infantry_01_pm.mdl",
    "models/playermodel/soviet/viktor_infantry_02_pm.mdl",
    "models/playermodel/soviet/zurich_demolition_01_pm.mdl",
    "models/playermodel/soviet/zurich_infantry_01_pm.mdl",
    "models/playermodel/soviet/zurich_infantry_02_pm.mdl",
    "models/playermodel/soviet/zurich_infantry_02_radioman_pm.mdl"
}

SOVIET_CO_MODELS = {"models/playermodel/soviet/boris_offduty_pm.mdl","models/playermodel/soviet/boris_infantry_officer_pm.mdl","models/playermodel/soviet/alvin_offduty_pm.mdl","models/playermodel/soviet/alvin_infantry_officer_pm.mdl","models/playermodel/soviet/monika_offduty_pm.mdl","models/playermodel/soviet/tabatabai_infantry_officer_pm.mdl","models/playermodel/soviet/tabatabai_offduty_pm.mdl","models/playermodel/soviet/viktor_infantry_officer_pm.mdl","models/playermodel/soviet/zurich_infantry_officer_pm.mdl","models/playermodel/soviet/zurich_offduty_pm.mdl"}
SOVIETS_DEFAULT_LOADOUT = {"cw_nam_akm","cw_nam_tokarev_tt33","doi_atow_brassknuckles"}

-- Generic Eastern Bloc (Done)
EASTERN_BLOC_MODELS = {"models/kuge/fictional/balkan/80-90s/balkans-1-pm.mdl"}
EASTERN_BLOC_DEFAULT_LOADOUT = {"cw_nam_akm","cw_nam_tokarev_tt33","doi_atow_brassknuckles"}

-- Communist Latin American (Custom models on the way, for now, these will do)
COMMUNIST_LATIN_MODELS = {"models/kuge/fictional/brazil war/mexican volunteer army/mexican-pm1.mdl"}
COMMUNIST_LATIN_DEFAULT_LOADOUT = {"cw_nam_akm","doi_atow_m1911a1","doi_atow_knifeus"}

-- African Communists (Done)
AFRICAN_COMMUNISTS_MODELS = {"models/tfusion/playermodels/mw3/mp_africa_militia_a.mdl","models/tfusion/playermodels/mw3/mp_africa_militia_b.mdl","models/tfusion/playermodels/mw3/mp_africa_militia_c.mdl","models/tfusion/playermodels/mw3/mp_africa_militia_d.mdl","models/tfusion/playermodels/mw3/mp_opforce_ghillie_africa_militia_sniper.mdl"}
AFRICAN_COMMUNISTS_DEFAULT_LOADOUT = {"cw_nam_akm","doi_atow_m1911a1","doi_atow_brassknuckles"}

-- Vietcong (Done)
VIETCONG_MODELS = {"models/hitboxedit/vietnam/humans/vc/gmod/vc_1.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_2.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_3.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_4.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_5.mdl"}
VIETCONG_DEFAULT_LOADOUT = {"cw_nam_akm","cw_nambu_type_14","doi_atow_knifeus"}

-- Communist China (PLA) (Done)
COMMUNIST_CHINA_MODELS = {"models/pla/plaaridcam/art.mdl","models/pla/plaaridcam/chau.mdl","models/pla/plawoodlan/art.mdl","models/pla/plawoodlan/chau.mdl"}
COMMUNIST_CHINA_DEFAULT_LOADOUT = {"cw_nam_akm","cw_nambu_type_14","doi_atow_knifeus"}

-- American Communists 
AMERICAN_COMMUNISTS_MODELS = {"models/csgoanarchist1pm.mdl","models/csgoanarchist2pm.mdl","models/csgoanarchist3pm.mdl","models/csgoanarchist4pm.mdl"}
AMERICAN_COMMUNISTS_DEFAULT_LOADOUT = {"cw_nam_mac10","doi_atow_m1911a1","doi_atow_knifeus"}


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
            {ID = 1, Name = "Tiron (Recruit)", Rank_Prefix = "RCT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 2, Name = "Turai (Private)", Rank_Prefix = "PVT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 3, Name = "Turai Rishon (Private First Class)", Rank_Prefix = "PFC", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 4, Name = "Rav Turai (Corporal)", Rank_Prefix = "CPL", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 5, Name = "Samal (Sergeant)", Rank_Prefix = "SGT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 6, Name = "Samal Rishon (SSG)", Rank_Prefix = "SSG", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 7, Name = "Rav Samal (SFC)", Rank_Prefix = "SFC", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 8, Name = "Rav Samal Rishon (MSG)", Rank_Prefix = "MSG", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 9, Name = "Segen Mishne (2ndLT)", Rank_Prefix = "2LT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 10, Name = "Segen (1stLT)", Rank_Prefix = "1LT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 11, Name = "Seren (Captain)", Rank_Prefix = "CPT", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 12, Name = "Rav Seren (Major)", Rank_Prefix = "MAJ", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
            {ID = 13, Name = "Aluf Mishne (Colonel)", Rank_Prefix = "COL", ModelsAllowed = IDF_MODELS, WeaponsAllowed = IDF_DEFAULT_LOADOUT},
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
    --["French Division"] = {
    --    Team = "NATO",
    --    Description = "The French Armed Forces were a mix of traditional military heritage and modernized tactics, adapting to the geopolitical challenges of the era. Known for their involvement in post-colonial conflicts, including Algeria and Indochina, they maintained a focus on expeditionary warfare, rapid deployment, and elite paratrooper units.",
    --    Ranks = {
    --        {ID = 1, Name = "Recrue", Rank_Prefix = "REC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 2, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 3, Name = "Soldat de Première Classe", Rank_Prefix = "SPC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 4, Name = "Caporal", Rank_Prefix = "CPL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 5, Name = "Caporal-Chef", Rank_Prefix = "CPC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 6, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 7, Name = "Sergent-Chef", Rank_Prefix = "SCF", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 8, Name = "Adjudant", Rank_Prefix = "ADJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 9, Name = "Sous-Lieutenant", Rank_Prefix = "SLT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 10, Name = "Lieutenant", Rank_Prefix = "LTN", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 11, Name = "Capitaine", Rank_Prefix = "CAP", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 12, Name = "Commandant", Rank_Prefix = "CMD", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --        {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_DEFAULT_LOADOUT},
    --    },        
    --    Classes = {
    --        {
    --            Name = "Fusilier", -- French for "Rifleman"
    --            Default = true,
    --            Models = {},
    --            Weapons = {},
    --            SpawnWeapons = {},
    --            Prefix = "",
    --        },
    --    },
    --},    
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
            {ID = 7, Name = "Младший лейтенант (Junior Lieutenant)", Rank_Prefix = "MLT", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 8, Name = "Лейтенант (Lieutenant)", Rank_Prefix = "LT", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 9, Name = "Старший лейтенант (Senior Lieutenant)", Rank_Prefix = "SLT", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 10, Name = "Капитан (Captain)", Rank_Prefix = "KPT", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 11, Name = "Майор (Major)", Rank_Prefix = "MAJ", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 12, Name = "Подполковник (Lieutenant Colonel)", Rank_Prefix = "PPK", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
            {ID = 13, Name = "Полковник (Colonel)", Rank_Prefix = "PLK", ModelsAllowed = SOVIET_CO_MODELS, WeaponsAllowed = SOVIETS_DEFAULT_LOADOUT},
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
    --["North Korea Division"] = {
    --    Team = "WARSAW",
    --    Description = "The Korean People's Army (KPA) was a highly centralized and disciplined force, focused on guerrilla tactics and large-scale infantry operations. The KPA was heavily influenced by Soviet and Chinese military doctrines, with a strong emphasis on loyalty to the regime and ideological indoctrination.",
    --    Ranks = {
    --        {ID = 1, Name = "사병 (Private)", Rank_Prefix = "SAB", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 2, Name = "상등병 (Private First Class)", Rank_Prefix = "SDB", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 3, Name = "하사 (Corporal)", Rank_Prefix = "HAS", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 4, Name = "중사 (Sergeant)", Rank_Prefix = "JSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 5, Name = "상사 (Senior Sergeant)", Rank_Prefix = "SSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 6, Name = "원사 (Master Sergeant)", Rank_Prefix = "WSA", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 7, Name = "소위 (Junior Lieutenant)", Rank_Prefix = "SWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 8, Name = "중위 (Lieutenant)", Rank_Prefix = "JWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 9, Name = "대위 (Captain)", Rank_Prefix = "DWI", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 10, Name = "소령 (Major)", Rank_Prefix = "SLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 11, Name = "중령 (Lieutenant Colonel)", Rank_Prefix = "JLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 12, Name = "대령 (Colonel)", Rank_Prefix = "DLY", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --        {ID = 13, Name = "장군 (General)", Rank_Prefix = "JGN", ModelsAllowed = NORTH_KOREA_MODELS, WeaponsAllowed = NORTH_KOREA_DEFAULT_LOADOUT},
    --    },
    --    Classes = {
    --        {
    --            Name = "Rifleman",
    --            Default = true,
    --            Models = {},
    --            Weapons = {},
    --            SpawnWeapons = {},
    --            Prefix = "",
    --        },
    --    },
    --},
    ["Communist Latin American Guerrilla Force"] = {
        Team = "WARSAW",
        Description = "The Communist revolutionary forces of Latin America were characterized by guerrilla warfare, ideological commitment to Marxist-Leninist principles, and strong ties to Soviet and Cuban military advisors. These forces aimed to destabilize authoritarian regimes and implement socialist governance.",
        Ranks = {
            {ID = 1, Name = "Recluta",            Rank_Prefix = "REC", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 2, Name = "Soldado",            Rank_Prefix = "SDO", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 3, Name = "Soldado de primera", Rank_Prefix = "SD1", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 4, Name = "Cabo",               Rank_Prefix = "CAB", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 5, Name = "Sargento De Tercera",  Rank_Prefix = "SGT3", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 6, Name = "Sargento De Segunda",  Rank_Prefix = "SGT2", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 7, Name = "Sargento De Primera",   Rank_Prefix = "SGT1", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 8, Name = "Sargento Técnico",      Rank_Prefix = "STEC", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 9, Name = "Suboffical",           Rank_Prefix = "SUB",  ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 10, Name = "Teniente",         Rank_Prefix = "TEN",  ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 11, Name = "Primer Teniente",  Rank_Prefix = "1TEN", ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 12, Name = "Capitan",          Rank_Prefix = "CAP",  ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
            {ID = 13, Name = "Major",            Rank_Prefix = "MAJ",  ModelsAllowed = COMMUNIST_LATIN_MODELS, WeaponsAllowed = COMMUNIST_LATIN_DEFAULT_LOADOUT},
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
NATO_DIVISIONS = {}
WARSAW_DIVISIONS = {}

for divisionName, _ in pairs(DivisionTypes) do
    table.insert(ALL_DIVISIONS, divisionName)
    if DivisionTypes[divisionName].Team == "NATO" then
        table.insert(NATO_DIVISIONS, divisionName)
    elseif DivisionTypes[divisionName].Team == "WARSAW" then
        table.insert(WARSAW_DIVISIONS, divisionName)
    end
end

--==============================================================================================
-- Specializations --
--==============================================================================================

--Prerequisites = {"Engineer", "Medic"},
--WeeklyActivity = 30,

imperium_specializations = {
    ["African Pilot"] = {
        DivisionTypes = {"American Communists Insurgents"},
        Description = "African Pilots are skilled in flying helicopters and providing air support to ground forces. They can deploy helicopters for transportation and reconnaissance, as well as provide close air support to troops on the ground.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Pilot",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "PI",
            vehicles = {
                {
                    name = "Helicopter",
                    entityname = "lvs_helicopter",
                    description = "Deploy a helicopter for air support and transportation.",
                    price = 500
                },
            }
        }
    },

    ["WARSAW Pilot"] = {
        DivisionTypes = WARSAW_DIVISIONS,
        Description = "WARSAW Pilots are skilled in flying helicopters and providing air support to ground forces. They can deploy helicopters for transportation and reconnaissance, as well as provide close air support to troops on the ground.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Pilot",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "PI",
            vehicles = {
                {
                    name = "MI-17 MD",
                    entityname = "sw_mi17md",
                    description = "Deploy a helicopter for transportation.",
                    price = 400
                },
		{
                    name = "KA-52",
                    entityname = "sw_ka52",
                    description = "Deploy a extremely powerful attack helicopter.",
                    price = 1000
                },
            }
        }
    },

    ["NATO Pilot"] = {
        DivisionTypes = NATO_DIVISIONS,
        Description = "NATO Pilots are skilled in flying helicopters and providing air support to ground forces. They can deploy helicopters for transportation and reconnaissance, as well as provide close air support to troops on the ground.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Pilot",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "PI",
            vehicles = {
                {
                    name = "AH-64",
                    entityname = "sw_ah64",
                    description = "Deploy a extremely powerful attack helicopter.",
                    price = 1000
                },
		{
                    name = "Chinook",
                    entityname = "lvs_chinook",
                    description = "Deploy a helicopter for transportation.",
                    price = 400
                },
            }
        }
    },

    ["WARSAW Tankers"] = {
        DivisionTypes = WARSAW_DIVISIONS,
        Description = "Tankers are the backbone of armored warfare. They can deploy and operate various tanks to break through enemy lines and provide heavy fire support.",
        Supply = 15000,
        WeeklyActivity = 75,
        Class = {
            Name = "Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "TK",
            vehicles = {
                {
                    name = "T-72",
                    entityname = "sw_t72b3",
                    description = "Deploy a heavy tank for armored support.",
                    price = 1000
                },
            }
        }
    },

    ["NATO Tankers"] = {
        DivisionTypes = NATO_DIVISIONS,
        Description = "Tankers are the backbone of armored warfare. They can deploy and operate various tanks to break through enemy lines and provide heavy fire support.",
        Supply = 15000,
        WeeklyActivity = 75,
        Class = {
            Name = "Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "TK",
            vehicles = {
                {
                    name = "M60",
                    entityname = "lvs_wheeldrive_rp_m60",
                    description = "Deploy a heavy tank for armored support.",
                    price = 1000
                },
            }
        }
    },

    ["NATO Mechanized"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Mechanized units combine infantry and armored vehicles to create a highly mobile and versatile force. They can deploy various APCs and IFVs to transport troops and provide fire support.",
        Supply = 12000,
        WeeklyActivity = 60,
        Class = {
            Name = "Mechanized",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "MECH",
            vehicles = {
                {
                    name = "M113",
                    entityname = "sw_m113",
                    description = "Deploy an APC for troop transport and fire support.",
                    price = 400
                },
		{
                    name = "Marder",
                    entityname = "sw_marder1a5",
                    description = "Deploy an APC for troop transport and fire support.",
                    price = 600
                },
            }
        }
    },

    ["WARSAW Mechanized"] = {
        DivisionTypes = WARSAW_DIVISIONS,
        Description = "Mechanized units combine infantry and armored vehicles to create a highly mobile and versatile force. They can deploy various APCs and IFVs to transport troops and provide fire support.",
        Supply = 12000,
        WeeklyActivity = 60,
        Class = {
            Name = "Mechanized",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "MECH",
            vehicles = {
                {
                    name = "BMP-3M",
                    entityname = "sw_bmp3m",
                    description = "Deploy an APC for troop transport and fire support.",
                    price = 750
                },
		{
                    name = "K-17",
                    entityname = "sw_k17",
                    description = "Deploy an APC for troop transport and fire support.",
                    price = 650
                },
            }
        }
    },

    ["NATO Logistics"] = {
        DivisionTypes = NATO_DIVISIONS,
        Description = "Logistics units are crucial for maintaining supply lines, repairing vehicles, and finding crude oil. They ensure that frontline units have the resources they need to continue fighting.",
        Supply = 8000,
        WeeklyActivity = 40,
        Class = {
            Name = "Logistics",
            Default = false,
            Models = {},
            can_oil = true,
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair","ent_spawner","refinery_spawner"},
            Prefix = "LOG",
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
                },
                {
                    name = "Oil Drill",
                    entityname = "oil_drill",
                    description = "Deploy an oil drill to extract crude oil for the refinery.",
                    price = 1000
                }
            },
            vehicles = {
                {
                    name = "Ural-4320 Troop Transport",
                    entityname = "sw_ural4320_troop",
                    description = "Deploy a truck to transport troops.",
                    price = 200
                },
		{
                    name = "Ural-4320 Cargo Transport",
                    entityname = "sw_ural4320",
                    description = "Deploy a supply truck to transport resources and supplies.",
                    price = 150
                },
            }
        }
    },

    ["WARSAW Logistics"] = {
        DivisionTypes = WARSAW_DIVISIONS,
        Description = "Logistics units are crucial for maintaining supply lines, repairing vehicles, and finding crude oil. They ensure that frontline units have the resources they need to continue fighting.",
        Supply = 8000,
        WeeklyActivity = 40,
        Class = {
            Name = "Logistics",
            Default = false,
            Models = {},
            can_oil = true,
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair","ent_spawner","refinery_spawner"},
            Prefix = "LOG",
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
                },
                {
                    name = "Oil Drill",
                    entityname = "oil_drill",
                    description = "Deploy an oil drill to extract crude oil for the refinery.",
                    price = 1000
                }
            },
            vehicles = {
                {
                    name = "Zis-12 Troop Transport",
                    entityname = "sw_zis12_troop",
                    description = "Deploy a truck to transport troops.",
                    price = 200
                },
		{
                    name = "Gaz-AAA Cargo Transport",
                    entityname = "sw_gaz_aaa_cargo",
                    description = "Deploy a supply truck to transport resources and supplies",
                    price = 150
                },
            }
        }
    },

    --Global Specializations

    ["Medic"] = {
        DivisionTypes = ALL_DIVISIONS,
        Supply = 5000, --5000
        Description = "Medics are incredibly useful on the frontlines, as they can heal and revive dead players. They can also deploy health crates and see player radiation levels. Medics are critical for keeping troops alive on the frontline.\nDead players will have a green glow, allowing medics to get to them before they respawn.\nIt might be a good idea to drag the body out of combat before healing the player.",
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
                    description = "Deploy a Box filled with medic items so they can heal themselves. Also cures radiation over time.",
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
        Supply = 7500, --7500
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
    },
    ["Chef"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "The Chef cooks and prepares meals that grants full health. Well cooked meals grants fortitude (100 armor!), giving a substantial advantage in combat.\n\nOverall chefs give a funny moral boost and can be alot of fun to cook for your side!\n\nChefs can also produce meth...",
        Supply = 5000, --5000
        Class = {
            Name = "Chef",
            Default = false,
            Models = {"models/ecott/chefcitizen.mdl"},
            EntitySpawner = {
            {
                name = "Cook Book",
                entityname = "cook_book",
                description = "A book filled with various recipes and cooking tips.",
                price = 0
            },
            {
                name = "Cook Stove",
                entityname = "cook_stove",
                description = "A stove for cooking meals.",
                price = 0
            },
            {
                name = "Cook Propane",
                entityname = "cook_propane",
                description = "A propane tank for fueling your cook stove.",
                price = 0
            },
            {
                name = "Cook Pot",
                entityname = "cook_pot",
                description = "A pot for boiling and cooking various ingredients.",
                price = 0
            },
            {
                name = "Cook Tray",
                entityname = "cook_tray",
                description = "A tray for baking and roasting.",
                price = 0
            },
            {
                name = "Bread Slice",
                entityname = "cook_ingredient_bread_slice",
                description = "A slice of bread, perfect for sandwiches or toast.",
                price = 0
            },
            {
                name = "Cheese",
                entityname = "cook_ingredient_cheese",
                description = "A slice of cheese, great for sandwiches or burgers.",
                price = 0
            },
            {
                name = "Chocolate Frosting",
                entityname = "cook_ingredient_chocolate_frosting",
                description = "Sweet chocolate frosting for desserts.",
                price = 0
            },
            {
                name = "Dough",
                entityname = "cook_ingredient_dough",
                description = "Raw dough for baking bread or pastries.",
                price = 0
            },
            {
                name = "Egg",
                entityname = "cook_ingredient_egg",
                description = "A fresh egg, versatile for many recipes.",
                price = 0
            },
            {
                name = "Flour",
                entityname = "cook_ingredient_flour",
                description = "A bag of flour, essential for baking.",
                price = 0
            },
            {
                name = "Ketchup",
                entityname = "cook_ingredient_ketchup",
                description = "A bottle of ketchup, a classic condiment.",
                price = 0
            },
            {
                name = "Lettuce",
                entityname = "cook_ingredient_lettuce",
                description = "Fresh lettuce, perfect for salads and sandwiches.",
                price = 0
            },
            {
                name = "Lighter Fluid",
                entityname = "cook_ingredient_lighter_fluid",
                description = "Lighter fluid for igniting your cook stove.",
                price = 0
            },
            {
                name = "Methylamine",
                entityname = "cook_ingredient_methylamine",
                description = "A chemical compound with various uses. Handle with care.",
                price = 0
            },
            {
                name = "Milk",
                entityname = "cook_ingredient_milk",
                description = "A carton of milk, essential for many recipes.",
                price = 0
            },
            {
                name = "Potato",
                entityname = "cook_ingredient_potato",
                description = "A raw potato, versatile and nutritious.",
                price = 0
            },
            {
                name = "Raw Beef",
                entityname = "cook_ingredient_raw_beef",
                description = "Raw beef, ready to be cooked.",
                price = 0
            },
            {
                name = "Raw Lobster",
                entityname = "cook_ingredient_raw_lobster",
                description = "Raw lobster, a delicacy ready to be cooked.",
                price = 0
            },
            {
                name = "Raw Steak",
                entityname = "cook_ingredient_raw_steak",
                description = "A raw steak, perfect for grilling.",
                price = 0
            },
            {
                name = "Raw Turkey",
                entityname = "cook_ingredient_raw_turkey",
                description = "A raw turkey, ready for roasting.",
                price = 0
            },
            {
                name = "Salt",
                entityname = "cook_ingredient_salt",
                description = "A pinch of salt, essential for seasoning.",
                price = 0
            },
            {
                name = "Sugar",
                entityname = "cook_ingredient_sugar",
                description = "A bag of sugar, perfect for baking and sweetening.",
                price = 0
            },
            {
                name = "Vanilla Frosting",
                entityname = "cook_ingredient_vanilla_frosting",
                description = "Sweet vanilla frosting for desserts.",
                price = 0
            },
            },
            Weapons = {},
            Max = 2,
            SpawnWeapons = {"ent_spawner", "rope_tool"},
            Prefix = "CHEF"
        },
    },
    ["Atomic Specialist"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "'If you want a total war, you are free to begin it; if you want it, you will get it.'\n-Nikita Khrushchev, during the Cuban Missile Crisis.\n\nThe Atomic Specialist is the class of nuclear atomic fission warfare. The map contains nuclear waste, outputs from the civilian nuclear industrys. The Atomic Specializatist has the unique ability to collect this waste and turn it into Plutonium-23 through a process of fission reactions in a controlled reactor. The Plutonium-23 can then be used to create fissile atomic weapons, that will cause death and destruction on a scale unimaginable.\n\nAtomic Specialist take 75% less radiation, recovers twice as fast, and can see radiation levels of other players.\n\nBy even unlocking this class, you are taking a step into the abyss of nuclear warfare.",
        Supply = 20000, --20000
        WeeklyActivity = 250,
        Class = {
            Name = "Atomic Specialist",
            Default = false,
            atomic = true,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","ent_spawner","m9k_atomic"},
            Prefix = "ATOMIC",
            EntitySpawner = {
                {
                    name = "Nuclear Reactor",
                    entityname = "nuclear_reactor",
                    description = "This is used to refine nuclear waste into Plutonium-23. DO NOT CAUSE A MELTDOWN!",
                    price = 2000
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
    ["Calvary"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "'Technology wins battles, but mobility wins wars. Sometimes that still means a horse.'— NATO Unconventional Warfare Manual\n\nThe age of the horse is not yet over. A horse is a fast and agile mount, able to traverse rough terrain and outmaneuver enemy forces.\n\nYou will be defeated by nearly every weapon, but charging on horseback toward the foe can instill fear and boost morale for your side.\n\nEach mount costs 100 supply (25 out of operation)",
        Supply = 7500, --7500
        WeeklyActivity = 30,
        Class = {
            Name = "Cavalry",
            Default = false,
            Models = {},
            Weapons = {},
            EntitySpawner = {
                {
                    name = "Mustang",
                    entityname = "ent_horse_mustang",
                    description = "Mustang Breed. Fast and Wild. Horse of the Castilians of old and Indians.",
                    price = 100
                },
                {
                    name = "Arabian",
                    entityname = "ent_horse_arabian",
                    description = "Arabian Breed. Proud and Free. Horse of Saladin and of the Turks.",
                    price = 100
                },
                {
                    name = "Ardennes",
                    entityname = "ent_horse_ardennes",
                    description = "Ardennes Breed. Strong and Loyal. Horse of the Benelux, Horse of Napoleon.",
                    price = 100
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                }
            },
            SpawnWeapons = {"ent_spawner"},
            Prefix = "CAV"
        }
    },
    ["Artillery"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Artilleryman is able to deploy artillery guns that cause massive damage to enemy fortifications and infantry.\n\nWhen attacking, destroying enemy fortifications and killing enemy infantry is essential for capturing objectives.\n\nWhen defending, artillery can still be used as a formidible weapon to stop enemy advances.\n\nEach gun costs 400 supply (100 out of operation)\n\nThe Artilleryman also has smoke rounds to provide cover for advancing infantry.",
        Supply = 7500,
        WeeklyActivity = 100,
        Class = {
            Name = "Artilleryman",
            Default = false,
            Models = {},
            Weapons = {},
            EntitySpawner = {
                {
                    name = "M101 Howitzer",
                    entityname = "lvs_m2a1",
                    description = "An American 105mm artillery gun.",
                    price = 400
                },
                {
                    name = "Old Arty",
                    entityname = "lvs_arty_john_temp",
                    description = "If you want to use the old on you can. New ones have better stats.",
                    price = 400
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                },
            },
            SpawnWeapons = {"ent_spawner","cw_nam_m79_thumper"},
            Prefix = "ARTY"
        },
    },
    ["Anti-Tank"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Combining both Anti-Tank and Anti-Air capabilities, this class is the ultimate anti-vehicle unit.\n\nAble to deploy both anti-tank and anti-air emplacements, this class has the tools to deal with any hostile vehicle.\n\nEquipped with anti-tank mines, AT grenades, and an AT4 anti-tank rocket launcher.",
        Supply = 5000,
        WeeklyActivity = 30,
        Class = {
            Name = "Anti-Tank",
            Default = false,
            Models = {},
            Weapons = {},
            EntitySpawner = {
                {
                    name = "AT Gun",
                    entityname = "lvs_atgun",
                    description = "An American 57mm anti-tank gun.",
                    price = 400
                },
                {
                    name = "Old AT",
                    entityname = "lvs_at_john_temp",
                    description = "If you want to use the old on you can. New ones have better stats.",
                    price = 400
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                },
            },
            SpawnWeapons = {"ent_spawner","cw_mw2_at4","weapon_lvsmines","nam_bze39_frag"},
            Prefix = "AT"
        },
    },
    ["Special Operative"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Special Operatives are the elite of the elite. The best of the best. They are tasked with special missions, espionage, and sabotage.\n\nThe main feature is the ability to disguise themselves as the enemy, allowing them to sneak past enemy lines and infiltrate.\n\nThey are equipped with a silenced sniper rifle, planted explosives, smoke grenades, and mines.\n\nThis is the class of sabotage, best used to identify and destroy enemy fortifications and outposts from within.",
        Supply = 10000,
        WeeklyActivity = 175,
        Class = {
            Name = "Special Operative",
            Default = false,
            Spy = true,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"hide_player","weapon_lvsmines","cw_nam_m40","nam_m18_smoke","weapon_tnt"},
            Prefix = "AT"
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
        Description = "Communism is spreading across the globe, and it's up to you to stop it.\nDemocracy, Liberty, and Freedom are at stake, and must be defended.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = US_MODELS,
                WeaponsAllowed = {"cw_nam_m16a1", "doi_atow_etoolus", "doi_atow_m1911a1"},
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
        Color = Color(100, 50, 50, 255),
        Description = "Help defend the revolution from the capitalist pigs.\nJoin the Warsaw Pact and fight for the liberation of the proletariat.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = {"models/kuge/fictional/balkan/80-90s/balkans-1-pm.mdl"},
                WeaponsAllowed = {"cw_nam_akm", "doi_atow_knifeus", "cw_nam_tokarev_tt33"},
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
