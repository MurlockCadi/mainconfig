--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/main_config_sh.lua
--DO NOT ANGER MURLOCK, EDIT IT IN GITHUB, OR 1. YOUR CHANGES WILL GET REMOVED, AND 2. HE WILL BE VERY ANGRY!!!!

imperium_rp_font = "Sitka Text"
gamemode_name = "WARHAMMER 40K ROLEPLAY"


local MAIN_MAPS = {
    ["rp_40k_hammerfall_undead"] = true,
    ["necromunda_v1"] = true
}

if MAIN_MAPS[game.GetMap()] then
    MAIN_MAP = game.GetMap()
end

mapMessages = {
    ["necromunda_v1"] = "++-- Hive City Imperium // Scarus Sector //  Segmentum Obscurus --++",
    ["rp_jupiter_underground"] = "++-- Hive City Imperium // Under Hive // Abandoned Sectors --++"
}


mapMessage_defualt = "Somewhere in the Scarus Sector..."

configTexts = {
    "In the grim darkness of the far future, there is only war.", 
    "The Emperor Protects.",
    "There is no peace among the stars, only an eternity of carnage and slaughter, and the laughter of thirsting gods.",
    "There is no place for the weakwilled or hesitant. Only by firm action and resolute faith will mankind survive. No sacrifice is too great. No treachery too small.",
    "To consort with the heretic is to endanger one's purity. But to lie to an Inquisitor is to forfeit your soul.",
    "The tree of heresy persists where its roots be not torn up."
}


intro_songs = {
    "https://www.imperiumgaming.net/40k/Warhammer_40_000_-_Darktide_-_Official_Soundtrack_Immortal_Imperium.mp3",
    "https://www.imperiumgaming.net/40k/maintheme.mp3",
    "https://www.imperiumgaming.net/40k/Disposal_Unit_Imperium_Mix.mp3",
    "https://www.imperiumgaming.net/40k/Darktide_OST_THE_EMPEROR_OF_MANKIND.mp3"
}

intro_image_urls = {
    "https://i.imgur.com/pn8sBwW.jpeg",
    "https://i.imgur.com/ye5PL53.jpeg",
    "https://i.imgur.com/lr5VpR7.jpeg",
    "https://i.imgur.com/vtIOBsp.jpeg",
    "https://i.imgur.com/P7hGfNK.jpeg",
    "https://i.imgur.com/qy1qFwo.jpeg",
    "https://i.imgur.com/S8hQlQT.jpeg",
    "https://i.imgur.com/o4zXjy0.jpeg",
    "https://i.imgur.com/FZUEVO3.jpeg",
    "https://i.imgur.com/ADuAjJf.jpeg",
    "https://i.imgur.com/iknKjjE.jpeg",
    "https://i.imgur.com/AT75v9e.png",
    "https://i.imgur.com/Bt5tcup.jpeg",
    "https://i.imgur.com/9iW0sL4.jpeg",
    "https://i.imgur.com/Gd8zqR3.jpeg"
}


---NON OFFENSIVE COST------------------

non_attack_reduction = 0.25

gas_grenade_cost = 50
outpost_cost = 1000

--GAMEPLAY VARS------------------------

preperation_stage_timer = 1800
build_up_stage_timer = 900
combat_phase = 2700

---RESPAWN_TIMERS_FOR_VEHICLES------------

ORGANIZATION_MULTIPLIER = 0.5

RESPAWN_TIMERS_IMPERIUMRP = {
    ["Small Vehicles"] = 60,
    ["Trucks"] = 60,
    ["Tank Destroyers"] = 800,
    ["Light Medium Tanks"] = 750,
    ["Light Tanks"] = 500,
    ["Medium Tanks"] = 950,
    ["Heavy Tanks"] = 1900,
    ["Mechanized Vehicles"] = 250,
    ["Armed Mechanized Vehicles"] = 360,
    ["Mobile Outpost"] = 500,
    ["Motercycles"] = 60
}

ENTITY_RESPAWN_TIMERS = {
    ["Ammo"] = 120,
    ["Machine Gun"] = 300,
    ["Artillery"] = 300,
    ["Medic Box"] = 120,
    ["Radio"] = 120,
    ["Skull"] = 10,
    ["Reactor"] = 1000,
    ["Turret"] = 120
}


vehicleLimits = {
    {players = 80, maxVehicles = 1},
    {players = 70, maxVehicles = 2},
    {players = 60, maxVehicles = 3},
    {players = 50, maxVehicles = 4},
    {players = 40, maxVehicles = 8},
    {players = 30, maxVehicles = 8},
    {players = 25, maxVehicles = 8},
    {players = 20, maxVehicles = 10},
    {players = 0, maxVehicles = 10}
}

---------PROX CHAT------------------------------------------------------------------------------------

proximityDistance = 750

-------------------------------------------------------------------------------------------------------

CAPTURE_SIZE = 1250

AXIS_COLOR = Color(175, 0, 0, 255)
ALLIES_COLOR = Color(75, 150, 75, 255)

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

WALK_SPEED = 135
RUN_SPEED = 250
JUMP_POWER = 225
MAX_HEALTH = 500
SLOW_WALK_SPEED = 80

function GetRunSpeed(athleticsLevel)
    return RUN_SPEED + (athleticsLevel * .3)
end

------REVIVE TIME AND LOOT TIME--------

REVIVE_TIME = 2

LOOT_TIME = 3


----------------------TRENCH COOLDOWN

TEAM_COOLDOWN = 1200
GLOBAL_COOLDOWN = 600


-----IS SERVER MANAGED BY MURLOCK?----------------

IS_SERVER_MANAGED = true

--------------------HELP CONFIG----------------------------------------


helpTopics = {
    ["Intro"] = "Welcome to Imperium Gamings WARHAMMER 40KRP!\n\nThis server is running a custom MRP gamemode known as 'ImperiumRP' with custom Hive Bots running LLMS!\n\nThis Help Menu will guide you through the huge amount of custom servers features, gameplay, and custom content (Mostly all made by Murlock over the span of 2 years). In short, this server is run by the players, including the fully alive City with hundreds of living bots. Need to reopen this help menu? Type /help in chat anytime!\n\nSelect a topic on the left to learn more.\n\nGetting Started:\n\nYou have spawned in as a recruit, to progress you need to get trained. Type '/ooc I need to get trained!' but dont worry if you dont get trained right away, you can still get a weapon by finding the Weapons Crate, click E on it, and choose your starting weapon. Have an explore, and someone should get around to training you. \n\nAnd again Welcome to the Server!\n\n-Murlock",
    ["Unlocking Weapons"] = "You can unlock weapons at the Weapon Crate located near spawn. Your Division, including recruits, will have base weapons already unlocked for you to use.\n\nThere are Primary, Secondary, and Miscellaneous slots where you can customize your loadout. You earn Credits a number of ways, playing in events, looting bodys, and actively playing on the server. These Credits can then be used at the Weapon Crate to unlock new weapons!\n\nIn addition to Division-provided base weapons, some weapons are unlocked through specific classes, such as the Heavy Weapons. There are also VIP only weapons that are not overpowered and are just for fun.",
    ["Commands and Links"] = "/discord (Opens the Discord Server)\n/donate (Opens our Donation Store)\n/website (Opens our Website)\n/content (Opens the Content Pack)\n/steamgroup (Opens the Steam Group)\n\n/ooc (For Global OOC chat)\n/radio (For Team Radio)\n/r (For Global Radio)\n\n/help (Opens this Menu)\n/claim (Claims any VIP Packages).\n/options (Opens the Options Menu for ImperiumRP)\n/give (Give Credits to Target Player)\n\nF1 (Opens the Character Edit Menu)\nF2 (Opens the Promotion and Whitelist Menu)\nF3 (Opens the Division Menu)\nF4 (Opens the Character Selection Menu)\nF6 (Opens the Squad Menu)",
    ["Hand Swep"] = "The Hand Swep is a custom SWEP that allows you to move props and objects by holding left click and dragging.\n\nThis can be used to move barrles, corpses, props, and anything else that is not nailed down!\n\nIts a very fun swep and adds a lot of gmod goofines to the server... Prop Killing is allowed if you can pull it off, and can lead to some extreamly fun moments.\n\nRight Click allows you to Salute, and Left Click allows you to move objects.",
    ["Levels and XP"] = "ImperiumRP has three main stats:\n\nEndurance (Health Regen)\nAthletics (Faster Run and Higher Jump)\nBallistics (Less Recoil and Spread)\n\nAll these states give a small bonus in its respective field, making high level players more effective in combat. Saying that, a level 1 player can still kill a level 70 player, but the level 70 player will have a slight advantage. Killing a higher level player means you gain more XP!\n\nYou can level up and gain XP by playing on the server, killing players, looting bodys, and playing in events. You can view your level and stats by pressing F1. You start with 10 points to spend.\n\nEvery Level gets you 2 points to spend on your Character, however levels will get exponentially harder to obtain, being around level 70+ is considered a max leveled player.\n\nSome players played during WW2, and this allows them to carry over there skils they had before, as they are veterans.",
    ["VIP"] = "This server is run on donations. All of the money goes into funding custom content (like the ImperiumRP gamemode!) and paying for the Server Box, our Linux Machine in the Background that runs alot of our custom features, and our Webiste!\n\nDonate by typing /donate\n\nVIP gets you VIP only weapons, Double XP and Credis points, and a role in our discord! The Donation helps us keep this server alive, and we are beyond appreciative for everyone who has helped us financially in making our dream server!\n\nIf you buy a Supply Drop package do /claim to get it in game!",
    ["Reviving and Looting"] = "In this gamemode, when you die your corpse will remain on the battlefield. This can be dragged around and the player (if they have not respawned) can see whats going on.\n\nYou can be revived by a Medic, and can see how close the nearest medic is. Medics will get a green glow around all players that can be revived, so can see your corpse through walls.\n\nints!\n\nYou can also loot the corpse of the fallen to find credits.",
    ["Division Management"] = "In the F3 menu you can click on the Management Menu. This is where Officers of a Division can track playtime of players, but also see the current division rank and set players permissions. There are 3 levels of permissions, Members, Trusted, and Admins. When you are Trusted you can do most things, such as promote, demote, whitelist, kick, and call Actions. Admins can do the same, but have the power to remove and add trusted. Server Admins on the server have the power to add and remove Admins / Trusted.\n\nThe Rank Ceiling is the top rank anyone can have in a Division. The Top Rank (Division) can have all the ranks, but lower ranks can only go up to there Rank Ceiling.\n\nTIPS FOR OFFICERS:\n\nUse the Commendation System! Ontop of looking at Time Played on the Division for a player, get people to Commend players who have done well! This is a great way to see who needs promoting or not. F2 then click Commend, its that easy!\n\nMake NCOs trusted! If a NCO is doing well, give them trusted permissions early!",
    ["The Chem Runners"] = "The Chem Runners hold control over the criminal underworld thanks to their brutal tactics and monopoly on SPOOK, the only major drug found in the Hive.\n\nIn recent decades, a bloody gang war ended with the Chem Runners securing total control over its production.\n\nToday, their influence can be felt in every corner of the Hive, with Chem Runners distributing SPOOK on every street and in every apartment. You need only look beneath the floorboards to find these heretics.\n\nThe Administratum, however, has declared zero tolerance for narcotics. Any individual found in possession of SPOOK shall be sentenced to penal conscription... or summary execution.\n\nSome heretical Guardsmen may buy SPOOK from Chem Runners and sell it to innocents for profit.\n\nType /drugs to open your drug inventory.\nLoyal Imperium servants may use /search on a player to search for hidden SPOOK.",
    ["Lore Overview"] = "Hive Imperium exists in the Scarus Sector // Segmentum Obscurus. It is an isolated hive world with little contact from the greater Imperium, causing the Emperor’s light to dim.\n\nDark shadows loom over the city, as Chaos forces instigate a blood revolution, a plague of pestilence, and a powerful drug empire. The war for control of the city is being lost.\n\nWith every passing hour, the likelihood of the planet being marked for Exterminatus increases. Only those brave enough to conscript into the Astra Militarum offer any hope of salvation.\n\nThese Guardsmen, often the few who volunteer from the local population, are tasked with keeping the Hive under control and preventing its collapse to ruinous powers.\n\nYet in times of crisis... opportunity always presents itself.",
    ["Khornate Cultists"] = "Khornate Cultists dwell in the deepest parts of the Hive. Their cults grow strong through the sacrifice of innocents to the insatiable hunger of the Blood God.\n\nSkulls, blood, flesh... it is demanded constantly. The rush of the kill, the joy of slaughter, Khorne infects the minds of ordinary mortals, convincing them to murder, to slay. Eventually, that hunger breaks free.\n\nThey kill without mercy. Crimson ribbons streak across the floor, a sacrifice to grow the power of the Blood God.\n\nThrough dark rituals, Skull Takers may rise from the civilian population, hunting for a great slaughter. If such beings appear, it is almost certain that Khornate Cultists are preparing for a blood revolution.\n\nSeek them out in the darkest corners of the Hive... before it is too late.",
    ["Nurgle Pestilence"] = "Nurgle's disease infects the hearts of the impure and unfaithful. Those who have forsaken the Emperor's protection and drift into shadow are embraced instead by pestilence.\n\nOnly those true to the Emperor, or those who take SPOOK regularly, can resist the taint of Nurgle.\n\nThose blessed by decay come to enjoy the suffering, the truth: that all things must rot, and all shall return to one in the Grand Cycle.\n\nBefore long, the infected begin to transform into unholy Poxwalkers, spreading disease and pestilence to all they touch. Only the faithful may resist its grip.\n\nSoon, entire sectors of the Hive may be consumed by corruption, requiring fire and flame to cleanse their souls.\n\nIf the infection spreads too far, it is almost certain that Nurgle has established a foothold deep in the filth of the Underhive.",
    ["Heretical Uprisings"] = "By not controlling the Hive, you are allowing the taint of Chaos and the Unclean to infest the minds of the impure, leading to full-blown heretical revolutions such as Blood Revolutions, Plague Outbreaks, or Gang Uprisings.\n\nIt is your duty as Guardsmen to fight against such uprisings. During one, you must put down the heretics and cleanse the unclean. You will face waves upon waves of heretics, and only when they have sustained enough casualties will the uprising end.\n\nThe damage dealt by heretics and the damage taken by the player is scaled based on player count.",
    ["11th Cadian Storm Guard"] = "The 11th Cadian Storm Guard are a veteran regiment originally assigned to Ocean World Spectoris, a planet with no continents, only endless ocean and one settlement clinging to a submerged mountain. Spectoris supplies the Imperium Hive with food and carole paste, but its waters teem with hostile life, and some whisper the sea itself is alive… and corrupted by Chaos.\n\nThe 11th were sent to defend this world from abyssal horrors and potential Chaos influence. Over centuries, they began recruiting from Spectoris and from Hive Imperium.\n\nWhen Cadia fell, the 11th did not break. Their duty remained clear: defend the Hive and Spectoris that feeds the city. Though still bearing the name of Cadia, the 11th are now their own breed, storm-hardened and duty bound by a legacy of honour.\n\nWith the Hive now under the threat of Chaos within, the 11th have deployed to keep there home city alive from danger." 
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
    ["/it"] = function(ply, args) return it_command(ply, args) end,
    ["!it"] = function(ply, args) return it_command(ply, args) end,
    ["/rp"] = function(ply, args) return rp_command(ply, args) end,
    ["!rp"] = function(ply, args) return rp_command(ply, args) end,
    ["/radio"] = function(ply, args) return radio_command(ply, args) end,
    ["!radio"] = function(ply, args) return radio_command(ply, args) end,
    ["/radio"] = function(ply, args) return radio_command(ply, args) end,
	["/vox"] = function(ply, args) return radio_command(ply, args) end,
	["!vox"] = function(ply, args) return radio_command(ply, args) end,
    ["!r"] = function(ply, args) return radio_command(ply, args) end,
    ["/r"] = function(ply, args) return radio_command(ply, args) end,
    ["!gradio"] = function(ply, args) return radio_command(ply, args) end,
    ["/gradio"] = function(ply, args) return radio_command(ply, args) end,
    ["/song"] = function(ply, args) return play_song(ply, args) end,
    ["!song"] = function(ply, args) return play_song(ply, args) end,
    ["!announce"] = function(ply, args) return announce_command(ply, args) end,
    ["/announce"] = function(ply, args) return announce_command(ply, args) end,
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
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3514017616") end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3514017616") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3514017616") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3514017616") end,
    ["/group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/laws"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1ydHDK5rCCyvnWISJI5xhW_rjb1Qp8dI0b2Ab2EmL7Jc/edit?usp=sharing") end,
    ["!laws"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1ydHDK5rCCyvnWISJI5xhW_rjb1Qp8dI0b2Ab2EmL7Jc/edit?usp=sharing") end,
	["/training"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1uEcy2Lj3EM00wquvtDSTEerZj_Uv5V1GPMIuu-6qV0c/edit?usp=sharing") end,
	["/training"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1uEcy2Lj3EM00wquvtDSTEerZj_Uv5V1GPMIuu-6qV0c/edit?usp=sharing") end,
	["/suspect"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1h45MpFE7ya3abVqJfeWdi1wgS9RKJ2hn8UhRJRy_WdM/edit?usp=sharing") end,
	["!suspect"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1h45MpFE7ya3abVqJfeWdi1wgS9RKJ2hn8UhRJRy_WdM/edit?usp=sharing") end,
	["/krieg"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1_T9_v_yLW7vmSyxLIDFpGk20MJmYUIdcOz4Ay7Lkq0o/edit?usp=sharing") end,
	["!krieg"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1_T9_v_yLW7vmSyxLIDFpGk20MJmYUIdcOz4Ay7Lkq0o/edit?usp=sharing") end,
	["/cadia"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1W7CPfijkqjVdg84OOyP_ISvIfaoIzecFM6WGqpSzmHo/edit?usp=sharing") end,
	["!cadia"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1W7CPfijkqjVdg84OOyP_ISvIfaoIzecFM6WGqpSzmHo/edit?usp=sharing") end,
	["/ranks"] = function(ply) OpenURL(ply,"https://xmind.ai/share/YIOgl1RA?xid=jXVrwaii") end,	
	["!ranks"] = function(ply) OpenURL(ply,"https://xmind.ai/share/YIOgl1RA?xid=jXVrwaii") end,
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
    ["!disguise"] = function(ply) return HideAsRandomEnemy(ply) end,
    ["/disguise"] = function(ply) return HideAsRandomEnemy(ply) end,
    ["!removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["!unvip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/unvip"] = function(ply, args) return remove_vip(ply, args) end,
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
    ["!cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["/cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["/setmain"] = function(ply) Set_Division_To_Main(ply) end,
    ["/cooldowns"] = function(ply) ResetCoolDowns(ply) end,
    ["/underground"] = function(ply) SetUndergroundPoint(ply) end,
    ["/addsupply"] = function(ply, args) SetDivisionSupplyAdmin(ply, args) end,
    ["/divisionrank"] = function(ply, args) SetDivisionRankAdmin(ply, args) end,
    ["!divisionrank"] = function(ply, args) SetDivisionRankAdmin(ply, args) end,
    ["/actions"] = function(ply) OpenMissionSelectionMenu(ply) end,
    ["!actions"] = function(ply) OpenMissionSelectionMenu(ply) end,
    ["!atomic"] = function(ply) GivePlayerSwepIfTeamHasBombsandIsTrusted(ply) end,
    ["!rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["/rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["/deleteallpoints"] = function(ply) DeleteAllPoints(ply) end,
    ["/frontline"] = function(ply) ChangeToFrontlineMap(ply) end,
    ["!frontline"] = function(ply) ChangeToFrontlineMap(ply) end,
    ["!landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["/landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["!murlockac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["/murlockac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["/ac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["!ac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["!trustfunctions"] = function(ply) GeneratedTrustedFunctions(ply) end,
    ["/trustfunctions"] = function(ply) GeneratedTrustedFunctions(ply) end,
    ["/murlockaimhack"] = function(ply) ToggleMurlockAimHack(ply) end,
    ["/endevent"] = function(ply) PlayerVotedToEndEvent(ply) end,
    ["!endevent"] = function(ply) PlayerVotedToEndEvent(ply) end,
    ["!eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,
    ["/eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,
    ["/bot"] = function(ply, args) AdminRequestSpawnBot(ply, args) end,
    ["!bot"] = function(ply, args) AdminRequestSpawnBot(ply, args) end,
    ["/drugs"] = function(ply) OpenDrugInventory(ply) end,
    ["!drugs"] = function(ply) OpenDrugInventory(ply) end,
    ["/drug"] = function(ply) OpenDrugInventory(ply) end,
    ["!drug"] = function(ply) OpenDrugInventory(ply) end,
    ["!search"] = function(ply) SearchPlayerForDrugsInfrontOfMe(ply) end,
    ["/search"] = function(ply) SearchPlayerForDrugsInfrontOfMe(ply) end,
    ["!give"] = function(ply, args) GivePlayerMoney(ply, args) end,
    ["/give"] = function(ply, args) GivePlayerMoney(ply, args) end,
    ["/servo"] = function(ply) EnterYourSkull(ply) end,
    ["!servo"] = function(ply) EnterYourSkull(ply) end,
    ["/gotonode"] = function(ply, args) GoToNodeID(ply, args) end,
    ["/bot"] = function(ply) AdminBotOpenMenu(ply) end,
    ["!bot"] = function(ply) AdminBotOpenMenu(ply) end,
    ["!skull"] = function(ply) OpenSkullInventory(ply) end,
    ["/skull"] = function(ply) OpenSkullInventory(ply) end,
    ["!skulls"] = function(ply) OpenSkullInventory(ply) end,
    ["/skulls"] = function(ply) OpenSkullInventory(ply) end,
    ["!roll"] = function(ply) PlayerRoll(ply) end,
    ["/roll"] = function(ply) PlayerRoll(ply) end,
    ["/yell"] = function(ply, args) PlayerYell(ply, args) end,
    ["!yell"] = function(ply, args) PlayerYell(ply, args) end,
    ["/y"] = function(ply, args) PlayerYell(ply, args) end,
    ["!y"] = function(ply, args) PlayerYell(ply, args) end,
    ["!w"] = function(ply, args) whisper_command(ply, args) end,
    ["/w"] = function(ply, args) whisper_command(ply, args) end,
    ["!whisper"] = function(ply, args) whisper_command(ply, args) end,
    ["/whisper"] = function(ply, args) whisper_command(ply, args) end,	
    ["!looc"] = function(ply, args) looc_command(ply, args) end,
    ["/looc"] = function(ply, args) looc_command(ply, args) end,
    ["/examine"] = function(ply) SearchPlayerForSkulls(ply) end,
    ["!examine"] = function(ply) SearchPlayerForSkulls(ply) end,
    ["!nuke"] = function(ply) NukeMapAdmin(ply) end,
    ["!removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["/removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["!removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["/removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["!objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end,
    ["/objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end
}


----------------------DEFUALT WEAPONS-------------------------------------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things"
}
----------------------WEAPONS-------------------------------------------------------------------------------

------------CW ATTACHMENTS-------------------------------------------------

RESTRICTED_ATTACHMENTS = {
	["doi_atow_m2carbineconv"] = true,
	["doi_atow_stensuppressor"] = true,
	["doi_atow_bhpextmag"] = true,
	["doi_atow_unisuppressor"] = true,
	["doi_atow_zf4"] = true,
	["doi_atow_zf39"] = true,
	["doi_atow_unertl"] = true,
	["doi_atow_wina5"] = true,
	["doi_atow_m73"] = true,
	["am_atow_heavy"] = true,
	["doi_atow_no32"] = true,
	["doi_atow_thompson50rnd"] = true,
	["doi_atow_zfg42"] = true,
	["doi_atow_lymanm82"] = true,

}


-------------------------------------------------------------------

--11th Cadian Storm Guards
CADIAN_MODELS = {"models/vintagethief/11th_imperial_guard/11th_guard_grey.mdl","models/vintagethief/11th_imperial_guard/11th_penal.mdl"}
CADIAN_NCOS = {"models/vintagethief/11th_imperial_guard/11th_vet_sgt_grey.mdl","models/vintagethief/11th_imperial_guard/11th_vet_grey.mdl"}
CADIAN_OFFICER = {"models/vintagethief/11th_imperial_guard/11th_let_grey.mdl"}
CADIAN_CAPTAIN = {"models/vintagethief/11th_imperial_guard/11th_maj_grey.mdl"}

CADIAN_WEAPONS = {"cat_custom_lasgun","cat_custom_knife","arccw_k_40k_lasgun_mk2"}

-- PENAL LEGION
PENAL_MODELS = {"models/wk/savlar/wk_savlar.mdl","models/wk/savlar/wk_savlar_awful.mdl"}
PENAL_WEAPONS = CADIAN_WEAPONS

--KRIEG
KRIEG_MODELS = {"models/krig_solder.mdl"}
KRIEG_OFFICER = {"models/krig_officer.mdl"}
KRIEG_WEAPONS = {"cat_custom_lasgun_lucius","cat_custom_knife","arccw_k_40k_luciuslasgun"}


OFFICER_WEAPONS = {"cat_custom_sword","cat_custom_laspistol","arccw_k_40k_boltpistol"}

--OGRYN MODELS

OGRYN_MODELS = {"models/dizcordum/wk/ogryn/ogryn_bald.mdl","models/dizcordum/wk/ogryn/ogryn_bonehead.mdl","models/dizcordum/wk/ogryn/ogryn_bullgryn.mdl","models/dizcordum/wk/ogryn/ogryn_inq.mdl","models/dizcordum/wk/ogryn/ogryn_krieg.mdl"}
OGRYN_WEAPONS = {"cat_custom_ogrynbang","cat_custom_rippergun"}

--KARSIKIN

KARSIKIN_MODELS_OLD = {"models/vintagethief/11th_imperial_guard/11th_kasrkin.mdl","models/krig_stormtrooper.mdl"}

KARSIKIN_MODELS = {"models/astartes/scion/scion.mdl","models/astartes/scion/scion_w.mdl"}
KARSKIN_OFFICER = {"models/astartes/scion/scion.mdl","models/astartes/scion/scion_w.mdl"}
KARSKIN_OFFICER_OLD = {"models/vintagethief/11th_imperial_guard/11th_kasrkin_sgt.mdl","models/krig_stormtrooper.mdl"}
KARSIKIN_WEAPONS = {"cat_custom_hellgunstandard","cat_custom_knife","arccw_k_40k_hellgun_mk2"}
KARSIKIN_OFFICER_WEAPONS = {"cat_custom_hellgunstandard","cat_custom_chainsword","cat_legacy_boltpistolpowersword","arccw_k_40k_boltpistol","arccw_k_40k_hellgun_mk2"}

--SQUAT

SQUAT_MODELS = {"models/dizcordum/abhumans/squat.mdl","models/squat_rig_v2.mdl"}
SQUAT_WEAPONS = {"cat_legacy_boardingshield_volkitecharger","cat_legacy_poweraxecthonian"}


-- Adeptus Mechanicus

ADMECH_MODELS = { "models/astartes/mech/magos.mdl","models/jackswan/rogue_trader/wk_rt_secutor.mdl","models/wk/adeptus_mechanicus/wk_am_engenseer.mdl","models/wk/adeptus_mechanicus/wk_trippriest.mdl","models/wk/gans/wk_gans_priest.mdl","models/wk/fem_priast/wk_priestness_belka.mdl"}
ADMECH_WEAPONS = {"cat_custom_galvanic","cat_custom_galvanic_rifle","cat_custom_omnissiahaxe"}

DivisionTypes = {
    ["Cult Mechanicus Conclave"] = {
        NiceName = "Cult Mechanicus Conclave",
        Description = "Agents of the Omnissiah. Tech-priests, artisans and magi who mend, sanctify and unleash the machine-spirit.",
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Admech", Rank_Prefix = "", ModelsAllowed = ADMECH_MODELS, WeaponsAllowed = ADMECH_WEAPONS, CanPromote = true},
        },
        Classes = {
            {
                Name = "Logis",
                Default = true,
                Core = true,
                ForceModels = true,
				atomic = true,
                Models = {
                    "models/wk/adeptus_mechanicus/wk_am_engenseer.mdl",
                    "models/wk/fem_priast/wk_priestness.mdl"
                },
                MaxHealth = 500,
                PowerShield = true,
                Weapons = {
                    "cat_custom_galvanic_rifle",
                    "cat_custom_galvanic",
                    "cat_custom_phosphor",
                    "cat_legacy_omnissiahaxe"
                },
                SpawnWeapons = {"ent_spawner"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Artisan",
                Core = true,
                ForceModels = true,
                Models = {
                    "models/wk/adeptus_mechanicus/wk_tech_priest.mdl",
                    "models/wk/fem_priast/wk_priestness.mdl"
                },
                MaxHealth = 500,
                PowerShield = true,
				atomic = true,
                Weapons = {
                    "cat_custom_galvanic",
                    "cat_legacy_omnissiahaxe"
                },
                Fortifications = {
                    {name = "Sandbags Corner 1", model = "models/props_fortifications/sandbags_corner1.mdl"},
                    {name = "Sandbags Corner 1 Tall", model = "models/props_fortifications/sandbags_corner1_tall.mdl"},
                    {name = "Sandbags Corner 2 ", model = "models/props_fortifications/sandbags_corner2.mdl"},	
                    {name = "Sandbags Corner 2 Tall", model = "models/props_fortifications/sandbags_corner2_tall.mdl"},
                    {name = "Sandbags Line 1", model = "models/props_fortifications/sandbags_line1.mdl"},
                    {name = "Sandbags Line 1 Tall", model = "models/props_fortifications/sandbags_line1_tall.mdl"},
                    {name = "Sandbags Line 2", model = "models/props_fortifications/sandbags_line2.mdl"},
                    {name = "Sandbags Line 2 Tall", model = "models/props_fortifications/sandbags_line2_tall.mdl"},
                    {name = "Trench Bunker", model = "models/fortification collection/trench_free_a_double.mdl"},
                    {name = "Trench T", model = "models/fortification collection/trench_end_corridor.mdl"},
                    {name = "Trench Four Way", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench L", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "Trench One Way", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "Small Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Steel Barricade 4", model = "models/arne3d/barricades/steelbarricade4.mdl"},
                    {name = "Steel Barricade 3", model = "models/arne3d/barricades/steelbarricade3.mdl"},
                    {name = "Steel Barricade 2", model = "models/arne3d/barricades/steelbarricade2.mdl"},
                    {name = "Steel Barricade 1", model = "models/arne3d/barricades/steelbarricade1.mdl"}
                },
                SpawnWeapons = {"alydus_fortificationbuildertablet","ent_spawner","weapon_simrepair"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Biologis",
                Core = true,
                ForceModels = true,
                Models = {
                    "models/jackswan/rogue_trader/wk_rt_secutor.mdl",
                    "models/wk/fem_priast/wk_priestness_belka.mdl"
                },
                MaxHealth = 500,
                PowerShield = true,
				atomic = true,
                Medic = true,
                Weapons = {
                    "cat_custom_galvanic",
                    "cat_legacy_omnissiahaxe"
                },
                SpawnWeapons = {"fas2_ifak","weapon_healer","ent_spawner"},
                EntitySpawner = {
                    { name = "Medical Supplies",    entityname = "medic_box",            description = "Lets soldiers heal themselves.", type = "Medic Box" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Exorcist",
                Core = true,
                ForceModels = true,
				atomic = true,
                Models = {
                    "models/wk/gans/wk_gans_priest.mdl",
                    "models/wk/fem_priast/wk_priestness.mdl"
                },
                MaxHealth = 750,
                PowerShield = true,
                Weapons = {
                    "cat_custom_galvanic",
                    "cat_legacy_omnissiahaxe",
                },
                SpawnWeapons = {"ent_spawner"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Telephatica",
                Core = true,
                ForceModels = true,
                Magic = true,
                Models = {
                    "models/wk/adeptus_mechanicus/wk_trippriest.mdl",
                    "models/wk/fem_priast/wk_priestness.mdl"
                },
                MaxHealth = 750,
                PowerShield = true,
                Weapons = {
                    "cat_custom_galvanic",
                    "cat_legacy_omnissiahaxe"
                },
                SpawnWeapons = {"murlock_staff_player","ent_spawner"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Electromagneticus",
                Core = true,
                ForceModels = true,
                Models = {
                    "models/player/mechs_fulgurite.mdl"
                },
                MaxHealth = 1500,
                PowerShield = false,
				atomic = true,
                Weapons = {
                    "cat_legacy_omnissiahaxe"
                },
                SpawnWeapons = {"ent_spawner"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            },
            {
                Name = "Magos",
                Core = true,
                ForceModels = true,
				atomic = true,
                Models = {
                    "models/astartes/mech/magos.mdl"
                },
                MaxHealth = 1000,
                PowerShield = true,
                Weapons = {
                    "cat_custom_galvanic",
                    "cat_legacy_omnissiahaxe",
                    "weapon_simrepair"
                },
                SpawnWeapons = {"fas2_ifak","ent_spawner","weapon_cuff_elastic"},
                EntitySpawner = {
                    { name = "Ammo Supplies",       entityname = "universal_ammo_small", description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE", type = "Ammo" },
                    { name = "Medical Supplies",    entityname = "medic_box",            description = "Lets soldiers heal themselves.", type = "Medic Box" },
                    { name = "Servo Skull",         entityname = "servoskull",           description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.", type = "Skull" },
                    { name = "Plasma Reactor",      entityname = "nuclear_reactor",      description = "A powerful energy source. Must be handled with care.", type = "Reactor" },
                    { name = "Castellax Sentry Node", entityname = "tnt_att_s2_cannon",  description = "Sentry Node that will fire bursts of Plasma.", type = "Turret" }
                },
                Prefix = ""
            }
        }
    },
    ["Penal Legion"] = {
        NiceName = "Penal Legion",
        Description = "Penal Legions are composed of the most hardened criminals and are often used cannon fodder.",
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Penal Conscript", Rank_Prefix = "", ModelsAllowed = PENAL_MODELS, WeaponsAllowed = PENAL_WEAPONS, CanPromote = false}
        },
        Classes = {
            {
                Name = "Penal Conscript",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "Conscript"
            },
            {
                Name = "Servitor",
                Default = false,
                Core = true,
                Models = {"models/wk/servitor/wk_servit.mdl"},
                ForceModels = true,
                Weapons = {},
                MaxHealth = 750,
                SpawnWeapons = {},
                Prefix = "Servitor"
            }
        }
    },
    ["Auxiliary"] = {
        NiceName = "Auxiliary",
        Description = "Auxiliary divisions are the backbone of the Imperium.",
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Auxiliary", Rank_Prefix = "", ModelsAllowed = {"models/dizcordum/wk/ecclesiarchy/priest.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Guardsman",
                Default = true,
                Core = true,
                Models = CADIAN_CAPTAIN,
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
            {
                Name = "Psyker",
                Core = true,
                PowerShield = true,
                ForceModels = true,
                Magic = true,
                Models = {"models/models/svin/pyromant.mdl","models/wk/psy/wk_alpha_psyker.mdl","models/wk/psy/wk_astropath.mdl","models/wk/psy/wk_mystic.mdl","models/wk/psy/wk_mystic_primus.mdl","models/wk/psy/wk_navigator.mdl","models/wk/psy/wk_primaris_fem.mdl","models/wk/psy/wk_primaris_psyker.mdl","models/wk/psy/wk_wyrdvane.mdl","models/wk/psy/wk_wyrdvane_fem.mdl","models/wk/sodium/sodium_astropath.mdl"},
                Weapons = {},
                SpawnWeapons = {"murlock_staff_player"},
                Prefix = ""
            },
            {
                Name = "Ogryn",
                Core = true,
                Models = OGRYN_MODELS,
                Weapons = OGRYN_WEAPONS,
                ForceModels = true,
                MaxHealth = 3000,
                SpawnWeapons = {},
                Prefix = ""
            },
            {
                Name = "Ecclesiarchy",
                Core = true,
                Models = {"models/dizcordum/wk/ecclesiarchy/abbat.mdl","models/dizcordum/wk/ecclesiarchy/priest.mdl"},
                Weapons = {"cat_custom_boltpistol","arccw_k_40k_boltpistol"},
		PowerShield = true,
		priest = true,
                ForceModels = true,
                MaxHealth = 500,
                SpawnWeapons = {"murlock_staff_player"},
                Prefix = ""
            },
            {
                Name = "Squat",
                Core = true,
                Models = SQUAT_MODELS,
                Weapons = SQUAT_WEAPONS,
                ForceModels = true,
                MaxHealth = 1000,
                SpawnWeapons = {},
                Prefix = ""
            },
            {
                Name = "Ratling",
                Core = true,
                Models = {"models/dizcordum/abhumans/ratling.mdl"},
                Weapons = {"cat_custom_sniper"},
                MaxHealth = 300,
                ForceModels = true,
                SpawnWeapons = {"realistic_hook"},
                Prefix = ""
            },
            {
                Name = "Adeptus Mechanicus",
                Core = true,
                Models = ADMECH_MODELS,
                Weapons = ADMECH_WEAPONS,
                MaxHealth = 1000,
                ForceModels = true,
                atomic = true,
                SpawnWeapons = {"fas2_ifak","weapon_healer","ent_spawner","weapon_simrepair"},
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Servo Skull",
                        entityname = "servoskull",
                        description = "Used to monitor the hive. Must be setup next to a Machine Spirit Panel.",
                        type = "Skull"
                    },
                    {
                        name = "Plasma Reactor",
                        entityname = "nuclear_reactor",
                        description = "A powerful energy source. Must be handled with care.",
                        type = "Reactor"
                    },
                    {
                        name = "Castellax Sentry Node",
                        entityname = "tnt_att_s2_cannon",
                        description = "Sentry Node that will fire bursts of Plasma.",
                        type = "Turret"
                    }
                },
                Prefix = ""
            },
            {
                Name = "Lord General",
                Core = true,
                Models = {"models/gonzo/43rdimperialguard/43rdgen/43rdgen.mdl"},
                Weapons = {"cat_custom_boltpistol","cat_custom_powersabre","cat_legacy_plasmapistolpowersword","cat_legacy_boltpistolpowersword","arccw_k_40k_boltpistol"},
                MaxHealth = 1500,
                PowerShield = true,
                ForceModels = true,
                SpawnWeapons = {"ent_spawner","weapon_cuff_elastic"},
                Prefix = "",
                EntitySpawner = {
                    {
                        name = "Servo Skull",
                        entityname = "servoskullremote",
                        description = "Used to monitor the hive.",
                        type = "Skull"
                    }
                },
            },
            {
                Name = "Commissar",
                Core = true,
                Models = {"models/krig_commissar.mdl","models/knight_ig/muschi_ig_comissar.mdl","models/wk/jackswan/scion/scion_commissar.mdl"},
                Weapons = {"cat_custom_boltpistol","cat_custom_chainsword","cat_custom_powersabre","arccw_k_40k_boltpistol"},
                MaxHealth = 1000,
                PowerShield = true,
                ForceModels = true,
                SpawnWeapons = {"ent_spawner","weapon_cuff_elastic"},
                Prefix = "",
                EntitySpawner = {
                    {
                        name = "Servo Skull",
                        entityname = "servoskullremote",
                        description = "Used to monitor the hive.",
                        type = "Skull"
                    }
                },
            },
            {
                Name = "Inquisitorial Agent",
                Core = true,
                Models = {"models/muschi/characters/muschi_inq_sombra.mdl"},
                Weapons = {"cat_custom_boltpistol","cat_custom_chainsword","cat_legacy_plasmapistolpowersword","cat_legacy_boltpistolpowersword"},
                MaxHealth = 1500,
                PowerShield = true,
                ForceModels = true,
                SpawnWeapons = {"ent_spawner","weapon_cuff_elastic"},
                Prefix = "",
                EntitySpawner = {
                    {
                        name = "Servo Skull",
                        entityname = "servoskullremote",
                        description = "Used to monitor the hive.",
                        type = "Skull"
                    }
                },
            }
        }
    },
    ["11th Kasrkin Wardens"] = {
        NiceName = "11th Kasrkin Wardens",
        Description = "The 11th Kasrkin Wardens are the Imperium's shield, forged in the fires of Cadia to stand steadfast against any foe. Cadia Stands!",
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Veteran", Rank_Prefix = "VET", ModelsAllowed = KARSIKIN_MODELS, WeaponsAllowed = KARSIKIN_WEAPONS, CanPromote = false},
            {ID = 2, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = KARSIKIN_MODELS, WeaponsAllowed = KARSIKIN_WEAPONS, CanPromote = false},
            {ID = 3, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = KARSIKIN_MODELS, WeaponsAllowed = KARSIKIN_WEAPONS, CanPromote = false},
	    {ID = 4, Name = "Staff Sergeant", Rank_Prefix = "SSG", ModelsAllowed = KARSKIN_OFFICER, WeaponsAllowed = KARSIKIN_OFFICER_WEAPONS, CanPromote = false},
            {ID = 5, Name = "Warrent Officer", Rank_Prefix = "WO", ModelsAllowed = KARSKIN_OFFICER, WeaponsAllowed = KARSIKIN_OFFICER_WEAPONS, CanPromote = true},
	    {ID = 6, Name = "Tempestor", Rank_Prefix = "TMP", ModelsAllowed = KARSKIN_OFFICER, WeaponsAllowed = KARSIKIN_OFFICER_WEAPONS, CanPromote = true},
	    {ID = 7, Name = "Tempestor Prime", Rank_Prefix = "TPRM", ModelsAllowed = KARSKIN_OFFICER, WeaponsAllowed = KARSIKIN_OFFICER_WEAPONS, CanPromote = true}
        },
        Classes = {
            {
                Name = "Kasrkin",
                Default = true,
                Models = {},
                Weapons = {},
                MaxHealth = 1000,
                SpawnWeapons = {"jet_mk1"},
                Prefix = ""
            },
            {
                Name = "Kasrkin Medic",
                Core = true,
                Medic = true,
                MaxHealth = 1000,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"fas2_ifak","ent_spawner","weapon_healer","jet_mk1"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Used to let your soldiers heal themselves!",
                        type = "Medic Box"
                    }
                },
            },
            {
                Name = "Kasrkin Weapon Specialist",
                Core = true,
                Models = {},
                MaxHealth = 1000,
                Weapons = {"cat_custom_flamer"},
                SpawnWeapons = {"ent_spawner","jet_mk1"},
                Prefix = "WS",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Kasrkin Sniper",
                Core = true,
                Models = {},
                MaxHealth = 1000,
                Weapons = {"cat_custom_longlas_kantrael"},
                SpawnWeapons = {"ent_spawner","jet_mk1","realistic_hook"},
                Prefix = "SN",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Kasrkin Vox Caster",
                Core = true,
                Radio = true,
                Models = {},
                MaxHealth = 1000,
                Weapons = {},
                SpawnWeapons = {"ent_spawner","jet_mk1"},
                EntitySpawner = {
                    {
                        name = "Radio",
                        entityname = "newboombox",
                        description = "Play some Music!",
                        type = "Radio"
                    }
                },
                Prefix = "VC",
            }
        },
    },
    ["11th Cadian Storm Guards"] = {
        NiceName = "11th Cadian Storm Guards",
        Description = "The 11th Cadian Storm Guards are the Imperium's shield, forged in the fires of Cadia to stand steadfast against any foe. Cadia Stands!",
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Whiteshield", Rank_Prefix = "RCT", ModelsAllowed = CADIAN_MODELS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = false},
            {ID = 2, Name = "Guardsman", Rank_Prefix = "GDS", ModelsAllowed = CADIAN_MODELS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = false},
            {ID = 3, Name = "Veteran Guardsman", Rank_Prefix = "VGDS", ModelsAllowed = CADIAN_MODELS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 4, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = CADIAN_MODELS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 5, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = CADIAN_NCOS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 6, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = CADIAN_NCOS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 7, Name = "Colour Sergeant", Rank_Prefix = "CSGT", ModelsAllowed = CADIAN_NCOS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 8, Name = "Sergeant Major", Rank_Prefix = "SGTM", ModelsAllowed = CADIAN_NCOS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = true},
            {ID = 9, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = CADIAN_OFFICER, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = true},
            {ID = 10, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = CADIAN_CAPTAIN, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = false},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = CADIAN_CAPTAIN, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = false}
        },
        Classes = {
            {
                Name = "Guardsman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Models = {"models/vintagethief/11th_imperial_guard/11th_med_kmd_grey.mdl","models/vintagethief/11th_imperial_guard/11th_med_grey.mdl"},
                Weapons = {},
                ForceModels = true,
                SpawnWeapons = {"fas2_ifak","ent_spawner","weapon_healer"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Used to let your soldiers heal themselves!",
                        type = "Medic Box"
                    }
                },
            },
            {
                Name = "Heavy Weapons",
                Core = true,
                Models = {"models/vintagethief/11th_imperial_guard/11th_hwt_grey.mdl","models/vintagethief/11th_imperial_guard/11th_swt_grenade_grey.mdl"},
                Weapons = {"cat_custom_missilelauncher","cat_custom_laspistol"},
                SpawnWeapons = {"ent_spawner"},
                Prefix = "HW",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Weapon Specialist",
                Core = true,
                Models = {"models/vintagethief/11th_imperial_guard/11th_swt_flamer_grey.mdl","models/vintagethief/11th_imperial_guard/11th_ws_grey.mdl"},
                Weapons = {"cat_custom_flamer","cat_custom_laspistol"},
                SpawnWeapons = {"ent_spawner"},
                Prefix = "WS",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Scout",
                Core = true,
                Models = {"models/vintagethief/11th_imperial_guard/11th_swt_sniper_grey.mdl","models/vintagethief/11th_imperial_guard/11th_razvedka_grey.mdl"},
                Weapons = {"cat_custom_longlas"},
                SpawnWeapons = {"realistic_hook"},
                Prefix = "SC",
            },
            {
                Name = "Vox Caster",
                Core = true,
                Radio = true,
                Models = {"models/vintagethief/11th_imperial_guard/11th_vet_vox_grey.mdl","models/vintagethief/11th_imperial_guard/11th_vox_grey.mdl"},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                EntitySpawner = {
                    {
                        name = "Radio",
                        entityname = "newboombox",
                        description = "Play some Music!",
                        type = "Radio"
                    }
                },
                Prefix = "VC",
            }
        }
    },
    ["236th Death Korps of Krieg"] = {
        NiceName = "236th Death Korps of Krieg",
        Prefix = "236th",
        Color = Color(50, 50, 50, 255),
        Description = "Hardened siege specialists from the Death World of Krieg. The 236th are experts in attrition warfare and unyielding assaults, fighting without fear for death is their duty.",
        Default = false,
        Team = "imperium",
        Ranks = {
            {ID = 1, Name = "Conscript", Rank_Prefix = "CNS", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = false},
            {ID = 2, Name = "Korpsman", Rank_Prefix = "KRP", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = false},
            {ID = 3, Name = "Senior Korpsman", Rank_Prefix = "SKRP", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 4, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 5, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 6, Name = "Watchmaster", Rank_Prefix = "WM", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 7, Name = "Senior Watchmaster", Rank_Prefix = "SWM", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 8, Name = "Quartermaster", Rank_Prefix = "QM", ModelsAllowed = KRIEG_MODELS, WeaponsAllowed = KRIEG_WEAPONS, CanPromote = true},
            {ID = 9, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = KRIEG_OFFICER, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = true},
            {ID = 10, Name = "Kaptain", Rank_Prefix = "KPT", ModelsAllowed = KRIEG_OFFICER, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = false},
            {ID = 11, Name = "Marshal", Rank_Prefix = "MAR", ModelsAllowed = KRIEG_OFFICER, WeaponsAllowed = OFFICER_WEAPONS, CanPromote = false}
        },
        Classes = {
            {
                Name = "Guardsman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Medic = true,
                Models = {"models/krig_medic.mdl"},
                Weapons = {},
                ForceModels = true,
                SpawnWeapons = {"fas2_ifak","ent_spawner","weapon_healer"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Used to let your soldiers heal themselves!",
                        type = "Medic Box"
                    }
                },
            },
            {
                Name = "Heavy Weapons",
                Core = true,
                Models = {},
                Weapons = {"cat_custom_missilelauncher","cat_custom_laspistol"},
                SpawnWeapons = {"ent_spawner"},
                Prefix = "HW",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Weapon Specialist",
                Core = true,
                Models = {},
                Weapons = {"cat_custom_flamer","cat_custom_laspistol"},
                SpawnWeapons = {"ent_spawner","weapon_sh_mustardgas"},
                Prefix = "WS",
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Gas Mask",
                        entityname = "item_sh_gasmask",
                        description = "10 Uses.",
                        type = "Ammo"
                    },
                },
            },
            {
                Name = "Siege Engineer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"alydus_fortificationbuildertablet","ent_spawner"},
                Prefix = "ENG",
                Fortifications = {
                    {name = "Sandbags Corner 1", model = "models/props_fortifications/sandbags_corner1.mdl"},
                    {name = "Sandbags Corner 1 Tall", model = "models/props_fortifications/sandbags_corner1_tall.mdl"},
                    {name = "Sandbags Corner 2 ", model = "models/props_fortifications/sandbags_corner2.mdl"},	
                    {name = "Sandbags Corner 2 Tall", model = "models/props_fortifications/sandbags_corner2_tall.mdl"},
                    {name = "Sandbags Line 1", model = "models/props_fortifications/sandbags_line1.mdl"},
                    {name = "Sandbags Line 1 Tall", model = "models/props_fortifications/sandbags_line1_tall.mdl"},
                    {name = "Sandbags Line 2", model = "models/props_fortifications/sandbags_line2.mdl"},
                    {name = "Sandbags Line 2 Tall", model = "models/props_fortifications/sandbags_line2_tall.mdl"},
                    {name = "Trench Bunker", model = "models/fortification collection/trench_free_a_double.mdl"},
                    {name = "Trench T", model = "models/fortification collection/trench_end_corridor.mdl"},
                    {name = "Trench Four Way", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench L", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "Trench One Way", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "Small Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Steel Barricade 4", model = "models/arne3d/barricades/steelbarricade4.mdl"},
                    {name = "Steel Barricade 3", model = "models/arne3d/barricades/steelbarricade3.mdl"},
                    {name = "Steel Barricade 2", model = "models/arne3d/barricades/steelbarricade2.mdl"},
                    {name = "Steel Barricade 1", model = "models/arne3d/barricades/steelbarricade1.mdl"}

                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Field Cannon",
                        entityname = "sent_40k_fieldcannon",
                        description = "A powerful field cannon of Krieg.",
                        type = "Artillery"
                    },
                    {
                        name = "Siege Cannon",
                        entityname = "or_gun_platform_artillery",
                        description = "Huge Siege Cannon of Krieg. WARNING: VERY LARGE!",
                        type = "Artillery"
                    }
                },
            },
            {
                Name = "Vox Caster",
                Core = true,
                Radio = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"ent_spawner"},
                EntitySpawner = {
                    {
                        name = "Radio",
                        entityname = "newboombox",
                        description = "Play some Music!",
                        type = "Radio"
                    }
                },
                Prefix = "VC",
            }
        }
    }
}

--Core Classes--
--These classes are added to all divisions, and are not division specific.
--You can set classes as "core" above by putting Core = true or below to be populated.

-- CORE_IMPERIUM_CLASSES = {
--     {
--         Name = "Medic",
--         Medic = true,
--         Models = {},
--         Core = false,
--         Max = 4,
--         Weapons = {},
--         SpawnWeapons = {"fas2_ifak","ent_spawner"},
--         Prefix = "MD",
--         EntitySpawner = {
--             {
--                 name = "Medic Box",
--                 entityname = "medic_box",
--                 description = "Deploy a Box filled with medic items so they can heal themselves. Also cures radiation over time.",
--                 price = 100
--             },
--             {
--                 name = "Radio",
--                 entityname = "newboombox",
--                 description = "Radio to play some War Music!",
--                 price = 0
--             },
--             {
--                 name = "Gas Mask",
--                 entityname = "item_sh_gasmask",
--                 description = "Protects against gas attacks.",
--                 price = 100
--             }
--         }
--     },
-- }

-- for _, division in pairs(DivisionTypes) do
--     division.Classes = division.Classes or {}
--     for _, coreClass in ipairs(CORE_IMPERIUM_CLASSES) do
--         table.insert(division.Classes, table.Copy(coreClass))
--     end
-- end



-- ALL_DIVISIONS = {}
-- ALLIED_DIVISIONS = {}
-- AXIS_DIVISIONS = {}

-- for divisionName, _ in pairs(DivisionTypes) do
--     table.insert(ALL_DIVISIONS, divisionName)
--     if DivisionTypes[divisionName].Team == "allies" then
--         table.insert(ALLIED_DIVISIONS, divisionName)
--     elseif DivisionTypes[divisionName].Team == "axis" then
--         table.insert(AXIS_DIVISIONS, divisionName)
--     end
-- end

--==============================================================================================
-- Specializations --
--==============================================================================================

--Prerequisites = {"Engineer", "Medic"},
--WeeklyActivity = 30,

imperium_specializations = {
    -- Specializations are not in use for this server.
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
    EVENT_CHARACTERS = {
        NiceName = "Event Character",
        Prefix = "",
        Color = Color(0, 0, 0, 255),
        Description = "Staff",
        Default = false,
        Classes = {
            {
                Name = "Event Character",
                Default = true,
                Models = {"models/wk/adeptus_mechanicus/wk_skitarii_rangers_alpha.mdl"},
				MaxHealth = 5000,
                Weapons = {},
                SpawnWeapons = {"weapon_physgun", "gmod_tool"},
                Prefix = ""
            },
            {
                Name = "Boss Character",
                Models = {"models/nemeroth_chaos_lord1.mdl","models/boss_grimskull.mdl"},
				MaxHealth = 50000,
                Weapons = {},
                SpawnWeapons = {"weapon_physgun", "gmod_tool","cat_primaris_legacy_boltstormgauntlets"},
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
    DIVISION_CADIAN = {
        NiceName = "Cadian Whiteshields",
        Prefix = "",
        Color = Color(0, 40, 150, 255),
        Description = "The backbone of the Astra Militarum, Cadian Shock Troopers are the Imperiums most numerous and versatile soldiers.\nThe 11th, forged in the crucible of storm-lashed warzones, now stand vigilant in the defense of the Hive.\nCadia Stands! You will join as a Fresh Recruit from the Hive City.",
        Default = true,
        Ranks = {
            {ID = 1, Name = "Whiteshield", Rank_Prefix = "WSHL", ModelsAllowed = CADIAN_MODELS, WeaponsAllowed = CADIAN_WEAPONS, CanPromote = false},
        },
        Classes = {
            {
                Name = "Whiteshield",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "imperium"
    },
    DIVISION_KRIEG = {
        NiceName = "Krieg Conscripts",
        Prefix = "",
        Color = Color(50, 50, 50, 255),
        Description = "Hardened siege specialists from the Death World of Krieg.\nThe 236th are experts in attrition warfare and unyielding assaults.\nThey fight without fear, for death is their duty. You will join as a Fresh Recruit from the Hive City.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Conscripts",
                Rank_Prefix = "RCT",
                ModelsAllowed = KRIEG_MODELS,
                WeaponsAllowed = KRIEG_WEAPONS,
                CanPromote = false
            },
        },
        Classes = {
            {
                Name = "Conscripts",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "imperium"
    },
    DIVISION_IMPERIUM_CITIZEN = {
        NiceName = "Imperium Citizen",
        Prefix = "",
        Color = Color(50, 50, 50, 255),
        Description = "Imperium Citizens",
        Bots = true,
        Medic = true,
        Team = "hivecitizen",
        Ranks = {
            {ID = 1, Name = "Citizen", Rank_Prefix = "", ModelsAllowed = {"models/wk/civilian/wk_civilian.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {Name = "Higher Citizen", Default = true, Models = {"models/wk/civilian/wk_civilian.mdl"}, Weapons = {}, SpawnWeapons = {}, Prefix = ""},
            {Name = "Lower Citizen", Models = {}, Weapons = {"models/wk/civilian/wk_civilian.mdl"}, SpawnWeapons = {}, Prefix = ""},
            {Name = "Outer Citizen", Models = {}, Weapons = {"models/wk/civilian/wk_civilian.mdl"}, SpawnWeapons = {}, Prefix = ""}
        }
    },
    DIVISION_IMPERIUM_CITIZEN_PLAYER = {
        NiceName = "Imperium Citizen",
        Prefix = "",
        Color = Color(50, 50, 50, 255),
        Description = "You are a Citizen of the Imperium, living in the Hive City.\nLoot Bodys, trade with other Citizens, and try to survive the harsh conditions of the Hive.",
        Team = "hivecitizenplayer",
        VIP = true,
        Ranks = {
            {ID = 1, Name = "Citizen", Rank_Prefix = "", ModelsAllowed = {"models/wk/civilian/wk_civilian.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Citizen", 
                Default = true, 
                Models = {"models/wk/civilian/wk_civilian.mdl"}, 
                Weapons = {}, 
                SpawnWeapons = {"weapon_healer","cat_custom_knife","refinery_spawner"}, 
                Prefix = ""
            }
        }
    },
    DIVISION_UNDERHIVE = {
        NiceName = "Underhive Scum",
        Prefix = "",
        Color = Color(50, 50, 50, 255),
        Description = "Underhive Scum",
        Bots = true,
        Team = "Underhive Scum",
        Ranks = {
            {ID = 1, Name = "Underhive Scum", Rank_Prefix = "", ModelsAllowed = {"models/dizcordum/notloyal/thugs/thug_male.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {Name = "Chem Runner", Default = true, Models = {"models/dizcordum/notloyal/thugs/thug_male.mdl"}, Weapons = {}, SpawnWeapons = {}, Prefix = ""},
            {Name = "Khornate Cultist", Models = {"models/sodium_cultist.mdl","models/dizcordum/sodium_blood_pact.mdl"}, Weapons = {}, SpawnWeapons = {}, Prefix = ""},
            {Name = "Nurgle Infected", Models = {"models/wk/nurglit/poxwalker.mdl","models/wk/nurglit/wk_nuglin.mdl","models/wk/nurglit/wk_nur_sor.mdl","models/wk/nurglit/wk_nurcul.mdl"}, Weapons = {}, SpawnWeapons = {}, Prefix = ""}
        }
    },
    DIVISION_OFFWORLD = {
        NiceName = "Offworld Bot",
        Prefix = "",
        Color = Color(50, 50, 50, 255),
        Description = "Offworld Bot",
        Bots = true,
        Team = "OFFWORLD",
        Ranks = {
            {ID = 1, Name = "OFFWORLD", Rank_Prefix = "", ModelsAllowed = {"models/dizcordum/notloyal/thugs/thug_male.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {Name = "OFFWORLD", Default = true, Models = {"models/dizcordum/notloyal/thugs/thug_male.mdl"}, Weapons = {}, SpawnWeapons = {}, Prefix = ""}
        }
    }
}
DEFAULT_ROLE = ROLES.DIVISION_CADIAN

--HARDCODED TO BE AT MAX 5 RANKS
group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 50, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 150, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 200, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}


-------------------------DivisionEnhancements------------------------------------------------


DivisionEnhancements = {
    --We are not using Division Enhancements for this server.
}


----------- INVENTORY CONFIGURATION ---------------

INVENTORY_ITEMS = {
    [1] = {
        Name = "Scrap Crate",
        Description = "Crate filled with Scrap. Used in Scrap Factories to produce Credits.",
        Model = "models/dizcordum/wh/dot_props/crate_ammo.mdl",
        Category = "Scrap",
        Entity = "outpost_supply",
        UseFunction = function(ply)
            Example(ply)
        end
    },
    [2] = {
        Name = "Spook",
        Description = "A mysterious substance created by the Chem Runners. Addictive Narcotic.",
        Model = "models/jackswan/wk_pills_two.mdl",
        Category = "Drugs",
        Entity = "drugs",
        UseFunction = function(ply)
            Example(ply)
        end
    }
}



-----------------LOAD MODELS------------------

modelsToPreload = {}

local seenModels = {}

for _, role in pairs(ROLES) do
    for _, rank in ipairs(role.Ranks or {}) do
        for _, model in ipairs(rank.ModelsAllowed or {}) do
            if not seenModels[model] then
                table.insert(modelsToPreload, model)
                seenModels[model] = true
            end
        end
    end
end

print("Imperium RP Config Loaded!")
