--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/main_config_sh.lua
--DO NOT ANGER MURLOCK, EDIT IT IN GITHUB, OR 1. YOUR CHANGES WILL GET REMOVED, AND 2. HE WILL BE VERY ANGRY!!

imperium_rp_font = "Times New Roman"
gamemode_name = "WW1 Trench Warfare RP"

MAIN_MAP = "rp_ww1_siegfriedtrenches_b02"
----------INTRO CONFIG-----------------------------------

mapMessages = {
    ["gm_flatgrass"] = "Welcome to Murlocks Testing gm_flatgrass. If you have money... I would run...",
    ["zulu_field_002"] = "Natal 1879... British Invasion into Zulu Land."
}


mapMessage_defualt = "Somewhere on the Western Front..."

configTexts = {
    "The lamps are going out all over Europe, we shall not see them lit again in our lifetime.\n― Edward Grey",
    "To the last man, to the last round.\n― Philip Neame",
    "War is the unfolding of miscalculations.\n― Barbara W. Tuchman",
    "The war has developed not necessarily to Japan's advantage.\n― Emperor Hirohito",
    "The soldier above all others prays for peace, for it is the soldier who must suffer and bear the deepest wounds and scars of war.\n― Douglas MacArthur",
    "In war, there are no unwounded soldiers.\n― José Narosky",
    "A soldier will fight long and hard for a bit of colored ribbon.\n― Napoleon Bonaparte",
    "The first casualty of war is truth.\n― Hiram Johnson",
    "War does not determine who is right - only who is left.\n― Bertrand Russell",
    "The object of war is not to die for your country but to make the other bastard die for his.\n― George S. Patton",
    "Never think that war, no matter how necessary, nor how justified, is not a crime.\n― Ernest Hemingway",
    "Older men declare war. But it is the youth that must fight and die.\n― Herbert Hoover",
    "Only the dead have seen the end of war.\n― Plato",
    "War is hell.\n― William Tecumseh Sherman",
    "It is well that war is so terrible, or we should grow too fond of it.\n― Robert E. Lee",
    "The supreme art of war is to subdue the enemy without fighting.\n― Sun Tzu",
    "War is peace. Freedom is slavery. Ignorance is strength.\n― George Orwell",
    "War is a series of catastrophes that results in a victory.\n― Georges Clemenceau",
    "War makes strange bedfellows.\n― Helen Thomas",
    "War is the continuation of politics by other means.\n― Carl von Clausewitz"
}


intro_songs = {
    "https://www.imperiumgaming.net/coldwar/I%20Vow%20To%20Thee%20(Instrumental).mp3"
}

intro_image_urls = {
    "https://i.imgur.com/PLzA0E0.jpeg",
    "https://i.imgur.com/0jNfsvD.jpeg",
    "https://i.imgur.com/rxpidOZ.jpeg",
    "https://i.imgur.com/5FtzZbR.jpeg",
    "https://i.imgur.com/JGUPr8O.jpeg",
    "https://i.imgur.com/gFrKgc1.jpeg",
    "https://i.imgur.com/8zqKTqL.jpeg",
    "https://i.imgur.com/jiBj1Le.jpeg",
    "https://i.imgur.com/a3yyIPL.jpeg",
    "https://i.imgur.com/IadprxO.jpeg",
    "https://i.imgur.com/mOMIrNL.jpeg",
    "https://i.imgur.com/YZNJCSz.jpeg"
}

----IS_ZULU_EVENT-------------

local isZuluField002 = (game.GetMap() == "zulu_field_002")

if isZuluField002 then
    IS_ZULU_EVENT = true
else
    IS_ZULU_EVENT = false
end

if IS_ZULU_EVENT then
    intro_songs = { "https://files.catbox.moe/4tki8r.mp3"}
    intro_image_urls = {"https://i.imgur.com/tJr1Sb0.jpeg"}
    gamemode_name = "Anglo Zulu War RP"
end
------IS_SERVER_MANAGED----------

--IF SET TO TRUE, THEN ONLY SUPERADMINS CAN EDIT AND CREATE DIVISIONS!
IS_SERVER_MANAGED = true

---NON OFFENSIVE COST------------------

non_attack_reduction = 0.25

gas_grenade_cost = 50
outpost_cost = 1000

--GAMEPLAY VARS------------------------

preperation_stage_timer = 1800
build_up_stage_timer = 900
combat_phase = 2700

---COOL DOWNS FOR TANKS------------------

entityCooldowns = {
    ["M4 Sherman"] = {cooldown = 140, lastSpawnTime = 0},
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

WALK_SPEED = 105
RUN_SPEED = 280
JUMP_POWER = 230
MAX_HEALTH = 100

------REVIVE TIME AND LOOT TIME--------

REVIVE_TIME = 5

LOOT_TIME = 3


----------------------TRENCH COOLDOWN

TEAM_COOLDOWN = 1200
GLOBAL_COOLDOWN = 600

--------------------HELP CONFIG----------------------------------------


helpTopics = {
    ["Intro"] = "Welcome to Imperium Gaming's WW1 Trench Warfare RP!\n\nThis server is running a custom MRP gamemode known as 'ImperiumRP' (We are not another DarkRP re-name or a NS Clone!)\n\nThis Help Menu will guide you through the servers features, gameplay, and custom content. Need to reopen this menu? Type /help in chat anytime!\n\nSelect a topic on the left to learn more.\n\nGetting Started:\n\nYou have spawned in as a recruit, to progress you need to Join Someones Division! In this server all Divisions are player created and run, you can also make your own division when you have 60,000QM points (our currency!) ask around in /ooc or by speaking to people if you can join a division, there you will be trained and given classes that they have unlocked! Not sure who to join? You can stay as recruit as long as you want, you can get a weapon by going up to the weapons crate.\n\nAnd again Welcome to the Server!\n\n-Murlock",     
    ["Unlocking Weapons"] = "You can unlock weapons at the Weapon Crate located near spawn. Your Division, including recruits, will have base weapons already unlocked for you to use.\n\nThere are Primary, Secondary, and Miscellaneous slots where you can customize your loadout. You earn QM Points by killing players, collecting supplies, looting bodys, and actively playing on the server. These QM Points can then be used at the Weapon Crate to unlock new weapons!\n\nIn addition to Division-provided base weapons, some weapons are unlocked through specific classes, such as the Sniper class. There are also VIP only weapons that are not overpowered and are just for fun.",
    ["Divisions"] = "All Divisions on this server are player-managed, created, and controlled.\n\nWho is allowed into a Division is entirely up to the Division owner. The owner can also decide which classes can be unlocked and spends divisional supplies to unlock these classes, making their Division unique. The owner's rank is tied to the rank of the Division, which is determined by weekly activity. This means that inactive Divisions will have lower ranks, while active Divisions will achieve higher ranks.\n\nDivision ranks also determine how many classes a Division can have.\n\nAnyone on the server can create a Division for 60,000 QM Points and invite players to grow it to its maximum rank. This is a fully player-driven experience. Click F3 to open the Division Menu.",
    ["Specializations"] = "Specializations (or classes) are unlockable by Divisions through the use of divisional supply.\nSpecializations require a certain level of weekly activity and may have prerequisite Specializations that need to be unlocked first, along with the necessary supply.\n\nOnce a Division owner or Division admin unlocks a Specialization, they can whitelist members of their Division for that class, giving them full control over who has access to these roles. Classes can include Medics, Engineers, Tankers, Pilots, and more!\n\nWe encourage Division owners to be creative and build unique Divisions. Specializations can always be replaced if needed.",
    ["Outposts"] = "Outposts are extremely important for reinforcing the frontline. Without an outpost, it will be difficult to get players to the front lines, and you may lose the objective!\n\nOutposts can be created by trusted+ members of a Division as well as Engineers. These outposts take about 90 seconds to construct, and each Division is limited to one outpost at a time.\n\nOnce an outpost is constructed, players can use the Outpost Radio at spawn to spawn at these locations. However, if an enemy player is near an outpost, it will be considered under attack, and spawning will be disabled until the threat is resolved.\n\nWe encourage players to prioritize constructing and protecting forward outposts to maintain control of the battlefield!",
    ["Supply and Manpower"] = "Supply is essential for deploying tanks, spawning entities, and constructing outposts.\n\nWithout supply, your side will struggle to maintain combat effectiveness and fight effectively.\n\nOutside of the Daily Operation, the cost of everything is reduced by 75%\n\nYou generate supply with the Supply Factory: this turns Scrap into Supply. Bring scrap up to your Divisions Supply Factory and click e to collect it (and you will also get a reward!)\n\nThe Factory then produces supply and manpower for your side. Manpower is used in Trench Attacks, but also used while defending. You cant advance a trenchline without spending manpower. Admins+ in a division can transfer supply to other divisions in the Management Menu.", 
    ["Scrap Factory"] = "Each trench produces scrap every 5 minutes. This Scrap can be used in a factory to be turned into Supply.\n\nTrusted+ players can spawn a Scrap Factory that takes 5 minutes to refine 100 Scrap into Supply and 10 Manpower. There can only be one refinery per division on the map at any given time. Factorys cannot be placed near spawn areas, as this violates server rules.\n\nThe Factory creates 50 residue Supply for every 100 Scrap it refines. Enemies can destroy the Factory and collect the residue Supply. Residue Supply is deducted from the division's supply when the Factory is removed or destroyed. Be aware of this when spawning a new Factory, as it will drop residue Supply. To stop collecting the Residue Supply early, there is a 90min wait between spawning in a new one. But if your Factory was destroyed, you can spawn one in right away.",
    ["Frontline System"] = "There are 5 Trenches: A, B, C, D, and E.\n\nTrenches must be captured in order. The highlighted objectives on the bottom-right of your screen show the current frontline trenches, which are the ones that will be attacked and defended.\n\nThe capture rate is static and only requires a majority presence to begin capturing. To locate an objective, use the compass and the distance indicator at the bottom-right of your screen. By monitoring the distance as it decreases while following a direction, you can pinpoint the location of the objective.\n\nAll maps have 5 objectives / Trenches.\n\nThe Commander cna use the /trench command where they can call Raids and Assaults. In Assaults Manpower is at risk for both the attacker and defender, the Commander dictates how much manpower is used in an Assault, if the Timer Runs out, or the Attackers run out of manpower, the Defenders will win.",
    ["Daily Operation"] = "Every day at 5 EST, the Daily Operation takes place.\n\nThe current frontline and ongoing battle can be seen at the bottom-right of your screen. The Daily Operation (or Daily Offensive, as some call it) is the opportunity for the attackers to push the defenders back. If one side wins all maps, they win the war, and the system will be reset.\n\nDuring the operation, defenders are given time to prepare a defense for all 5 objectives on the map. Once the preparation time is over, the attackers must attempt to capture all 5 objectives.\n\nThe attackers have a time limit to complete their mission but gain additional time with each objective they capture. If the frontline objective is contested, the battle will not end, even if the timer reaches 0.\n\nThe Daily Operation is the most intense and exciting event this server has to offer. We encourage all players to join at 5 EST to help their side achieve victory!",
    ["Commands and Links"] = "/discord (Opens the Discord Server)\n/donate (Opens our Donation Store)\n/website (Opens our Website)\n/content (Opens the Content Pack)\n/steamgroup (Opens the Steam Group)\n\n/ooc (For Global OOC chat)\n/radio (For Team Radio)\n/r (For Global Radio)\n\n/help (Opens this Menu)\n/supply (Opens the Supply Logs).\n/options (Opens the Options Menu for ImperiumRP)\n\nF1 (Opens the Character Edit Menu)\nF2 (Opens the Promotion and Whitelist Menu)\nF3 (Opens the Division Menu)\nF4 (Opens the Character Selection Menu)\nF6 (Opens the Squad Menu)",
    ["Hand Swep"] = "The Hand Swep is a custom SWEP that allows you to move props and objects by holding left click and dragging.\n\nThis can be used to move barrles, corpses, props, and anything else that is not nailed down!\n\nIts a very fun swep and adds a lot of gmod goofines to the server... Prop Killing is allowed if you can pull it off, and can lead to some extreamly fun moments.\n\nRight Click allows you to Salute, and Left Click allows you to move objects.",
    ["Levels and XP"] = "ImperiumRP has three main stats:\n\nEndurance (Health Regen)\nAthletics (Faster Run and Higher Jump)\nBallistics (Less Recoil and Spread)\n\nAll these states give a small bonus in its respective field, making high level players more effective in combat. Saying that, a level 1 player can still kill a level 70 player, but the level 70 player will have a slight advantage. Killing a higher level player means you gain more XP!\n\nYou can level up and gain XP by playing on the server, killing players, looting bodys, and collecting Supply. You can view your level and stats by pressing F1. You start with 10 points to spend.\n\nEvery Level gets you 2 points to spend on your Character, however levels will get exponentially harder to obtain, being around level 70+ is considered a max leveled player.\n\nSome players played during WW2, and this allows them to carry over there skils they had before, as they are veterans.",
    ["VIP"] = "This server is run on donations. All of the money goes into funding custom content (like the ImperiumRP gamemode!) and paying for the Server Box, our Linux Machine in the Background that runs alot of our custom features, and our Webiste!\n\nDonate by typing /donate\n\nVIP gets you VIP only weapons, Double XP and QM points, and a role in our discord! The Donation helps us keep this server alive, and we are beyond appreciative for everyone who has helped us financially in making our dream server!\n\nIf you buy a Supply Drop package do /claim to get it in game!",
    ["Reviving and Looting"] = "In this gamemode, when you die your corpse will remain on the battlefield. This can be dragged around and the player (if they have not respawned) can see whats going on.\n\nYou can be revived by a Medic, and can see how close the nearest medic is. Medics will get a green glow around all players that can be revived, so can see your corpse through walls.\n\nTo prevent players being revived you can loot there corpses, this will take 5 seconds and you will gain supply, XP and QM points!\n\nDuring a Risky Action where Manpower is at stake, Reviving players will grant a lost manpower back",
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
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3008635642") end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3008635642") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3008635642") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3008635642") end,
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
    ["!cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["/cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["!trench"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["/trench"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["!raid"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["/raid"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["!attack"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["/attack"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["!assault"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["/assault"] = function(ply) OpenTrenchMenuPlayer(ply) end,
    ["/setmain"] = function(ply) Set_Division_To_Main(ply) end,
    ["/cooldowns"] = function(ply) ResetCoolDowns(ply) end,
    ["/underground"] = function(ply) SetUndergroundPoint(ply) end,
    ["/addsupply"] = function(ply, args) SetDivisionSupplyAdmin(ply, args) end,
    ["/setrolerank"] = function(ply, args) SetDivisionRankAdmin(ply, args) end,
    ["!setrolerank"] = function(ply, args) SetDivisionRankAdmin(ply, args) end,
    ["/clearhome"] = function(ply) ClearAllHomeProps(ply) end,
    ["!clearhome"] = function(ply) ClearAllHomeProps(ply) end,
    ["!resetdugout"] = function(ply) ClearAllHomeProps(ply) end,
    ["/resetdugout"] = function(ply) ClearAllHomeProps(ply) end,
    ["/cleardugout"] = function(ply) ClearAllHomeProps(ply) end,
    ["!cleardugout"] = function(ply) ClearAllHomeProps(ply) end,
}

----------------------DEFUALT WEAPONS-------------------------------------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things"
}

----------------------ROLES-------------------------------------------------------------------------------


BRITISH_MODELS = {"models/wassimadamoxdu02/imperialcommunity/britishv2/1soldatbritish.mdl","models/wassimadamoxdu02/imperialcommunity/britishv2/2soldatbritish.mdl","models/wassimadamoxdu02/imperialcommunity/britishv2/3soldatbritish.mdl","models/wassimadamoxdu02/imperialcommunity/britishv2/4soldatbritish.mdl","models/wassimadamoxdu02/imperialcommunity/britishv2/5soldatbritish.mdl","models/wassimadamoxdu02/imperialcommunity/britishv2/6soldatbritish.mdl"}
BRITISH_LOADOUT = {"tfa_doi_smlemkiii","tfa_doiwebley","tfa_doi_etoolger"}

US_LOADOUT = {"tfa_doim1911","tfa_doi_etoolger","tfa_verdun_springfield1903"}


FRENCH_LEGION = {"models/wassimdz93/tirailleurs/2tirailleur.mdl","models/wassimdz93/tirailleurs/1tirailleur.mdl"}

GERMAN_MODELS = {
    "models/adamwassim/imperialcommunity/1greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/1soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/1sturmallemandv2.mdl",
    "models/adamwassim/imperialcommunity/2greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/2soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/2sturmallemandv2.mdl",
    "models/adamwassim/imperialcommunity/3greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/3soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/3sturmallemandv2.mdl",
    "models/adamwassim/imperialcommunity/4greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/4soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/4sturmallemandv2.mdl",
    "models/adamwassim/imperialcommunity/5greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/5soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/5sturmallemandv2.mdl",
    "models/adamwassim/imperialcommunity/6greatcoatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/6soldatallemandv2.mdl",
    "models/adamwassim/imperialcommunity/6sturmallemandv2.mdl"
}

AUSTRIAN_MODELS = {"models/hosti/austria_hungary/austro-hungary_infantry.mdl","models/hosti/austria_hungary/austro-hungary_heavy.mdl","models/hosti/austria_hungary/austro-hungary_medic.mdl","models/hosti/austria_hungary/austro-hungary_officer.mdl"}

FRENCH_MODELS = {"models/wassimdz93/pm0v3/player/fra/infantry/en/5soldatfr1916.mdl","models/wassimdz93/pm0v3/player/fra/infantry/en/4soldatfr1916.mdl","models/wassimdz93/pm0v3/player/fra/infantry/en/1soldatfr1916.mdl","models/wassimdz93/pm0v3/player/fra/infantry/en/2soldatfr1916.mdl","models/wassimdz93/pm0v3/player/fra/infantry/en/3soldatfr1916.mdl","models/wardaddydz93/pm0v3/player/fra/infantry/en/soldatfr1.mdl","models/wardaddydz93/pm0v3/player/fra/infantry/en/soldatfr2.mdl","models/wardaddydz93/pm0v3/player/fra/infantry/en/soldatfr3.mdl","models/wardaddydz93/pm0v3/player/fra/infantry/en/soldatfr4.mdl","models/wardaddydz93/pm0v3/player/fra/infantry/en/soldatfr5.mdl"}
FRENCH_LOADOUT = {"tfa_verdun_berthier_0715","tfa_ww1_beretta_m1915","tfa_doi_etoolger"}
GERMAN_LOADOUT = {"tfa_doiluger","tfa_verdun_feldspaten","tfa_verdun_kar98az_remake"}

OTTOMAN_MODELS = {"models/babafingo/ottoman/officer/osmanlier_6.mdl"}
OTTOMAN_MODELS_NCO = {"models/babafingo/ottoman/officer/osmanlisubay_6.mdl"}
OTTOMAN_MODELS_CO = {"models/babafingo/ottoman/officer/osmanliofficer_6.mdl"}

DivisionTypes = {
    ["British Division"] = {
        Team = "british",
        Description = "The British Expeditionary Force deployed in France. They are tasked with holding the line against the German advance, millions have been conscripted into many groups and divisions.",
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
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
    ["American Expeditionary Forces"] = {
        Team = "british",
        Description = "Over 4 million Americans served in the Great War, with over 100,000 dying in the conflict. The American Expeditionary Forces are here to help the British and French hold the line against the German advance.",
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 2, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 3, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 4, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 5, Name = "Staff Sergeant", Rank_Prefix = "SSG", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 6, Name = "First Sergeant", Rank_Prefix = "1SG", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 7, Name = "Sergeant Major", Rank_Prefix = "SGM", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 8, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 9, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 10, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 12, Name = "Lieutenant Colonel", Rank_Prefix = "LTC", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = US_LOADOUT},
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
    ["French Legion"] = {
        Team = "british",
        Description = "The French Legion is made up of volunteers from all over the French Empire! Fighting for France and a chance for French Citizenship. They are known for their resilience and determination, and are a key part of the Allied Powers.",
        Ranks = {
            {ID = 1, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 2, Name = "Caporal", Rank_Prefix = "CPL", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 3, Name = "Caporal-chef", Rank_Prefix = "CCH", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 4, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 5, Name = "Sergent-chef", Rank_Prefix = "SCH", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 6, Name = "Adjudant", Rank_Prefix = "ADJ", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 7, Name = "Adjudant-chef", Rank_Prefix = "ADC", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 8, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 9, Name = "Sous-lieutenant", Rank_Prefix = "SLT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 11, Name = "Capitaine", Rank_Prefix = "CPT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 12, Name = "Commandant", Rank_Prefix = "CDT", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = FRENCH_LEGION, WeaponsAllowed = FRENCH_LOADOUT},
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
    ["French Division"] = {
        Team = "british",
        Description = "They Shall Not Pass! The French Army is the largest of the Allied Powers, millions have served to defend against the Hun. Resilience, determination, for France!",
        Ranks = {
            {ID = 1, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 2, Name = "Caporal", Rank_Prefix = "CPL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 3, Name = "Caporal-chef", Rank_Prefix = "CCH", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 4, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 5, Name = "Sergent-chef", Rank_Prefix = "SCH", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 6, Name = "Adjudant", Rank_Prefix = "ADJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 7, Name = "Adjudant-chef", Rank_Prefix = "ADC", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 8, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 9, Name = "Sous-lieutenant", Rank_Prefix = "SLT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 11, Name = "Capitaine", Rank_Prefix = "CPT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 12, Name = "Commandant", Rank_Prefix = "CDT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
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
    ["Romanian Division"] = {
        Team = "british",
        Description = "Farewell, farewell, drum is beating, farewell, brave Romanians, hooray! With the sack tied at the back, with weapons in hands, hooray! Be it sunny day, be it, or a cloudy sky, Be it rain, snowing be it, we go cheerfully, farewell!",
        Ranks = {
            {ID = 1, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 2, Name = "Fruntaș", Rank_Prefix = "FRN", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 3, Name = "Caporal clasa a III-a", Rank_Prefix = "CPL3", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 4, Name = "Caporal clasa a II-a", Rank_Prefix = "CPL2", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 5, Name = "Caporal clasa I", Rank_Prefix = "CPL1", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 6, Name = "Sergent", Rank_Prefix = "SGT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 7, Name = "Sergent-major", Rank_Prefix = "SGM", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 8, Name = "Plutonier", Rank_Prefix = "PLT", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 9, Name = "Plutonier-major", Rank_Prefix = "PLM", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 10, Name = "Plutonier-adjutant", Rank_Prefix = "PLAJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 11, Name = "Plutonier adjutant principal", Rank_Prefix = "PLAP", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 12, Name = "Maior", Rank_Prefix = "MAJ", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = FRENCH_MODELS, WeaponsAllowed = FRENCH_LOADOUT},
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
    ["German Division"] = {
        Team = "german",
        Description = "GOTT MIT UNS! The German Empire is the largest of the Central Powers, millions have enlisted to fight for Kaiser and Fatherland. The German Army shall crush the Entente!",
        Ranks = {
            {ID = 1, Name = "Rekrut", Rank_Prefix = "RKT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 2, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 3, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 4, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UO", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 8, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 9, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 10, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 12, Name = "Oberstleutnant", Rank_Prefix = "OLT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 13, Name = "Oberst", Rank_Prefix = "OBT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
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
    ["Austro-Hungarian Division"] = {
        Team = "german",
        Description = "The Austrian Order is comming to an end, the Austro-Hungarian Empire is fighting for its survival. With internal strife and external threats, the Austro-Hungarian Empire will not go down without a fight!",
        Ranks = {
            {ID = 1, Name = "Rekrut", Rank_Prefix = "RKT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 2, Name = "Soldat", Rank_Prefix = "SDT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 3, Name = "Gefreiter", Rank_Prefix = "GFR", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 4, Name = "Obergefreiter", Rank_Prefix = "OGFR", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 5, Name = "Unteroffizier", Rank_Prefix = "UO", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 6, Name = "Feldwebel", Rank_Prefix = "FW", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 7, Name = "Oberfeldwebel", Rank_Prefix = "OFW", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 8, Name = "Leutnant", Rank_Prefix = "LT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 9, Name = "Oberleutnant", Rank_Prefix = "OLT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 10, Name = "Hauptmann", Rank_Prefix = "HPT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 11, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 12, Name = "Oberstleutnant", Rank_Prefix = "OLT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 13, Name = "Oberst", Rank_Prefix = "OBT", ModelsAllowed = AUSTRIAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
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
["Ottoman Division"] = {
    Team = "german",
    Description = "The Ottoman Empire has long been called the Sick Man of Europe, they are fighting for the survival of their Empire, and will not go down without a fight. In the New World that dawns after the war, the Ottoman Empire will rise again!",
    Ranks = {
        {ID = 1, Name = "Er", Rank_Prefix = "ER", ModelsAllowed = OTTOMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 2, Name = "Onbaşı", Rank_Prefix = "ONB", ModelsAllowed = OTTOMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 3, Name = "Çavuş", Rank_Prefix = "ÇVŞ", ModelsAllowed = OTTOMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 4, Name = "Başçavuş", Rank_Prefix = "BÇVŞ", ModelsAllowed = OTTOMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 5, Name = "Astsubay", Rank_Prefix = "ASB", ModelsAllowed = OTTOMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 6, Name = "Üsteğmen", Rank_Prefix = "ÜT", ModelsAllowed = OTTOMAN_MODELS_NCO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 7, Name = "Teğmen", Rank_Prefix = "T", ModelsAllowed = OTTOMAN_MODELS_NCO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 8, Name = "Yüzbaşı", Rank_Prefix = "YB", ModelsAllowed = OTTOMAN_MODELS_NCO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 9, Name = "Binbaşı", Rank_Prefix = "BB", ModelsAllowed = OTTOMAN_MODELS_NCO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 10, Name = "Yarbay", Rank_Prefix = "YB", ModelsAllowed = OTTOMAN_MODELS_CO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 11, Name = "Albay", Rank_Prefix = "ALB", ModelsAllowed = OTTOMAN_MODELS_CO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 12, Name = "Tuğgeneral", Rank_Prefix = "TUG", ModelsAllowed = OTTOMAN_MODELS_CO, WeaponsAllowed = GERMAN_LOADOUT},
        {ID = 13, Name = "Tümgeneral", Rank_Prefix = "TUM", ModelsAllowed = OTTOMAN_MODELS_CO, WeaponsAllowed = GERMAN_LOADOUT},
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
    ["German High Command"] = {
        Team = "german",
        Description = "The High Command for the Germans. This Division can NOT be selected without Admin Approval!",
        Ranks = {
            {ID = 1, Name = "Oberstleutnant", Rank_Prefix = "OBTL", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 2, Name = "Oberst", Rank_Prefix = "OBT", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT},
            {ID = 3, Name = "General", Rank_Prefix = "GENMAJ", ModelsAllowed = GERMAN_MODELS, WeaponsAllowed = GERMAN_LOADOUT, Commander = true},
        },
        Classes = {
            {
                Name = "Officer",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    },
    ["British High Command"] = {
        Team = "british",
        Description = "The High Command for the British. This Division can NOT be selected without Admin Approval!",
        Ranks = {
            {ID = 1, Name = "Lieutenant Colonel", Rank_Prefix = "LT.COL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 2, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT},
            {ID = 3, Name = "Brigadier General", Rank_Prefix = "BRIG.GEN", ModelsAllowed = BRITISH_MODELS, WeaponsAllowed = BRITISH_LOADOUT, Commander = true},
        },
        Classes = {
            {
                Name = "Officer",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    }
}

CORE_IMPERIUM_CLASSES = {
    {
        Name = "Engineer",
        Create_Outposts = true,
        Models = {},
        Max = 4,
        Core = true,
        Weapons = {"tfa_verdun_winchester1897","tfa_ww1_remington8_police_version","tfa_ww1_remington8_standard","tfa_doiithaca37","tfa_ww1_mausersebslander1916","weapon_lvsmines","tfa_ww1_geballte_ladung"},
        SpawnWeapons = {"rope_tool","ent_spawner","alydus_fortificationbuildertablet","weapon_lvsrepair","weapon_lvsrepair"},
        Prefix = "EG",
        EntitySpawner = {
            {
                name = "Ammo Supplies",
                entityname = "universal_ammo_small",
                description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                price = 100
            },
            {
                name = "Radio",
                entityname = "newboombox",
                description = "Radio to play some War Music!",
                price = 0
            },
            {
                name = "Land Mine",
                entityname = "sw_mine_tm62_v3",
                description = "Deploy a land mine to stop infantry.",
                price = 50
            },
            {
                name = "Machine Gun",
                entityname = "ent_weapon_maximpod",
                description = "Deploy a machine gun for defense.",
                price = 250
            },
            {
                name = "Transport Cart",
                entityname = "fuel_store",
                description = "Cart to store Scrap and move it around.",
                price = 0
            },
            {
                name = "Vehicle Ammo Crate",
                entityname = "lvs_item_ammocrate",
                description = "Restores a vehicles ammo.",
                price = 400
            },
            {
                name = "Petrol Can",
                entityname = "lvs_item_jerrycan",
                description = "I know whats wrong with it, it aint got no gas init.",
                price = 25
            }
        }
    },
    {
        Name = "Medic",
        Medic = true,
        Models = {},
        Core = true,
        Max = 4,
        Weapons = {"tfa_ww1_remington8_police_version","tfa_ww1_mausersebslander1916","tfa_ww1_remington8_standard"},
        SpawnWeapons = {"fas2_ifak","ent_spawner"},
        Prefix = "MD",
        EntitySpawner = {
            {
                name = "Medic Box",
                entityname = "medic_box",
                description = "Deploy a Box filled with medic items so they can heal themselves. Also cures radiation over time.",
                price = 100
            },
            {
                name = "Radio",
                entityname = "newboombox",
                description = "Radio to play some War Music!",
                price = 0
            },
            {
                name = "Gas Mask",
                entityname = "item_sh_gasmask",
                description = "Protects against gas attacks.",
                price = 100
            }
        }
    },
    {
        Name = "Machine Gunner",
        Models = {},
        Max = 4,
        Core = true,
        Weapons = {"tfa_doilewis","tfa_verdun_madsen","tfa_doim1919","tfa_doim1918","tfa_ww1_chauchat","tfa_mg08"},
        SpawnWeapons = {"ent_spawner"},
        Prefix = "MG",
        EntitySpawner = {
            {
                name = "Ammo Box",
                entityname = "universal_ammo_small",
                description = "Deploy some Ammo!",
                price = 50
            },
            {
                name = "Radio",
                entityname = "newboombox",
                description = "Radio to play some War Music!",
                price = 0
            },
            {
                name = "Transport Cart",
                entityname = "fuel_store",
                description = "Cart to store Scrap and move it around.",
                price = 0
            }
        }
    }
}

for _, division in pairs(DivisionTypes) do
    division.Classes = division.Classes or {}

    for _, coreClass in ipairs(CORE_IMPERIUM_CLASSES) do
        table.insert(division.Classes, table.Copy(coreClass))
    end
end

ALL_DIVISIONS = {}
BRITISH_DIVISIONS = {}
GERMAN_DIVISIONS = {}

for divisionName, _ in pairs(DivisionTypes) do
    table.insert(ALL_DIVISIONS, divisionName)
    if DivisionTypes[divisionName].Team == "british" then
        table.insert(BRITISH_DIVISIONS, divisionName)
    elseif DivisionTypes[divisionName].Team == "german" then
        table.insert(GERMAN_DIVISIONS, divisionName)
    end
end

--==============================================================================================
-- Specializations --
--==============================================================================================

--Prerequisites = {"Engineer", "Medic"},
--WeeklyActivity = 30,

imperium_specializations = {
    --Global Specializations
    ["Calvary"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "The cavalry remains a vital component of warfare, providing speed and mobility on the battlefield. Mounted soldiers can quickly traverse rough terrain and execute flanking maneuvers.\n\nWhile vulnerable to modern weaponry, a cavalry charge can break enemy lines and boost the morale of your comrades.\n\nEach mount costs 100 supply (25 out of operation)",
        Supply = 7500,
        WeeklyActivity = 5,
        Class = {
            Name = "Cavalry",
            Default = false,
            Models = {},
            Weapons = {"tfa_ww1_colt_saa"},
            EntitySpawner = {
                {
                    name = "Mustang",
                    entityname = "ent_horse_mustang",
                    description = "Mustang Breed. Fast and Wild. Horse of the Castilians of old and Indians.",
                    price = 200
                },
                {
                    name = "Arabian",
                    entityname = "ent_horse_arabian",
                    description = "Arabian Breed. Proud and Free. Horse of Saladin and of the Turks.",
                    price = 200
                },
                {
                    name = "Ardennes",
                    entityname = "ent_horse_ardennes",
                    description = "Ardennes Breed. Strong and Loyal. Horse of the Benelux, Horse of Napoleon.",
                    price = 200
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
        Description = "Artilleryman is able to deploy artillery guns and mortars that cause massive damage to enemy fortifications and infantry.\n\nWhen attacking, destroying enemy fortifications and killing enemy infantry is essential for capturing objectives.\n\nWhen defending, artillery can still be used as a formidible weapon to stop enemy advances.\n\nEach gun costs 400 supply (100 out of operation)\n\nThe Artilleryman also has smoke rounds to provide cover for advancing infantry.",
        Supply = 7500,
        WeeklyActivity = 30,
        Class = {
            Name = "Artilleryman",
            Default = false,
            Models = {},
            Weapons = {},
            EntitySpawner = {
                {
                    name = "Artillery Gun",
                    entityname = "lvs_arty_john_temp",
                    description = "Powerful artillery gun that can destroy enemy fortifications and infantry.",
                    price = 600
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                },
                {
                    name = "Transport Cart",
                    entityname = "fuel_store",
                    description = "Cart to store Scrap and move it around.",
                    price = 0
                }
            },
            SpawnWeapons = {"ent_spawner","cw_nam_m79_thumper"},
            vehicles = {
                {
                    name = "Cain",
                    entityname = "lvs_caine",
                    description = "A mobile mortar platform.",
                    price = 1500
                },
                {
                    name = "Pelekys",
                    entityname = "lvs_pelekys",
                    description = "Mounted artillery gun. Designed to penetrate armor",
                    price = 1500
                }
            },
            Prefix = "ARTY"
        }
    },
    ["Trench Saboteur"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Saboteurs are tasked with special missions, espionage, and sabotage.\n\nThe main feature is the ability to disguise themselves as the enemy, allowing them to sneak into the othersides trench to plant explosives.\n\nThis is the class of sabotage, best used to identify and destroy enemy fortifications and outposts from within.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Trench Saboteur",
            Default = false,
            Spy = true,
            Models = {},
            Weapons = {"tfa_ww1_tnt_charge","tfa_verdun_tankgewehr"},
            SpawnWeapons = {"hide_player"},
            Prefix = "SAB",
            Max = 2
        },
    },
    ["Tankers"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "War is changing, and the Tanker is at the forefront of this change. Tanks are the future of warfare, and the Tanker is the master of these machines.\n\nTanks are incredibly powerful, able to destroy enemy fortifications and infantry with ease. They are also able to take a lot of damage, making them the perfect frontline unit.\n\nSteel is the new king of the battlefield.",
        Supply = 15000,
        WeeklyActivity = 60000,
        Class = {
            Name = "Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "TK",
            vehicles = {
                {
                    name = "Renault FT Machinegun",
                    entityname = "lvs_renaultft_f_rp",
                    description = "The French Renault FT with a machinegun.",
                    price = 1750
                },
                {
                    name = "Renault FT Cannon",
                    entityname = "lvs_renaultft_m_rp",
                    description = "The French Renault FT with a cannon.",
                    price = 2000
                },
                {
                    name = "AFT",
                    entityname = "lvs_aft",
                    description = "Tractor converted for war with a Machinegun.",
                    price = 750
                },
                {
                    name = "The Behemoth",
                    entityname = "lvs_relicstorm",
                    description = "Massive Tank with a Cannon. Its Slow but Heavily Armoured.",
                    price = 5000
                },
                 {
                    name = "Percutio",
                    entityname = "lvs_percutio",
                    description = "Fast and deadly. Only weak to the Renault",
                    price = 1750
                },
                {
                    name = "The Spire",
                    entityname = "lvs_spire",
                    description = "Small and Nimble, Less Armoured than a Renault FT",
                    price = 750
                },
                {
                    name = "The Gallant",
                    entityname = "lvs_gallant",
                    description = "Small and Nimble, Less Armoured than a Renault FT",
                    price = 1250
                }
            }
        }
    },
    ["Motorized"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Since the creation of combustion engines, many have considered how automobiles could be used in war. This class provides a variety of armored cars that can be deployed.\nCheaper and faster than tanks, they can be used to flank enemies and rush trench lines while offering good protection and decent firepower.",
        Supply = 10000,
        WeeklyActivity = 50000,
        Class = {
            Name = "Motorized",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "MZ",
            vehicles = {
                {
                    name = "The Freeman",
                    entityname = "lvs_freeman",
                    description = "Decently Armored Truck with a big Cannon perfect for taking out Tanks or providing support at a distance.",
                    price = 1750
                },
                {
                    name = "The knave",
                    entityname = "lvs_knave",
                    description = "Decently Armored Truck with Mortars to support at a distance.",
                    price = 750
                },
                {
                    name = "Obrien",
                    entityname = "lvs_obrien",
                    description = "This is a quick and fast car with a Mounted Machinegun. Quick and deadly.",
                    price = 350
                },
                {
                    name = "Gravekeeper",
                    entityname = "lvs_gravekeeper",
                    description = "This is a quick and fast car with a Mounted Cannon. Quick and deadly.",
                    price = 500
                }
            }
        }
    },
    ["Central Aviator"] = {
        DivisionTypes = GERMAN_DIVISIONS,
        Description = "War has changed. The skies are now a battleground of aces.\n\nBiplanes tear through the air, dropping bombs and steel darts onto enemy trenches.\n\nPlanes are only effective on the Main Map.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Central Aviator",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "AV",
            vehicles = {
                {
                    name = "Fokker Dr.I",
                    entityname = "lunasflightschool_fokkertrigreen",
                    description = "German Plane, often known simply as the Fokker Triplane.",
                    price = 500
                },
                {
                    name = "Fokker Dr.I Red",
                    entityname = "lunasflightschool_fokkertrired",
                    description = "HIGHER, THE KING OF EHE SKY",
                    price = 750
                },
            }
        }
    },
        ["Central Tanker"] = {
        DivisionTypes = GERMAN_DIVISIONS,
        Description = "War is changing, and the Tanker is at the forefront of this change. Tanks are the future of warfare, and the Tanker is the master of these machines.\n\nTanks are incredibly powerful, able to destroy enemy fortifications and infantry with ease. They are also able to take a lot of damage, making them the perfect frontline unit.\n\nSteel is the new king of the battlefield.",
        Supply = 15000,
        WeeklyActivity = 60,
        Class = {
            Name = "Central Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "TK",
            vehicles = {
                {
                    name = "Captured Renault",
                    entityname = "lvs_renaultft_m_rp_all",
                    description = "A captured Entente tank repainted for use",
                    price = 2000
                },
                {
                    name = "The Ironhide",
                    entityname = "lvs_ironhide",
                    description = "Heaviest tank on the Central Powers.",
                    price = 5000
                },
                {
                    name = "The Spire",
                    entityname = "lvs_spire",
                    description = "The main MG tank of the Central powers.",
                    price = 750
                },
                {
                    name = "The Gallant",
                    entityname = "lvs_gallant",
                    description = "Same cannon as a Renault with a weaker body.",
                    price = 1500
                },
                {
                    name = "The Gravekeeper",
                    entityname = "lvs_gravekeeper",
                    description = "Mobile armored artillery.",
                    price = 1000
                },
                {
                    name = "The Freeman",
                    entityname = "lvs_freeman",
                    description = "Auto cannon on a trucks frame.",
                    price = 1750
                },
                {
                    name = "The Devitt",
                    entityname = "lvs_devitt",
                    description = "Stronger armor and cannon than a Renault. A weaker version of the Ironhide.",
                    price = 2500
                }
            }
        }
    },
    ["Entente Aviator"] = {
        DivisionTypes = BRITISH_DIVISIONS,
        Description = "War has changed. The skies are now a battleground of aces.\n\nBiplanes tear through the air, dropping bombs and steel darts onto enemy trenches.\n\nPlanes are only effective on the Main Map.",
        Supply = 10000,
        WeeklyActivity = 50,
        Class = {
            Name = "Entente Aviator",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "AV",
            vehicles = {
                {
                    name = "Royal Aircraft Factory S.E.5",
                    entityname = "lunasflightschool_bleriotrandom",
                    description = "British Plane, often known simply as the Sopwith Camel",
                    price = 500
                },
            }
        }
    },
        ["Entente Tanker"] = {
        DivisionTypes = BRITISH_DIVISIONS,
        Description = "War is changing, and the Tanker is at the forefront of this change. Tanks are the future of warfare, and the Tanker is the master of these machines.\n\nTanks are incredibly powerful, able to destroy enemy fortifications and infantry with ease. They are also able to take a lot of damage, making them the perfect frontline unit.\n\nSteel is the new king of the battlefield.",
        Supply = 15000,
        WeeklyActivity = 60,
        Class = {
            Name = "Entente Tanker",
            Default = false,
            Models = {},
            Weapons = {},
            SpawnWeapons = {"rope_tool","weapon_lvsrepair"},
            Prefix = "TK",
            vehicles = {
                {
                    name = "Renault Cannon",
                    entityname = "lvs_renaultft_m_rp",
                    description = "The standard tank for the Entente.",
                    price = 2000
                },
                {
                    name = "The Relicstorm",
                    entityname = "lvs_relicstorm",
                    description = "The heaviest tank on the Entente.",
                    price = 5000
                },
                {
                    name = "AFT",
                    entityname = "lvs_aft",
                    description = "Tractor converted for war with a machinegun.",
                    price = 750
                },
                {
                    name = "The Hatchet",
                    entityname = "lvs_hatchet",
                    description = "Same cannon as the Renault with a weaker body.",
                    price = 1500
                },
                {
                    name = "The Gemini",
                    entityname = "lvs_gemini",
                    description = "A new type of artillery, on a mobile body.",
                    price = 1000
                },
                {
                    name = "The Percutio",
                    entityname = "lvs_percutio",
                    description = "Autocannon on a cars body.",
                    price = 1750
                },
                {
                    name = "The Ixion",
                    entityname = "lvs_ixion",
                    description = "A very slow, highly armored tank, with a strong cannon.",
                    price = 2500
                }
            }
        }
    },
    ["Storm Trooper"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Storm Troopers hit hard and fast. They are the elite of the elite, the best of the best. They are the first to attack and the last to retreat.\n\nStorm Troopers are equipped with automatic weapons some call 'SMGS' and are able to deploy gas grenades and can hide.\n\nStorm Troopers are the tip of the spear, the cutting edge of the sword.",
        Supply = 7500,
        WeeklyActivity = 10,
        Class = {
            Name = "Storm Trooper",
            Default = false,
            Models = {},
            Max = 4,
            Weapons = {"tfa_ww1_mp18","tfa_doimp34","tfa_ww1_smg0818","tfa_ww1_fedorov_avtomat","tfa_doim1912","tfa_blast_sjogren"},
            SpawnWeapons = {"hide_player","weapon_sh_mustardgas","ent_spawner"},
            EntitySpawner = {
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                },
                {
                    name = "Gas Mask",
                    entityname = "item_sh_gasmask",
                    description = "Protects against gas attacks.",
                    price = 100
                }
            },
            Prefix = "ST"
        }
    },
    ["Sniper"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Snipers are the true terror of the battlefield. Only heard when their bullets find their marks.",
        Supply = 5000,
        Class = {
            Name = "Sniper",
            Default = false,
            Models = {},
            Max = 2,
            Weapons = {"tfa_doi_enfieldno4","tfa_ins2_i_mosin","tfa_verdun_g98"},
            SpawnWeapons = {"hide_player"},
            Prefix = "SNI"
       }
    },
    ["Messenger Bird"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "Flying high above the battlefield, the Messenger Bird is able to spot enemy positions and relay information back to the command. \n\nMessenger Birds are essential for keeping the army informed, and are able to fly over enemy lines to spy and report back with valuable information.",
        Supply = 5000,
        WeeklyActivity = 0,
        Class = {
            Name = "Messenger Bird",
            Default = false,
            isbird = true,
            Models = {},
            Weapons = {""},
            SpawnWeapons = {""},
            Prefix = ""
        },
    },
    ["Trench Sapper"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "As a child I yearned for the mines.\n\nThe Trench Sapper can dig underground to find scrap and to breach into the enemy trench. They belong underground.",
        Supply = 0,
        WeeklyActivity = 0,
        Class = {
            Name = "Trench Sapper",
            Default = false,
            miner = true,
            Models = {},
            Weapons = {},
            EntitySpawner = {
                {
                    name = "Ammo Box",
                    entityname = "universal_ammo_small",
                    description = "Deploy some Ammo!",
                    price = 50
                },
                {
                    name = "Radio",
                    entityname = "newboombox",
                    description = "Radio to play some War Music!",
                    price = 0
                },
                {
                    name = "Transport Cart",
                    entityname = "fuel_store",
                    description = "Cart to store Scrap and move it around.",
                    price = 0
                },
                {
                    name = "Blast Charge",
                    entityname = "tfa_ww1_tnt",
                    description = "Destroys Bedrock but will cause Caveins...",
                    price = 300
                },
                {
                    name = "Lamp",
                    entityname = "ent_oil",
                    description = "Lights the way in the dark...",
                    price = 75
                }
            },
            SpawnWeapons = {"ent_spawner"},
            Prefix = ""
        },
    },
    ["Atomic Specialist"] = {
        DivisionTypes = ALL_DIVISIONS,
        Description = "'If you want a total war, you are free to begin it; if you want it, you will get it.'\n-Nikita Khrushchev, during the Cuban Missile Crisis.\n\nThe Atomic Specialist is the class of nuclear atomic fission warfare. The map contains nuclear waste, outputs from the civilian nuclear industrys. The Atomic Specializatist has the unique ability to collect this waste and turn it into Plutonium-23 through a process of fission reactions in a controlled reactor. The Plutonium-23 can then be used to create fissile atomic weapons, that will cause death and destruction on a scale unimaginable.\n\nAtomic Specialist take 75% less radiation, recovers twice as fast, and can see radiation levels of other players.\n\nBy even unlocking this class, you are taking a step into the abyss of nuclear warfare.",
        Supply = 2000000,
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
}

--ZULU EVENT
NCO_MODELS_ZULU = {"models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco6.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco5.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco4.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco3.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco2.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_nco1.mdl"}
MODELS_ZULU = {"models/sujelo/pm0v3/player/24thfoot/brit_zulu_en6.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_en5.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_en4.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_en3.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_en2.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_en1.mdl"}
CO_MODELS_ZULU = {"models/sujelo/pm0v3/player/24thfoot/brit_zulu_co6.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_co5.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_co4.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_co3.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_co2.mdl","models/sujelo/pm0v3/player/24thfoot/brit_zulu_co1.mdl"}

LOADOUT_ZULU = {"tfa_tannenberg_martini_henry","tfa_doiwebley"}

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
    DIVISION_BRITISH = {
        NiceName = "British Recruits",
        Prefix = "BRITISH",
        Color = Color(25, 50, 25, 255),
        Description = "Join the British Army and fight for the King and Country.\nThe war will be over by Christmas.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = BRITISH_MODELS,
                WeaponsAllowed = BRITISH_LOADOUT,
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
        Team = "british"
    },
    DIVISION_GERMAN = {
        NiceName = "German Recruits",
        Prefix = "GERMAN",
        Color = Color(0, 50, 50, 255),
        Description = "Join the German Empire and fight for the Kaiser.\nDeutschland über Alles.",
        Default = true,
        Ranks = {
            {
                ID = 1,
                Name = "Recruit",
                Rank_Prefix = "RCT",
                ModelsAllowed = GERMAN_MODELS,
                WeaponsAllowed = GERMAN_LOADOUT,
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
        Team = "german"
    },
}

if IS_ZULU_EVENT then
    ROLES.DIVISION_ZULU_EVENT = {
        NiceName = "24th Welsh Regiment of Foot",
        Prefix = "24th",
        Color = Color(100, 50, 50, 255),
        Description = "24th Welsh Regiment of Foot, sent into ZuluLand...",
        Default = true,
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 2, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = NCO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = NCO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = NCO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 7, Name = "Warrant Officer Class 2", Rank_Prefix = "WO2", ModelsAllowed = NCO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 8, Name = "Warrant Officer Class 1", Rank_Prefix = "WO1", ModelsAllowed = NCO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 9, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = CO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 10, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = CO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 11, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = CO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 12, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = CO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
            {ID = 13, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = CO_MODELS_ZULU, WeaponsAllowed = LOADOUT_ZULU},
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
        Team = "british"
    }
end

DEFAULT_ROLE = ROLES.DIVISION_BRITISH

--HARDCODED TO BE AT MAX 5 RANKS
group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 30, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 175, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 250, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}


-------------------------DivisionEnhancements------------------------------------------------


DivisionEnhancements = {
    ["Reinforced Armor"] = {
        description = "When buying a Vehicle 25% is refunded. Tanks have 1000 Extra Health.",
        Price = 35000
    },
    ["Death and Taxes"] = {
        description = "Gain 25% more QM Points and 25% more XP from player kills.",
        Price = 40000
    },
    ["Scrap Tycoon"] = {
        description = "Gain 25% more scrap on collection. Generate Supply in Factories 50% Quicker.",
        Price = 50000
    },
    ["Outpost Pioneers"] = {
        description = "Outposts Deploy twice as fast and heal twice as fast. You are also refunded 75% supply when moved.",
        Price = 60000
    },
    ["Outpost Pioneers"] = {
        description = "Outposts Deploy twice as fast and heal twice as fast. You are also refunded 75% supply when moved.",
        Price = 60000
    },
    ["Tunnel Rats"] = {
        description = "Dig in the Underground twice as Fast. All members spawn with a Shovel. (Non Sappers still dig slower)",
        spawnfunction = function(ply)
            ply:Give( "tfa_tannenberg_shovel_m1912" )
        end,
        Price = 25000
    },
    ["Sleight of Hand"] = {
        description = "Looting bodys is now Instant. Also, it now takes 3 seconds less to revive a downed player.",
        Price = 45000
    },
}



-----------------LOAD MODELS------------------

modelsToPreload = {}

local seenModels = {}

for _, division in pairs(DivisionTypes) do
    for _, rank in ipairs(division.Ranks) do
        for _, model in ipairs(rank.ModelsAllowed or {}) do
            if not seenModels[model] then
                table.insert(modelsToPreload, model)
                seenModels[model] = true
            end
        end
    end
end

print("Imperium RP Config Loaded!")
