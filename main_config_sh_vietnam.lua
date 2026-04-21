--This is the main Config File. Anything you want to change. Change in here.
--THIS CONFIG FILE IS MANAGED HERE: https://github.com/MurlockCadi/mainconfig/blob/main/main_config_sh_vietnam.lua
--DO NOT ANGER MURLOCK, EDIT IT IN GITHUB, OR 1. YOUR CHANGES WILL GET REMOVED, AND 2. HE WILL BE VERY ANGRY!!!!

imperium_rp_font = "Bahnschrift"
gamemode_name = "Vietnam Jungle Warfare RP"


local MAIN_MAPS = {
  ["rp_40k_hammerfall_undead"] = true,
  ["necromunda_v1"] = true,
	["rp_bremergard_forest"] = true,
	["rp_snow_warfare"] = true
}

MAIN_MAP = "none"

if MAIN_MAPS[game.GetMap()] then
    MAIN_MAP = game.GetMap()
end

mapMessages = {
    ["rp_vietnam_imperium_gaming"] = "Mekong Delta -- South Vietnam -- Heavy VC Guerilla Activity.",
    ["rp_fob_v1_003"] = "Outskirts of Saigon -- South Vietnam -- Dense Jungle Warfare",
    ["rp_junglestorm"] = "War Zone C -- South Vietnam -- Dense Jungle Warfare"
}


mapMessage_defualt = "Somewhere during the hight of the Vietnam War..."

configTexts = {
	"You will kill ten of us, we will kill one of you, but in the end, you will tire of it first. - Ho Chi Minh", 
	"I love the smell of napalm in the morning. It smells like victory.", 
	"Our resistance will be long and painful, but whatever the sacrifices, however long the struggle, we shall fight to the end. - Ho Chi Minh", 
	"No event in American history is more misunderstood than the Vietnam War. - Richard Nixon",
	"The bastards have never been bombed like they're going to be bombed this time. - Richard Nixon",
	"It became necessary to destroy the town to save it.",
	"I think history will record that this may have been one of America's finest hours, because we took a difficult task and we succeeded. -Richard Nixon",
	"Death, like a great eagle, flew over Vietnam and picked out its prey.",
	"We didn't lose Vietnam. We quit Vietnam.",
	"I'm not going to be the first American president to lose a war. -Richard Nixon",
	"North Vietnam cannot defeat or humiliate the United States. Only Americans can do that. -Richard Nixon",
	"'Born to Kill'",
	"'Make Love, Not War'",
	"You Goddamn communist heathen, you had best sound off that you love the Virgin Mary, or I'm gonna stomp your guts out!",
	"Holy Jesus! What is that? What the fuck is that? WHAT IS THAT",
	"The horror... the horror...",
	"Horror has a face... and you must make a friend of horror. ",
	"There are two of you, don't you see? One that kills... and one that loves.",
	"We must kill them. We must incinerate them. Pig after pig... cow after cow... village after village... army after army...",
	"Imperium Gaming: A Community That Works for Everyone",
	"The Cold War isn't thawing; it is burning with a deadly heat. Communism isn't sleeping; it is, as always, plotting, scheming, working, fighting. - Richard Nixon",
	"The survivors of a nuclear war would envy the dead. - Nikita Khrushchev",
	"When it comes to combating imperialism we are all Stalinists. - Nikita Khrushchev",
	"The United States will eventually fly the Communist red flag… The American people will hoist it themselves. - Nikita Khrushchev",
	"The United States now sleeps under a Soviet moon - Nikita Khrushchev",
	"Gagarin flew into space, but didn't see any god there. - Nikita Khrushchev",
	"The war in Vietnam is but a symptom of a far deeper malady within the American spirit. - MARTIN LUTHER KING, JR.",
} 

intro_songs = {
	"https://www.imperiumgaming.net/coldwar/1981.mp3",
	"https://www.imperiumgaming.net/vietnamsongs/dream.mp3",
    "https://www.imperiumgaming.net/coldwar/bell.mp3",
    "https://www.imperiumgaming.net/coldwar/Cold%20War.mp3",
    "https://www.imperiumgaming.net/coldwar/Comrades%20in%20Arms.mp3"
}

intro_image_urls = {
    "https://www.imperiumgaming.net/vietnamload/js/12312321.png"
}

-- Entity Respawn Timers for Entity Spawner

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

ORGANIZATION_MULTIPLIER = 0.5

RESPAWN_TIMERS_IMPERIUMRP = {
    ["Small Vehicle"] = 60,
    ["Mobile Outpost"] = 500,
    ["Heavy Tanks"] = 900,
    ["Light Tanks"] = 600,
    ["APC"] = 600,
    ["Transport Helicopter"] = 300,
    ["Attack Helicopter"] = 900
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

----------BOT HEALTH-----------------

function GetHealthByTotalPlayers()
    local TotalPlayers = #player.GetHumans()
    local health = 100
    return health
end

-------XP SYSTEM CONFIG-----------------------

MIN_XP   = 500
MAX_XP   = 12000
MAX_LEVEL = 100
 
function getXPForNextLevel(level)
    if level < 1 then return MIN_XP end
    if level >= MAX_LEVEL then return MAX_XP end
 
    local t = (level - 1) / (MAX_LEVEL - 1)
    return math.floor(MIN_XP + (MAX_XP - MIN_XP) * (t ^ 1.3))
end

--------SPEED-----------

WALK_SPEED = 135
RUN_SPEED = 250
JUMP_POWER = 250
MAX_HEALTH = 100
SLOW_WALK_SPEED = 80

function GetRunSpeed(Combat_Doctrine_Level)

    --if Combat_Doctrine_Level is positive, then we double it.
    --If Combat_Doctrine_Level is negative, we half it, but keep it negative.

    if Combat_Doctrine_Level > 0 then
        Combat_Doctrine_Level = Combat_Doctrine_Level * 2
    elseif Combat_Doctrine_Level < 0 then
        Combat_Doctrine_Level = Combat_Doctrine_Level * 0.5
    end

    return RUN_SPEED + Combat_Doctrine_Level
end

------REVIVE TIME AND LOOT TIME--------

REVIVE_TIME = 2

LOOT_TIME = 2

-----IS SERVER MANAGED BY MURLOCK?----------------

IS_SERVER_MANAGED = true

--------------------HELP CONFIG----------------------------------------

--Need someone to do helps.
helpTopics = {
    ["Intro"] = "Welcome to Imperium Gaming!",
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
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3704976780") end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3704976780") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3704976780") end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3704976780") end,
    ["/group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/laws"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1ydHDK5rCCyvnWISJI5xhW_rjb1Qp8dI0b2Ab2EmL7Jc/edit?usp=sharing") end,
    ["!laws"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1ydHDK5rCCyvnWISJI5xhW_rjb1Qp8dI0b2Ab2EmL7Jc/edit?usp=sharing") end,
	["/training"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1uEcy2Lj3EM00wquvtDSTEerZj_Uv5V1GPMIuu-6qV0c/edit?usp=sharing") end,
	["!training"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1uEcy2Lj3EM00wquvtDSTEerZj_Uv5V1GPMIuu-6qV0c/edit?usp=sharing") end,
	["/suspect"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1h45MpFE7ya3abVqJfeWdi1wgS9RKJ2hn8UhRJRy_WdM/edit?usp=sharing") end,
	["!suspect"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1h45MpFE7ya3abVqJfeWdi1wgS9RKJ2hn8UhRJRy_WdM/edit?usp=sharing") end,
	["/krieg"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1xUWftjh4ZyByArmSgvN2sai2kqsixvUxA0m9lm_psLE/edit?tab=t.0") end,
	["!krieg"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1xUWftjh4ZyByArmSgvN2sai2kqsixvUxA0m9lm_psLE/edit?tab=t.0") end,
	["/cadia"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1Tq9m4xMw-gSf3ShvMRIhv8R25ymphWLkjXwEHtcWvh4/edit?usp=sharing") end,
	["!cadia"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1Tq9m4xMw-gSf3ShvMRIhv8R25ymphWLkjXwEHtcWvh4/edit?usp=sharing") end,
	["/ranks"] = function(ply) OpenURL(ply,"https://xmind.ai/share/YIOgl1RA?xid=jXVrwaii") end,	
	["!ranks"] = function(ply) OpenURL(ply,"https://xmind.ai/share/YIOgl1RA?xid=jXVrwaii") end,
	["!weapons"] = function(ply) OpenURL(ply,"https://docs.google.com/spreadsheets/d/1yyeHDBZPI0VhXtXTiAv-DusKgDHZwDhonlLgaXRYO1I/edit?usp=sharing") end,
	["/weapons"] = function(ply) OpenURL(ply,"https://docs.google.com/spreadsheets/d/1yyeHDBZPI0VhXtXTiAv-DusKgDHZwDhonlLgaXRYO1I/edit?usp=sharing") end,
    ["!logs"] = function(ply) mLogs.Open(ply) end,
    ["/logs"] = function(ply) mLogs.Open(ply) end,
	["/murlockdb"] = function(ply) MurlockDBTools(ply) end,
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
	["[["] = function(ply, args) looc_command(ply, args) end,
	[".//"] = function(ply, args) looc_command(ply, args) end,
    ["/examine"] = function(ply) SearchPlayerForSkulls(ply) end,
    ["!examine"] = function(ply) SearchPlayerForSkulls(ply) end,
    ["!nuke"] = function(ply) NukeMapAdmin(ply) end,
    ["!removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["/removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["!removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["/removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["!objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end,
    ["/objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end,
	["/timescale"] = function(ply, args) AdminSetTimeScale(ply, args) end,
	["/sexydrugs"] = function(ply) CreateSlaneeshSpook(ply) end,
    ["/gamemode"] = function(ply) AdminOpenUIMapSelect(ply) end,
	["!gamemode"] = function(ply) AdminOpenUIMapSelect(ply) end,
    ["/items"] = function(ply) OpenItemManager(ply) end,
	["!items"] = function(ply) OpenItemManager(ply) end,
	["/giveitem"] = function(ply, args) AdminGiveItem(ply,args) end,
	["!giveitem"] = function(ply, args) AdminGiveItem(ply,args) end,
	["!stats"] = function(ply) OpenPlayerStats(ply) end,
	["/stats"] = function(ply) OpenPlayerStats(ply) end,
	["!playerstats"] = function(ply) OpenPlayerStats(ply) end,
	["/playerstats"] = function(ply) OpenPlayerStats(ply) end,
	["/charroll"] = function(ply) charisma_roll_command(ply) end,
	["!charroll"] = function(ply) charisma_roll_command(ply) end,
	["/charoll"] = function(ply) charisma_roll_command(ply) end,
	["!charoll"] = function(ply) charisma_roll_command(ply) end,
	["/charisma"] = function(ply) charisma_roll_command(ply) end,
	["!charisma"] = function(ply) charisma_roll_command(ply) end,
	["/charismaroll"] = function(ply) charisma_roll_command(ply) end,
	["!charismaroll"] = function(ply) charisma_roll_command(ply) end,
	["/trade"] = function(ply) spawn_trade_station(ply) end,
	["!trade"] = function(ply) spawn_trade_station(ply) end,
	["/tradestation"] = function(ply) spawn_trade_station(ply) end,
	["!tradestation"] = function(ply) spawn_trade_station(ply) end,
	["/removetrade"] = function(ply) RemoveTradeStation(ply) end,
	["!removetrade"] = function(ply) RemoveTradeStation(ply) end,
	["/removetradestation"] = function(ply) RemoveTradeStation(ply) end,
	["!removetradestation"] = function(ply) RemoveTradeStation(ply) end,
	["/removetrade"] = function(ply) RemoveTradeStation(ply) end,
	["!removetrade"] = function(ply) RemoveTradeStation(ply) end,
	["/managetax"] = function(ply) OpenTaxManager(ply) end,
	["!managetax"] = function(ply) OpenTaxManager(ply) end,
	["/taxmanager"] = function(ply) OpenTaxManager(ply) end,
	["!taxmanager"] = function(ply) OpenTaxManager(ply) end,
	["/tax"] = function(ply) OpenTaxMenu(ply) end,
	["!tax"] = function(ply) OpenTaxMenu(ply) end,
	["/taxmenu"] = function(ply) OpenTaxMenu(ply) end,
	["!taxmenu"] = function(ply) OpenTaxMenu(ply) end,
	["!cheatmagic"] = function(ply) GainAttunementCheat(ply) end,
	["/cheatmagic"] = function(ply) GainAttunementCheat(ply) end,
	["!faction"] = function(ply) OpenManagerMenu(ply) end,
	["/faction"] = function(ply) OpenManagerMenu(ply) end,
	["!missions"] = function(ply) OpenTaskMenu(ply) end,
	["/missions"] = function(ply) OpenTaskMenu(ply) end,
	["!mission"] = function(ply) OpenTaskMenu(ply) end,
	["/mission"] = function(ply) OpenTaskMenu(ply) end,
	["!task"] = function(ply) OpenTaskMenu(ply) end,
	["/task"] = function(ply) OpenTaskMenu(ply) end,
	["!tasks"] = function(ply) OpenTaskMenu(ply) end,
	["/tasks"] = function(ply) OpenTaskMenu(ply) end,
	["!quest"] = function(ply) OpenTaskMenu(ply) end,
	["/quest"] = function(ply) OpenTaskMenu(ply) end,
	["!quests"] = function(ply) OpenTaskMenu(ply) end,
	["/quests"] = function(ply) OpenTaskMenu(ply) end,
	["!bossbot"] = function(ply) OpenBossCreationMenu(ply) end,
	["/bossbot"] = function(ply) OpenBossCreationMenu(ply) end,
	["!bossbots"] = function(ply) OpenBossCreationMenu(ply) end,
	["/bossbots"] = function(ply) OpenBossCreationMenu(ply) end,
	["!boss"] = function(ply) OpenBossCreationMenu(ply) end,
	["/boss"] = function(ply) OpenBossCreationMenu(ply) end
}


----------------------DEFUALT WEAPONS-------------------------------------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things"
}

-----------------------------------------------------------------------------------------
----------------------------------MODEL TABLES-------------------------------------------
-----------------------------------------------------------------------------------------


--US SIDE

US_MODELS = {"models/hitboxedit/us/army/us_army_2_fritz.mdl","models/hitboxedit/us/army/us_army_1_fritz.mdl","models/hitboxedit/us/army/us_army_3_fritz.mdl","models/hitboxedit/us/army/us_army_4_fritz.mdl","models/hitboxedit/us/army/us_army_5_fritz.mdl"}
US_PILOT_MODELS = {"models/hitboxedit/us/army/us_pilot_1.mdl","models/hitboxedit/us/army/us_pilot_2.mdl","models/hitboxedit/us/army/us_pilot_3.mdl","models/hitboxedit/us/army/us_pilot_4.mdl","models/hitboxedit/us/army/us_pilot_5.mdl"}


VIETCONG_MODELS = {"models/hitboxedit/vietnam/humans/vc/gmod/vc_1.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_2.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_3.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_4.mdl","models/hitboxedit/vietnam/humans/vc/gmod/vc_5.mdl"}
PAVN_MODELS = {"models/hitboxedit/player/pavn_infantry.mdl","models/hitboxedit/player/arvn.mdl"}


-----------------------------------------------------------------------------------------
--------------------------------------DIVISION TYPES-------------------------------------
-----------------------------------------------------------------------------------------

DivisionTypes = {
    ["US Marines"] = {
        NiceName = "US Marines Division",
        Description = "The US Marines.",
        Team = "us",
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Gunnery Sergeant", Rank_Prefix = "GYSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Master Sergeant", Rank_Prefix = "MSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "First Sergeant", Rank_Prefix = "1SGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Sergeant Major", Rank_Prefix = "SGM", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Corpsman",
                Core = true,
                Models = {},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "DOC",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Grants you XP when used by your teammates!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Logistics",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"alydus_fortificationbuildertablet", "ent_spawner", "weapon_lvsrepair", "angry_swep_infantrymine", "murlock_rope_tool"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "LOG",
                Create_Outposts = true,
                Fortifications = {
                    {name = "Small Barrier", model = "models/cod4/bc/bc_hesco_barrier_sm.mdl"},
                    {name = "Medium Barrier", model = "models/cod4/bc/bc_hesco_barrier_med.mdl"},
                    {name = "Big Barrier", model = "models/cod4/bc/bc_hesco_barrier_big.mdl"},
                    {name = "Small Barbwire", model = "models/fortification collection/barbed_wire1.mdl"},
                    {name = "Large Barbwire", model = "models/fortification collection/barbed_wire3.mdl"},
                    {name = "Barbwire Fence", model = "models/fortification collection/barbed_wire2.mdl"},
                    {name = "Small Dragons Teeth", model = "models/fortification collection/dragons_teeth_small.mdl"},
                    {name = "Medium Dragons Teeth", model = "models/fortification collection/dragons_teeth_medium.mdl"},
                    {name = "Large Dragons Teeth", model = "models/fortification collection/dragons_teeth_large.mdl"},
                    {name = "Small Hedgehog", model = "models/fortification collection/hedgehog_small.mdl"},
                    {name = "Medium Hedgehog", model = "models/fortification collection/hedgehog_medium.mdl"},
                    {name = "Large Hedgehog", model = "models/fortification collection/hedgehog_big.mdl"},
                    {name = "Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Grass Bunker", model = "models/fortification collection/small_bunker1b.mdl"},
                    {name = "Straight Trench", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "L Trench", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "3 Trench", model = "models/fortification collection/trench_3way.mdl"},
                    {name = "4 Trench", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench Dugout", model = "models/fortification collection/trench_free_a_double.mdl"},
                    {name = "Tower", model = "models/rp_jungle/jungle_usbase_guardtower2.mdl"}
                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    },
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "M151 Mutt",
                        entityname = "lvs_wheeldrive_m151mutt",
                        description = "Light 4x4 utility vehicle, used for reconnaissance and transport of small squads.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "M35 Infantry Truck",
                        entityname = "lvs_wheeldrive_m35inf",
                        description = "Medium 6x6 truck, used for transporting troops and supplies across the battlefield.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "M113 APC",
                        entityname = "lvs_wheeldrive_m111",
                        description = "Sturdy armored personnel carrier, used for safely transporting infantry squads and providing support with its mounted machine gun.",
                        type = "APC"
                    },
                    {
                        name = "M113 APC (Mobile Outpost)",
                        entityname = "lvs_wheeldrive_m111_mobile_outpost",
                        description = "Sturdy armored personnel carrier with a mobile outpost, used for safely transporting infantry squads and providing support with its mounted machine gun.",
                        type = "Mobile Outpost"
                    }
                }
            },
            {
                Name = "Tanker",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair", "ent_spawner", "murlock_rope_tool"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "TK",
                Create_Outposts = true,
                EntitySpawner = {
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "M47 Patton",
                        entityname = "lvs_wheeldrive_m47",
                        description = "Medium tank with a powerful 90mm gun, used for engaging enemy armor and providing fire support to infantry units.",
                        type = "Heavy Tanks"
                    },
                    {
                        name = "M551 Sheridan",
                        entityname = "lvs_wheeldrive_m551",
                        description = "Light tank with a versatile 152mm gun, capable of firing both conventional shells and guided missiles, used for reconnaissance and engaging a variety of targets on the battlefield.",
                        type = "Light Tanks"
                    }
                }
            },
            {
                Name = "Marksman",
                Core = true,
                Models = {},
                Weapons = {},
                Max = 5,
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Sniper Rifle", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = ""
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Machine Gun", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "Quad Vickers",
                        entityname = "sw_4m",
                        description = "Four Vickers machine guns mounted on a single platform, used for suppressing enemy infantry and light vehicles.",
                        type = "Machine Gun"
                    },
                    {
                        name = "MTPU",
                        entityname = "sw_mtpu",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            }
        }
    },

    ["US Army"] = {
        NiceName = "US Army",
        Description = "The US Army.",
        Team = "us",
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Specialist", Rank_Prefix = "SPC", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Sergeant First Class", Rank_Prefix = "SFC", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Master Sergeant", Rank_Prefix = "MSGT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "First Sergeant", Rank_Prefix = "1SGT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Sergeant Major", Rank_Prefix = "SGM", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = ARMY_MODELS, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Models = {},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Grants you XP when used by your teammates!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Machine Gun", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "Quad Vickers",
                        entityname = "sw_4m",
                        description = "Four Vickers machine guns mounted on a single platform, used for suppressing enemy infantry and light vehicles.",
                        type = "Machine Gun"
                    },
                    {
                        name = "MTPU",
                        entityname = "sw_mtpu",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Pilot",
                Core = true,
                Models = US_PILOT_MODELS,
                Weapons = {},
                SpawnWeapons = {"murlock_rope_tool", "ent_spawner", "weapon_lvsrepair"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "PL",
                vehicles = {
                    {
                        name = "UH-1B Huey",
                        entityname = "lvs_helicopter_uh1b",
                        description = "The iconic UH-1B Huey helicopter, used for troop transport, medical evacuation, and close air support with its mounted machine guns.",
                        type = "Transport Helicopter"
                    },
                    {
                        name = "AH-1G Cobra",
                        entityname = "lvs_helicopter_ah1g",
                        description = "A dedicated attack helicopter, equipped with a 20mm cannon and the ability to carry rockets and anti-tank missiles, used for providing close air support and engaging enemy armor.",
                        type = "Attack Helicopter"
                    }
                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Demolitionist",
                Core = true,
                Models = {},
                Weapons = {},
                Max = 3,
                SpawnWeapons = {"weapon_lvsmines","seal6-c4","angry_swep_infantrymine","angry_swep_m16mine"},
                AllowedWeaponFlags = {"Side Arm", "Heavy Explosive", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = "DEMO"
            }
        }
    },

    ["National Liberation Front"] = {
        NiceName = "National Liberation Front",
        Description = "The National Liberation Front.",
        Team = "vietcong",
        Ranks = {
            {ID = 1, Name = "Binh nhi", Rank_Prefix = "PVT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Binh nhat", Rank_Prefix = "PFC", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Ha si", Rank_Prefix = "SPC", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Ha si nhat", Rank_Prefix = "CPL", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 5, Name = "Trung si", Rank_Prefix = "SGT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Trung si nhat", Rank_Prefix = "SSGT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Thuong si", Rank_Prefix = "SFC", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Thuong si naht", Rank_Prefix = "MSGT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "Sinh vien si quan", Rank_Prefix = "1SG", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Chuan uy", Rank_Prefix = "SGM", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Thieu uy", Rank_Prefix = "2LT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "Trung uy", Rank_Prefix = "1LT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Dai uy", Rank_Prefix = "CPT", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Thieu ta", Rank_Prefix = "MAJ", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Trung ta", Rank_Prefix = "LTCOL", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Dai ta", Rank_Prefix = "COL", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Models = {},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Grants you XP when used by your teammates!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Engineer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"alydus_fortificationbuildertablet", "ent_spawner", "weapon_lvsrepair", "angry_swep_infantrymine", "outpost_maker", "murlock_rope_tool"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "ENG",
                Create_Outposts = true,
                Fortifications = {
                    {name = "Small Barrier", model = "models/cod4/bc/bc_hesco_barrier_sm.mdl"},
                    {name = "Medium Barrier", model = "models/cod4/bc/bc_hesco_barrier_med.mdl"},
                    {name = "Big Barrier", model = "models/cod4/bc/bc_hesco_barrier_big.mdl"},
                    {name = "Small Barbwire", model = "models/fortification collection/barbed_wire1.mdl"},
                    {name = "Large Barbwire", model = "models/fortification collection/barbed_wire3.mdl"},
                    {name = "Barbwire Fence", model = "models/fortification collection/barbed_wire2.mdl"},
                    {name = "Small Dragons Teeth", model = "models/fortification collection/dragons_teeth_small.mdl"},
                    {name = "Medium Dragons Teeth", model = "models/fortification collection/dragons_teeth_medium.mdl"},
                    {name = "Large Dragons Teeth", model = "models/fortification collection/dragons_teeth_large.mdl"},
                    {name = "Small Hedgehog", model = "models/fortification collection/hedgehog_small.mdl"},
                    {name = "Medium Hedgehog", model = "models/fortification collection/hedgehog_medium.mdl"},
                    {name = "Large Hedgehog", model = "models/fortification collection/hedgehog_big.mdl"},
                    {name = "Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Grass Bunker", model = "models/fortification collection/small_bunker1b.mdl"},
                    {name = "Straight Trench", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "L Trench", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "3 Trench", model = "models/fortification collection/trench_3way.mdl"},
                    {name = "4 Trench", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench Dugout", model = "models/fortification collection/trench_free_a_double.mdl"},
                    {name = "Tower", model = "models/rp_jungle/jungle_usbase_guardtower2.mdl"}
                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with varius ammo types for vehicles",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "GAZ-69",
                        entityname = "lvs_wheeldrive_gaz69",
                        description = "A light utility vehicle used for troop transport and reconnaissance missions.",
                        type = "Small Vehicle"
                    }
                }
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle", "Machine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "DSHK",
                        entityname = "sw_dshk",
                        description = "A heavy machine gun used for anti-aircraft and anti-vehicle purposes, often mounted on a tripod or vehicle.",
                        type = "Machine Gun"
                    },
                    {
                        name = "ZU 23 2",
                        entityname = "sw_zu232",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with varius ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Marksman",
                Core = true,
                Models = {},
                Weapons = {},
                Max = 5,
                SpawnWeapons = {"hide_player"},
                AllowedWeaponFlags = {"Side Arm", "Sniper Rifle", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = ""
            },
            {
                Name = "Demolitionist",
                Core = true,
                Models = {},
                Weapons = {},
                Max = 3,
                SpawnWeapons = {"weapon_lvsmines","seal6-c4","angry_swep_infantrymine","angry_swep_m16mine"},
                AllowedWeaponFlags = {"Side Arm", "Heavy Explosive", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "DEMO"
            }
        }
    },

    ["Peoples Army of Vietnam"] = {
        NiceName = "Peoples Army of Vietnam Division",
        Description = "The Peoples Army of Vietnam.",
        Team = "vietcong",
        Ranks = {
            {ID = 1, Name = "Binh nhi", Rank_Prefix = "PVT", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Binh nhat", Rank_Prefix = "PFC", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Ha si", Rank_Prefix = "SPC", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Ha si nhat", Rank_Prefix = "CPL", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 5, Name = "Trung si", Rank_Prefix = "SGT", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Trung si nhat", Rank_Prefix = "SSGT", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Thuong si", Rank_Prefix = "SFC", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Thuong si naht", Rank_Prefix = "MSGT", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "Sinh vien si quan", Rank_Prefix = "1SG", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Chuan uy", Rank_Prefix = "SGM", ModelsAllowed = PAVN_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Thieu uy", Rank_Prefix = "2LT", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "Trung uy", Rank_Prefix = "1LT", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Dai uy", Rank_Prefix = "CPT", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Thieu ta", Rank_Prefix = "MAJ", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Trung ta", Rank_Prefix = "LTCOL", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Dai ta", Rank_Prefix = "COL", ModelsAllowed = {"models/hitboxedit/player/pavn_officer.mdl"}, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Models = {},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Used to let your soldiers heal themselves!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle", "Machine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "DSHK",
                        entityname = "sw_dshk",
                        description = "A heavy machine gun used for anti-aircraft and anti-vehicle purposes, often mounted on a tripod or vehicle.",
                        type = "Machine Gun"
                    },
                    {
                        name = "ZU 23 2",
                        entityname = "sw_zu232",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with varius ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Tanker",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair", "ent_spawner","murlock_rope_tool"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "TK",
                EntitySpawner = {
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "T-59",
                        entityname = "lvs_wheeldrive_t59",
                        description = "The Famous T-59 tank, used for engaging enemy armor and providing fire support to infantry units.",
                        type = "Heavy Tanks"
                    },
                    {
                        name = "BMP-1",
                        entityname = "lvs_wheeldrive_bmp",
                        description = "Heavily Armored infantry transport vehicle, more of a tank than a APC.",
                        type = "Light Tanks"
                    },
                }
            },
            {
                Name = "Logistics",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"weapon_lvsrepair", "ent_spawner","murlock_rope_tool"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "LG",
                Create_Outposts = true,
                EntitySpawner = {
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "GAZ-69",
                        entityname = "lvs_wheeldrive_gaz69",
                        description = "A light utility vehicle used for troop transport and reconnaissance missions.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "AA Truck",
                        entityname = "lvs_wheeldrive_aa_truck",
                        description = "A very old truck equipped with a light machine gun.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "GAZ-51",
                        entityname = "lvs_wheeldrive_gaz51",
                        description = "Medium utility vehicle used for troop transport and logistics.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "BTR-70",
                        entityname = "lvs_wheeldrive_btr70",
                        description = "Armored personnel carrier used for safely transporting infantry squads.",
                        type = "APC"
                    },
                    {
                        name = "BTR-70 (Mobile Outpost)",
                        entityname = "lvs_wheeldrive_btr70_mobile_outpost",
                        description = "Armored personnel carrier with a mobile outpost, used for safely transporting infantry squads.",
                        type = "Mobile Outpost"
                    }
                }
            }
        }
    },

    ["Dac Cong"] = {
        NiceName = "Dac Cong Division",
        Description = "The Dac Cong special forces.",
        Team = "vietcong",
        Ranks = {
            {ID = 1, Name = "Binh nhi", Rank_Prefix = "PVT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Binh nhat", Rank_Prefix = "PFC", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Ha si", Rank_Prefix = "SPC", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Ha si nhat", Rank_Prefix = "CPL", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = false},
            {ID = 5, Name = "Trung si", Rank_Prefix = "SGT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Trung si nhat", Rank_Prefix = "SSGT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Thuong si", Rank_Prefix = "SFC", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Thuong si naht", Rank_Prefix = "MSGT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "Sinh vien si quan", Rank_Prefix = "1SG", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Chuan uy", Rank_Prefix = "SGM", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Thieu uy", Rank_Prefix = "2LT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "Trung uy", Rank_Prefix = "1LT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Dai uy", Rank_Prefix = "CPT", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Thieu ta", Rank_Prefix = "MAJ", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Trung ta", Rank_Prefix = "LTCOL", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Dai ta", Rank_Prefix = "COL", ModelsAllowed = {"models/hitboxedit/player/pavn_special_forces.mdl"}, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {"models/hitboxedit/player/pavn_special_forces.mdl"},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Medic",
                Core = true,
                Models = {"models/hitboxedit/player/pavn_special_forces.mdl"},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "MD",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Used to let your soldiers heal themselves!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {"models/hitboxedit/player/pavn_special_forces.mdl"},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle", "Machine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "DSHK",
                        entityname = "sw_dshk",
                        description = "A heavy machine gun used for anti-aircraft and anti-vehicle purposes, often mounted on a tripod or vehicle.",
                        type = "Machine Gun"
                    },
                    {
                        name = "ZU 23 2",
                        entityname = "sw_zu232",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with varius ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Logistics",
                Core = true,
                Models = {"models/hitboxedit/player/pavn_special_forces.mdl"},
                Weapons = {},
                SpawnWeapons = {"alydus_fortificationbuildertablet", "ent_spawner", "weapon_lvsrepair", "angry_swep_infantrymine", "outpost_maker", "murlock_rope_tool"},
                AllowedWeaponFlags = {"Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = "LG",
                Fortifications = {
                    {name = "Small Barrier", model = "models/cod4/bc/bc_hesco_barrier_sm.mdl"},
                    {name = "Medium Barrier", model = "models/cod4/bc/bc_hesco_barrier_med.mdl"},
                    {name = "Big Barrier", model = "models/cod4/bc/bc_hesco_barrier_big.mdl"},
                    {name = "Small Barbwire", model = "models/fortification collection/barbed_wire1.mdl"},
                    {name = "Large Barbwire", model = "models/fortification collection/barbed_wire3.mdl"},
                    {name = "Barbwire Fence", model = "models/fortification collection/barbed_wire2.mdl"},
                    {name = "Small Dragons Teeth", model = "models/fortification collection/dragons_teeth_small.mdl"},
                    {name = "Medium Dragons Teeth", model = "models/fortification collection/dragons_teeth_medium.mdl"},
                    {name = "Large Dragons Teeth", model = "models/fortification collection/dragons_teeth_large.mdl"},
                    {name = "Small Hedgehog", model = "models/fortification collection/hedgehog_small.mdl"},
                    {name = "Medium Hedgehog", model = "models/fortification collection/hedgehog_medium.mdl"},
                    {name = "Large Hedgehog", model = "models/fortification collection/hedgehog_big.mdl"},
                    {name = "Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Grass Bunker", model = "models/fortification collection/small_bunker1b.mdl"},
                    {name = "Straight Trench", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "L Trench", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "3 Trench", model = "models/fortification collection/trench_3way.mdl"},
                    {name = "4 Trench", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench Dugout", model = "models/fortification collection/trench_free_a_double.mdl"},
                    {name = "Tower", model = "models/rp_jungle/jungle_usbase_guardtower2.mdl"}
                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with varius ammo types for vehicles",
                        type = "Ammo"
                    },
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "GAZ-69",
                        entityname = "lvs_wheeldrive_gaz69",
                        description = "A light utility vehicle used for troop transport and reconnaissance missions.",
                        type = "Small Vehicle"
                    }
                }
            },
            {
                Name = "Marksman",
                Core = true,
                Models = {"models/hitboxedit/player/pavn_special_forces.mdl"},
                Weapons = {},
                SpawnWeapons = {"hide_player"},
                AllowedWeaponFlags = {"Side Arm", "Sniper Rifle", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = ""
            }
        }
    },

    ["MACV-SOG"] = {
        NiceName = "MACV-SOG Division",
        Description = "The MACV-SOG special forces.",
        Team = "us",
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 2, Name = "Private First Class", Rank_Prefix = "PFC", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 3, Name = "Lance Corporal", Rank_Prefix = "LCPL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
            {ID = 4, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 5, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 6, Name = "Staff Sergeant", Rank_Prefix = "SSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 7, Name = "Gunnery Sergeant", Rank_Prefix = "GYSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 8, Name = "Master Sergeant", Rank_Prefix = "MSGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 9, Name = "First Sergeant", Rank_Prefix = "1SGT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 10, Name = "Sergeant Major", Rank_Prefix = "SGM", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 11, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 12, Name = "First Lieutenant", Rank_Prefix = "1LT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 13, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 14, Name = "Major", Rank_Prefix = "MAJ", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 15, Name = "Lieutenant Colonel", Rank_Prefix = "LTCOL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true},
            {ID = 16, Name = "Colonel", Rank_Prefix = "COL", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = true}
        },
        Classes = {
            {
                Name = "Rifleman",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle", "Side Arm", "Shotgun", "Submachine Gun", "Rifle"},
                Prefix = ""
            },
            {
                Name = "Corpsman",
                Core = true,
                Models = {},
                Weapons = {},
                Medic = true,
                SpawnWeapons = {"fas2_ifak", "ent_spawner"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "DOC",
                EntitySpawner = {
                    {
                        name = "Medical Box",
                        entityname = "medic_box",
                        description = "Grants you XP when used by your teammates!",
                        type = "Medic Box"
                    }
                }
            },
            {
                Name = "Machine Gunner",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Machine Gun", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = "MG",
                EntitySpawner = {
                    {
                        name = "Quad Vickers",
                        entityname = "sw_4m",
                        description = "Four Vickers machine guns mounted on a single platform, used for suppressing enemy infantry and light vehicles.",
                        type = "Machine Gun"
                    },
                    {
                        name = "MTPU",
                        entityname = "sw_mtpu",
                        description = "A large machine gun turret used for anti-aircraft and anti-infantry purposes, often mounted on vehicles or fortifications.",
                        type = "Machine Gun"
                    },
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    }
                }
            },
            {
                Name = "Logistics",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {"alydus_fortificationbuildertablet", "ent_spawner", "weapon_lvsrepair", "angry_swep_infantrymine", "outpost_maker", "murlock_rope_tool"},
                AllowedWeaponFlags = {"Rifle", "Side Arm", "Submachine Gun", "Shotgun"},
                Prefix = "ENG",
                Fortifications = {
                    {name = "Small Barrier", model = "models/cod4/bc/bc_hesco_barrier_sm.mdl"},
                    {name = "Medium Barrier", model = "models/cod4/bc/bc_hesco_barrier_med.mdl"},
                    {name = "Big Barrier", model = "models/cod4/bc/bc_hesco_barrier_big.mdl"},
                    {name = "Small Barbwire", model = "models/fortification collection/barbed_wire1.mdl"},
                    {name = "Large Barbwire", model = "models/fortification collection/barbed_wire3.mdl"},
                    {name = "Barbwire Fence", model = "models/fortification collection/barbed_wire2.mdl"},
                    {name = "Small Dragons Teeth", model = "models/fortification collection/dragons_teeth_small.mdl"},
                    {name = "Medium Dragons Teeth", model = "models/fortification collection/dragons_teeth_medium.mdl"},
                    {name = "Large Dragons Teeth", model = "models/fortification collection/dragons_teeth_large.mdl"},
                    {name = "Small Hedgehog", model = "models/fortification collection/hedgehog_small.mdl"},
                    {name = "Medium Hedgehog", model = "models/fortification collection/hedgehog_medium.mdl"},
                    {name = "Large Hedgehog", model = "models/fortification collection/hedgehog_big.mdl"},
                    {name = "Bunker", model = "models/fortification collection/small_bunker1.mdl"},
                    {name = "Grass Bunker", model = "models/fortification collection/small_bunker1b.mdl"},
                    {name = "Straight Trench", model = "models/fortification collection/trench_straight.mdl"},
                    {name = "L Trench", model = "models/fortification collection/trench_turn.mdl"},
                    {name = "3 Trench", model = "models/fortification collection/trench_3way.mdl"},
                    {name = "4 Trench", model = "models/fortification collection/trench_4way.mdl"},
                    {name = "Trench Dugout", model = "models/fortification collection/trench_free_a_double.mdl"}
                },
                EntitySpawner = {
                    {
                        name = "Ammo Supplies",
                        entityname = "universal_ammo_small",
                        description = "10 Uses. HANDLE WITH CARE: VERY EXPLOSIVE",
                        type = "Ammo"
                    },
                    {
                        name = "Vehicle Ammo Crate",
                        entityname = "lvs_item_ammocrate",
                        description = "Filled with various ammo types for vehicles",
                        type = "Ammo"
                    },
                    {
                        name = "Petrol",
                        entityname = "lvs_item_jerrycan",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    },
                    {
                        name = "Diesel",
                        entityname = "lvs_item_jerrycan_diesel",
                        description = "Used to refuel your vehicles on the frontlines!",
                        type = "Ammo"
                    }
                },
                vehicles = {
                    {
                        name = "M151 Mutt",
                        entityname = "lvs_wheeldrive_m151mutt",
                        description = "Light 4x4 utility vehicle, used for reconnaissance and transport of small squads.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "M35 Infantry Truck",
                        entityname = "lvs_wheeldrive_m35inf",
                        description = "Medium 6x6 truck, used for transporting troops and supplies across the battlefield.",
                        type = "Small Vehicle"
                    },
                    {
                        name = "M113 APC",
                        entityname = "lvs_wheeldrive_m111",
                        description = "Sturdy armored personnel carrier, used for safely transporting infantry squads and providing support with its mounted machine gun.",
                        type = "APC"
                    }
                }
            },
            {
                Name = "Marksman",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Side Arm", "Sniper Rifle", "Rifle", "Shotgun", "Submachine Gun"},
                Prefix = ""
            }
        }
    }
}

-----------------------------------------------------------------------------------------
--------------------------------------DEFAULT ROLES--------------------------------------
-----------------------------------------------------------------------------------------

US_COLOR = Color(0, 75, 32)
VIETCONG_COLOR = Color(130, 0, 0)

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
                ModelsAllowed = {"models/obese_male.mdl","models/player/combine_super_soldier.mdl", "models/player/combine_soldier_prisonguard.mdl", "models/player/breen.mdl", "models/player/monk.mdl", "models/player/odessa.mdl", "models/player/skeleton.mdl"},
                WeaponsAllowed = {},
                AllowedWeaponFlags = {"Assault Rifle","Side Arm","Shotgun","Submachine Gun", "Rifle"},
                CanPromote = true
            },
        },
        Team = "staff",
        staff = true
    },
    DIVISION_US_RECRUIT = {
        NiceName = "US Recruit",
        Prefix = "",
        Color = Color(0, 75, 32),
        Description = "Drafted, Volunteered, or forced, you have join the war in Vietnam to fight for freedom and your country.",
        Default = true,
		DefaultItems = {"item_491846"}, -- M16A1
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Recruit",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle","Side Arm","Shotgun","Submachine Gun", "Rifle"},
                Prefix = ""
            },
        },
        Team = "us"
    },
    DIVISION_VIETCONG_RECRUIT = {
        NiceName = "Vietcong Conscript",
        Prefix = "",
        Color = Color(75, 0, 0),
        Description = "You have been conscripted to fight against the American Invaders and liberate the southern lands from foreign influence.",
        Default = true,
        DefaultItems = {"item_425382"}, -- AKM
        Ranks = {
            {ID = 1, Name = "Conscript", Rank_Prefix = "Conscript", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Conscript",
                Default = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                AllowedWeaponFlags = {"Assault Rifle","Side Arm","Shotgun","Submachine Gun", "Rifle"},
                Prefix = ""
            }
        },
        Team = "vietcong"
    },
    DIVISION_VIETCONG_BOT = {
        NiceName = "Vietcong Bot",
        Prefix = "",
        Bot = true,
        Color = Color(75, 0, 0),
        Description = "Bots that fight for the Vietcong, they are expendable and will fight to the death for their cause.",
        DefaultItems = {},
        Ranks = {
            {ID = 1, Name = "Conscript", Rank_Prefix = "Conscript", ModelsAllowed = VIETCONG_MODELS, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Conscript",
                Default = true,
                Models = VIETCONG_MODELS,
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            }
        },
        Team = "vietcong"
    },
    DIVISION_US_BOT = {
        NiceName = "US Bot",
        Prefix = "",
        Bot = true,
        Color = Color(0, 75, 32),
        Description = "Bots that fight for the US, they are expendable and will fight to the death for their country.",
        DefaultItems = {},
        Ranks = {
            {ID = 1, Name = "Private", Rank_Prefix = "PVT", ModelsAllowed = US_MODELS, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Private",
                Default = true,
                Models = US_MODELS,
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            }
        },
        Team = "us"
    },
    DIVISION_DESERTER_BOT = {
        NiceName = "Deserter Bot",
        Prefix = "",
        Bot = true,
        Color = Color(50, 50, 50),
        Description = "Bots that fight for no one, they are expendable and will fight to the death for themselves.",
        DefaultItems = {},
        Ranks = {
            {ID = 1, Name = "Deserter", Rank_Prefix = "Deserter", ModelsAllowed = {"models/hitboxedit/player/viet1.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Deserter",
                Default = true,
                Models = {"models/hitboxedit/player/viet1.mdl"},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            }
        },
        Team = "deserter"
    },
}
DEFAULT_ROLE = ROLES.DIVISION_US_RECRUIT


--HARDCODED TO BE AT MAX 5 RANKS
group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 50, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 150, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 200, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}



-----------------------------------------------------------------------------------------
--------------------------------------CERTIFICATIONS-------------------------------------
-----------------------------------------------------------------------------------------

CERTIFICATIONS = {}

-----------------------------------------------------------------------------------------
----------------------------------PASSIVE_ITEM_FLAGS-------------------------------------
-----------------------------------------------------------------------------------------

PASSIVE_ITEM_FLAGS = PASSIVE_ITEM_FLAGS or {}

MAX_PASSIVE_ITEMS = 5


----- PASSIVE ITEM FLAGS -----

PASSIVE_ITEM_FLAGS["Extra 5 Health"] = {
    FunctionName = "5health",
    Description = "Increases max health by 5.",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Remove 5 Health"] = {
    FunctionName = "remove5health",
    Description = "Decreases max health by 5.",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Add 10 Speed"] = {
    FunctionName = "add10speed",
    Description = "Increase Run Speed by 10",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Add 5 Speed"] = {
    FunctionName = "add5speed",
    Description = "Increase Run Speed by 5",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Remove 10 Speed"] = {
    FunctionName = "remove10speed",
    Description = "Lowers Run Speed by 10",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Remove 5 Speed"] = {
    FunctionName = "remove5speed",
    Description = "Lowers Run Speed by 5",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Extra 10 Health"] = {
    FunctionName = "10health",
    Description = "Increases max health by 10.",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Remove 10 Health"] = {
    FunctionName = "remove10health",
    Description = "Decreases max health by 10.",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Health Regen"] = {
    FunctionName = "HealthRegen",
    Description  = "Grants passive health regeneration over time.",
    Color        = Color(0, 200, 0)
}

PASSIVE_ITEM_FLAGS["Ammo Regen"] = {
    FunctionName = "AmmoRegen",
    Description  = "Grants passive ammo regeneration for your active weapon.",
    Color        = Color(200, 200, 50)
}

-- Damage Boosts
PASSIVE_ITEM_FLAGS["Damage Boost 2"] = {
    FunctionName = "DamageBoost2",
    Description  = "Increases your damage output by 2%.",
    Color        = Color(0, 200, 0)
}

PASSIVE_ITEM_FLAGS["Damage Boost 5"] = {
    FunctionName = "DamageBoost5",
    Description  = "Increases your damage output by 5%.",
    Color        = Color(0, 255, 0)
}

-- Damage Reductions (incoming)
PASSIVE_ITEM_FLAGS["Damage Reduction 2"] = {
    FunctionName = "DamageReduction2",
    Description  = "Decreases incoming damage by 2%.",
    Color        = Color(0, 150, 255)
}

PASSIVE_ITEM_FLAGS["Damage Reduction 4"] = {
    FunctionName = "DamageReduction4",
    Description  = "Decreases incoming damage by 4%.",
    Color        = Color(0, 200, 255)
}

-- Damage Taken Increases (incoming)
PASSIVE_ITEM_FLAGS["Damage Taken Increase 2"] = {
    FunctionName = "DamageTakenIncrease2",
    Description  = "You take 2% more damage from all sources.",
    Color        = Color(200, 50, 50)
}

PASSIVE_ITEM_FLAGS["Damage Taken Increase 4"] = {
    FunctionName = "DamageTakenIncrease4",
    Description  = "You take 4% more damage from all sources.",
    Color        = Color(255, 0, 0)
}

-- Damage Dealt Reductions (outgoing)
PASSIVE_ITEM_FLAGS["Damage Output Reduction 5"] = {
    FunctionName = "DamageDealtReduction5",
    Description  = "Your attacks deal 5% less damage.",
    Color        = Color(200, 100, 100)
}

PASSIVE_ITEM_FLAGS["Damage Output Reduction 10"] = {
    FunctionName = "DamageDealtReduction10",
    Description  = "Your attacks deal 10% less damage.",
    Color        = Color(200, 50, 50)
}

-- Vampirism (health steal)
PASSIVE_ITEM_FLAGS["Vampirism 1"] = {
    FunctionName = "Vampirism10",
    Description  = "Gain 1 Health Per Hit.",
    Color        = Color(200, 0, 200)
}

PASSIVE_ITEM_FLAGS["Vampirism 2"] = {
    FunctionName = "Vampirism25",
    Description  = "Gain 2 Health Per Hit.",
    Color        = Color(255, 0, 255)
}

-- Bullet Vampirism
PASSIVE_ITEM_FLAGS["Bullet Vampirism 10"] = {
    FunctionName = "BulletVampirism10",
    Description  = "Regenerates 1 bullet into your reserves every time you hit with a bullet.",
    Color        = Color(200, 100, 0)
}

PASSIVE_ITEM_FLAGS["Last Stand"] = {
    FunctionName = "LastStand",
    Description  = "When below 35% health, you take 15% less damage.",
    Color        = Color(255, 200, 0)
}

-- Critical Strikes
PASSIVE_ITEM_FLAGS["Critical Strikes 2"] = {
    FunctionName = "CritStrike10",
    Description  = "2% chance for your attacks to deal 50% more damage.",
    Color        = Color(0, 200, 255)
}

PASSIVE_ITEM_FLAGS["Critical Strikes 5"] = {
    FunctionName = "CritStrike25",
    Description  = "5% chance for your attacks to deal 50% more damage.",
    Color        = Color(0, 255, 255)
}

-- Critical Fails
PASSIVE_ITEM_FLAGS["Critical Fail 10"] = {
    FunctionName = "CritFail10",
    Description  = "2% chance for your attacks to deal 100% less damage.",
    Color        = Color(255, 100, 0)
}

PASSIVE_ITEM_FLAGS["Critical Fail 25"] = {
    FunctionName = "CritFail25",
    Description  = "5% chance for your attacks to deal 100% less damage.",
    Color        = Color(255, 50, 0)
}

PASSIVE_ITEM_FLAGS["Critical Vulnerability 10"] = {
    FunctionName = "CritVulnerable10",
    Description  = "10% chance to take 75% more damage when hit.",
    Color        = Color(255, 50, 50)
}

-- PASSIVE_ITEM_FLAGS["Poison Damage"] = {
--     FunctionName = "PoisonDamage",
--     Description  = "Your attacks inflict Poison Damage, doing % damage over time. However -35% damage.",
--     Color        = Color(0, 200, 100)
-- }

PASSIVE_ITEM_FLAGS["Extra Damage at Max Health"] = {
    FunctionName = "Extra Damage at Max Health",
    Description = "When at Max Health, you deal 10% more damage",
    Color        = Color(255, 200, 0)
}

PASSIVE_ITEM_FLAGS["Faster Reload Speed"] = {
    FunctionName = "FasterReloadSpeed",
    Description = "Reduces reload time by 5%",
    Color        = Color(0, 255, 72)
}

PASSIVE_ITEM_FLAGS["Slower Reload Speed"] = {
    FunctionName = "SlowerReloadSpeed",
    Description = "Increases reload time by 5%",
    Color        = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Increased Weapon Spread"] = {
    FunctionName = "IncreasedWeaponSpread",
    Description = "Increases weapon spread by 5%",
    Color        = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Decreased Weapon Spread"] = {
    FunctionName = "DecreasedWeaponSpread",
    Description = "Reduces weapon spread by 5%",
    Color        = Color(0, 255, 0)
}

---- RARITY FLAGS ----

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

---- WEAPON FLAGS ----

-------- WEAPON SLOTS ------------

PASSIVE_ITEM_FLAGS["Primary"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Primary Weapon]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Secondary"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Secondary Weapon]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Misc"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Misc Weapon]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Trinket"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Trinket]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Armor"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Armor]",
    Color        = Color(200, 200, 200)
}


PASSIVE_ITEM_FLAGS["Rifle"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Rifle]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Assault Rifle"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Assault Rifle]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Side Arm"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Side Arm]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Shotgun"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Shotgun]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Sniper Rifle"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Sniper Rifle]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Submachine Gun"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Submachine Gun]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Machine Gun"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Machine Gun]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Heavy Explosive"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[Heavy Explosive]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["VIP"] = {
    FunctionName = "none",
    WeaponType  = true,
    Description = "[VIP]",
    Color        = Color(0, 255, 204)
}

PASSIVE_ITEM_FLAGS["Consumable"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Consumable]",
    Color        = Color(9, 103, 0)
}

PASSIVE_ITEM_FLAGS["Item"] = {
    FunctionName = "none",
    WeaponSlot  = true,
    Description = "[Item]",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["Loot Crate"] = {
    FunctionName = "none",
    Description = "This item can be found in loot crates.",
    Color        = Color(0, 255, 204)
}


function CanPlayerEquipItemType(ply, item_id)
    local role = ply:GetNWString("Role", "DIVISION_US_RECRUIT")
    if not role then return false end

    local class = ply:GetNWString("Class", "DEFAULT_CLASS")
    if class == "DEFAULT_CLASS" then
        print("Player " .. ply:Nick() .. " has no class set, defaulting to DEFAULT_CLASS. This is likely an error.")
        return false 
    end
    class = GetClassData(role, class)
    if not class then
        print("Player " .. ply:Nick() .. " has an invalid class set (" .. class .. ") for their role (" .. role.NiceName .. "). This is likely an error.")
        return false 
    end

    local meta = INVENTORY_ITEMS and INVENTORY_ITEMS[item_id]
    if not meta or not meta.PassiveFlags then
        print("Item with ID " .. item_id .. " does not exist or has no PassiveFlags. This is likely an error.")
        return true 
    end

    local weaponTypeFlags = {}
    for _, flagName in ipairs(meta.PassiveFlags) do
        local flag = PASSIVE_ITEM_FLAGS and PASSIVE_ITEM_FLAGS[flagName]
        if flag and flag.WeaponType then
            --if [VIP] then return true
            if flagName == "VIP" then return true end
            table.insert(weaponTypeFlags, flagName)
        end
    end

    if #weaponTypeFlags == 0 then return true end

    local allowed = class.AllowedWeaponFlags or {}
    for _, flagName in ipairs(weaponTypeFlags) do
        for _, allowedFlag in ipairs(allowed) do
            if allowedFlag == flagName then return true end
        end
    end

    return false
end

--- STORE FLAGS ---

PASSIVE_ITEM_FLAGS["vietcong_buyable"] = {
    FunctionName = "none",
    Description = "This item can be bought by the Vietcong in the store.",
    Color        = Color(200, 200, 200)
}

PASSIVE_ITEM_FLAGS["us_buyable"] = {
    FunctionName = "none",
    Description = "This item can be bought by the US in the store.",
    Color        = Color(200, 200, 200)
}


-----------------------------------------------------------------------------------------
---------------------------------------MISC STUFF----------------------------------------
-----------------------------------------------------------------------------------------

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

--PRELOAD MODELS
for _, model in ipairs(modelsToPreload) do
    util.PrecacheModel(model)
end

FACTION_TYPES = FACTION_TYPES or {}

---- New Weapon Forge Config ----
--CRAFTABLE_ITEMS["itemid"] = cost
--find the id in the /items menu
CRAFTABLE_ITEMS = CRAFTABLE_ITEMS or {}
CRAFTABLE_ITEMS["item_964668"] = 100 --Tritium Fuel
CRAFTABLE_ITEMS["item_786207"] = 100 --Reactor Coolant

APRIL_FOOLS = false
print("Imperium RP Config Loaded!")
