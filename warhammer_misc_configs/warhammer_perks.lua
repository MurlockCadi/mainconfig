MURLOCK_PERKS = MURLOCK_PERKS or {}

--Example Perk
MURLOCK_PERKS["Heart of Resolve"] = {
    description = "Your heart is filled with a firm determination to carry on, as long as this strong will remains, you will fight on. When you take damage, you also take that damage as Resolve damage. If damage would reduce your health to 0, it is instead reduced to 1 as long as you have more than 0 Resolve. You spawn with 500 Resolve. If you have 0 Resolve, you will die.",
    icon = "https://www.imperiumgaming.net/perks/heart_of_resolve.png",
    RunDamageLast = true,
    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        local currentResolve = ply.ResolveStacks or 0

        local lethal = (ply:Health() - damage) <= 0

        ply.ResolveStacks = math.max(0, currentResolve - damage)
        UpdatePlayersUniqueAttributes(ply)

        if lethal then
            if ply.ResolveStacks > 0 then
                ply:SetHealth(1)
                return 0
            else
                NotifyPlayer(ply, "Your resolve has been lost and your heart has failed.", 10, true)
                return damage
            end
        end

        return damage
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        if ply.ResolveStacks and ply.ResolveStacks <= 0 then
            ply:Kill()
            NotifyPlayer(ply, "Your resolve has been lost and your heart has failed.", 10, true)
        end
    end,

    OnSpawn = function(ply)
        ply.ResolveStacks = 500
        ply.Resolve = true
    end

    -- OnDeath = function(ply)
    -- end

    -- OnDamageDealt = function(ply, dmginfo)
    -- end
}

MURLOCK_PERKS["Heart of Fury"] = {
    description = "Your heart burns with an intense anger, for as long as this rage remains, you cannot be humbled. When you take damage, you also take that damage as Fury damage. If damage would reduce your health to 0, it is instead reduced to 1 as long as you have more than 0 Fury. You spawn with 500 Fury. If you have 0 Fury, you will die.",
    icon = "https://www.imperiumgaming.net/perks/heart_of_fury.png",
    RunDamageLast = true,
    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        local currentFury = ply.FuryStacks or 0

        local lethal = (ply:Health() - damage) <= 0

        ply.FuryStacks = math.max(0, currentFury - damage)
        UpdatePlayersUniqueAttributes(ply)

        if lethal then
            if ply.FuryStacks > 0 then
                ply:SetHealth(1)
                return 0
            else
                NotifyPlayer(ply, "Your fury has been lost and your heart has failed.", 10, true)
                return damage
            end
        end

        return damage
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        if ply.FuryStacks and ply.FuryStacks <= 0 then
            ply:Kill()
            NotifyPlayer(ply, "Your fury has been lost and your heart has failed.", 10, true)
        end
    end,

    OnSpawn = function(ply)
        ply.FuryStacks = 500
        ply.Fury = true
    end
}

MURLOCK_PERKS["Heart of Stoicism"] = {
    description = "Your heart is as hard as stone, for as long as this stoicism remains, you cannot be broken. When you take damage, you also take that damage as Stoicism damage. If damage would reduce your health to 0, it is instead reduced to 1 as long as you have more than 0 Stoicism. You spawn with 500 Stoicism. If you have 0 Stoicism, you will die.",
    icon = "https://www.imperiumgaming.net/perks/heart_of_stoicism.png",
    RunDamageLast = true,
    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        local currentStoicism = ply.StoicismStacks or 0

        local lethal = (ply:Health() - damage) <= 0

        ply.StoicismStacks = math.max(0, currentStoicism - damage)
        UpdatePlayersUniqueAttributes(ply)

        if lethal then
            if ply.StoicismStacks > 0 then
                ply:SetHealth(1)
                return 0
            else
                NotifyPlayer(ply, "Your stoicism has been lost and your heart has failed.", 10, true)
                return damage
            end
        end

        return damage
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        if ply.StoicismStacks and ply.StoicismStacks <= 0 then
            ply:Kill()
            NotifyPlayer(ply, "Your stoicism has been lost and your heart has failed.", 10, true)
        end
    end,

    OnSpawn = function(ply)
        ply.StoicismStacks = 500
        ply.Stoicism = true
    end
}

MURLOCK_PERKS["Withering Warlord"] = {
    description = "Power comes not from vitality, but from suffering. While your body remains whole your strikes are dulled. As your life fades, your strength grows monstrous. You deal -50% damage. Gain +1% damage per 1% missing HP.",
    icon = "https://www.imperiumgaming.net/perks/withering_warlord.png",

    OnDamageDealt = function(ply, dmg)

        local maxHealth = ply:GetMaxHealth()
        local health = ply:Health()

        local missingHealthPercent = 1 - (health / maxHealth)
        local damageMultiplier = 0.5 + missingHealthPercent

        local originalDamage = dmg
        local newDamage = originalDamage * damageMultiplier
        dmg = newDamage
        return dmg
    end
}

MURLOCK_PERKS["Planted Explosives"] = {
    description = "Death arms the charges embedded within you. The moment you fall, the explosives begin to beep faster and faster. After 10 seconds the charges detonate violently, triggering a chain of devastating explosions around your corpse.",
    icon = "https://www.imperiumgaming.net/perks/planted_explosives.png",

    OnDeath = function(ply)
        if not IsValid(ply) then return end

        local steamID = string.Replace(ply:SteamID(), ":", "_")
        local beepTimer = "PlantedExplosives_Beep_" .. steamID
        local boomTimer = "PlantedExplosives_Boom_" .. steamID

        timer.Remove(beepTimer)
        timer.Remove(boomTimer)

        local beeps = 0

        -- Beeping starts immediately and lasts 10 seconds
        timer.Create(beepTimer, 0.25, 40, function()
            if not IsValid(ply) then return end
            if ply:Alive() then
                timer.Remove(beepTimer)
                return
            end

            if not IsValid(ply.Ragdoll) then
                timer.Remove(beepTimer)
                return
            end

            beeps = beeps + 1


            local pitch = math.Clamp(80 + (beeps * 2), 80, 180)
            ply:EmitSound("buttons/blip2.wav", 75, pitch, 1, CHAN_AUTO)
        end)

        -- After 10 seconds trigger explosions
        timer.Simple(10, function()

            if not IsValid(ply) then return end
            if ply:Alive() then return end

            if not IsValid(ply.Ragdoll) then return end

            local basePos = ply.Ragdoll:GetPos()

            timer.Create(boomTimer, 0.5, 4, function()
                if not IsValid(ply) then return end
                if ply:Alive() then
                    timer.Remove(boomTimer)
                    return
                end

                local offset = Vector(math.random(-150,150), math.random(-150,150), math.random(0,60))
                local explosionPos = basePos + offset

                local effect = EffectData()
                effect:SetOrigin(explosionPos)
                util.Effect("Explosion", effect, true, true)

                sound.Play("BaseExplosionEffect.Sound", explosionPos, 100, math.random(95,105), 1)

                util.BlastDamage(ply, ply, explosionPos, 220, 1000)
            end)

            --deal 5000 explosion damage to all bots (player bots) 500 units around the corpse to BOTS
            local explosionRadius = 500
            local explosionDamage = 5000
            
            local bots = player.GetBots()
            for _, bot in ipairs(bots) do
                if not IsValid(bot) then continue end
                if bot:Alive() and bot:GetPos():Distance(ply.Ragdoll:GetPos()) <= explosionRadius then
                    local dmgInfo = DamageInfo()
                    dmgInfo:SetDamage(explosionDamage)
                    dmgInfo:SetAttacker(ply)
                    dmgInfo:SetInflictor(game.GetWorld())
                    dmgInfo:SetDamageType(DMG_BLAST)
                    bot:TakeDamageInfo(dmgInfo)
                end
            end

        end)
    end,

    OnSpawn = function(ply)
        local steamID = string.Replace(ply:SteamID(), ":", "_")

        timer.Remove("PlantedExplosives_Beep_" .. steamID)
        timer.Remove("PlantedExplosives_Boom_" .. steamID)
    end
}

MURLOCK_PERKS["Oath of the Marksmen"] = {
    description = "From a distance you make your mark. Targets within 1 meter take -100% damage. This penalty scales with distance, reaching +50% damage at 100 meters. (The farther you are, the more damage you deal, up to +50% at 100m or more. If you are within 1 meter of your target, you deal no damage.)",
    icon = "https://www.imperiumgaming.net/perks/oath_of_the_marksmen.png",

    OnDamageDealt = function(ply, dmg, target)
        if not IsValid(ply) or not IsValid(target) then return end
        if target == ply then return end

        local distance = ply:GetPos():Distance(target:GetPos())

        local minRange = 10
        local maxRange = 1000
        local t = math.Clamp((distance - minRange) / (maxRange - minRange), 0, 1)

        local damageModifier = Lerp(t, -1.0, 0.5)
        local newDamage = dmg * (1 + damageModifier)

        return math.max(newDamage, 0)
    end
}

MURLOCK_PERKS["Glass Cannon"] = {
    description = "You embrace absolute lethality at the cost of your own survival. Your attacks strike with devastating force, but your body shatters just as easily. You deal 50% more damage, but take 75% more damage from all sources.",
    icon = "https://www.imperiumgaming.net/perks/glass_cannon.png",

    OnDamageDealt = function(ply, dmg)
        local damage = dmg
        dmg = damage * 1.5
        return dmg
    end,

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        dmg = damage * 1.75
        return dmg
    end
}

MURLOCK_PERKS["Close Quarters Specialist"] = {
    description = "You are a master of close combat, thriving in the chaos of battle. Your attacks are more effective at close range, but lose potency as distance increases. You deal 50% more damage within 10 meters, but deal 75% less damage at 100 meters or more.",
    icon = "https://www.imperiumgaming.net/perks/close_quarters_specialist.png",

    OnDamageDealt = function(ply, dmg, target)
        if not IsValid(ply) or not IsValid(target) then return dmg end
        if target == ply then return dmg end

        -- Source units, not meters
        local closeRange = 10 * 39.37   -- 10 meters
        local farRange   = 100 * 39.37  -- 100 meters

        local distance = ply:WorldSpaceCenter():Distance(target:WorldSpaceCenter())

        local t = math.Clamp((distance - closeRange) / (farRange - closeRange), 0, 1)

        -- +50% at close range, -75% at far range
        local damageModifier = Lerp(t, 0.5, -0.75)

        local newDamage = dmg * (1 + damageModifier)
        return math.max(newDamage, 0)
    end
}

MURLOCK_PERKS["Barbarian"] = {
    description = "Your anger fuels your rage, without it you are nothing. Enables Fury. You lose 5 fury every second to a minimum of 1. +50% Damage Taken and -50% Damage Dealt. Every 10 stacks of fury grants +1% damage dealt and -1% damage taken, up to a maximum of 500 stacks (50% damage increase and 50% damage reduction).",
    icon = "https://www.imperiumgaming.net/perks/barbarian.png",

    OnDamageDealt = function(ply, dmg)
        local furyStacks = ply.FuryStacks or 0
        local damageModifier = 0.5 + (furyStacks * 0.002)
        local newDamage = dmg * damageModifier
        return math.max(newDamage, 0)
    end,

    OnDamageTaken = function(ply, dmg)
        local furyStacks = ply.FuryStacks or 0
        local damageModifier = 0.5 + (furyStacks * 0.002)
        local newDamage = dmg * (2 - damageModifier)
        return newDamage
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        if ply.FuryStacks and ply.FuryStacks > 1 then
            ply.FuryStacks = math.max(ply.FuryStacks - 5, 1)
        end
    end,

    OnSpawn = function(ply)
        ply.Fury = true
    end
}

MURLOCK_PERKS["Total Tranquility"] = {
    description = "You have achieved a state of perfect calm. You can no longer gain Fury. -50% Damage Dealt. Every second gain 10 stacks of Resolve and Stoicism, and Enable Each.",
    icon = "https://www.imperiumgaming.net/perks/total_tranquility.png",

    OnDamageDealt = function(ply, dmg)
        local damage = dmg
        dmg = damage * 0.5
        return dmg
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        ply.ResolveStacks = (ply.ResolveStacks or 0) + 10
        ply.StoicismStacks = (ply.StoicismStacks or 0) + 10
        ply.FuryStacks = 0
    end,

    OnSpawn = function(ply)
        ply.Resolve = true
        ply.Stoicism = true
    end
}

MURLOCK_PERKS["Trinity"] = {
    description = "You have achieved a perfect balance of heart, mind, and body. Every second gain 5 stacks of Resolve, Fury, and Stoicism, and Enable Each. You take an extra 33% Damage.",
    icon = "https://www.imperiumgaming.net/perks/trinity.png",

    Timer = function(ply)
        if not ply:Alive() then return end
        ply.ResolveStacks = (ply.ResolveStacks or 0) + 5
        ply.StoicismStacks = (ply.StoicismStacks or 0) + 5
        ply.FuryStacks = (ply.FuryStacks or 0) + 5
    end,

    OnSpawn = function(ply)
        ply.Fury = true
        ply.Resolve = true
        ply.Stoicism = true
    end,

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        dmg = damage * 1.33
        return dmg
    end
}

MURLOCK_PERKS["Bulwark"] = {
    description = "Your mind is a fortress, unyielding in the face of adversity. You can no longer gain Resolve. -50% Damage Dealt. Every second gain 10 stacks of Stoicism and Fury, and Enable Each.",
    icon = "https://www.imperiumgaming.net/perks/bulwark.png",

    OnDamageDealt = function(ply, dmg)
        local damage = dmg
        dmg = damage * 0.5
        return dmg
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        ply.StoicismStacks = (ply.StoicismStacks or 0) + 10
        ply.FuryStacks = (ply.FuryStacks or 0) + 10
        ply.ResolveStacks = 0
    end,

    OnSpawn = function(ply)
        ply.Fury = true
        ply.Stoicism = true
    end,
}

MURLOCK_PERKS["Resolved Fighter"] = {
    description = "Your resolve and fury fuels your unrelenting anger against the foe. You can no longer gain Stoicism. +50% Damage Taken. Every second gain 10 stacks of Resolve and Fury, and Enable Each.",
    icon = "https://www.imperiumgaming.net/perks/resolved_fighter.png",

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        dmg = damage * 1.5
        return dmg
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        ply.ResolveStacks = (ply.ResolveStacks or 0) + 10
        ply.FuryStacks = (ply.FuryStacks or 0) + 10
        ply.StoicismStacks = 0
    end,

    OnSpawn = function(ply)
        ply.Fury = true
        ply.Resolve = true
    end,
}

MURLOCK_PERKS["Determined Vitality"] = {
    description = "For as long as you have resolve, your body will never want to give up. You lose 25 health every second (to a minimum of 100). Gain 1 health per second for every 10 stacks of Resolve. When you're dealt damage, also take 25% of that as Resolve Damage. Spawn with 500 Resolve and enable it.",
    icon = "https://www.imperiumgaming.net/perks/determined_vitality.png",

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        local resolveDamage = damage * 0.25

        local currentResolve = ply.ResolveStacks or 0
        local newResolve = math.max(0, currentResolve - resolveDamage)
        ply.ResolveStacks = newResolve

        UpdatePlayersUniqueAttributes(ply)
    end,

    OnSpawn = function(ply)
        ply.Resolve = true
        ply.ResolveStacks = 500
    end,

    Timer = function(ply)
        if not ply:Alive() then return end

        local hp = ply:Health()
        local maxHp = ply:GetMaxHealth()
        local resolveStacks = ply.ResolveStacks or 0

        -- Lose 25 health per second, but never go below 100 from this effect
        if hp > 100 then
            hp = math.max(100, hp - 25)
        end

        -- Heal 1 health per second for every 10 Resolve stacks
        local regen = math.floor(resolveStacks / 10)
        if regen > 0 then
            hp = math.min(maxHp, hp + regen)
        end

        ply:SetHealth(hp)
    end
}

MURLOCK_PERKS["Stoic Will"] = {
    description = "Your will is unbreakable for as long as your mind is a fortress. You lose 25 shield every second. Gain 1 shield per second for every 10 stacks of Stoicism. When you're dealt damage, also take 25% of that as Stoicism Damage. Spawn with 500 Stoicism and enable it.",
    icon = "https://www.imperiumgaming.net/perks/stoic_will.png",

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        local stoicismDamage = damage * 0.25

        local currentStoicism = ply.StoicismStacks or 0
        local newStoicism = math.max(0, currentStoicism - stoicismDamage)
        ply.StoicismStacks = newStoicism

        UpdatePlayersUniqueAttributes(ply)
    end,

    OnSpawn = function(ply)
        ply.Stoicism = true
        ply.StoicismStacks = 500
    end,

    Timer = function(ply)
        if not ply:Alive() then return end

        local shield = ply:Armor()
        local maxShield = 500
        local stoicismStacks = ply.StoicismStacks or 0

        shield = math.max(0, shield - 25)

        local regen = math.floor(stoicismStacks / 10)
        if regen > 0 then
            shield = math.min(maxShield, shield + regen)
        end

        ply:SetArmor(shield)
    end
}

--- Warhammer 40k Specific Perks ---

MURLOCK_PERKS["Blank"] = {
    description = "You were born a Blank: a rare individual born without a soul. You are completely immune to all psychic powers, including Faith, Khornate abilities, and Capacitance, and you cannot hold any Aether. Psykers who come too close to you will have their Aether combust. You cannot gain shields, but your indomitable mortal will grants you 25% damage reduction.",
    icon = "https://www.imperiumgaming.net/perks/blank.png",
    Timer = function(ply)
        ply.MEV = 0
        ply:SetArmor(0)
        if not ply:Alive() then return end
        --all players (not bots) that have MEV greater than 500 do target.WarpFireTime = 15 ply.WarpFireCaster = ply. Also 50 units to the player:
        for _, target in ipairs(player.GetHumans()) do
            if not IsValid(target) then continue end
            if target == ply then continue end

            local distance = ply:GetPos():Distance(target:GetPos())
            
            if distance > 50 then continue end

            if target.MEV and target.MEV > 500 then
                target.WarpFireTime = 15
                target.WarpFireCaster = ply

                local effect = EffectData()
                effect:SetOrigin(target:GetPos())
                util.Effect("Explosion", effect, true, true)

                sound.Play("BaseExplosionEffect.Sound", target:GetPos(), 100, math.random(95,105), 1)

                local dmgInfo = DamageInfo()
                dmgInfo:SetDamage(50)
                dmgInfo:SetAttacker(ply)
                dmgInfo:SetInflictor(game.GetWorld())
                dmgInfo:SetDamageType(DMG_BLAST)
                target:TakeDamageInfo(dmgInfo)
            end
        end
    end,

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        dmg = damage * 0.75
        if attacker and attacker.pysker then dmg = 0 end
        return dmg
    end
}

if SERVER then

    util.AddNetworkString("MurlockPerks_UpdateBlankList")
    function SendBlankListToClient(ply,ListOfBlanks)
        net.Start("MurlockPerks_UpdateBlankList")
        net.WriteTable(ListOfBlanks)
        net.Send(ply)
    end


    timer.Create("BlankPerk_MEVCheck", 1, 0, function()
        local ListOfBlanks = {}
        for _, ply in ipairs(player.GetHumans()) do
            if not IsValid(ply) then continue end
            if DoesPlayerHavePerk(ply,"Blank") then
                table.insert(ListOfBlanks, ply)
            end
        end

        if ListOfBlanks and #ListOfBlanks > 0 then
            for _, ply in ipairs(player.GetHumans()) do
                if not IsValid(ply) then continue end
                if ply.MEV and ply.MEV > 500 then
                    SendBlankListToClient(ply, ListOfBlanks)
                end
            end
        end
    end)

end

if CLIENT then
    local blankList = blankList or {}

    net.Receive("MurlockPerks_UpdateBlankList", function()
        blankList = net.ReadTable() or {}
    end)

    hook.Add("PreDrawHalos", "MurlockPerks_DrawBlankHalos", function()
        if not blankList or #blankList <= 0 then return end

        local validBlanks = {}

        for _, ply in ipairs(blankList) do
            if IsValid(ply) and ply:IsPlayer() then
                local Distance = LocalPlayer():GetPos():Distance(ply:GetPos())
                --if distance is less than 500 units, draw a halo around them
                if Distance <= 500 then
                    table.insert(validBlanks, ply)
                end
            end
        end

        if #validBlanks > 0 then
            halo.Add(validBlanks, Color(102, 0, 143, 116), 2, 2, 1, true, true)
        end
    end)

    function IsPlayerABlank(ply)
        if not IsValid(ply) then return false end
        for _, blank in ipairs(blankList) do
            if blank == ply then return true end
        end
        return false
    end
end


MURLOCK_PERKS["Scavanger"] = {
    description = "You have a keen eye for battlefield salvage, spotting valuable scraps and forgotten trinkets others overlook. Where most see a corpse, you see opportunity. You take twice as long to loot bodies, carefully picking through gear and pockets, but your patience pays off, yielding double the credits.",
    icon = "https://www.imperiumgaming.net/perks/scavanger.png",
}

MURLOCK_PERKS["Warp Touched"] = {
    description = "Your soul is a conduit to the Warp. Power trickles into you unbidden, granting 5 Mana every second (up to 5000) Yet the Warp is treacherous and alive with malice. At times it lashes back, unleashing sudden and unavoidable perils.",
    icon = "https://www.imperiumgaming.net/perks/warp_touched.png",
    Timer = function(ply)
        if not ply:Alive() then return end

        if not ply.MEV then ply.MEV = 0 end
        if ply.MEV < 5000 then
            ply.MEV = ply.MEV + 5
        end

        --1 in 3000 chance to trigger a peril
        local roll = math.random(1, 3000)
        if roll == 67 then
            local perilList = table.GetKeys(MURLOCK_MAGIC.PERILS)
            local randomPeril = perilList[math.random(#perilList)]
            MURLOCK_MAGIC.PERILS[randomPeril].Effect(ply)
        end
    end
}

MURLOCK_PERKS["Living Conduit"] = {
    description = "Your body is a living conduit for Capacitance and Technomancy. As you move, energy builds within you, generating Capacitance up to 2000 and unleashing arcs of electricity into nearby hostile constructs. However, the power is volatile. When you are struck there is a chance your stored Capacitance violently discharges outward.",

    icon = "https://www.imperiumgaming.net/perks/living_conduit.png",

    --set cap to 0 on spawn
    OnSpawn = function(ply)
        ply:SetNWInt("Capacitance", 0)
    end,

    Timer = function(ply)
        if not ply:Alive() then return end

        local vel = ply:GetVelocity():Length()
        local cap = ply:GetNWInt("Capacitance", 0)

        if cap < 2000 then
            if vel > 50 then
                cap = cap + (vel * 0.1)
                ply:SetNWInt("Capacitance", cap)
            end
        end

        if cap < 100 then return end

        -- Arc electricity to hostile bots
        for _, bot in ipairs(player.GetBots()) do
            if not IsValid(bot) then continue end
            if not bot.IsHostile then continue end

            local dist = ply:GetPos():Distance(bot:GetPos())
            if dist > 500 then continue end

            local dmginfo = DamageInfo()
            dmginfo:SetDamage(250)
            cap = cap - 100
            dmginfo:SetDamageType(DMG_SHOCK)
            dmginfo:SetAttacker(ply)
            dmginfo:SetInflictor(ply)

            bot:TakeDamageInfo(dmginfo)

            local ZapSoundEffects = {
                "ambient/energy/weld2.wav",
                "ambient/energy/weld1.wav"
            }

            PlayEffectOnEntity(bot, "[1]_electro_beam", 1, Vector(0,0,40))
            bot:EmitSound(ZapSoundEffects[math.random(#ZapSoundEffects)], 75, 100, 1, CHAN_AUTO)
            ply:EmitSound("ambient/energy/zap"..math.random(1,4)..".wav", 75, 100, 1, CHAN_AUTO)
        end
        if cap < 0 then cap = 0 end
        ply:SetNWInt("Capacitance", cap)
    end,

    OnDamageTaken = function(ply, dmg)
        --25% chance
        local chance = math.random(1, 10) == 10

        if chance then
            local cap = ply:GetNWInt("Capacitance", 0)
            if cap <= 100 then return dmg end

            NotifyPlayer(ply, "Your stored Capacitance discharges violently!", 10, true)
            --deal 100 damage to the player
            local dmginfo = DamageInfo()
            dmginfo:SetDamage(100)
            dmginfo:SetDamageType(DMG_SHOCK)
            dmginfo:SetAttacker(ply)
            dmginfo:SetInflictor(ply)
            ply:TakeDamageInfo(dmginfo)
            PlayEffectOnEntity(ply, "[1]_electro_beam", 1, Vector(0,0,40))
            ply:EmitSound("ambient/energy/zap"..math.random(1,4)..".wav", 75, 100, 1, CHAN_AUTO)

            local dischargeRadius = 500

            for _, bot in ipairs(player.GetAll()) do
                if not IsValid(bot) then continue end

                local dist = ply:GetPos():Distance(bot:GetPos())
                if dist > dischargeRadius then continue end

                local dmginfo = DamageInfo()
                dmginfo:SetDamage(cap * 0.25)
                dmginfo:SetDamageType(DMG_SHOCK)
                dmginfo:SetAttacker(ply)
                dmginfo:SetInflictor(ply)

                bot:TakeDamageInfo(dmginfo)

                local ZapSoundEffects = {
                    "ambient/energy/weld2.wav",
                    "ambient/energy/weld1.wav"
                }

                PlayEffectOnEntity(bot, "[1]_electro_beam", 1, Vector(0,0,40))
                bot:EmitSound(ZapSoundEffects[math.random(#ZapSoundEffects)], 75, 90, 1, CHAN_AUTO)
                ply:EmitSound("ambient/energy/zap"..math.random(1,4)..".wav", 75, 100, 1, CHAN_AUTO)
            end

            ply:SetNWInt("Capacitance", 0)
        end

        return dmg
    end
}

local CorrosiveSounds = {
    "ambient/levels/canals/toxic_slime_sizzle2.wav",
    "ambient/levels/canals/toxic_slime_sizzle3.wav",
    "ambient/levels/canals/toxic_slime_sizzle4.wav"
}

MURLOCK_PERKS["Spook Manufacturer"] = {
    description = "You are a master of refining Spook and narcotics. As long as Spook remains in your inventory, you slowly process it into 'legal' drugs over time, with a rare chance of producing the far more potent 'Special Spook'.",
    icon = "https://www.imperiumgaming.net/perks/spook_manufacture.png",

    --GetAmountOfItemInInventory(ply,"item_441154")
    --RemoveItemFromInventory(ply, "item_441154", 1)
    Timer = function(ply)
        if not ply:Alive() then return end

        local spookCount = GetAmountOfItemInInventory(ply, "item_441154")
        if spookCount <= 0 then return end

        --7 in 67 chance
        local processChance = math.random(7, 67) == 67
        
        if processChance then
            RemoveItemFromInventory(ply, "item_441154", 1)

            local ProcessList = {"item_675493","item_712999","item_885580","item_630574","item_196961","item_655027"}
            local processedItem = ProcessList[math.random(#ProcessList)]
            local MetaData = INVENTORY_ITEMS[processedItem]
            local Name = MetaData.Name or "Unknown Item"

            AddItemToInventory(ply, processedItem, 1)
            NotifyPlayer(ply, "Your Spook has been processed into "..Name..".", 10, false)
            ply:EmitSound(table.Random(CorrosiveSounds), 35, 100, 1, CHAN_AUTO)
        end
    end
}

MURLOCK_PERKS["Drunkard"] = {
    description = "Years of battlefield drinking have left you dependent on the burn of alcohol. Without it your strikes are sluggish, dealing 25% less damage. With it in your veins, pain dulls and blows glance off you, reducing damage taken by 25%.",
    icon = "https://www.imperiumgaming.net/perks/Drunkard.png",

    --ply:GetNWInt("DrunkLevel", 0)

    OnDamageTaken = function(ply, dmg)
        local drunkLevel = ply:GetNWInt("DrunkLevel", 0)
        if drunkLevel <= 0 then
            return dmg * 0.75
        end
        return dmg
    end,

    OnDamageDealt = function(ply, dmg)
        local drunkLevel = ply:GetNWInt("DrunkLevel", 0)
        if drunkLevel <= 0 then
            return dmg
        else
            return dmg * 0.75
        end
    end

}

MURLOCK_PERKS["Faith is my Shield"] = {
    description = "Your devotion to the God-Emperor manifests as a barrier of pure faith. This divine protection absorbs all incoming damage in place of your armor, but you cannot gain conventional shields. However, such zeal leaves you exposed to mortal harm, causing you to suffer 50% more damage.",
    icon = "https://www.imperiumgaming.net/perks/faith_is_my_shield.png",

    OnSpawn = function(ply)
        ply:SetArmor(0)
    end,

    Timer = function(ply)
        if not ply:Alive() then return end
        ply:SetArmor(0)
    end,

    OnDamageTaken = function(ply, dmg)
        local faith = ply:GetNWInt("Faith", 0)

        dmg = dmg * 1.5

        if faith <= 0 then
            return dmg
        end

        local newFaith = math.max(0, faith - dmg)
        ply:SetNWInt("Faith", newFaith)

        if faith >= dmg then
            return 0
        end

        local remaining = dmg - faith
        return remaining
    end
}


MURLOCK_PERKS["Navis Imperialis"] = {
    description = "Your connections within the Navis Imperialis grant you the rare privilege of calling upon the Emperor’s wrath from the void above. You may request devastating orbital fire support, unleashing the fury of Imperial warships upon your enemies. The attention you draw makes you a prime target on the battlefield, causing you to suffer 25% increased damage.",
    icon = "https://www.imperiumgaming.net/perks/navy.png",
    OnSpawn = function(ply)
        ply:Give("weapon_meteorstorm")
    end,
    OnDamageTaken = function(ply, dmg)
        dmg = dmg * 1.25
        return dmg
    end
}

MURLOCK_PERKS["Armor of Contempt"] = {
    description = "Your armor is a manifestation of your utter disdain for the enemy. It grants you a 25% damage reduction, but its aggressive nature causes you to deal 25% less damage.",
    icon = "https://www.imperiumgaming.net/perks/armor_of_contempt.png",

    OnDamageTaken = function(ply, dmg)
        local damage = dmg
        dmg = damage * 0.75
        return dmg
    end,

    OnDamageDealt = function(ply, dmg)
        local damage = dmg
        dmg = damage * 0.75
        return dmg
    end
}

if SERVER then
    util.AddNetworkString("MurlockPerks_SendPenalMemberCount")
    function SendPenalMemberCount(ply, count)
        net.Start("MurlockPerks_SendPenalMemberCount")
        net.WriteInt(count, 8)
        net.Send(ply)
    end
else
    local nearbyPenals = nearbyPenals or 0

    net.Receive("MurlockPerks_SendPenalMemberCount", function()
        nearbyPenals = net.ReadInt(8)
    end)

    function GetNearbyPenalCount()
        return nearbyPenals
    end
    hook.Add("HUDPaint", "MurlockPerks_PenalMemberCountDisplay", function()
        local ply = LocalPlayer()
        if not IsValid(ply) then return end
        if ply:GetNWString("Role", "") ~= "DIVISION_8402215455" then return end
        if nearbyPenals <= 0 then return end

        local penalCount  = GetNearbyPenalCount() or 0
        local bonusStacks = math.Clamp(penalCount, 0, 10)
        local damageBonus = bonusStacks * 5
        local resistBonus = bonusStacks * 5
        local maxStacks   = bonusStacks >= 10

        local sh = ScrH()

        local boxW, boxH = 300, 110
        local x = 5
        local y = math.floor(sh * 0.5 - boxH * 0.5)
        local pad = 14

        local t         = CurTime()
        local pulse     = (math.sin(t * 2.8) + 1) * 0.5
        local fastPulse = (math.sin(t * 6) + 1) * 0.5

        local C = {
            bg         = Color(10,  6,   6,  230),
            border     = Color(140, 40,  20, 255),
            accent     = Color(255, 105, 25, 255),
            header     = Color(255, 90,  55, 255),
            text       = Color(255, 225, 190, 255),
            subText    = Color(220, 160, 110, 255),
            barBg      = Color(35,  18,  10, 255),
            barFill    = Color(255, 100, 20, 255),
        }

        local glowSize = 6
        for i = glowSize, 1, -1 do
            local a = math.floor((glowSize - i + 1) * (maxStacks and 9 or 5) * pulse)
            surface.SetDrawColor(255, 80, 20, a)
            surface.DrawOutlinedRect(x - i, y - i, boxW + i * 2, boxH + i * 2, 1)
        end

        draw.RoundedBox(4, x, y, boxW, boxH, C.bg)
        draw.RoundedBox(4, x, y, 5, boxH, Color(255, 105, 25, 200 + math.floor(pulse * 55)))

        surface.SetDrawColor(C.border)
        surface.DrawOutlinedRect(x, y, boxW, boxH, 1)

        local headerY = y + 15
        draw.SimpleText(
            "PENAL LEGION COHESION: " .. penalCount,
            "Imperium_RP_Char_Small",
            x + boxW * 0.5, headerY,
            maxStacks and Color(255, 55 + math.floor(fastPulse * 60), 40, 255) or C.header,
            TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER
        )

        surface.SetDrawColor(C.border)
        surface.DrawRect(x + pad, y + 28, boxW - pad * 2, 1)

        local statY = y + 44
        local halfW = (boxW - pad * 2 - 8) * 0.5

        local function DrawStat(label, value, sx, sy, w)
            draw.SimpleText(label, "Imperium_RP_Char_Small", sx + w * 0.5, sy, C.subText, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            draw.SimpleText(value, "Imperium_RP_Char_Small", sx + w * 0.5, sy + 13, C.text, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        end

        local leftX  = x + pad + 4
        local rightX = x + pad + 4 + halfW + 8

        DrawStat("DMG BONUS",  "+" .. damageBonus .. "%", leftX, statY, halfW)
        DrawStat("DMG RESIST", "+" .. resistBonus .. "%", rightX, statY, halfW)

        surface.SetDrawColor(C.border)
        surface.DrawRect(x + pad + halfW + 4, statY - 2, 1, 34)

        local barY  = y + boxH - 20
        local barTW = boxW - pad * 2 - 4
        local barH  = 7
        local barX  = x + pad + 2

        draw.RoundedBox(3, barX, barY, barTW, barH, C.barBg)

        local fillFrac = bonusStacks / 10
        local fillW    = math.max(fillFrac * barTW, bonusStacks > 0 and 4 or 0)
        local fillCol  = maxStacks
            and Color(255, 55 + math.floor(fastPulse * 60), 30, 255)
            or C.barFill

        draw.RoundedBox(3, barX, barY, math.floor(fillW), barH, fillCol)

        for i = 1, 9 do
            local tx = barX + math.floor(barTW * i / 10)
            surface.SetDrawColor(10, 6, 6, 160)
            surface.DrawRect(tx, barY, 1, barH)
        end

        surface.SetDrawColor(C.border)
        surface.DrawOutlinedRect(barX, barY, barTW, barH, 1)
    end)
end

MURLOCK_PERKS["Penal Gang Member"] = {
    description = "You have no loyalty to a distant Emperor. Survival and opportunity are all that matter. In the Penal Legion, you found those whos share your values. Your character will be unable to change from Penal Legion, however for every nearby penal trooper, you gain 5% increased damage and 5% damage resistance, stacking up to a maximum of 50%.",
    icon = "https://www.imperiumgaming.net/perks/penal.png",

    OnDamageTaken = function(ply, dmg)
        local nearbyPenals = ply.nearbyPenals or 0
        local damageModifier = 0.05 * nearbyPenals
        if damageModifier > 0.5 then damageModifier = 0.5 end
        local newDamage = dmg * (1 - damageModifier)
        return newDamage
    end,
    OnDamageDealt = function(ply, dmg)
        local nearbyPenals = ply.nearbyPenals or 0
        local damageModifier = 0.05 * nearbyPenals
        if damageModifier > 0.5 then damageModifier = 0.5 end
        local newDamage = dmg * (1 + damageModifier)
        return newDamage
    end,
    Timer = function(ply)
        if not ply:Alive() then return end

        local MyRole = ply:GetNWString("Role", "")
        if MyRole ~= "DIVISION_8402215455" then
            ChangePlayersRole("DIVISION_8402215455", ply)
            ply.nearbyPenals = 0
            return
        end

        local nearbyPenals = 0
        for _, target in ipairs(player.GetHumans()) do
            if not IsValid(target) then continue end
            if target == ply then continue end
            local Role = target:GetNWString("Role", "")
            if Role ~= "DIVISION_8402215455" then continue end

            local distance = ply:GetPos():Distance(target:GetPos())
            if distance <= 1500 then
                nearbyPenals = nearbyPenals + 1
            end
        end
        ply.nearbyPenals = nearbyPenals
        SendPenalMemberCount(ply, nearbyPenals)
    end,
    --on spawn set nearby to 0
    OnSpawn = function(ply)
        ply.nearbyPenals = 0
        SendPenalMemberCount(ply, 0)
    end
}
