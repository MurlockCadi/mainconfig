FACTION_TYPES["THE_OLD_WORLD"] = {
    STAGE = "FOR SIGMAR",
    DeathsByType = {},
    OffWorld = true,

    CreateOld = function(self, bot, elite)
        local health = GetHealthByTotalPlayers()
        local spawn_elite = elite

        if spawn_elite then
            bot.Elite = true
            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetNWString("Name", "Chaos Lord")
                bot:SetModel("models/nemeroth_chaos_lord1.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_daemonblade"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWBool("ShieldEnable", true)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetNWString("Description", "A mighty warlord who has ascended to near demigod status through dark pacts and unholy rituals.")
                health = math.max(health * 8, 4000)

            elseif roll <= 3 then
                bot:SetNWString("Name", "Glade Guard")
                bot:SetModel("models/dizcordum/wh/eldar/yuraine.mdl")
                bot.FightType = "hybrid"
                bot.weapon = "weapon_huntingbow"
                bot.meleeweapon = "cat_chaos_legacy_powersword"
                bot.ShootingSkill = 2
                bot:SetNWString("Description", "A wood elf tasked with defending the last remnants of the old world's forests, armed with a longbow and a razor-sharp sword.")
                health = math.max(health * 5, 1500)

            elseif roll <= 5 then
                bot:SetNWString("Name", "Black Orc")
                bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetColor(Color(72, 72, 72))
                bot:SetNWString("Description", "Biggest and strongest of the orcs, bred for war and brutality.")
                health = math.max(health * 5, 1500)
            
            elseif roll <= 10 then
                bot:SetNWString("Name", "Orc Boy")
                bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_poweraxe"
                bot:SetNWString("Description", "A common orc grunt, armed with a crude axe and eager to prove itself in battle.")
                health = math.max(health * 4, 600)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Goblin Spear")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "A small and sneaky goblin armed with a long spear, often used as skirmishers or cannon fodder by the orcs.")
                health = math.max(health * 3, 400)

            elseif roll <= 20 then
                bot:SetNWString("Name", "Goblin Archer")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_huntingbow"
                bot:SetNWString("Description", "A small goblin armed with a bow, providing ranged support for their larger orc allies.")
                health = math.max(health * 3, 400)

            elseif roll <= 25 then
                bot:SetNWString("Name", "Skavenslave")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.weapon = "cat_chaos_legacy_combatknife"
                bot:SetNWString("Description", "A cowardly and expendable minion of the dark gods, armed with a crude knife and desperate to prove its worth.")
                health = math.max(health * 2, 300)

            elseif roll <= 30 then
                bot:SetNWString("Name", "Rattling Gunner")
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot:SetNWString("Description", "A skaven gunner armed with a rattling firearm that spews a hail of bullets, providing suppressing fire for their allies.")
                health = math.max(health * 5, 1000)

            elseif roll <= 35 then
                bot:SetNWString("Name", "Priest of the Horned Rat")
                bot:SetModel("models/ulman/grey_seer.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A devout priest of the great horned rat, wielding dark magic to corrupt the enemies of the skaven.")
                health = math.max(health * 3, 500)

            elseif roll <= 36 then
                bot:SetNWString("Name", "BOMB RAT")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A skaven that has been strapped with explosives.")
                health = math.max(health * 2, 200)

            elseif roll <= 41 then
                bot:SetNWString("Name", "Dwarf Warrior")
                bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.weapon = "cat_chaos_legacy_poweraxe"
                bot:SetNWString("Description", "A seasoned dwarf warrior who has turned to the worship of dark gods, wielding a wicked axe and a grudge against the world.")
                health = math.max(health * 4, 800)

            elseif roll <= 46 then
                bot:SetNWString("Name", "Irondrake")
                bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
                bot.FightType = "flamer"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.weapon = "cat_chaos_legacy_flamer"
                bot:SetNWString("Description", "The irondrake is the pinnacle of dwarven craftsmanship, a master of fire and steel who unleashes a torrent of flame upon their enemies.")
                health = math.max(health * 4, 1000)

            elseif roll <= 51 then
                bot:SetNWString("Name", "Skeleton Spearman")
                bot:SetModel("models/h6/skelspearman.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "A skeleton warrior wielding a sharp spear, ready to charge into battle.")
                health = math.max(health * 3, 500)

            elseif roll <= 56 then
                bot:SetNWString("Name", "Skeleton Archer")
                bot:SetModel("models/h6/skelspearman.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_huntingbow"
                bot:SetNWString("Description", "A skeleton archer armed with a bow, providing ranged support for their skeletal allies.")
                health = math.max(health * 3, 500)

            elseif roll <= 61 then
                bot:SetNWString("Name", "High Elf Mage")
                bot:SetModel("models/dizcordum/wh/eldar/yuraine.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A high elf mage wielding powerful arcane spells.")
                health = math.max(health * 3, 500)
            
            elseif roll <= 66 then
                bot:SetNWString("Name", "Beastigor")
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                        timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot:SetNWString("Description", "A beastigor is a fearsome creature of the Beastmen, wielding a mighty battleaxe and charging into battle with unmatched fury.")
                health = math.max(health * 6, 1600)

            elseif roll <= 71 then
                bot:SetNWString("Name", "Saurus Spears")
                bot:SetModel("models/lizards/lizardmankazgulam.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "Saurus warriors armed with spears, fiercely defending their jungle temples.")
                health = math.max(health * 3, 500)

            elseif roll <= 76 then
                bot:SetNWString("Name", "Kroxigor")
                bot:SetModel("models/barbossa/nakai_the_wanderer/nakai_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                bot:SetNWString("Description", "Hulking and brutal, the Kroxigor is a monstrous beast that serves as shock troops of the Lizardmen.")
                health = math.max(health * 4, 1000)

            elseif roll <= 81 then
                bot:SetNWString("Name", "Bloodletter")
                bot:SetModel("models/bloodletter1.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                bot:SetNWString("Description", "A daemon of Khorne, the Bloodletter is a frenzied warrior that thirsts for blood and battle, wielding a wicked sword and charging headlong into combat.")
                health = math.max(health * 3, 600)
                
            elseif roll <= 84 then
                bot:SetNWString("Name", "Nurgling")
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A small and pestilent daemon of Nurgle, the Nurgling is a mischievous and resilient creature that swarms over its enemies with razor-sharp claws and a contagious aura of decay.")
                health = math.max(health * 2, 300)

            elseif roll <= 87 then
                bot:SetNWString("Name", "Tsangor")
                bot:SetModel("models/wk/tzaangors/wk_tzang.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Description", "A beastman corrupted by the influence of Tzeentch, the Tsangor is a twisted and unpredictable warrior.")
                health = math.max(health * 3, 600)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Keeper of Secrets")
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "A daemon of Slaanesh, the Keeper of Secrets is a seductive and deadly entity that lures its victims into a false sense of security before striking with razor-sharp claws and overwhelming speed.")
                health = math.max(health * 3, 600)

            elseif roll <= 95 then
                bot:SetNWString("Name", "Priest of Sigmar")
                bot:SetModel("models/dizcordum/wk/ecclesiarchy/priest.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A devout priest of Sigmar, wielding holy magic to smite the enemies of the old world.")
                health = math.max(health * 3, 500)

            elseif roll <= 100 then
                bot:SetNWString("Name", "Marauders")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_chainsword"
                bot:SetNWString("Description", "Marauders are savage and brutal warriors who have pledged themselves to the dark gods, wielding crude weapons and reveling in chaos and destruction.")
                health = math.max(health * 3, 600)

            end

        else
            local roll = math.random(1, 100)

            if roll <= 1 then
                bot:SetNWString("Name", "Chaos Lord")
                bot:SetModel("models/nemeroth_chaos_lord1.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_daemonblade"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot:SetNWBool("ShieldEnable", true)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
                bot:SetNWString("Description", "A mighty warlord who has ascended to near demigod status through dark pacts and unholy rituals.")
                health = math.max(health * 7, 3500)

            elseif roll <= 3 then
                bot:SetNWString("Name", "Glade Guard")
                bot:SetModel("models/dizcordum/wh/eldar/yuraine.mdl")
                bot.FightType = "hybrid"
                bot.weapon = "weapon_huntingbow"
                bot.meleeweapon = "cat_chaos_legacy_powersword"
                bot.ShootingSkill = 2
                bot:SetNWString("Description", "A wood elf tasked with defending the last remnants of the old world's forests, armed with a longbow and a razor-sharp sword.")
                health = math.max(health * 4, 1500)

            elseif roll <= 5 then
                bot:SetNWString("Name", "Black Orc")
                bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.5, 0)
                    end
                end)
             bot:SetColor(Color(72, 72, 72))
                bot:SetNWString("Description", "Biggest and strongest of the orcs, bred for war and brutality.")
                health = math.max(health * 4, 1500)
            
            elseif roll <= 10 then
                bot:SetNWString("Name", "Orc Boy")
                bot:SetModel("models/barbossa/orc_laborer/orc_laborer_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_poweraxe"
                bot:SetNWString("Description", "A common orc grunt, armed with a crude axe and eager to prove itself in battle.")
                health = math.max(health * 3, 600)

            elseif roll <= 15 then
                bot:SetNWString("Name", "Goblin Spear")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "A small and sneaky goblin armed with a long spear, often used as skirmishers or cannon fodder by the orcs.")
                health = math.max(health * 2, 400)

            elseif roll <= 20 then
                bot:SetNWString("Name", "Goblin Archer")
                bot:SetModel("models/barbossa/snotling/snotling_pm.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_huntingbow"
                bot:SetNWString("Description", "A small goblin armed with a bow, providing ranged support for their larger orc allies.")
                health = math.max(health * 2, 400)

            elseif roll <= 25 then
                bot:SetNWString("Name", "Skavenslave")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot.weapon = "cat_chaos_legacy_combatknife"
                bot:SetNWString("Description", "A cowardly and expendable minion of the dark gods, armed with a crude knife and desperate to prove its worth.")
                health = math.max(health * 1, 300)

            elseif roll <= 30 then
                bot:SetNWString("Name", "Rattling Gunner")
                bot:SetModel("models/ulman/skv_eshin.mdl")
                bot.FightType = "shooting"
                bot.weapon = "murlock_rapid_fire"
                bot:SetNWString("Description", "A skaven gunner armed with a rattling firearm that spews a hail of bullets, providing suppressing fire for their allies.")
                health = math.max(health * 4, 1000)

            elseif roll <= 35 then
                bot:SetNWString("Name", "Priest of the Horned Rat")
                bot:SetModel("models/ulman/grey_seer.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A devout priest of the great horned rat, wielding dark magic to corrupt the enemies of the skaven.")
                health = math.max(health * 2, 500)

            elseif roll <= 36 then
                bot:SetNWString("Name", "BOMB RAT")
                bot:SetModel("models/ulman/clan_rat_1.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(.5, 0)
                    end
                end)
                bot.weapon = "cat_custom_meltabomb"
                bot:SetNWString("Description", "A skaven that has been strapped with explosives.")
                health = math.max(health * 1, 200)

             elseif roll <= 41 then
                bot:SetNWString("Name", "Dwarf Warrior")
                bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
                bot.FightType = "melee"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.weapon = "cat_chaos_legacy_poweraxe"
                bot:SetNWString("Description", "A seasoned dwarf warrior who has turned to the worship of dark gods, wielding a wicked axe and a grudge against the world.")
                health = math.max(health * 3, 800)

            elseif roll <= 46 then
                bot:SetNWString("Name", "Irondrake")
                bot:SetModel("models/knight_ig/muschi_ig_squat.mdl")
                bot.FightType = "flamer"
                bot:SetRunSpeed(200)
                bot:SetWalkSpeed(200)
                bot.weapon = "cat_chaos_legacy_flamer"
                bot:SetNWString("Description", "The irondrake is the pinnacle of dwarven craftsmanship, a master of fire and steel who unleashes a torrent of flame upon their enemies.")
                health = math.max(health * 3, 1000)

            elseif roll <= 51 then
                bot:SetNWString("Name", "Skeleton Spearman")
                bot:SetModel("models/h6/skelspearman.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "A skeleton warrior wielding a sharp spear, ready to charge into battle.")
                health = math.max(health * 2, 500)

            elseif roll <= 56 then
                bot:SetNWString("Name", "Skeleton Archer")
                bot:SetModel("models/h6/skelspearman.mdl")
                bot.FightType = "shooting"
                bot.weapon = "weapon_huntingbow"
                bot:SetNWString("Description", "A skeleton archer armed with a bow, providing ranged support for their skeletal allies.")
                health = math.max(health * 2, 500)

            elseif roll <= 61 then
                bot:SetNWString("Name", "High Elf Mage")
                bot:SetModel("models/dizcordum/wh/eldar/yuraine.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A high elf mage wielding powerful arcane spells.")
                health = math.max(health * 2, 500)
            
            elseif roll <= 66 then
                bot:SetNWString("Name", "Beastigor")
                bot:SetModel("models/dizcordum/wk/dizcordum/inq/godrik_kozlotaur.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                        timer.Simple(1, function() 
                    if IsValid(bot) then
                        bot:SetModelScale(1.2, 0)
                    end
                end)
                bot:SetNWString("Description", "A beastigor is a fearsome creature of the Beastmen, wielding a mighty battleaxe and charging into battle with unmatched fury.")
                health = math.max(health * 5, 1600)

            elseif roll <= 71 then
                bot:SetNWString("Name", "Saurus Spears")
                bot:SetModel("models/lizards/lizardmankazgulam.mdl")
                bot.FightType = "melee"
                bot.weapon = "iron_spear"
                bot:SetNWString("Description", "Saurus warriors armed with spears, fiercely defending their jungle temples.")
                health = math.max(health * 2, 500)

            elseif roll <= 76 then
                bot:SetNWString("Name", "Kroxigor")
                bot:SetModel("models/barbossa/nakai_the_wanderer/nakai_pm.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerbattleaxe"
                bot:SetNWString("Description", "Hulking and brutal, the Kroxigor is a monstrous beast that serves as shock troops of the Lizardmen.")
                health = math.max(health * 3, 1000)

            elseif roll <= 81 then
                bot:SetNWString("Name", "Bloodletter")
                bot:SetModel("models/bloodletter1.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordkhorne"
                bot:SetNWString("Description", "A daemon of Khorne, the Bloodletter is a frenzied warrior that thirsts for blood and battle, wielding a wicked sword and charging headlong into combat.")
                health = math.max(health * 2, 600)
                
            elseif roll <= 84 then
                bot:SetNWString("Name", "Nurgling")
                bot:SetModel("models/wk/nurglit/wk_nuglin.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetNWString("Description", "A small and pestilent daemon of Nurgle, the Nurgling is a mischievous and resilient creature that swarms over its enemies with razor-sharp claws and a contagious aura of decay.")
                health = math.max(health * 1, 300)

            elseif roll <= 87 then
                bot:SetNWString("Name", "Tsangor")
                bot:SetModel("models/wk/tzaangors/wk_tzang.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_powerswordtzeentch"
                bot:SetNWString("Description", "A beastman corrupted by the influence of Tzeentch, the Tsangor is a twisted and unpredictable warrior.")
                health = math.max(health * 2, 600)

            elseif roll <= 90 then
                bot:SetNWString("Name", "Keeper of Secrets")
                bot:SetModel("models/ulman/nkari_demoman.mdl")
                bot.FightType = "melee"
                bot.weapon = "murlock_melee"
                bot:SetRunSpeed(300)
                bot:SetWalkSpeed(300)
                bot:SetNWString("Description", "A daemon of Slaanesh, the Keeper of Secrets is a seductive and deadly entity that lures its victims into a false sense of security before striking with razor-sharp claws and overwhelming speed.")
                health = math.max(health * 2, 600)

            elseif roll <= 95 then
                bot:SetNWString("Name", "Priest of Sigmar")
                bot:SetModel("models/dizcordum/wk/ecclesiarchy/priest.mdl")
                bot.FightType = "shooting"
                bot.weapon = "cat_chaos_legacy_sorcererstaff"
	            bot:SetNWBool("ShieldEnable", true)
                bot:SetNWString("Description", "A devout priest of Sigmar, wielding holy magic to smite the enemies of the old world.")
                health = math.max(health * 2, 500)

	        elseif roll <= 100 then
                bot:SetNWString("Name", "Marauders")
                bot:SetModel("models/wk/cult/cul_cap.mdl")
                bot.FightType = "melee"
                bot.weapon = "cat_chaos_legacy_chainsword"
                bot:SetNWString("Description", "Marauders are savage and brutal warriors who have pledged themselves to the dark gods, wielding crude weapons and reveling in chaos and destruction.")
                health = math.max(health * 2, 600)
        end
	end
        bot:SetNWString("Status", "THE_OLD_WORLD")
        bot:StripWeapons()
        RandomonizeBodygroupsAndSkins(bot)
        bot.IsHostile = true
        bot.GoneMad = true
        bot:SetNWString("MAX_HEALTH", health)
        bot:SetMaxHealth(health)
        bot:SetHealth(health)
        SpawnHostileBot(bot)
    end,

    Think = function(self)
        if BOT_INVASION ~= "THE_OLD_WORLD" then return end
        for _, bot in ipairs(player.GetBots()) do
            if bot:GetNWString("Status") ~= "THE_OLD_WORLD" then
                self:CreateOld(bot, ALWAYS_SPAWN_ELITES)
            end
        end
    end,
}
