FACTION_TYPES["Murlocks"] = {
    STAGE = "FREEDOM",
    DeathsByType = {},
    OffWorld = true,

    CreateTraitorGuardsmen = function(self, bot, elite)
        local TotalPlayers = #player.GetHumans()
        local health = GetHealthByTotalPlayers() * 10

        bot.FightType = "hybrid"
        bot.weapon = math.random(1, 100) <= 40 and "tfa_big_shoota" or "tfa_speshul_shoota"
        bot.meleeweapon = "cat_chaos_legacy_daemonblade"

        --set name to murlock

        bot:SetNWString("Name", "Murlock")
        bot:SetNWString("Description", "Join For the Memes, leave with the Experience")

        bot:SetModel("models/obese_male.mdl")
        bot:SetNWString("Status", "Murlocks")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
        bot.MirrorImage = true
    end,

    OnDeathHook = function(self, bot, inflictor, attacker)
    end,

    Think = function(self)
        if BOT_INVASION ~= "Murlocks" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "Murlocks" then
                self:CreateTraitorGuardsmen(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
BOT_SOUND_MANAGER = BOT_SOUND_MANAGER or {}
BOT_SOUND_MANAGER["Murlocks"] = {
    SONG_LOCAL = {
            "fce/murlock_battleroyale.wav",
            "fce/murlock_dreadful.wav",
            "fce/murlock_memes.wav",
            "fce/murlock_spawn.wav",
            "fce/murlock_spinner.wav"
    },

    COOLDOWN_MIN = 5,
    COOLDOWN_MAX = 10,
    Pitch = {min = 50, max = 200}
}