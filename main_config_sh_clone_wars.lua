-- --------------------------------------------------
-- ---------- MAIN CONFIG ---------------------------
-- --------------------------------------------------

-- This is the main config for Clone Wars RP
-- Please edit it in the GitHub: https://github.com/MurlockCadi/mainconfig/

-- --------------------------------------------------
-- ---------- BASE CONFIG ---------------------------
-- --------------------------------------------------

--Bahnschrift

imperium_rp_font = "starurmel"
gamemode_name = "Clone Wars RP"

configTexts = {
    "In A Galaxy Far, Far Away.",
    "Welcome to the Imperium!",
    "May the Force be with you!",
    "Live long and prosper!",
    "Resistance is futile!",
    "Do or do not, there is no try!",
    "I am your father!",
    "May the odds be ever in your favor!",
    "The needs of the many outweigh the needs of the few.",
    "All power to the people!",
}

mapMessage_defualt = "Somewhere in a Galaxy Far, Far Away..."

-- --------------------------------------------------
-- ---------- MAPS ----------------------------------
-- --------------------------------------------------

local MAIN_MAPS = {
    ["gm_flatgrass"] = true,
}

MAIN_MAP = "gm_flatgrass"

if MAIN_MAPS[game.GetMap()] then
    MAIN_MAP = game.GetMap()
end

mapMessages = {
    ["gm_flatgrass"] = "Murlock loves gm_flatgrass!!!!",
}

-- --------------------------------------------------
-- ---------- INTRO MEDIA ---------------------------
-- --------------------------------------------------

intro_image_urls = {
    "https://wallpapercave.com/wp/wp2469578.jpg",
}

intro_songs = {
    "https://www.imperiumgaming.net/starwars/Star%20Wars%20Separatist%20Droid%20Army%20March%20Complete%20Music%20Theme%20Remastered.mp3",
    "https://www.imperiumgaming.net/starwars/Duel%20of%20the%20Fates.mp3",
    "https://www.imperiumgaming.net/starwars/John%20Williams%20Battle%20of%20the%20Heroes%20Audio.mp3",
}

-- --------------------------------------------------
-- ---------- PROXIMITY CHAT ------------------------
-- --------------------------------------------------

proximityDistance = 750

-- --------------------------------------------------
-- ---------- BOT HEALTH ----------------------------
-- --------------------------------------------------

function GetHealthByTotalPlayers()
    local TotalPlayers = #player.GetHumans()
    local health = 2000

    if TotalPlayers < 5 then
        health = 2000
    elseif TotalPlayers < 10 then
        health = 3000
    elseif TotalPlayers < 20 then
        health = 4000
    elseif TotalPlayers < 30 then
        health = 6000
    elseif TotalPlayers < 40 then
        health = 8000
    elseif TotalPlayers < 50 then
        health = 10000
    end

    health = health * HEALTH_MULTIPLIER_BOTS
    return health
end

-- --------------------------------------------------
-- ---------- XP SYSTEM -----------------------------
-- --------------------------------------------------

MIN_XP = 1000
MAX_XP = 30000
MAX_LEVEL = 200

function getXPForNextLevel(level)
    if level < 1 then return MIN_XP end
    if level > MAX_LEVEL then return MAX_XP end

    local t = (level - 1) / (MAX_LEVEL - 1)
    return math.floor(MIN_XP + (MAX_XP - MIN_XP) * (t ^ 2))
end

-- --------------------------------------------------
-- ---------- PLAYER MOVEMENT AND STATS -------------
-- --------------------------------------------------

WALK_SPEED = 135
RUN_SPEED = 350
MAX_SPEED = 400
JUMP_POWER = 225
MAX_HEALTH = 500
SLOW_WALK_SPEED = 80

function GetRunSpeed(athleticsLevel)
    return RUN_SPEED + athleticsLevel
end

-- --------------------------------------------------
-- ---------- REVIVE AND LOOT -----------------------
-- --------------------------------------------------

REVIVE_TIME = 5
LOOT_TIME = 2

-- --------------------------------------------------
-- ---------- CAPTURE SYSTEM ------------------------
-- --------------------------------------------------

CAPTURE_RADIUS = 300

-- --------------------------------------------------
-- ---------- SERVER MANAGEMENT ---------------------
-- --------------------------------------------------

IS_SERVER_MANAGED = false

-- --------------------------------------------------
-- ---------- HELP CONFIG ---------------------------
-- --------------------------------------------------

helpTopics = {
    ["Intro"] = [[
Welcome to Imperium Gaming's Clone Wars RP Server! Click on a tab on the left to learn more about a specific system.
]],
    --[[ ["Character Creation"] = [[
    Welcome to the Character Creation system! Here you can create and customize your character.
    ]]
}

-- --------------------------------------------------
-- ---------- CHAT COMMANDS -------------------------
-- --------------------------------------------------

-- Duplicate command keys from the original were collapsed to their final active Lua binding.
commands = {
    -- SYMBOLS commands
    ["//"] = function(ply, args) return ooc_command(ply, args) end,

    -- . commands
    [".//"] = function(ply, args) looc_command(ply, args) end,

    -- [ commands
    ["[["] = function(ply, args) looc_command(ply, args) end,

    -- A commands
    ["!ac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["/ac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["!actions"] = function(ply) OpenMissionSelectionMenu(ply) end,
    ["/actions"] = function(ply) OpenMissionSelectionMenu(ply) end,
    ["/addalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/addaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["!addspec"] = function(ply, args) Add_Spec_To_My_Division(ply, args) end,
    ["/addspec"] = function(ply, args) Add_Spec_To_My_Division(ply, args) end,
    ["!announce"] = function(ply, args) return announce_command(ply, args) end,
    ["/announce"] = function(ply, args) return announce_command(ply, args) end,
    ["!artillery"] = function(ply) call_in_arty(ply) end,
    ["/artillery"] = function(ply) call_in_arty(ply) end,
    ["!arty"] = function(ply) call_in_arty(ply) end,
    ["/arty"] = function(ply) call_in_arty(ply) end,
    ["!atomic"] = function(ply) GivePlayerSwepIfTeamHasBombsandIsTrusted(ply) end,

    -- B commands
    ["!bombardment"] = function(ply) call_in_arty(ply) end,
    ["/bombardment"] = function(ply) call_in_arty(ply) end,
    ["!bot"] = function(ply) AdminBotOpenMenu(ply) end,
    ["/bot"] = function(ply) AdminBotOpenMenu(ply) end,

    -- C commands
    ["!changerank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/changerank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["/char"] = function(ply) handleCharacterMenuCommand(ply) end,
    ["!charisma"] = function(ply) charisma_roll_command(ply) end,
    ["/charisma"] = function(ply) charisma_roll_command(ply) end,
    ["!charismaroll"] = function(ply) charisma_roll_command(ply) end,
    ["/charismaroll"] = function(ply) charisma_roll_command(ply) end,
    ["!charoll"] = function(ply) charisma_roll_command(ply) end,
    ["/charoll"] = function(ply) charisma_roll_command(ply) end,
    ["!charroll"] = function(ply) charisma_roll_command(ply) end,
    ["/charroll"] = function(ply) charisma_roll_command(ply) end,
    ["!cheatmagic"] = function(ply) GainAttunementCheat(ply) end,
    ["/cheatmagic"] = function(ply) GainAttunementCheat(ply) end,
    ["!claim"] = function(ply) RedeemQMPackage(ply) end,
    ["/claim"] = function(ply) RedeemQMPackage(ply) end,
    ["!cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["/cleanup"] = function(ply) PlayerWantsToCleanUpAllForts(ply) end,
    ["!content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3596850163") end,
    ["/content"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3596850163") end,
    ["!createdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["/createdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,

    -- D commands
    ["!demote"] = function(ply, args) return demote_player(ply, args) end,
    ["/demote"] = function(ply, args) return demote_player(ply, args) end,
    ["!diplomacy"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/diplomacy"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!diplomatic"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/diplomatic"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!diplomaticplay"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/diplomaticplay"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!diplomaticplays"] = function(ply, args) OpenDiplomaticPlayMenu(ply, args) end,
    ["/diplomaticplays"] = function(ply, args) OpenDiplomaticPlayMenu(ply, args) end,
    ["!discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["/discord"] = function(ply) OpenURL(ply,"https://discord.gg/emfc9zPkbZ") end,
    ["!disguise"] = function(ply) return HideAsRandomEnemy(ply) end,
    ["/disguise"] = function(ply) return HideAsRandomEnemy(ply) end,
    ["!division"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["/division"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/donate"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["!drug"] = function(ply) OpenDrugInventory(ply) end,
    ["/drug"] = function(ply) OpenDrugInventory(ply) end,
    ["!drugs"] = function(ply) OpenDrugInventory(ply) end,
    ["/drugs"] = function(ply) OpenDrugInventory(ply) end,

    -- E commands
    ["!endevent"] = function(ply) PlayerVotedToEndEvent(ply) end,
    ["/endevent"] = function(ply) PlayerVotedToEndEvent(ply) end,
    ["!event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/event"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/eventmenu"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,
    ["/eventoutpost"] = function(ply, args) CreateCommandOutpost(ply, args) end,
    ["!examine"] = function(ply) SearchPlayerForSkulls(ply) end,
    ["/examine"] = function(ply) SearchPlayerForSkulls(ply) end,

    -- F commands
    ["!faction"] = function(ply) OpenFactionManagerMenu(ply) end,
    ["/faction"] = function(ply) OpenFactionManagerMenu(ply) end,
    ["!frontline"] = function(ply) ChangeToFrontlineMap(ply) end,
    ["/frontline"] = function(ply) ChangeToFrontlineMap(ply) end,

    -- G commands
    ["!gamemode"] = function(ply) AdminOpenUIMapSelect(ply) end,
    ["/gamemode"] = function(ply) AdminOpenUIMapSelect(ply) end,
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
    ["!group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/group"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,

    -- H commands
    ["!help"] = function(ply) OpenHelpMenu(ply) end,
    ["/help"] = function(ply) OpenHelpMenu(ply) end,

    -- I commands
    ["!intro"] = function(ply) handleIntroCommand(ply) end,
    ["!it"] = function(ply, args) return it_command(ply, args) end,
    ["/it"] = function(ply, args) return it_command(ply, args) end,
    ["!items"] = function(ply) OpenItemManager(ply) end,
    ["/items"] = function(ply) OpenItemManager(ply) end,

    -- L commands
    ["!landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["/landingcraft"] = function(ply) ResetLandingCraft(ply) end,
    ["!logs"] = function(ply) mLogs.Open(ply) end,
    ["/logs"] = function(ply) mLogs.Open(ply) end,
    ["!looc"] = function(ply, args) looc_command(ply, args) end,
    ["/looc"] = function(ply, args) looc_command(ply, args) end,

    -- M commands
    ["!managetax"] = function(ply) OpenTaxManager(ply) end,
    ["/managetax"] = function(ply) OpenTaxManager(ply) end,
    ["!market"] = function(ply) OpenMarketMenuPly(ply) end,
    ["/market"] = function(ply) OpenMarketMenuPly(ply) end,
    ["!markets"] = function(ply) OpenMarketMenuPly(ply) end,
    ["/markets"] = function(ply) OpenMarketMenuPly(ply) end,
    ["!me"] = function(ply, args) return me_command(ply, args) end,
    ["/me"] = function(ply, args) return me_command(ply, args) end,
    ["!menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["/menuevent"] = function(ply) OpenEventSettingsHUDFunction(ply) end,
    ["!mission"] = function(ply) OpenTaskMenu(ply) end,
    ["/mission"] = function(ply) OpenTaskMenu(ply) end,
    ["!missions"] = function(ply) OpenTaskMenu(ply) end,
    ["/missions"] = function(ply) OpenTaskMenu(ply) end,
    ["!murlockac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["/murlockac"] = function(ply) AdminOpenViolationMenu(ply) end,
    ["/murlockaimhack"] = function(ply) ToggleMurlockAimHack(ply) end,

    -- N commands
    ["!newdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["/newdivision"] = function(ply) OpenDivisionCreationMenuForPlayer(ply) end,
    ["!nuke"] = function(ply) NukeMapAdmin(ply) end,

    -- O commands
    ["!objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end,
    ["/objective"] = function(ply, args) AdminUpdateObjectiveLocationAndText(ply, args) end,
    ["!ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["/ooc"] = function(ply, args) return ooc_command(ply, args) end,
    ["!options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,
    ["/options"] = function(ply) OpenOptionsMenuForPlayer(ply) end,

    -- P commands
    ["!play"] = function(ply, args) OpenDiplomaticPlayMenu(ply, args) end,
    ["/play"] = function(ply, args) OpenDiplomaticPlayMenu(ply, args) end,
    ["!playerstats"] = function(ply) OpenPlayerStats(ply) end,
    ["/playerstats"] = function(ply) OpenPlayerStats(ply) end,
    ["!plays"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/plays"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!pm"] = function(ply, args) return privat_radio_msg(ply, args) end,
    ["/pm"] = function(ply, args) return privat_radio_msg(ply, args) end,
    ["!promote"] = function(ply, args) return promote_player(ply, args) end,
    ["/promote"] = function(ply, args) return promote_player(ply, args) end,

    -- Q commands
    ["!quest"] = function(ply) OpenTaskMenu(ply) end,
    ["/quest"] = function(ply) OpenTaskMenu(ply) end,
    ["!quests"] = function(ply) OpenTaskMenu(ply) end,
    ["/quests"] = function(ply) OpenTaskMenu(ply) end,

    -- R commands
    ["!r"] = function(ply, args) return radio_command(ply, args) end,
    ["/r"] = function(ply, args) return radio_command(ply, args) end,
    ["!radio"] = function(ply, args) return radio_command(ply, args) end,
    ["/radio"] = function(ply, args) return radio_command(ply, args) end,
    ["!rank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/rank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["!removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["/removebasenodes"] = function(ply) RemoveAllPriorityBaseNodes(ply) end,
    ["!removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["/removefrontlinenodes"] = function(ply) priority_frontline_node(ply) end,
    ["!removetrade"] = function(ply) RemoveTradeStation(ply) end,
    ["/removetrade"] = function(ply) RemoveTradeStation(ply) end,
    ["!removetradestation"] = function(ply) RemoveTradeStation(ply) end,
    ["/removetradestation"] = function(ply) RemoveTradeStation(ply) end,
    ["!removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/removevip"] = function(ply, args) return remove_vip(ply, args) end,
    ["!reset"] = function(ply) ResetPoints(ply) end,
    ["/reset"] = function(ply) ResetPoints(ply) end,
    ["!resetevent"] = function(ply) ResetGMPoints(ply) end,
    ["/resetevent"] = function(ply) ResetGMPoints(ply) end,
    ["!rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["/rewardteam"] = function(ply, args) RewardTeamAdmin(ply, args) end,
    ["!roll"] = function(ply) PlayerRoll(ply) end,
    ["/roll"] = function(ply) PlayerRoll(ply) end,
    ["!rp"] = function(ply, args) return rp_command(ply, args) end,
    ["/rp"] = function(ply, args) return rp_command(ply, args) end,
    ["!rules"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1iqMBUUaCexByDInm-ubRuPgn-qh_QxhpvwYgHwG6bS8/edit?usp=sharing") end,
    ["/rules"] = function(ply) OpenURL(ply,"https://docs.google.com/document/d/1iqMBUUaCexByDInm-ubRuPgn-qh_QxhpvwYgHwG6bS8/edit?usp=sharing") end,

    -- S commands
    ["!search"] = function(ply) SearchPlayerForDrugsInfrontOfMe(ply) end,
    ["/search"] = function(ply) SearchPlayerForDrugsInfrontOfMe(ply) end,
    ["!servo"] = function(ply) EnterYourSkull(ply) end,
    ["/servo"] = function(ply) EnterYourSkull(ply) end,
    ["/setalliedsupply"] = function(ply, args) set_allies_supply(ply, args) end,
    ["/setaxissupply"] = function(ply, args) set_axis_supply(ply, args) end,
    ["/setmain"] = function(ply) Set_Division_To_Main(ply) end,
    ["!setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/setrank"] = function(ply, args) return promote_player_by_rank(ply, args) end,
    ["/setspawn"] = function(ply, args) return handleSetSpawnCommand(ply, args) end,
    ["/sexydrugs"] = function(ply) CreateSlaneeshSpook(ply) end,
    ["!skull"] = function(ply) OpenSkullInventory(ply) end,
    ["/skull"] = function(ply) OpenSkullInventory(ply) end,
    ["!skulls"] = function(ply) OpenSkullInventory(ply) end,
    ["/skulls"] = function(ply) OpenSkullInventory(ply) end,
    ["!song"] = function(ply, args) return play_song(ply, args) end,
    ["/song"] = function(ply, args) return play_song(ply, args) end,
    ["!stats"] = function(ply) OpenPlayerStats(ply) end,
    ["/stats"] = function(ply) OpenPlayerStats(ply) end,
    ["!steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steam"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["/steamgroup"] = function(ply) OpenURL(ply,"https://steamcommunity.com/groups/imperiumgaminggmod") end,
    ["!store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,
    ["/store"] = function(ply) OpenURL(ply,"https://www.imperiumgaming.net/store/") end,

    -- T commands
    ["!task"] = function(ply) OpenTaskMenu(ply) end,
    ["/task"] = function(ply) OpenTaskMenu(ply) end,
    ["!tasks"] = function(ply) OpenTaskMenu(ply) end,
    ["/tasks"] = function(ply) OpenTaskMenu(ply) end,
    ["!tax"] = function(ply) OpenTaxMenu(ply) end,
    ["/tax"] = function(ply) OpenTaxMenu(ply) end,
    ["!taxmanager"] = function(ply) OpenTaxManager(ply) end,
    ["/taxmanager"] = function(ply) OpenTaxManager(ply) end,
    ["!taxmenu"] = function(ply) OpenTaxMenu(ply) end,
    ["/taxmenu"] = function(ply) OpenTaxMenu(ply) end,
    ["/!teamradio"] = function(ply, args) return radio_command_team(ply, args) end,
    ["/teamradio"] = function(ply, args) return radio_command_team(ply, args) end,
    ["/timescale"] = function(ply, args) AdminSetTimeScale(ply, args) end,
    ["!trade"] = function(ply) spawn_trade_station(ply) end,
    ["/trade"] = function(ply) spawn_trade_station(ply) end,
    ["!tradestation"] = function(ply) spawn_trade_station(ply) end,
    ["/tradestation"] = function(ply) spawn_trade_station(ply) end,
    ["/tradio"] = function(ply, args) return radio_command_team(ply, args) end,
    ["!trustfunctions"] = function(ply) GeneratedTrustedFunctions(ply) end,
    ["/trustfunctions"] = function(ply) GeneratedTrustedFunctions(ply) end,

    -- U commands
    ["!unvip"] = function(ply, args) return remove_vip(ply, args) end,
    ["/unvip"] = function(ply, args) return remove_vip(ply, args) end,

    -- V commands
    ["!vox"] = function(ply, args) return radio_command(ply, args) end,
    ["/vox"] = function(ply, args) return radio_command(ply, args) end,

    -- W commands
    ["!w"] = function(ply, args) whisper_command(ply, args) end,
    ["/w"] = function(ply, args) whisper_command(ply, args) end,
    ["!war"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/war"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!wars"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["/wars"] = function(ply) OpenDiplomaticPlayMenu(ply) end,
    ["!whisper"] = function(ply, args) whisper_command(ply, args) end,
    ["/whisper"] = function(ply, args) whisper_command(ply, args) end,
    ["!workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3596850163") end,
    ["/workshop"] = function(ply) OpenURL(ply,"https://steamcommunity.com/sharedfiles/filedetails/?id=3596850163") end,

    -- Y commands
    ["!y"] = function(ply, args) PlayerYell(ply, args) end,
    ["/y"] = function(ply, args) PlayerYell(ply, args) end,
    ["!yell"] = function(ply, args) PlayerYell(ply, args) end,
    ["/yell"] = function(ply, args) PlayerYell(ply, args) end,
}

-- --------------------------------------------------
-- ---------- DEFAULT WEAPONS -----------------------
-- --------------------------------------------------

imperium_rp_defualt_weapons = {
    "move_things",
}
-- --------------------------------------------------
-- ---------- MODELS AND WEAPONS --------------------
-- --------------------------------------------------

RCT_MODELS = {}
CT_MODELS = {}
NCO_CT = {}
OFFICER_CT = {}

-- --------------------------------------------------
-- ---------- DIVISION TYPES ------------------------
-- --------------------------------------------------

DivisionTypes = {
        ["Shinies"] = {
        NiceName = "Clone Recruits",
        Description = "Straight from Kamino and ready to fight for The Republic.",
        Team = "Republic",
        Default = true,
        DefaultItems = {},
        Ranks = {
            {ID = 1, Name = "Recruit", Rank_Prefix = "RCT", ModelsAllowed = RCT_MODELS, WeaponsAllowed = PENAL_WEAPONS, CanPromote = false},
            {ID = 2, Name = "Trooper", Rank_Prefix = "CT", ModelsAllowed = CT_MODELS, WeaponsAllowed = PENAL_WEAPONS, CanPromote = false},
            {ID = 3, Name = "Corporal", Rank_Prefix = "CPL", ModelsAllowed = CT_MODELS, WeaponsAllowed = PENAL_WEAPONS, CanPromote = false},
            {ID = 4, Name = "Sergeant", Rank_Prefix = "SGT", ModelsAllowed = NCO_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 5, Name = "Sergeant Major", Rank_Prefix = "SMJR", ModelsAllowed = NCO_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 6, Name = "Second Lieutenant", Rank_Prefix = "2LT", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 7, Name = "Lieutenant", Rank_Prefix = "LT", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 8, Name = "Captain", Rank_Prefix = "CPT", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 9, Name = "Major", Rank_Prefix = "MJR", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 10, Name = "Battalion Commander", Rank_Prefix = "BCMDR", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 11, Name = "Regimental Commander", Rank_Prefix = "RCMDR", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 12, Name = "Senior Commander", Rank_Prefix = "SCMDR", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
            {ID = 13, Name = "Clone Marshal Commander", Rank_Prefix = "CMCMDR", ModelsAllowed = OFFICER_CT, WeaponsAllowed = PENAL_WEAPONS, CanPromote = true},
        },
        Classes = {
            {
                Name = "Recruit",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },
            },

            {

                Name = "Trooper",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "TRP",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },
            },

            {

                Name = "Demolitions Specialist",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "Demo",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },
            },

            {
                Name = "Officer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "OFF",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },
            },

            {
                Name = "Weapon Specialist",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "WS",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Medic",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "MED",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },
            },

            {
                Name = "Engineer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "ENG",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Pioneer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "PN",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Arc Trooper",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "ARC-TPR",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Arc Medic",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "ARC-MD",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Arc Heavy Specialist",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "ARC-HVY",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            },

            {
                Name = "Arc Pioneer",
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = "ARC-PN",
                EntitySpawner = {
                          {
                          name = "",
                          entityname = "",
                          description = "",
                          type = ""
                        },
                    },
                vehicles = {
                    {
                        name = "",
                        entityname = "",
                        description = "",
                        type = ""
                    },
                },

            }
        },
    },



}

-- --------------------------------------------------
-- ---------- ROLES ---------------------------------
-- --------------------------------------------------

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

    DIVISION_RECRUIT = {
        NiceName = "Recruit",
        Prefix = "RCT",
        Color = Color(125, 58, 0),
        Description = "You've come just from Kamino. Ready to fight for the Republic.",
        Default = true,
        DefaultItems = {"item_437413"},
        Ranks = {
            {ID = 1, Name = "Wastelander", Rank_Prefix = "", ModelsAllowed = {"models/player/breen.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Wastelander",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
        Team = "wastelanders"
    },

    HOSTILE_BOT_ROLE = {
        NiceName = "Hostile Bot",
        Prefix = "",
        Color = Color(125, 0, 0),
        Description = "Hostile Bot Role",
        Default = false,
        Bot = true,
        Ranks = {
            {ID = 1, Name = "Hostile Bot", Rank_Prefix = "", ModelsAllowed = {"models/player/breen.mdl"}, WeaponsAllowed = {}, CanPromote = false},
        },
        Classes = {
            {
                Name = "Hostile Bot",
                Default = true,
                Core = true,
                Models = {},
                Weapons = {},
                SpawnWeapons = {},
                Prefix = ""
            },
        },
    }
}

DEFAULT_ROLE = ROLES.DIVISION_RECRUIT

-- --------------------------------------------------
-- ---------- GROUP RANKS ---------------------------
-- --------------------------------------------------

group_ranks = {
    {id = 1, points = 0, name = "Platoon", specializations = 1, ranks_unlocked = 0.3},
    {id = 2, points = 50, name = "Company", specializations = 2, ranks_unlocked = 0.45},
    {id = 3, points = 100, name = "Battalion", specializations = 4, ranks_unlocked = 0.65},
    {id = 4, points = 150, name = "Regiment", specializations = 5, ranks_unlocked = 0.80},
    {id = 5, points = 200, name = "Division", specializations = 6, ranks_unlocked = 1.0}
}

-- --------------------------------------------------
-- ---------- CERTIFICATIONS ------------------------
-- --------------------------------------------------

CERTIFICATIONS = {

        ["Pilot"] = {
        Weapons = {},
        Entitys = {
            { name = "Valkyrie", entityname = "lvs_starfighter_valkyrie", description = "Rain righteous fury upon thy enemies", type = "Vehicle" },
        }
    },
    --[[ ["Tanker"] = {
         Weapons = {"ent_spawner","weapon_simrepair"},
        Entitys = {
             { name = "Gas Pump", entityname = "gmod_sent_vehicle_fphysics_gaspump",  description = "Gas for Tanks", type = "Vehicle" }
         }
     },]]

    --[[ ["Provost"] = {
         Weapons = {"weapon_cuff_elastic"},
     },
     ["Rough Rider"] = {
         Weapons = {"ent_spawner"},
         Entitys = {
             { name = "Andalusian", entityname = "ent_horse_andalusian", description = "Horse!", type = "Vehicle" },
             { name = "Arabian", entityname = "ent_horse_arabian", description = "Horse!", type = "Vehicle" },
       }
     },]]

        ["Surgeon"] = {
        Weapons = {"weapon_healer"},
        Entitys = {
            { name = "Medical Supplies", entityname = "medic_box", description = "Lets soldiers heal themselves.", type = "Medic Box" }
        }
    }
}

-- --------------------------------------------------
-- ---------- PASSIVE ITEMS -------------------------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS = PASSIVE_ITEM_FLAGS or {}

MAX_PASSIVE_ITEMS = 5

-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: HEALTH ------------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Extra 100 Health"] = {
    FunctionName = "100health",
    Description = "Increases max health by 50.",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Extra 200 Health"] = {
    FunctionName = "200health",
    Description = "Increases max health by 100.",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Remove 100 Health"] = {
    FunctionName = "remove100health",
    Description = "Decreases max health by 100.",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Remove 200 Health"] = {
    FunctionName = "remove200health",
    Description = "Decreases max health by 200.",
    Color = Color(255, 0, 0)
}


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: SPEED -------------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Add 50 Speed"] = {
    FunctionName = "add50speed",
    Description = "Increase Run Speed by 50",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Add 100 Speed"] = {
    FunctionName = "add100speed",
    Description = "Increase Run Speed by 100",
    Color = Color(0, 255, 0)
}

PASSIVE_ITEM_FLAGS["Remove 25 Speed"] = {
    FunctionName = "remove50speed",
    Description = "Lowers Run Speed by 25",
    Color = Color(255, 0, 0)
}

PASSIVE_ITEM_FLAGS["Remove 50 Speed"] = {
    FunctionName = "remove100speed",
    Description = "Lowers Run Speed by 50",
    Color = Color(255, 0, 0)
}


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: REGENERATION ------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Health Regen"] = {
    FunctionName = "HealthRegen",
    Description  = "Grants passive health regeneration over time.",
    Color        = Color(0, 200, 0)
}

PASSIVE_ITEM_FLAGS["Shield Regen"] = {
    FunctionName = "ShieldRegen",
    Description  = "Automatically repairs your Armor over time.",
    Color        = Color(0, 161, 255)
}

PASSIVE_ITEM_FLAGS["Ammo Regen"] = {
    FunctionName = "AmmoRegen",
    Description  = "Grants passive ammo regeneration for your active weapon.",
    Color        = Color(200, 200, 50)
}

-- Damage Boosts


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: DEFENSE -----------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["powershield"] = {
    FunctionName = "powershield",
    Description = "Grants a Powershield to the User (10% Damage Reduction).",
    Color = Color(0, 161, 255)
}

PASSIVE_ITEM_FLAGS["Damage Reduction 10"] = {
    FunctionName = "DamageReduction10",
    Description  = "Decreases incoming damage by 5%.",
    Color        = Color(0, 150, 255)
}

PASSIVE_ITEM_FLAGS["Damage Reduction 25"] = {
    FunctionName = "DamageReduction25",
    Description  = "Decreases incoming damage by 10%.",
    Color        = Color(0, 200, 255)
}

-- Damage Taken Increases (incoming)

PASSIVE_ITEM_FLAGS["Last Stand"] = {
    FunctionName = "LastStand",
    Description  = "When below 35% health, you take 50% less damage.",
    Color        = Color(255, 200, 0)
}

-- Critical Strikes

PASSIVE_ITEM_FLAGS["Thorns 5"] = {
    FunctionName = "Thorns5",
    Description  = "Reflects 5% of incoming damage back to the attacker.",
    Color        = Color(200, 80, 0)
}

PASSIVE_ITEM_FLAGS["Thorns 10"] = {
    FunctionName = "Thorns10",
    Description  = "Reflects 10% of incoming damage back to the attacker.",
    Color        = Color(255, 120, 0)
}


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: DAMAGE ------------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Damage Boost 10"] = {
    FunctionName = "DamageBoost10",
    Description  = "Increases your damage output by 5%.",
    Color        = Color(0, 200, 0)
}

PASSIVE_ITEM_FLAGS["Damage Boost 25"] = {
    FunctionName = "DamageBoost25",
    Description  = "Increases your damage output by 10%.",
    Color        = Color(0, 255, 0)
}

-- Damage Reductions (incoming)

PASSIVE_ITEM_FLAGS["Damage Output Reduction 10"] = {
    FunctionName = "DamageDealtReduction10",
    Description  = "Your attacks deal 10% less damage.",
    Color        = Color(200, 100, 100)
}

PASSIVE_ITEM_FLAGS["Damage Output Reduction 25"] = {
    FunctionName = "DamageDealtReduction25",
    Description  = "Your attacks deal 25% less damage.",
    Color        = Color(200, 50, 50)
}

-- Vampirism (health steal)

PASSIVE_ITEM_FLAGS["Damage Taken Increase 10"] = {
    FunctionName = "DamageTakenIncrease10",
    Description  = "You take 10% more damage from all sources.",
    Color        = Color(200, 50, 50)
}

PASSIVE_ITEM_FLAGS["Damage Taken Increase 25"] = {
    FunctionName = "DamageTakenIncrease25",
    Description  = "You take 25% more damage from all sources.",
    Color        = Color(255, 0, 0)
}

-- Damage Dealt Reductions (outgoing)

PASSIVE_ITEM_FLAGS["Corrosive Damage"] = {
    FunctionName = "CorrosiveDamage",
    Description  = "Your attacks inflict Poison Damage, doing % damage over time.",
    Color        = Color(0, 200, 100)
}


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: CRITICAL EFFECTS --
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Critical Strikes 10"] = {
    FunctionName = "CritStrike10",
    Description  = "2% chance for your attacks to deal 100% more damage.",
    Color        = Color(0, 200, 255)
}

PASSIVE_ITEM_FLAGS["Critical Strikes 25"] = {
    FunctionName = "CritStrike25",
    Description  = "5% chance for your attacks to deal 100% more damage.",
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


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: VAMPIRISM ---------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Vampirism 5"] = {
    FunctionName = "Vampirism5",
    Description  = "Gain 5 Health Per Hit. (1 second cooldown)",
    Color        = Color(200, 0, 200)
}

PASSIVE_ITEM_FLAGS["Vampirism 10"] = {
    FunctionName = "Vampirism10",
    Description  = "Gain 10 Health Per Hit. (1 second cooldown)",
    Color        = Color(255, 0, 255)
}

-- Armor Vampirism

PASSIVE_ITEM_FLAGS["Armor Vampirism 10"] = {
    FunctionName = "ArmorVampirism10",
    Description  = "Steals 0.5% of dealt damage as armor.",
    Color        = Color(0, 180, 200)
}

-- Bullet Vampirism

PASSIVE_ITEM_FLAGS["Bullet Vampirism 10"] = {
    FunctionName = "BulletVampirism10",
    Description  = "Regenerates 1 bullet into your reserves every time you hit with a bullet.",
    Color        = Color(200, 100, 0)
}

-- Thorns (reflect damage)


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: ATTRIBUTE GENERATORS
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Stoicism"] = {
    FunctionName = "Stoicism",
    Description  = "Enables Stoicism: Gain 1 Stoicism per Armour gained.",
    Color        = Color(120, 180, 255)
}

-- Gain Resolve from gaining Health.

PASSIVE_ITEM_FLAGS["Resolve"] = {
    FunctionName = "Resolve",
    Description  = "Enables Resolve: Gain 1 Resolve per Health gained.",
    Color        = Color(50, 200, 255)
}

-- Gain Fury from dealing damage.

PASSIVE_ITEM_FLAGS["Fury"] = {
    FunctionName = "Fury",
    Description  = "Enables Fury: Gain 1 Fury per 5 damage dealt.",
    Color        = Color(255, 80, 80)
}

-- Convert 100 Stoicism into 50 Health.


-- -----------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: ATTRIBUTE CONVERSIONS
-- -----------------------------------------------------

PASSIVE_ITEM_FLAGS["Convert Armor To Health"] = {
    FunctionName = "ConvertArmorToHealth",
    Description  = "Converts your Armour into Health.",
    Color        = Color(0, 200, 100)
}

PASSIVE_ITEM_FLAGS["Convert Health To Armor"] = {
    FunctionName = "ConvertHealthToArmor",
    Description  = "Converts your Health into Armour.",
    Color        = Color(100, 150, 255)
}

-- Unique Attributes

-- Gain Stoicism from gaining Shield.

PASSIVE_ITEM_FLAGS["ConvertArmorToDamage"] = {
    FunctionName = "ConvertArmorToDamage",
    Description  = "Converts your Armour into Damage. (-100 Armour +50 Damage)",
    Color        = Color(100, 100, 200)
}

PASSIVE_ITEM_FLAGS["Convert Health To Damage"] = {
    FunctionName = "ConvertHealthToDamage",
    Description  = "Converts your Health into Damage. (-100 Health +50 Damage)",
    Color        = Color(180, 100, 200)
}

PASSIVE_ITEM_FLAGS["Convert Stoicism to Health"] = {
    FunctionName = "ConvertStoicismToHealth",
    Description  = "Converts 75 Stoicism into +25 Health",
    Color        = Color(120, 180, 255)
}

-- Convert 100 Stoicism into 100 Damage.

PASSIVE_ITEM_FLAGS["Convert Stoicism to Damage"] = {
    FunctionName = "ConvertStoicismToDamage",
    Description  = "Converts 100 Stoicism into +50 Damage",
    Color        = Color(200, 100, 255)
}

-- Convert 100 Resolve into 50 Shield.

PASSIVE_ITEM_FLAGS["Convert Stoicism to Resolve"] = {
    FunctionName = "ConvertStoicismToResolve",
    Description  = "Converts 100 Stoicism into +50 Resolve",
    Color        = Color(100, 200, 150)
}

-- Convert 100 Stoicism into 50 Fury.

PASSIVE_ITEM_FLAGS["Convert Stoicism to Fury"] = {
    FunctionName = "ConvertStoicismToFury",
    Description  = "Converts 100 Stoicism into +50 Fury",
    Color        = Color(255, 100, 150)
}

PASSIVE_ITEM_FLAGS["Convert Resolve to Shield"] = {
    FunctionName = "ConvertResolveToShield",
    Description  = "Converts 75 Resolve into +25 Armour.",
    Color        = Color(50, 200, 255)
}

-- Convert 100 Resolve into 100 Damage.

PASSIVE_ITEM_FLAGS["Convert Resolve to Damage"] = {
    FunctionName = "ConvertResolveToDamage",
    Description  = "Converts 100 Resolve into +50 Damage",
    Color        = Color(255, 200, 50)
}

-- Convert 100 Fury into 50 Health.

PASSIVE_ITEM_FLAGS["Convert Resolve to Stoicism"] = {
    FunctionName = "ConvertResolveToStoicism",
    Description  = "Converts 100 Resolve into +50 Stoicism",
    Color        = Color(150, 220, 255)
}

-- Convert 100 Resolve into 50 Fury.

PASSIVE_ITEM_FLAGS["Convert Resolve to Fury"] = {
    FunctionName = "ConvertResolveToFury",
    Description  = "Converts 100 Resolve into +50 Fury",
    Color        = Color(255, 120, 120)
}

-- Convert 100 Fury into 50 Stoicism.

PASSIVE_ITEM_FLAGS["Convert Fury to Health"] = {
    FunctionName = "ConvertFuryToHealth",
    Description  = "Converts 75 Fury into +25 Health",
    Color        = Color(255, 80, 80)
}

-- Convert 100 Fury into 50 Shield.

PASSIVE_ITEM_FLAGS["Convert Fury to Shield"] = {
    FunctionName = "ConvertFuryToShield",
    Description  = "Converts 75 Fury into +25 Armour",
    Color        = Color(255, 100, 180)
}

-- Convert 100 Resolve into 50 Stoicism.

PASSIVE_ITEM_FLAGS["Convert Fury to Stoicism"] = {
    FunctionName = "ConvertFuryToStoicism",
    Description  = "Converts 100 Fury into +50 Stoicism",
    Color        = Color(180, 150, 255)
}

-- Convert 100 Fury into 50 Resolve.

PASSIVE_ITEM_FLAGS["Convert Fury to Resolve"] = {
    FunctionName = "ConvertFuryToResolve",
    Description  = "Converts 100 Fury into +50 Resolve",
    Color        = Color(255, 170, 80)
}

-- Convert 100 Stoicism into 50 Resolve.


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: MISC EFFECTS ------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["Ammo Drain"] = {
    FunctionName = "AmmoDrain",
    Description  = "When dealt damage, you lose 1 ammo from your active weapon.",
    Color        = Color(215, 68, 0)
}


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: RARITIES ----------
-- --------------------------------------------------

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

--- Relic/Item Flags ---


-- --------------------------------------------------
-- ---------- PASSIVE ITEM FLAGS: ITEM SOURCES ------
-- --------------------------------------------------

PASSIVE_ITEM_FLAGS["bot_buyable"] = {
    FunctionName = "none",
    Description = "This item will be sold by bots in the world.",
    Color = Color(127, 0, 95)
}

PASSIVE_ITEM_FLAGS["relic_buyable"] = {
    FunctionName = "none",
    Description = "This item will be sold by the black market.",
    Color = Color(127, 0, 95)
}

PASSIVE_ITEM_FLAGS["bot_loot"] = {
    FunctionName = "none",
    Description = "This item can be found as loot on bots.",
    Color = Color(127, 0, 95)
}

PASSIVE_ITEM_FLAGS["boss_loot"] = {
    FunctionName = "none",
    Description = "This item can be found as loot from bosses.",
    Color = Color(127, 0, 95)
}


-- --------------------------------------------------
-- ---------- LOAD MODELS ---------------------------
-- --------------------------------------------------

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

-- --------------------------------------------------
-- ---------- STARTUP MESSAGE -----------------------
-- --------------------------------------------------

print("Imperium RP Config Loaded!")
