settings {
    "main": {
        "description": "Embrace the chaos! Each death you get a choice between 3 random buffs drawn from a pool of 70, and you'll only find rarer items as the game goes on! First to 30 score wins, by any means necessary.\n\nMade by Dudeguypal\nInspired by PotatoGrant's \"RogueRPG\"",
        "modeName": "ROGUELIKE DEATHMATCH"
    },
    "lobby": {
        "enableMatchVoiceChat": true,
        "ffaSlots": 10
    },
    "gamemodes": {
        "ffa": {
            "disabledMaps": [
                "chateauGuillardHalloween",
                "hanamuraWinter",
                "havana",
                "hollywoodHalloween",
                "kingsRow",
                "kingsRowWinter",
                "lijiangControlCenter",
                "lijiangControlCenterLny",
                "lijiangGarden",
                "lijiangGardenLny",
                "lijiangNightMarket",
                "lijiangNightMarketLny",
                "malevento",
                "nepalSanctum",
                "nepalShrine",
                "nepalVillage",
                "petra",
                "workshopChamber",
                "workshopExpanse",
                "workshopExpanseNight",
                "workshopGreenScreen",
                "workshopIslandNight"
            ]
        },
        "general": {
            "enablePerks": true,
            "gamemodeStartTrigger": "immediately",
            "healthPackRespawnTime%": 70,
            "heroLimit": "off",
            "respawnTime%": 20,
            "scoreToWin": 50,
            "enableSelfInitiatedRespawn": false,
            "spawnHealthPacks": "enabled",
            "tankPassiveHealthBonus": "disabled"
        }
    },
    "workshop": {
        "Items Per Selection": 2,
        "Starting Reroll Tokens": 25
    }
}

#Global variables

globalvar txbypass 0
globalvar gamemode 1
globalvar editOdds 2
globalvar Goldrates 3
globalvar nothings 4
globalvar removeorb 5
globalvar pickuparray 6
globalvar pickupvalue 7
globalvar pickupeffects 8
globalvar White 9
globalvar RarityColors 10
globalvar Subtext 11
globalvar CommonItems 12
globalvar UncommonItems 13
globalvar RareItems 14
globalvar LegendaryItems 15
globalvar MythicItems 16
globalvar CorruptItems 17
globalvar rerollstring 18
globalvar ItemOdds 19
globalvar paralleluniverse 20
globalvar chaositemlist 21
globalvar HUDloop 22
globalvar buggies 23
globalvar duplicateloop 24


#Player variables

playervar Items 0
playervar rerolls 1
playervar diplopia 2
playervar healreceived 3
playervar CDRflat 4
playervar CDRpercentage 5
playervar gravity 6
playervar goldtarget 7
playervar HudColor 8
playervar statchangehud 9
playervar damage 10
playervar speed 11
playervar healthbuff 12
playervar size 13
playervar regen 14
playervar meleedamage 15
playervar pickuprange 16
playervar victorysword 17
playervar Reveal1 18
playervar Reveal2 19
playervar inSelection 20
playervar camerapos 21
playervar selector 22
playervar canSelect 23
playervar buttonpos 24
playervar CorruptionEffs 25
playervar queuedselections 26
playervar SelectionVisibility 27
playervar options 28
playervar buttoncolors 29
playervar projspd 30
playervar knockback 31
playervar gold 32
playervar buttonangles 33
playervar Guarantee 34
playervar normalize 35
playervar TIX 36
playervar onhitlist 37
playervar C_EnergyCell 38
playervar CorruptItems 39
playervar ammo 40
playervar opportunist 41
playervar monke 42
playervar EXPLOOSION 43
playervar C_Greed 44
playervar CurrentOdds 45
playervar randomizer 46
playervar bigarray 47
playervar AnimLoop 48
playervar camerafacing 49
playervar pickpocket 50
playervar clover 51
playervar burn 52
playervar pickup 53
playervar pickuproutine 54
playervar CollectLoop 55
playervar electricboogaloo 56
playervar itemeffs 57
playervar C_Armamentify 58
playervar urbanevasion 59
playervar alchemy 60
playervar lightningbug 61
playervar zoltan 62
playervar binversion 63
playervar C_Martyrdom 64
playervar multiplicativestack 65
playervar cloverloop 66
playervar ukulele 67
playervar hopoo 68
playervar scepter 69


#Subroutine names

subroutine itemlist 0
subroutine GM_CLASSIC 1
subroutine GM_PU 2
subroutine GM_CHAOS 3
subroutine Start_Selection 4
subroutine finishSelection 5
subroutine disableinputs 6
subroutine processItems 7
subroutine activateitems 8
subroutine Corruptactivate 9
subroutine stats 10
subroutine itemrandomizer 11
subroutine placebuttons 12
subroutine onSpawn 13
subroutine onReclamation 14
subroutine onPickup 15
subroutine cdrother 16
subroutine wiredfunds 17
subroutine ukulele 18
subroutine armamentify 19
subroutine xray 20
subroutine opportunist 21
subroutine gungeon 22
subroutine crouchitems 23
subroutine payingdividends 24
subroutine alchemy 25
subroutine hopoo 26
subroutine blast 27
subroutine waxquail 28
subroutine trollbomb 29
subroutine critsomallos 30
subroutine crit 31
subroutine asbestos 32
subroutine supersucker 33
subroutine uranium 34
subroutine victorysword 35
subroutine lightningbug 36
subroutine backupgenerator 37
subroutine zoltanshield 38
subroutine scepter 39
subroutine box 40
subroutine IAMHERE 41
subroutine bioticinversion 42
subroutine party 43
subroutine godrim 44
subroutine CorruptSelection 45
subroutine CorruptFinish 46
subroutine CorruptRandomizer 47
subroutine C_CurlyFries 48
subroutine C_EnergyCell 49
subroutine C_MoonShoes 50
subroutine C_Martyrdom 51
subroutine C_Minimize 52
subroutine C_blast 53


#Activated extensions

#!extension explosionSounds
#!extension playMoreEffects
#!extension projectiles


#Only remove the following directive if the gamemode does not use tricks such as A+0, A*0, "am" == "**", etc which would otherwise be optimized out.
#!optimizeStrict


rule "TX Bypass by Zezombye":
    createDummy(getAllHeroes(), hostPlayer, false, null, null)
    getLastCreatedEntity().startForcingName("______________________________________________________________________________________________________________________________〼")
    txbypass = getLastCreatedEntity()[0].split([])
    getLastCreatedEntity().startForcingName("______________________________________________________________________________________________________________________________ࡀ")
    txbypass = "______________________________________________________________________________________________________________________________〼".replace(txbypass, getLastCreatedEntity()[0]).substring(126, true)
    destroyAllDummies()


rule "Config":
    gamemode = createWorkshopSettingEnum("[Gamemode]", "Current Game Mode\udb40\udc3b", 0, ["[Classic] No changes.", "[Parallel Universe] Items have randomized rarities.", "[Ultra Chaos] Only Low-Poly Box."])
    editOdds = [createWorkshopSettingInt("Config", "Common Item Odds \udb40\udc28%\udb40\udc29", 100, 0, 1000, 1), createWorkshopSettingInt("Config", "Uncommon Item Odds \udb40\udc28%\udb40\udc29", 100, 0, 1000, 2), createWorkshopSettingInt("Config", "Rare Item Odds \udb40\udc28%\udb40\udc29", 100, 0, 1000, 3), createWorkshopSettingInt("Config", "Legendary Item Odds \udb40\udc28%\udb40\udc29", 100, 0, 1000, 4), 100, -100 if createWorkshopSettingBool("Config", "Disable Mythic Items", false, 5) else 0]
    Goldrates = [4, 7]
    #Gamemode: Classic
    if gamemode == 0:
        hudSubheader(getAllPlayers(), "Gamemode: [{0}Classic{1}]".format("{0}fg719ab8FF>".format(txbypass), "{0}fgFFFFFFFF>".format(txbypass)), HudPosition.LEFT, -99, Color.WHITE, HudReeval.VISIBILITY)
        async(GM_CLASSIC, AsyncBehavior.NOOP)
    elif gamemode == 1:
        hudSubheader(getAllPlayers(), "Gamemode: [{0}Parallel Universe{1}]\n{2}Items have randomized rarities.".format("{0}fgff8210FF>".format(txbypass), "{0}fgFFFFFFFF>".format(txbypass), "{0}fg848c8cF0>".format(txbypass)), HudPosition.LEFT, -99, Color.WHITE, HudReeval.VISIBILITY)
        async(GM_PU, AsyncBehavior.NOOP)
    elif gamemode == 2:
        hudSubheader(getAllPlayers(), "Gamemode: [{0}Ultra Chaos{1}]\n{2}Every item is Low-Poly Box.".format("{0}fgc6007cFF>".format(txbypass), "{0}fgFFFFFFFF>".format(txbypass), "{0}fg848c8cF0>".format(txbypass)), HudPosition.LEFT, -99, Color.WHITE, HudReeval.VISIBILITY)
        async(GM_CHAOS, AsyncBehavior.NOOP)
    #Nothing
    nothings = ["Nothing;{0};;5;No item could be generated".format(iconString(Icon.NO)), "Nothing;{0};;5;No item could be generated".format(iconString(Icon.NO)), "Nothing;{0};;5;No item could be generated".format(iconString(Icon.NO))]
    waitUntil(isAssemblingHeroes(), 99999)
    setMatchTime(10)


def itemlist():
    @Name "# Item List"
    
    removeorb = []
    pickuparray = []
    pickupvalue = []
    pickupeffects = []
    White = "{0}fg45FF57FF>".format(txbypass)
    #[Rarity Colors] 0.Common, 1.Uncommon, 2.Rare, 3.Legendary, 4.Mythic, 5.Corrupted, 7.Reroll
    RarityColors = ["fg00EAEAF0>", "fg00E697F3>", "fgFF3291F9>", "fgEC9900FF>", "fgFFFFFFFF>", "fgC80013FF>", 
    "fgFFFFFFFF>", "fg00cc66FF>"]
    #[Subtext] 1.Gold, 2.Pickup, 3.Burn, 4.Multiplicative, 5.Buggy, 6.Blurry, 7.Mythic, 8.Reroll, 9.Corrupted
    Subtext = [" \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d", 
    "( {0}fgd8d12dFF>Gold{0}fgFFFFFFFF>: Upon reaching a certain amount, gain 1 Score )".format(txbypass), 
    "( {0}fg92b938FF>Pickup{0}fgFFFFFFFF>: Refers to the orbs you see around the map )".format(txbypass), 
    "( {0}fgf0a20eFF>Burn{0}fgFFFFFFFF>: Deals 15% current HP damage every second )".format(txbypass), 
    "( {0}fgFFFFFFFF>This item stacks {0}fg54d1efFF>multiplicatively{0}fgFFFFFFFF> )".format(txbypass), 
    "( {0}fgea1b1bFF>WARNING{0}fgFFFFFFFF>: This item may not work as intended due to workshop bugs{0}fgFFFFFFFF> )".format(txbypass), 
    "( {0}fgea1b1bFF>WARNING{0}fgFFFFFFFF>: This item is blurry{0}fgFFFFFFFF> )".format(txbypass), 
    "( {0}@Mythic{0}fgFFFFFFFF>: This item can only be taken once{0}fgFFFFFFFF> )".format(txbypass), 
    "( {0}fg00cc66FF>Re-roll{0}fgFFFFFFFF>: Gain 3 re-roll tokens per kill )".format(txbypass), 
    "( {0}fgC80013FF>Corrupted{0}fgFFFFFFFF>: All future copies of this item become Corrupt{0}fgFFFFFFFF> )".format(txbypass)]
    #[Common] Items
    CommonItems = ["High Caliber;{0};;0;+15% Damage".format("{0}TX C0000000004f73a>".format(txbypass)), 
    "Boots;{0};;0;+8% Speed".format("{0}TX C0000000002A9FA>".format(txbypass)), 
    "Hamburger;{0};;0;+35% MaxHP".format("{0}TX C0000000005e463>".format(txbypass)), 
    "Aerodynamics;{0};;0;+50% Projectile Speed".format("{0}TX C0000000002A9f1>".format(txbypass)), 
    "Nanomachines;{0};;0;Restore +10 HP every second".format("{0}TX C0000000004f73f>".format(txbypass)), 
    ##"Slam Club;{0};;0;+10 Quick Melee Damage".format(abilityIconString(Hero.DOOMFIST, Button.SECONDARY_FIRE)), 
    "Wired Funds;{0}TX C00000000044B59>;0;0;Gain +2 Gold every 2 seconds".format(txbypass), 
    "Gluttony;{0}TX C0000000005e4d6>;00;0;Pickups restore +20 HP".format(txbypass)]
    #[Uncommon] Items
    UncommonItems = ["Curly Fries;{0};;1;Gain +110 temporary HP when you spawn".format("{0}TX C00000000049482>".format(txbypass)), 
    "Blood Favour;{0};;1;On kill, gain +15% Ult Charge".format("{0}TX C0000000004f741>".format(txbypass)), 
    "Energy Cell;{0}TX C0000000005f9bc>;00;1;Pickups reduce your CDs by +1s".format(txbypass), 
    "Storm Cell;{0}TX C000000000468d1>;00;1;Pickups give +3% Ult Charge".format(txbypass), 
    "Greed;{0}TX C00000000003fcf>;00;1;+100% Pickup Range".format(txbypass), 
    "Ukulele;{0}TX C0000000005e4dc>;;1;Your damage chains to +1 nearby enemies. 4s CD".format(txbypass), 
    "Moon Shoes;{0}TX C0000000004E37B>;0000;1;-30% Gravity".format(txbypass), 
    "Martyrdom;{0}TX C0000000005e482>;;1;When killed, drop a grenade that deals +100 damage".format(txbypass), 
    "Burny Stuff;{0}TX C0000000004947a>;000;1;On hit, inflict Burn for +1 second(s)".format(txbypass), 
    "Armamentify;{0}TX C0000000004f73e>;;1;+50 Armor".format(txbypass), 
    "X-Ray Goggles;{0};;1;You can see enemies within +10m through walls".format(abilityIconString(Hero.WINSTON, Button.ULTIMATE)), 
    "Opportunist;{0}TX C0000000000AFBF>;;1;You can see enemies below 25(+10)% HP through walls".format(txbypass), 
    "Gungeon Pepper;{0}TX C0000000005e4cf>;;1;You deal +12 DPS to nearby enemies".format(txbypass), 
    "Sticky Fingers;{0}TX C0000000002a9f4>;0;1;When Reclamation occurs, retain +8% of your Gold".format(txbypass), 
    "Minimize;{0}TX C000000000221ac>;;1;Become +15% smaller while crouched".format(txbypass), 
    "Urban Evasion;{0}TX C0000000002a9fc>;;1;Move +35% faster while crouched".format(txbypass), 
    "Alchemy Machine;{0}TX C00000000049478>;0;1;For each 1% Ult Charge you gain, gain +1 Gold".format(txbypass), 
    "The Whopper;{0}TX C00000000004122>;00000;1;+100% Max Ammo".format(txbypass), 
    "Hopoo Feather;{0}TX C000000000012f6>;;1;+1 extra jump(s)".format(txbypass), 
    "Alien Head;{0}TX C00000000013502>;00000;1;-1s Cooldowns".format(txbypass), 
    "BUP;{0}TX C00000000003e7a>;;1;+50% Knockback".format(txbypass), 
    "Blasting Staff;{0}TX C0000000000f448>;;1;Quick Melee creates a 6(+3)m explosion".format(txbypass), 
    "Kinetic Converter;{0}TX C0000000001bd59>;;1;Quick Melee knocks you and the target away from each other with +15 force".format(txbypass), 
    "Corrupted Key;{0}TX C0000000005E4C0>;;5;Choose a Corrupted item".format(txbypass)]
    #[Rare] Items
    RareItems = ["Troll Bomb;{0}TX C00000000004e54>;;2;On hit, +10% chance to throw a knockback bomb. 0.5s CD".format(txbypass), 
    "Critsomallos;{0}TX C0000000000d076>;;2;+15% chance to convert a bodyshot into a Crit".format(txbypass), 
    "Fireworks;{0}TX C00000000011dfa>;00;2;Pickups launch a +60-damage homing missile at the nearest enemy".format(txbypass), 
    "Uranium Rod;{0}TX C00000000013521>;;2;Every 3s, deals your Ult Charge (+10) as damage to nearby enemies".format(txbypass), 
    "Super Sucker;{0}TX C00000000011d5c>;;2;Damaging an enemy from >20(-4)m knocks them towards you. 4s CD".format(txbypass), 
    "Glass;{0}TX C00000000021569>;;2;+50% Damage, -80% maxHP".format(txbypass), 
    "T O N K;{0}TX C00000000003380>;;2;+100% maxHP, -40% Damage".format(txbypass), 
    "Horse Pill;{0}TX C0000000004516d>;;2;+20% Speed, -30% maxHP".format(txbypass), 
    "Fae Exile;{0}TX C0000000005e4f7>;;2;Quick Melee teleports the target to a random location +15m away".format(txbypass), 
    "Paying Dividends;{0}TX C00000000044b5b>;0;2;Add +5% to your Gold (rounded up) every 3 seconds".format(txbypass), 
    "Backup Generator;{0}TX C0000000005e487>;;2;While above 70(-10)% Ult Charge, gain 3% every second".format(txbypass), 
    "P.H.D;{0}TX C000000000144a6>;;2;Spawn with +5% Ult Charge for each Green item you have".format(txbypass), 
    "Lightning Bug;{0}TX C0000000004980f>;;2;Occasionally buffs your Damage by +100% for 1s".format(txbypass), 
    ##"Victory Sword;{0}TX C00000000004e94>;;2;When Quick Melee hits an enemy it gains +20 damage for 5s".format(txbypass), 
    "Pocket Watch;{0}TX C000000000012ff>;0000;2;-25% CDs".format(txbypass), 
    "Wax Quail;{0}TX C00000000028fcc>;;2;Propel yourself forward with +5 force when you jump".format(txbypass), 
    ##"Pickpocket;{0}TX C00000000043efe>;0;2;Quick Melee steals +20 Gold from the target".format(txbypass), 
    "Asbestos;{0}TX C00000000017efc>;;2;On hit, deal +30 additional damage over 6s. 1s CD".format(txbypass), 
    "Wormhole;{0};00;2;Pickups teleport you to a random location +10m away".format(abilityIconString(Hero.SIGMA, Button.ABILITY_1))]
    #[Legendary] Items
    LegendaryItems = ["Golden Ticket;{0}TX C000000000468cb>;0000;3;Doubles the next non-Mythic item you receive".format(txbypass), 
    "Wholesome Chungus;{0}TX C00000000017112>;;3;+160% maxHP, +20% Size".format(txbypass), 
    "Diplopia;{0};;3;When an item creates a projectile, create 2(+1) instead".format(abilityIconString(Hero.SIGMA, Button.PRIMARY_FIRE)), 
    "Biotic Inversion;{0}TX C0000000005e496>;;3;+50% of all healing you produce is dealt to nearby enemies as damage".format(txbypass), 
    "EXPLOOOSION;{0}TX C00000000049441>;;3;Explosions made by items are +100% bigger".format(txbypass), 
    "Primary Expertise;{0}TX C0000000000d075>;0000;3;Doubles all Blue items. You are more likely to find Blue items".format(txbypass), 
    "Artifact Printer;{0}TX C0000000000EE0C>;;3;You are more likely to find higher tier items".format(txbypass), 
    "57-Leaf Clover;{0};;3;Your chance-based effects roll +1 more time(s) if they fail".format(abilityIconString(Hero.KIRIKO, Button.ABILITY_2)), 
    "Ancient Scepter;{0}TX C0000000005e4c6>;;3;Your Ultimate can be used 2(+1) times once charged".format(txbypass),
    "ShatteredGlass;{0}TX C00000000021569>;;2;+200% Damage, -400% maxHP".format(txbypass), 
    "I AM HERE!;{0}TX C0000000005e4dd>;;3;When an enemy is near death, teleport to them. 20(-5)s CD".format(txbypass), 
    "Compression Event;{0};0;3;Reclamation costs +40% more, but gives +1 more Score".format(abilityIconString(Hero.SIGMA, Button.ULTIMATE)), 
    "Low-Poly Box;{0}TX C000000000207b9>;000000;3;Gain 3 random items".format(txbypass), 
    "Treasure Hunter;{0}TX C0000000004947e>;00;3;Pickups have a 10% chance to be worth +10× Gold".format(txbypass), 
    "Painkillers;{0}TX C0000000003a2c8>;;3;+70% Healing Received from all sources".format(txbypass)]
    #[Mythic] Items
    MythicItems = ["Party Ammo;{0}TX C0000000003A4E4>;0000000;4;On hit, activates a random On-Hit item. 2s CD".format(txbypass),
    "Spellbinder;{0}TX C000000000455B7>;0000000;4;Upon Reclamation, gain your Ultimate. Reclamation no longer gives score".format(txbypass),
    "Normalize;{0}TX C0000000000D364>;0000000;4;Convert all of your items into a random item".format(txbypass), 
    ##"Unforseen Disaster Event;{0}TX C00000000007B5C>;0000000;4;Upon Reclamation, explode".format(txbypass), 
    "Criminal Mischief;{0}TX C0000000001EF19>;0000000;4;Quick Melee teleports you behind the target".format(txbypass), 
    "Seanut Brittle;{0}TX C0000000000894e>;0000000;4;Pickups explode when you touch them".format(txbypass), 
    "Godrim Nerf;{0}TX C000000000190E0>;0000000;4;+50% Damage. Your aim speed constantly changes".format(txbypass)]
    #[Corrupt] Items
    CorruptItems = ["Curly Fries;{0}TX C00000000049482>;000000000;5;Once per life, gain +75 Overhealth when hit below 50% HP".format(txbypass), 
    "Blood Favour;{0}TX C0000000004f741>;000000000;5;On spawn, gain +15% Ult Charge".format(txbypass), 
    "Energy Cell;{0}TX C0000000005f9bc>;000000000;5;On hit, reduce your CDs by +1s. 2s CD".format(txbypass), 
    "Storm Cell;{0}TX C000000000468d1>;000000000;5;Pickups have a 1/6 chance to give +18% Ult Charge".format(txbypass), 
    "Greed;{0}TX C00000000003fcf>;000000000;5;50% chance when collecting a pickup to collect it +1 more time(s)".format(txbypass), 
    "Ukulele;{0}TX C0000000005e4dc>;000000000;5;On hit, create a +8m explosion around the target. 4s CD".format(txbypass), 
    "Moon Shoes;{0}TX C0000000004E37B>;000000000;5;Jumping negates your gravity for +1s".format(txbypass), 
    "Martyrdom;{0}TX C0000000005e482>;000000000;5;After taking 100 damage, drop a grenade that deals +80 damage".format(txbypass), 
    "Burny Stuff;{0}TX C0000000004947a>;000000000;5;Ability hits have a 30% chance to Burn for +3 second(s)".format(txbypass), 
    "Armamentify;{0}TX C0000000004f73e>;000000000;5;Receive +5% less damage".format(txbypass), 
    "X-Ray Goggles;{0};000000000;5;You can see your closest +1 enemy(s) through walls".format(abilityIconString(Hero.WINSTON, Button.ULTIMATE)), 
    "Opportunist;{0}TX C0000000000AFBF>;000000000;5;You can see enemies above 95(-15)% HP through walls".format(txbypass), 
    "Gungeon Pepper;{0}TX C0000000005e4cf>;000000000;5;Nearby enemies are Burned. Effect lingers for +2s".format(txbypass), 
    "Sticky Fingers;{0}TX C0000000002a9f4>;000000000;5;On death, retain +10% of your Gold".format(txbypass), 
    "Minimize;{0}TX C000000000221ac>;000000000;5;Become +15% smaller while below 50% HP".format(txbypass), 
    "Urban Evasion;{0}TX C0000000002a9fc>;000000000;5;Jump +80% higher while crouched".format(txbypass), 
    "Alchemy Machine;{0}TX C00000000049478>;000000000;5;For every 2 Gold you gain, gain +1% Ult Charge".format(txbypass), 
    "Hopoo Feather;{0}TX C000000000012f6>;000000000;5;+1 extra horizontal jump(s)".format(txbypass), 
    "Alien Head;{0}TX C00000000013502>;000000000;5;On kill, reduce your CDs by +8s".format(txbypass), 
    "BUP;{0}TX C00000000003e7a>;000000000;5;+100% Knockback Received".format(txbypass), 
    "Blasting Staff;{0}TX C0000000000f448>;000000000;5;Quick Melee creates a +15-damage explosive projectile".format(txbypass), 
    "Kinetic Converter;{0}TX C0000000001bd59>;000000000;5;Quick Melee deals +1.75× your speed as bonus damage".format(txbypass), 
    "Troll Bomb;{0}TX C00000000004e54>;000000000;5;On hit, throw +1 high-knockback explosive(s). 4s CD".format(txbypass), 
    "Wormhole;{0};000000000;5;Pickups teleport you forward +10m".format(abilityIconString(Hero.SIGMA, Button.ABILITY_1)), 
    "Treasure Hunter;{0}TX C0000000004947e>;000000000;5;Pickups have a 1% chance to be worth +100× Gold".format(txbypass)]
    #[Reroll] Info
    rerollstring = ["Reroll;;00000000;7;Re-roll your item selection"]
    #Toggle Corrupted Items
    if createWorkshopSettingBool("Config", "Disable Corrupted Items", false):
        del UncommonItems[len(UncommonItems) - 1]


rule "Mythic/Corruption Hue Shift":
    RarityColors[4] = "fgFF00FFFF>"
    RarityColors[5] = "fg880000FF>"
    wait(0.3)
    RarityColors[4] = "fgcc33FFFF>"
    wait(0.3)
    RarityColors[4] = "fg9966FFFF>"
    RarityColors[5] = "fgce1818FF>"
    wait(0.3)
    RarityColors[4] = "fg6699FFFF>"
    wait(0.3)
    RarityColors[4] = "fg33ccFFFF>"
    RarityColors[5] = "fgff2828FF>"
    wait(0.3)
    RarityColors[4] = "fg33ccFFFF>"
    wait(0.3)
    RarityColors[4] = "fg6699FFFF>"
    RarityColors[5] = "fgce1818FF>"
    wait(0.3)
    RarityColors[4] = "fg9966FFFF>"
    wait(0.3)
    RarityColors[4] = "fgcc33FFFF>"
    RarityColors[5] = "fg880000FF>"
    wait(0.3)
    RarityColors[4] = "fgff00FFFF>"
    wait(0.3)
    loop()


def GM_CLASSIC():
    @Name "Global Start [Classic]"
    
    #Generate Item List
    itemlist()
    #[Stage 1: 0-11] Common 55% / Uncommon 35% / Rare 9.5% / Legendary 0.5% / Mythic 0.01%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [55, 34, 9.5, 0.5, 0.4]]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 12, 99999)
    #[Stage 2: 12-24] Common 45% / Uncommon 38% / Rare 15% / Legendary 2% / Mythic 0.1%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [45, 37, 15, 2, 0.3]]
    Goldrates = [player + 1 for player in Goldrates]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 25, 99999)
    #[Stage 3: 25-] Common 25% / Uncommon 45% / Rare 25% / Legendary 5% / Mythic 0.3%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [25, 45, 25, 5, 0.3]]
    Goldrates = [player + 2 for player in Goldrates]
    #[Match End]
    waitUntil(not isGameInProgress(), 99999)
    wait(15)
    restartMatch()


def GM_PU():
    @Name "Global Start [Parallel Universe]"
    
    #Generate Item List
    itemlist()
    #scary big array inator
    paralleluniverse = ["{0};{1};{2}".format("{0};{1};2".format(i.split(";")[0], i.split(";")[1]), random.randint(0, 3), i.split(";")[4])[0] for i in CommonItems.concat(UncommonItems).concat(RareItems).concat(LegendaryItems)]
    CommonItems = [player for player in paralleluniverse if player.split(";")[3] == "0"]
    UncommonItems = [player for player in paralleluniverse if player.split(";")[3] == "1"]
    RareItems = [player for player in paralleluniverse if player.split(";")[3] == "2"]
    LegendaryItems = [player for player in paralleluniverse if player.split(";")[3] == "3"]
    paralleluniverse = []
    #[Stage 1: 0-8] Common 55% / Uncommon 35% / Rare 9.5% / Legendary 0.5% / Mythic 0.01%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [55, 35, 9.5, 0.5, 0.01]]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 8, 99999)
    #[Stage 2: 9-16] Common 45% / Uncommon 38% / Rare 15% / Legendary 2% / Mythic 0.1%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [45, 38, 15, 2, 0.1]]
    Goldrates = [player + 1 for player in Goldrates]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 16, 99999)
    #[Stage 3: 17-24] Common 25% / Uncommon 45% / Rare 25% / Legendary 5% / Mythic 0.3%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [25, 45, 25, 5, 0.3]]
    Goldrates = [player + 2 for player in Goldrates]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 24, 99999)
    #[Stage 4: 25-30] Common 0% / Uncommon 50% / Rare 35% / Legendary 15% / Mythic 3%
    ItemOdds = [i * (editOdds[idx] / 100) for i, idx in [0, 50, 35, 15, 3]]
    Goldrates = [player + 4 for player in Goldrates]
    #[Match End]
    waitUntil(not isGameInProgress(), 99999)
    wait(15)
    restartMatch()


def GM_CHAOS():
    @Name "Global Start [Ultra Chaos]"
    
    #Generate Item List
    itemlist()
    #Chaos Items
    chaositemlist = ["Low-Poly Box;{0}TX C000000000207b9>;000000;4;Gain 3 random items".format(txbypass), "Low-Poly Box;{0}TX C000000000207b9>;000000;4;Gain 3 random items".format(txbypass), "Low-Poly Box;{0}TX C000000000207b9>;000000;4;Gain 3 random items".format(txbypass)]
    #[Stages]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 8, 99999)
    Goldrates = [player + 1 for player in Goldrates]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 16, 99999)
    Goldrates = [player + 2 for player in Goldrates]
    waitUntil(sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore() >= 24, 99999)
    Goldrates = [player + 4 for player in Goldrates]
    #[Match End]
    waitUntil(not isGameInProgress(), 99999)
    wait(15)
    restartMatch()


rule "# PLAYER":
    @Event playerJoined
    
    eventPlayer.Items = []
    eventPlayer.rerolls = createWorkshopSettingInt("Config", "Starting Reroll Tokens", 1, 0, 99)
    #BASE VALUES
    eventPlayer.diplopia = 0
    eventPlayer.C_Greed = 0
    eventPlayer.healreceived = 0
    eventPlayer.CDRflat = 0
    eventPlayer.CDRpercentage = 1
    eventPlayer.gravity = 100
    eventPlayer.goldtarget = 100
    eventPlayer.HudColor = "{0}fgFFFFFFC8>".format(txbypass)
    eventPlayer.statchangehud = false
    eventPlayer.damage = 0
    eventPlayer.speed = 0
    eventPlayer.healthbuff = 0
    eventPlayer.size = 1
    eventPlayer.regen = 0
    eventPlayer.meleedamage = 0
    eventPlayer.pickuprange = 3
    eventPlayer.victorysword = []
    #APPLY STATS
    eventPlayer.setMaxHealth(100)
    eventPlayer.stopScalingSize()
    eventPlayer.setJumpVerticalSpeed(100)
    eventPlayer.setProjectileSpeed(100)
    async(onSpawn, AsyncBehavior.RESTART)
    #Reveal Effect
    createInWorldText([player for player in getAllPlayers() if eventPlayer in player.Reveal1 or eventPlayer in player.Reveal2], "{0}TX C0000000002E11D>".format(txbypass), eventPlayer, 2, Clip.NONE, WorldTextReeval.VISIBILITY)


rule "# HUD (Selection)":
    #[Host] Display Server Load
    hudHeader(hostPlayer, "{0}lod: {1}/{2}".format("{0}{1}".format(txbypass, RarityColors[4]), getAverageServerLoad(), getPeakServerLoad()), HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    #[Background] Top Button
    createInWorldText(localPlayer if localPlayer.inSelection else null, "{0}fgFFFFFFF0>{1}{1}{1}{1}".format(txbypass, "{0}TX C0000000000000B>".format(txbypass)), localPlayer.camerapos + vect(0, 7, 20), 4, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Background] Reroll button.
    createInWorldText(localPlayer if localPlayer.inSelection else null, "{0}fgFFFFFFF0>{1}{1}".format(txbypass, "{0}{1}".format(txbypass, "TX C0000000000000C>" if localPlayer.selector == 3 and localPlayer.canSelect == true else "TX C0000000000000B>")), localPlayer.buttonpos[3], 3.3, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Selector] Highlight selected option.
    createInWorldText(localPlayer if localPlayer.canSelect else null, "{0}fgFFFFFF60>{1}".format(txbypass, "{0}TX C00000000021660>".format(txbypass)), localPlayer.buttonpos[localPlayer.selector], 4, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Choose Icon] Icon.
    createInWorldText(localPlayer if localPlayer.inSelection else null, "{0} {1} {0}".format("{0}TX C000000000468D1>".format(txbypass), "{0}CHOOSE ({1})".format("{0}{1}".format(txbypass, RarityColors[4 + localPlayer.CorruptionEffs]), localPlayer.queuedselections)), localPlayer.camerapos + vect(0, 7.1, 20), 2, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Misc] Reroll button text.
    createInWorldText(localPlayer if localPlayer.inSelection else null, "{0} {1}{2}×".format("{0}TX C0000000004F73F>".format(txbypass), "{0}{1}".format(txbypass, RarityColors[7]), localPlayer.rerolls), localPlayer.buttonpos[3] + vect(0, 0.1, 0), 2.5, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Misc] Background sphere,
    createEffect(localPlayer if localPlayer.inSelection else null, Effect.SPHERE, Color.BLACK if localPlayer.CorruptionEffs else Color.GRAY, localPlayer.camerapos, 0.5)
    #[Description] Item description.
    createInWorldText(localPlayer if localPlayer.inSelection and all([player == true for player in localPlayer.SelectionVisibility]) else null, "{0}{1}{2}".format(txbypass, RarityColors[localPlayer.buttoncolors[localPlayer.selector]], localPlayer.options[localPlayer.selector].split(";").last() if localPlayer.canSelect == true else " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d"), localPlayer.camerapos + vect(0, -3.7, 20), 2.5, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Description] Subtext.
    createInWorldText(localPlayer if localPlayer.canSelect and all([player == true for player in localPlayer.SelectionVisibility]) else null, [player.replace("@", RarityColors[4]) for player in Subtext][strLen(localPlayer.options[localPlayer.selector].split(";")[2])], localPlayer.camerapos + vect(0, -5.2, 20), 1.1, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #[Each Button]
    for HUDloop in range(3):
        #[Each Button] Top line.
        createInWorldText(localPlayer if localPlayer.inSelection else null, "{0}fgFFFFFFFF>{0}TX C0000000004ed4c>".format(txbypass), localPlayer.camerapos + (vect(evalOnce((HUDloop + -1) * 10), 5, 20)), 0.6, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
        #[Each Button] Background.
        createInWorldText(localPlayer if localPlayer.inSelection and localPlayer.SelectionVisibility[evalOnce(HUDloop)] else null, "{0}fgFFFFFFF0>{1}".format(txbypass, "{0}{1}".format(txbypass, "TX C0000000000000C>" if localPlayer.selector == evalOnce(HUDloop) and localPlayer.canSelect == true else "TX C0000000000000B>")), localPlayer.buttonpos[evalOnce(HUDloop)], 4, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
        #[Each Button] Icon.
        createInWorldText(localPlayer if localPlayer.inSelection and localPlayer.SelectionVisibility[evalOnce(HUDloop)] else null, "{0}".format(localPlayer.options[evalOnce(HUDloop)].split(";")[1]), localPlayer.buttonpos[evalOnce(HUDloop)] + vect(0, 0.1, 0), 3, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
        #[Each Button] Item name.
        createInWorldText(localPlayer if localPlayer.inSelection and localPlayer.SelectionVisibility[evalOnce(HUDloop)] else null, "{0}{1}{2}".format(txbypass, RarityColors[localPlayer.buttoncolors[evalOnce(HUDloop)]], localPlayer.options[evalOnce(HUDloop)].split(";")[0]), localPlayer.buttonpos[evalOnce(HUDloop)] - vect(0, 1.5, 0), 1.5, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)
    #Cursor
    createInWorldText(localPlayer if localPlayer.inSelection and all([player == true for player in localPlayer.SelectionVisibility]) else null, "{0}".format(inputBindingString(Button.PRIMARY_FIRE) if localPlayer.canSelect else "{0}TX C0000000002DD21>".format(txbypass)), updateEveryFrame(localPlayer.camerapos + directionFromAngles(min(max(localPlayer.getHorizontalFacingAngle(), -45), 45), min(max(localPlayer.getVerticalFacingAngle(), -30), 30)) * 50), 3, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING)


rule "# HUD (Stats)":
    #Stat Changes
    hudSubtext(localPlayer if localPlayer.statchangehud else null, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\nStat Changes:", HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY)
    hudSubtext(localPlayer if localPlayer.damage != 0 else null, "{0}TX C00000000004122>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.damage >= 0 else "fgff0000FF>", localPlayer.damage), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.healthbuff != 0 else null, "{0}TX C0000000005e463>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.healthbuff >= 0 else "fgff0000FF>", localPlayer.healthbuff), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.speed != 0 else null, "{0}TX C0000000002A9FA>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.speed >= 0 else "fgff0000FF>", localPlayer.speed), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.regen != 0 else null, "{0}TX C0000000004f73f>:{0}{1}{2}".format(txbypass, "fg49ff00FF>+" if localPlayer.regen >= 0 else "fgff0000FF>-", localPlayer.regen), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.meleedamage != 0 else null, "{0}:{1}{2}".format(abilityIconString(Hero.DOOMFIST, Button.SECONDARY_FIRE), "{0}fg49ff00FF>+".format(txbypass) if localPlayer.meleedamage >= 0 else "{0}fgff0000FF>-".format(txbypass), localPlayer.meleedamage), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.projspd != 0 else null, "{0}TX C0000000002A9f1>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.projspd >= 0 else "fgff0000FF>", localPlayer.projspd), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.gravity != 100 else null, "{0}TX C0000000004E37B>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>-" if localPlayer.gravity < 100 else "fgff0000FF>+", ceil(abs(localPlayer.gravity - 100))), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.size != 1 else null, "{0}TX C000000000221ac>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>-" if localPlayer.size < 1 else "fgff0000FF>+", ceil(abs(localPlayer.size * 100 - 100))), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.knockback != 0 else null, "{0}TX C00000000003e7a>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.knockback > 0 else "fgff0000FF>-", ceil(abs(localPlayer.knockback))), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubtext(localPlayer if localPlayer.healreceived != 0 else null, "{0}TX C0000000003a2c8>:{0}{1}{2}%".format(txbypass, "fg49ff00FF>+" if localPlayer.healreceived > 0 else "fgff0000FF>-", ceil(abs(localPlayer.healreceived))), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    #Gold Progress Bar
    createProgressBarInWorldText(localPlayer if localPlayer.gold and not localPlayer.inSelection else null, localPlayer.gold / localPlayer.goldtarget * 100, "{0}TX C00000000044b59> {0}fgfff000FF>Gold-O-Meter {0}TX C00000000044b59>".format(txbypass), updateEveryFrame(localPlayer.getEyePosition() + localPlayer.getFacingDirection() * 100 + normalize(crossProduct(crossProduct(Vector.UP, localPlayer.getFacingDirection()), localPlayer.getFacingDirection())) * 45 + normalize(crossProduct(Vector.UP, localPlayer.getFacingDirection())) * -85), 1, Clip.NONE, rgb(255, 200, 0, 200), Color.WHITE, ProgressWorldTextReeval.VISIBILITY_POSITION_AND_VALUES)


def Start_Selection():
    @Name "Normal Item Selection [Start]"
    
    eventPlayer.CorruptionEffs = false
    if eventPlayer.queuedselections == 0:
        return
    eventPlayer.SelectionVisibility = [false, false, false]
    waitUntil(eventPlayer.getEyePosition() != null, 99999)
    wait(0.05)
    async(disableinputs, AsyncBehavior.RESTART)
    #Skip if continuing selection.
    if not eventPlayer.inSelection:
        placebuttons()
        #Stop Player From Existing
        eventPlayer.setStatusEffect(null, Status.ROOTED, 9999)
        eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
        eventPlayer.setInvisibility(Invis.ALL)
        eventPlayer.disableHeroHud()
        wait(0.2)
    eventPlayer.inSelection = true
    #Generate Options
    itemrandomizer()
    async(finishSelection, AsyncBehavior.RESTART)
    while eventPlayer.inSelection:
        eventPlayer.canSelect = true if any([angleBetweenVectors(player, eventPlayer.getFacingDirection()) < 15 for player in eventPlayer.buttonangles]) else false
        eventPlayer.selector = eventPlayer.buttonangles.index(sorted(eventPlayer.buttonangles, lambda player: angleBetweenVectors(player, eventPlayer.getFacingDirection()))[0])
        if abs(eventPlayer.getVerticalFacingAngle()) > 35:
            eventPlayer.setFacing(directionFromAngles(eventPlayer.getHorizontalFacingAngle(), 35 if eventPlayer.getVerticalFacingAngle() > 0 else -35), Relativity.TO_WORLD)
        if abs(eventPlayer.getHorizontalFacingAngle()) > 50:
            eventPlayer.setFacing(directionFromAngles(50 if eventPlayer.getHorizontalFacingAngle() > 0 else -50, eventPlayer.getVerticalFacingAngle()), Relativity.TO_WORLD)
        wait(0.1)
    eventPlayer.enableHeroHud()
    eventPlayer.stopCamera()
    eventPlayer.canSelect = false
    eventPlayer.selector = null
    eventPlayer.clearStatusEffect(Status.ROOTED)
    eventPlayer.clearStatusEffect(Status.PHASED_OUT)
    eventPlayer.setInvisibility(Invis.NONE)
    #Process Items
    async(processItems, AsyncBehavior.NOOP)


def finishSelection():
    @Name "Normal Item Selection [Finish]"
    
    if eventPlayer.queuedselections != 0:
        wait(0.1)
        waitUntil(all([entityExists(eventPlayer), not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE), eventPlayer.canSelect]), 99999)
        waitUntil(any([eventPlayer.isHoldingButton(Button.PRIMARY_FIRE), not entityExists(eventPlayer), not eventPlayer.canSelect]), 99999)
        if not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
            loop()
        #Reroll
        if "Reroll" in eventPlayer.options[eventPlayer.selector].split(";"):
            if eventPlayer.rerolls == 0:
                loop()
            eventPlayer.rerolls--
            async(Start_Selection, AsyncBehavior.RESTART)
            playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 200)
            playEffect(eventPlayer, DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 140)
            return
        eventPlayer.Guarantee = null
        #Corrupted Key
        if "Corrupted Key" in eventPlayer.options[eventPlayer.selector].split(";"):
            async(CorruptSelection, AsyncBehavior.NOOP)
            return
        #Normalize
        if "Normalize" in eventPlayer.options[eventPlayer.selector].split(";"):
            eventPlayer.normalize = random.shuffle(CommonItems.concat(UncommonItems).concat(RareItems).concat(LegendaryItems.exclude(LegendaryItems[11])))[0]
            eventPlayer.Items = [eventPlayer.normalize for player in eventPlayer.Items]
            bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nOops, all {0}\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}{1}{2}".format(txbypass, RarityColors[RarityColors[eventPlayer.normalize.split(";")[3]]], eventPlayer.normalize.split(";")[0])))
            goto lbl_0
        #Box
        if "Low-Poly Box" in eventPlayer.options[eventPlayer.selector].split(";"):
            async(box, AsyncBehavior.NOOP)
            goto lbl_1
        #Golden Ticket
        if "Golden Ticket" in eventPlayer.options[eventPlayer.selector].split(";"):
            eventPlayer.TIX = max(eventPlayer.TIX * 2, 2)
            goto lbl_2
        for eventPlayer.multiplicativestack in range(-1, max(0, eventPlayer.TIX - 1), 1 / (1 + len([player for player in eventPlayer.Items if strContains(player, "Primary Expertise")])) if eventPlayer.options[eventPlayer.selector].split(";")[3] == "0" else 1):
            eventPlayer.Items.append(eventPlayer.options[eventPlayer.selector])
        if eventPlayer.TIX > 0:
            bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nObtained {0}\r (X{1})\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}{1}{2}".format(txbypass, RarityColors[eventPlayer.buttoncolors[eventPlayer.selector]], eventPlayer.options[eventPlayer.selector].split(";")[0]), abs(eventPlayer.TIX)))
            eventPlayer.TIX *= -1
        else:
            lbl_2:
            bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nObtained {0}\r\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}{1}{2}".format(txbypass, RarityColors[eventPlayer.buttoncolors[eventPlayer.selector]], eventPlayer.options[eventPlayer.selector].split(";")[0])))
        lbl_0:
        lbl_1:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 200)
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 140)
        #Delete Mythic Items
        if eventPlayer.options[eventPlayer.selector] in MythicItems:
            MythicItems.remove(eventPlayer.options[eventPlayer.selector])
        eventPlayer.queuedselections--
        if eventPlayer.queuedselections > 0:
            async(Start_Selection, AsyncBehavior.RESTART)
            return
    eventPlayer.inSelection = false


def disableinputs():
    @Name "## Disable Inputs"
    
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.setPrimaryFireEnabled(false)
    eventPlayer.setSecondaryFireEnabled(false)
    eventPlayer.disallowButton(Button.ABILITY_1)
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.disallowButton(Button.ULTIMATE)
    eventPlayer.disallowButton(Button.INTERACT)
    eventPlayer.disallowButton(Button.JUMP)
    eventPlayer.disallowButton(Button.CROUCH)
    eventPlayer.disallowButton(Button.MELEE)
    eventPlayer.disallowButton(Button.RELOAD)
    wait(0.25)
    waitUntil(not (eventPlayer.inSelection and entityExists(eventPlayer)), 99999)
    wait(0.5)
    eventPlayer.setPrimaryFireEnabled(true)
    eventPlayer.setSecondaryFireEnabled(true)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)
    eventPlayer.allowButton(Button.INTERACT)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.CROUCH)
    eventPlayer.allowButton(Button.MELEE)
    eventPlayer.allowButton(Button.RELOAD)
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)


def processItems():
    @Name "## Process Items"
    
    async(activateitems, AsyncBehavior.NOOP)
    #On-Hit List
    eventPlayer.onhitlist = [len([player for player in eventPlayer.Items if strContains(player, "Burny Stuff")]), len([player for player in eventPlayer.Items if strContains(player, "Troll Bomb")]), len([player for player in eventPlayer.Items if strContains(player, "Super Sucker")]), len([player for player in eventPlayer.Items if strContains(player, "Critsomallos")]), len([player for player in eventPlayer.Items if strContains(player, "Asbestos")]), len([player for player in eventPlayer.Items if strContains(player, "Party Ammo")]), len([player for player in eventPlayer.Items if strContains(player, "Ukulele")])]
    eventPlayer.C_EnergyCell = any([strContains(player, "Energy Cell") for player in eventPlayer.Items]) and any([strContains(player, "Energy Cell") for player in eventPlayer.CorruptItems])
    #DIPLOPIA
    eventPlayer.diplopia = len([player for player in eventPlayer.Items if strContains(player, "Diplopia")])
    eventPlayer.setKnockbackReceived(100)
    #STATS
    stats()
    #APPLY STATS
    eventPlayer.setMaxHealth(max(eventPlayer.healthbuff + 100, 1))
    eventPlayer.startScalingSize(eventPlayer.size)
    eventPlayer.setHealingReceived(eventPlayer.healreceived + 100)
    eventPlayer.setProjectileSpeed(100 + eventPlayer.projspd)
    async(onSpawn, AsyncBehavior.RESTART)
    eventPlayer.setGravity(eventPlayer.gravity)
    eventPlayer.setProjectileGravity(eventPlayer.gravity)
    eventPlayer.setKnockbackDealt(eventPlayer.knockback + 100)
    #These heroes don't work properly with ammo buffs
    if eventPlayer.getHero() in [Hero.VENTURE, Hero.MAUGA, Hero.KIRIKO, Hero.LIFEWEAVER, Hero.ORISA]:
        goto lbl_0
    eventPlayer.setMaxAmmo(0, eventPlayer.getMaxAmmo() * (1 + eventPlayer.ammo / 100))
    eventPlayer.setMaxAmmo(1, eventPlayer.getMaxAmmo(1) * (1 + eventPlayer.ammo / 100))
    eventPlayer.setAmmo(0, eventPlayer.getMaxAmmo())
    eventPlayer.setAmmo(1, eventPlayer.getMaxAmmo(1))
    lbl_0:
    if any([i != 0 for i in [eventPlayer.damage, eventPlayer.speed, eventPlayer.healthbuff, eventPlayer.regen, eventPlayer.meleedamage, eventPlayer.projspd, eventPlayer.gravity - 100, eventPlayer.knockback, eventPlayer.healreceived]]):
        eventPlayer.statchangehud = true
    eventPlayer.options[3] = rerollstring


def activateitems():
    @Name "Implement Items [Fire Subroutines]"
    
    #Wired Funds
    if any([strContains(player, "Wired Funds") for player in eventPlayer.Items]):
        async(wiredfunds, AsyncBehavior.NOOP)
    #Armamentify
    if any([strContains(player, "Armamentify") for player in eventPlayer.Items]):
        async(armamentify, AsyncBehavior.NOOP)
    #X-Ray Goggles
    if any([strContains(player, "X-Ray Goggles") for player in eventPlayer.Items]):
        async(xray, AsyncBehavior.NOOP)
    #Opportunist
    if any([strContains(player, "Opportunist") for player in eventPlayer.Items]):
        eventPlayer.opportunist = len([player for player in eventPlayer.Items if strContains(player, "Opportunist")])
        async(opportunist, AsyncBehavior.NOOP)
    #Gungeon Pepper
    if any([strContains(player, "Gungeon Pepper") for player in eventPlayer.Items]):
        async(gungeon, AsyncBehavior.NOOP)
    #Crouch Items
    if any([strContains(player, "Minimize") or strContains(player, "Urban Evasion") for player in eventPlayer.Items]):
        eventPlayer.statchangehud = true
        async(crouchitems, AsyncBehavior.NOOP)
    #Paying Dividends
    if any([strContains(player, "Paying Dividends") for player in eventPlayer.Items]):
        async(payingdividends, AsyncBehavior.NOOP)
    #Alchemy Machine
    if any([strContains(player, "Alchemy Machine") for player in eventPlayer.Items]):
        async(alchemy, AsyncBehavior.NOOP)
    #Hopoo
    if any([strContains(player, "Hopoo Feather") for player in eventPlayer.Items]):
        async(hopoo, AsyncBehavior.NOOP)
    #Quail
    if any([strContains(player, "Wax Quail") for player in eventPlayer.Items]):
        async(waxquail, AsyncBehavior.NOOP)
    #Zoltan Shield
    if any([strContains(player, "Zoltan Shield") for player in eventPlayer.Items]):
        async(zoltanshield, AsyncBehavior.NOOP)
    #CDR Other
    if (eventPlayer.CDRflat or eventPlayer.CDRpercentage != 1) and eventPlayer.getHero() in [Hero.HANZO, Hero.BRIGITTE, Hero.WRECKING_BALL, Hero.REINHARDT, Hero.BAPTISTE]:
        async(cdrother, AsyncBehavior.NOOP)
    #PHD
    if any([strContains(player, "P.H.D") for player in eventPlayer.Items]):
        eventPlayer.setUltCharge((((len([player for player in eventPlayer.Items if player.split(";")[3] == "1"])) * len([player for player in eventPlayer.Items if strContains(player, "P.H.D")])) * 5) + eventPlayer.getUltCharge())
        smallMessage(eventPlayer, "   {0}TX C000000000144a6>{0}fg00ff00FF>+{1}% Ult Charge".format(txbypass, ((len([player for player in eventPlayer.Items if player.split(";")[3] == "1"])) * len([player for player in eventPlayer.Items if strContains(player, "P.H.D")])) * 5))
    #Uranium Rod
    if any([strContains(player, "Uranium Rod") for player in eventPlayer.Items]):
        async(uranium, AsyncBehavior.NOOP)
    #Buggies
    if any([strContains(player, "Lightning Bug") for player in eventPlayer.Items]):
        async(lightningbug, AsyncBehavior.NOOP)
    #Backup Gen
    if any([strContains(player, "Backup Generator") for player in eventPlayer.Items]):
        async(backupgenerator, AsyncBehavior.NOOP)
    #Ancient Scepter
    if any([strContains(player, "Ancient Scepter") for player in eventPlayer.Items]):
        async(scepter, AsyncBehavior.NOOP)
    #I AM HERE
    if any([strContains(player, "I AM HERE") for player in eventPlayer.Items]):
        async(IAMHERE, AsyncBehavior.NOOP)
    #Biotic Inversion
    if any([strContains(player, "Biotic Inversion") for player in eventPlayer.Items]):
        async(bioticinversion, AsyncBehavior.NOOP)
    #Return to Monke
    if any([strContains(player, "Monkey Business") for player in eventPlayer.Items]):
        eventPlayer.startForcingHero(Hero.WINSTON)
        eventPlayer.monke = true
    #Godrim Nerf
    if any([strContains(player, "Godrim Nerf") for player in eventPlayer.Items]):
        async(godrim, AsyncBehavior.NOOP)
    if len(eventPlayer.CorruptItems) != 0:
        async(Corruptactivate, AsyncBehavior.NOOP)


def Corruptactivate():
    @Name "Implement Items [Fire Corrupted Subroutines]"
    
    #C_Martyrdom
    if any([strContains(player, "Martyrdom") for player in eventPlayer.Items]) and any([strContains(player, "Martyrdom") for player in eventPlayer.CorruptItems]):
        async(C_Martyrdom, AsyncBehavior.NOOP)
    #C_Moon Shoes
    if any([strContains(player, "Moon Shoes") for player in eventPlayer.Items]) and any([strContains(player, "Moon Shoes") for player in eventPlayer.CorruptItems]):
        async(C_MoonShoes, AsyncBehavior.NOOP)
    #C_Minimize
    if any([strContains(player, "Minimize") for player in eventPlayer.Items]) and any([strContains(player, "Minimize") for player in eventPlayer.CorruptItems]):
        async(C_Minimize, AsyncBehavior.NOOP)
    #C_Blasting Staff
    if any([strContains(player, "Blasting Staff") for player in eventPlayer.Items]) and any([strContains(player, "Blasting Staff") for player in eventPlayer.CorruptItems]):
        async(C_blast, AsyncBehavior.NOOP)


def stats():
    @Name "Implement Items [Apply Stat Changes]"
    
    #DAMAGE
    eventPlayer.damage = 0
    eventPlayer.damage += len([player for player in eventPlayer.Items if strContains(player, "High Caliber")]) * 15
    if "Glass" in eventPlayer.CorruptItems:
        goto lbl_0
    eventPlayer.damage += len([player for player in eventPlayer.Items if strContains(player, "Glass")]) * 50
    eventPlayer.damage += len([player for player in eventPlayer.Items if strContains(player, "ShatteredGlass")]) * 200
    lbl_0:
    if "T O N K" in eventPlayer.CorruptItems:
        goto lbl_1
    eventPlayer.damage += len([player for player in eventPlayer.Items if strContains(player, "T O N K")]) * -40
    lbl_1:
    eventPlayer.damage += len([player for player in eventPlayer.Items if strContains(player, "Godrim Nerf")]) * 50
    #SPEED
    eventPlayer.speed = 0
    eventPlayer.speed += len([player for player in eventPlayer.Items if strContains(player, "Boots")]) * 8
    if "Horse Pill" in eventPlayer.CorruptItems:
        goto lbl_2
    eventPlayer.speed += len([player for player in eventPlayer.Items if strContains(player, "Horse Pill")]) * 20
    lbl_2:
    eventPlayer.healthbuff = 0
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "Hamburger")]) * 35
    if "T O N K" in eventPlayer.CorruptItems:
        goto lbl_3
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "T O N K")]) * 100
    lbl_3:
    if "Glass" in eventPlayer.CorruptItems:
        goto lbl_4
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "Glass")]) * -80
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "ShatteredGlass")]) * -400
    lbl_4:
    if "Horse Pill" in eventPlayer.CorruptItems:
        goto lbl_5
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "Horse Pill")]) * -30
    lbl_5:
    if "Wholesome Chungus" in eventPlayer.CorruptItems:
        goto lbl_6
    eventPlayer.healthbuff += len([player for player in eventPlayer.Items if strContains(player, "Wholesome Chungus")]) * 160
    lbl_6:
    eventPlayer.size = 1
    if "Wholesome Chungus" in eventPlayer.CorruptItems:
        goto lbl_7
    eventPlayer.size += len([player for player in eventPlayer.Items if strContains(player, "Wholesome Chungus")]) * 0.2
    lbl_7:
    eventPlayer.regen = 0
    eventPlayer.regen += len([player for player in eventPlayer.Items if strContains(player, "Nanomachines")]) * 10
    #MELEE DAMAGE
    eventPlayer.meleedamage = 0
    eventPlayer.meleedamage += len([player for player in eventPlayer.Items if strContains(player, "Slam Club")]) * 10
    #PROJECTILE SPEED
    eventPlayer.projspd = 0
    eventPlayer.projspd += len([player for player in eventPlayer.Items if strContains(player, "Aerodynamics")]) * 50
    #PICKUP RANGE
    eventPlayer.pickuprange = 3
    if "Greed" in eventPlayer.CorruptItems:
        goto lbl_8
    eventPlayer.pickuprange += len([player for player in eventPlayer.Items if strContains(player, "Greed")]) * 3
    lbl_8:
    eventPlayer.gravity = 100
    if "Moon Shoes" in eventPlayer.CorruptItems:
        goto lbl_9
    for eventPlayer.multiplicativestack in range(len([player for player in eventPlayer.Items if strContains(player, "Moon Shoes")])):
        eventPlayer.gravity *= 0.7
    lbl_9:
    eventPlayer.ammo = 0
    if "The Whopper" in eventPlayer.CorruptItems:
        goto lbl_10
    eventPlayer.ammo += len([player for player in eventPlayer.Items if strContains(player, "The Whopper")]) * 100
    lbl_10:
    eventPlayer.CDRflat = 0
    if "Alien Head" in eventPlayer.CorruptItems:
        goto lbl_11
    eventPlayer.CDRflat += len([player for player in eventPlayer.Items if strContains(player, "Alien Head")])
    lbl_11:
    eventPlayer.CDRpercentage = 1
    if "Pocket Watch" in eventPlayer.CorruptItems:
        goto lbl_12
    for eventPlayer.multiplicativestack in range(len([player for player in eventPlayer.Items if strContains(player, "Pocket Watch")])):
        eventPlayer.CDRpercentage *= 0.75
    lbl_12:
    eventPlayer.knockback = 0
    if "BUP" in eventPlayer.CorruptItems:
        goto lbl_13
    eventPlayer.knockback += len([player for player in eventPlayer.Items if strContains(player, "BUP")]) * 50
    goto lbl_14
    lbl_13:
    eventPlayer.setKnockbackReceived(100 + len([player for player in eventPlayer.Items if strContains(player, "BUP")]) * 100)
    lbl_14:
    eventPlayer.EXPLOOSION = len([player for player in eventPlayer.Items if strContains(player, "EXPLOOOSION")])
    #Healing Received
    eventPlayer.healreceived = 0
    if "Painkillers" in eventPlayer.CorruptItems:
        goto lbl_15
    eventPlayer.healreceived += len([player for player in eventPlayer.Items if strContains(player, "Painkillers")]) * 70
    lbl_15:
    if len([player for player in eventPlayer.Items if strContains(player, "Compression Event")]):
        if "Compression Event" in eventPlayer.CorruptItems:
            goto lbl_16
        eventPlayer.goldtarget *= 1.4
        lbl_16:
    #[Corrupt] Greed
    if not "Greed" in eventPlayer.CorruptItems:
        goto lbl_17
    eventPlayer.C_Greed = len([player for player in eventPlayer.Items if strContains(player, "Greed")])
    lbl_17:


def itemrandomizer():
    @Name "## Item Randomizer"
    
    #If Chaos
    if gamemode == 2:
        eventPlayer.options = chaositemlist
        eventPlayer.buttoncolors = [4, 4, 4]
        return
    #All Mythic
    if all([i == 0 for i in ItemOdds.slice(0, 4)]):
        eventPlayer.options = nothings
        eventPlayer.buttoncolors = [4, 4, 4]
        if not len(MythicItems):
            goto lbl_0
        eventPlayer.options[random.randint(0, 2)] = random.choice(MythicItems)
        lbl_0:
        return
    #ITEM ODDS
    eventPlayer.CurrentOdds = ItemOdds
    eventPlayer.CurrentOdds[0] += len([player for player in eventPlayer.Items if strContains(player, "Primary Expertise")]) * 20 * (editOdds[0] / 100)
    eventPlayer.CurrentOdds[2] += len([player for player in eventPlayer.Items if strContains(player, "Artifact Printer")]) * 6 * (editOdds[2] / 100)
    eventPlayer.CurrentOdds[3] += len([player for player in eventPlayer.Items if strContains(player, "Artifact Printer")]) * 4 * (editOdds[3] / 100)
    eventPlayer.CurrentOdds[4] *= 1 if len(MythicItems) else 0
    #RANDOMIZER LOGIC
    eventPlayer.randomizer = []
    eventPlayer.randomizer.append(random.uniform(0, eventPlayer.CurrentOdds[0] + eventPlayer.CurrentOdds[1] + eventPlayer.CurrentOdds[2] + eventPlayer.CurrentOdds[3]))
    eventPlayer.randomizer.append(random.uniform(0, eventPlayer.CurrentOdds[0] + eventPlayer.CurrentOdds[1] + eventPlayer.CurrentOdds[2] + eventPlayer.CurrentOdds[3]))
    eventPlayer.randomizer.append(random.uniform(0, eventPlayer.CurrentOdds[0] + eventPlayer.CurrentOdds[1] + eventPlayer.CurrentOdds[2] + eventPlayer.CurrentOdds[3]))
    eventPlayer.randomizer = [0 if player <= eventPlayer.CurrentOdds[0] else 1 if player - eventPlayer.CurrentOdds[0] <= eventPlayer.CurrentOdds[1] else 2 if player - eventPlayer.CurrentOdds[0] - eventPlayer.CurrentOdds[1] <= eventPlayer.CurrentOdds[2] else 3 for player in eventPlayer.randomizer]
    #Mythic Item
    if random.uniform(0, 100) > eventPlayer.CurrentOdds[4]:
        goto lbl_1
    eventPlayer.randomizer[random.randint(0, 2)] = 4
    lbl_1:
    eventPlayer.options = []
    eventPlayer.bigarray = []
    if eventPlayer.Guarantee:
        eventPlayer.randomizer = [eventPlayer.Guarantee, eventPlayer.Guarantee, eventPlayer.Guarantee]
    eventPlayer.bigarray.append(random.shuffle(CommonItems).slice(0, len([player for player in eventPlayer.randomizer if player == 0])))
    eventPlayer.bigarray.append(random.shuffle(UncommonItems).slice(0, len([player for player in eventPlayer.randomizer if player == 1])))
    eventPlayer.bigarray.append(random.shuffle(RareItems).slice(0, len([player for player in eventPlayer.randomizer if player == 2])))
    eventPlayer.bigarray.append(random.shuffle(LegendaryItems).slice(0, len([player for player in eventPlayer.randomizer if player == 3])))
    eventPlayer.bigarray.append(random.shuffle(MythicItems).slice(0, len([player for player in eventPlayer.randomizer if player == 4])))
    eventPlayer.options = random.shuffle(eventPlayer.bigarray.exclude(null))
    #Convert Corrupted Items
    for eventPlayer.AnimLoop in range(3):
        eventPlayer.options[eventPlayer.AnimLoop] = [player for player in CorruptItems if strContains(player, eventPlayer.options[eventPlayer.AnimLoop].split(";")[0])][0] if eventPlayer.options[eventPlayer.AnimLoop].split(";")[0] in eventPlayer.CorruptItems else eventPlayer.options[eventPlayer.AnimLoop]
    #Set Option Colors
    eventPlayer.buttoncolors[0] = ["0", "1", "2", "3", "4", "5"].index(eventPlayer.options[0].split(";")[3])
    eventPlayer.buttoncolors[1] = ["0", "1", "2", "3", "4", "5"].index(eventPlayer.options[1].split(";")[3])
    eventPlayer.buttoncolors[2] = ["0", "1", "2", "3", "4", "5"].index(eventPlayer.options[2].split(";")[3])
    eventPlayer.options[3] = rerollstring
    eventPlayer.buttoncolors[3] = 7
    for eventPlayer.AnimLoop in range(2, -1, -1):
        eventPlayer.SelectionVisibility[eventPlayer.AnimLoop] = true
        if eventPlayer.buttoncolors[eventPlayer.AnimLoop] == 2:
            playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 110)
        elif eventPlayer.buttoncolors[eventPlayer.AnimLoop] == 3:
            playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 120)
        elif eventPlayer.buttoncolors[eventPlayer.AnimLoop] == 4:
            playEffect(eventPlayer, DynamicEffect.SOMBRA_EMP_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 100)
        elif eventPlayer.buttoncolors[eventPlayer.AnimLoop] == 5:
            playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 100)
        else:
            playEffect(eventPlayer, DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 80)
        wait(0.25)


def placebuttons():
    @Name "## Place Buttons"
    
    eventPlayer.setFacing(directionFromAngles(0, 0), Relativity.TO_WORLD)
    eventPlayer.camerapos = eventPlayer.getEyePosition()
    eventPlayer.camerafacing = eventPlayer.getEyePosition() + directionFromAngles(0, 0) * 50
    eventPlayer.buttonpos = [eventPlayer.getPosition() + i for i in [vect(-10, 4, 20), vect(0, 4, 20), vect(10, 4, 20), vect(0, -8, 20)]]
    eventPlayer.buttonangles = [directionFromAngles(-15, -5), directionFromAngles(0, -5), directionFromAngles(15, -5), directionFromAngles(0, 25)]
    eventPlayer.startCamera(eventPlayer.camerapos, eventPlayer.camerafacing)


rule "Continuously Apply Stat Changes":
    @Event eachPlayer
    @Condition eventPlayer.isAlive() == true
    
    wait(0.125)
    eventPlayer.setDamageDealt(max(eventPlayer.damage + 100, 20))
    eventPlayer.setMoveSpeed(max(eventPlayer.speed + 100, 20))
    heal(eventPlayer, eventPlayer, eventPlayer.regen / 8)
    if ruleCondition:
        loop()


def onSpawn():
    @Name "On Spawn"
    
    eventPlayer.removeAllHealthPools()
    #Curly Fries
    if any([strContains(player, "Curly Fries") for player in eventPlayer.Items]):
        if "Curly Fries" in eventPlayer.CorruptItems:
            async(C_CurlyFries, AsyncBehavior.RESTART)
            goto lbl_0
        eventPlayer.addHealthPool(Health.NORMAL, 110 * len([player for player in eventPlayer.Items if strContains(player, "Curly Fries")]), false, false)
        lbl_0:
    #[Corrupted] Blood Favour
    if any([strContains(player, "Blood Favour") for player in eventPlayer.Items]) and any([strContains(player, "Blood Favour") for player in eventPlayer.CorruptItems]):
        eventPlayer.setUltCharge(eventPlayer.getUltCharge() + len([player for player in eventPlayer.Items if strContains(player, "Blood Favour")]) * 15)
        smallMessage(eventPlayer, "   {0}TX C0000000004f741>{0}fg00ff00FF>+{1}% Ult Charge".format(txbypass, 15 * len([player for player in eventPlayer.Items if strContains(player, "Blood Favour")])))


rule "On Hit [Melee]":
    @Event playerDealtDamage
    @Condition eventAbility == Button.MELEE
    
    victim.setEnvironmentalKillCreditor(eventPlayer)
    #Criminal Mischief
    if not any([strContains(player, "Criminal Mischief") for player in eventPlayer.Items]):
        goto lbl_0
    eventPlayer.teleport(nearestWalkablePosition(eventPlayer.getPosition() + directionTowards(eventPlayer, victim) * distance(eventPlayer, victim) * 2))
    lbl_0:
    if not any([strContains(player, "Brigification") for player in eventPlayer.Items]):
        goto lbl_1
    victim.startForcingHero(Hero.WINSTON if victim.monke else Hero.BRIGITTE)
    lbl_1:
    if any([strContains(player, "Kinetic Converter") for player in eventPlayer.Items]):
        playEffect(getAllPlayers(), DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, victim.getPosition(), 90)
        if not "Kinetic Converter" in eventPlayer.CorruptItems:
            eventPlayer.applyImpulse(directionFromAngles(horizontalAngleOfDirection(directionTowards(victim, eventPlayer)), -25), len([player for player in eventPlayer.Items if strContains(player, "Kinetic Converter")]) * 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
            victim.applyImpulse(directionFromAngles(horizontalAngleOfDirection(directionTowards(eventPlayer, victim)), -25), len([player for player in eventPlayer.Items if strContains(player, "Kinetic Converter")]) * 15 * (eventPlayer.knockback / 100 + 1), Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        else:
            damage(victim, eventPlayer, eventPlayer.getHorizontalSpeed() * len([player for player in eventPlayer.Items if strContains(player, "Kinetic Converter")]) * 1.75)
        if not any([strContains(player, "Pickpocket") for player in eventPlayer.Items]) or victim.gold == 0:
            goto lbl_2
        smallMessage(eventPlayer, "   {0}TX C00000000044b59>{1}".format(txbypass, "{0}fg000000FF>-{1} Gold".format(txbypass, attacker.CurrentOdds) if localPlayer == victim else "{0}fgfff000FF>+{1} Gold".format(txbypass, attacker.pickpocket)))
        attacker.pickpocket = min(victim.gold, len([player for player in eventPlayer.Items if strContains(player, "Pickpocket")]) * 20)
        victim.gold -= attacker.pickpocket
        attacker.gold += attacker.pickpocket
        lbl_2:
        if not any([strContains(player, "Fae Exile") for player in eventPlayer.Items]):
            goto lbl_3
        smallMessage([victim, attacker], "   {0}fg000000FF>EXILED".format(txbypass))
        playEffect(getAllPlayers(), DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR_SOUND, Color.WHITE, victim.getPosition(), 90)
        victim.teleport(nearestWalkablePosition(victim.getPosition() + directionFromAngles(random.randint(0, 360), 0) * len([player for player in eventPlayer.Items if strContains(player, "Fae Exile")]) * 15))
        lbl_3:
        if not any([strContains(player, "Blasting Staff") for player in eventPlayer.Items]) or "Blasting Staff" in eventPlayer.CorruptItems:
            goto lbl_4
        async(blast, AsyncBehavior.RESTART)
        lbl_4:
        if not any([strContains(player, "Victory Sword") for player in eventPlayer.Items]):
            goto lbl_5
        async(victorysword, AsyncBehavior.RESTART)
        lbl_5:
        if not eventPlayer.meleedamage:
            goto lbl_6
        damage(victim, eventPlayer, eventPlayer.meleedamage)
        lbl_6:
        wait(1 if eventPlayer.getHero() == Hero.VENTURE else 0.25)


rule "On Hit [Global]":
    @Event playerDealtDamage
    @Condition eventAbility != null
    
    #Burny Stuff
    if eventPlayer.onhitlist[0]:
        if "Burny Stuff" in eventPlayer.CorruptItems:
            #[Corrupt] Burny Stuff
            for eventPlayer.cloverloop in range(-1, eventPlayer.clover):
                if eventAbility == Button.PRIMARY_FIRE or random.randint(1, 10) > 3:
                    goto lbl_0
                victim.burn = [eventPlayer.onhitlist[0] * 3, attacker]
                goto lbl_1
                lbl_0:
            lbl_1:
        else:
            victim.burn = [eventPlayer.onhitlist[0], attacker]
    #Troll Bomb
    if eventPlayer.onhitlist[1]:
        async(trollbomb, AsyncBehavior.NOOP)
    #Critsomallos
    if eventPlayer.onhitlist[3]:
        async(critsomallos, AsyncBehavior.NOOP)
    #Super Suction Device
    if eventPlayer.onhitlist[2]:
        async(supersucker, AsyncBehavior.NOOP)
    #Asbestos
    if eventPlayer.onhitlist[4]:
        async(asbestos, AsyncBehavior.NOOP)
    #Party Ammo
    if eventPlayer.onhitlist[5]:
        async(party, AsyncBehavior.NOOP)
    #Ukulele
    if eventPlayer.onhitlist[6]:
        async(ukulele, AsyncBehavior.NOOP)
    #[Corrupt] Energy Cell
    if eventPlayer.C_EnergyCell:
        async(C_EnergyCell, AsyncBehavior.NOOP)
    wait(0.25)


rule "On Elimination":
    @Event playerDealtFinalBlow
    
    #Blood Favour
    if any([strContains(player, "Blood Favour") for player in eventPlayer.Items]):
        if "Blood Favour" in eventPlayer.CorruptItems:
            goto lbl_0
        if eventAbility == Button.ULTIMATE:
            goto lbl_1
        eventPlayer.setUltCharge(eventPlayer.getUltCharge() + len([player for player in eventPlayer.Items if strContains(player, "Blood Favour")]) * 15)
        smallMessage(eventPlayer, "   {0}TX C0000000004f741>{0}fg00ff00FF>+{1}% Ult Charge".format(txbypass, 15 * len([player for player in eventPlayer.Items if strContains(player, "Blood Favour")])))
        lbl_0:
        lbl_1:
    #[Corrupt] Alien Head
    if any([strContains(player, "Alien Head") and "Alien Head" in eventPlayer.CorruptItems for player in eventPlayer.Items]):
        eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE, eventPlayer.getAbilityCooldown(Button.PRIMARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
        eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
        eventPlayer.setAbilityCooldown(Button.ABILITY_1, eventPlayer.getAbilityCooldown(Button.ABILITY_1) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
        eventPlayer.setAbilityCooldown(Button.ABILITY_2, eventPlayer.getAbilityCooldown(Button.ABILITY_2) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
        eventPlayer.setAbilityCooldown(Button.CROUCH, eventPlayer.getAbilityCooldown(Button.CROUCH) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
        eventPlayer.setAbilityCooldown(Button.JUMP, eventPlayer.getAbilityCooldown(Button.JUMP) - len([player for player in eventPlayer.Items if strContains(player, "Alien Head")]) * 8)
    smallMessage(eventPlayer, "   {0}fg00ff99FF>+9999 Social Credit".format(txbypass))
    eventPlayer.rerolls += 3


rule "On Death":
    @Event playerDied
    
    eventPlayer.stopAllDamageOverTime()
    #Drop Gold
    if eventPlayer.gold > 5:
        pickuparray.append(nearestWalkablePosition(eventPlayer.getPosition()))
        pickupvalue.append(eventPlayer.gold)
        createEffect(getAllPlayers(), Effect.ORB, ([_ for _, i in [Color.YELLOW, Color.WHITE, Color.ROSE, Color.RED, Color.VIOLET] if [50, 100, 150, 250, 99999][i] > eventPlayer.gold])[0], pickuparray.last() + vect(0, random.uniform(0.2, 1), 0), 1, EffectReeval.NONE)
        pickupeffects.append(getLastCreatedEntity())
    #[Corrupt] Sticky Fingers
    if not "Sticky Fingers" in eventPlayer.CorruptItems:
        eventPlayer.gold = 0
    else:
        eventPlayer.gold *= 0.1 * len([player for player in eventPlayer.Items if strContains(player, "Sticky Fingers")])
    if any([attacker == victim, not entityExists(victim), attacker == null]):
        goto lbl_0
    #Martyrdom
    if any([strContains(player, "Martyrdom") for player in eventPlayer.Items]) and not any([strContains(player, "Martyrdom") for player in eventPlayer.CorruptItems]):
        for duplicateloop in range(-1, eventPlayer.diplopia):
            createProjectile(Projectile.BASTION_TACTICAL_GRENADE, eventPlayer, null, directionFromAngles(random.randint(0, 360), 88), Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, len([player for player in eventPlayer.Items if strContains(player, "Martyrdom")]) * 100, 0.5, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.EXPLOSION_SOUND, 0, 7, 1, 8 * (eventPlayer.knockback / 100 + 1), 1, 50)
    lbl_0:
    waitUntil(eventPlayer.isAlive(), 99999)
    #Undo Brigification
    if eventPlayer.getHero() != Hero.BRIGITTE:
        goto lbl_1
    eventPlayer.stopForcingCurrentHero()
    eventPlayer.respawn()
    lbl_1:
    async(Start_Selection, AsyncBehavior.NOOP)
    #Abort On Self-Die
    if any([attacker == victim, not entityExists(victim), attacker == null]):
        return
    eventPlayer.queuedselections += createWorkshopSettingInt("Config", "Items Per Selection", 1, 1, 10)


def onReclamation():
    @Name "On Reclaim"
    
    #Unforseen Disaster Event
    if any([strContains(player, "Unforseen Disaster Event") for player in eventPlayer.Items]):
        damage((getPlayersInRadius(eventPlayer, 80 * (1 + eventPlayer.EXPLOOSION), 
        Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS)).exclude(eventPlayer), eventPlayer, 300)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.ORANGE, eventPlayer.getPosition(), 
        80 * (eventPlayer.EXPLOOSION + 1))

        playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION_SOUND, Team.ALL, eventPlayer.getPosition(), 200)
        playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION_SOUND, Team.ALL, eventPlayer.getPosition(), 200)


rule "RECLAMATION":
    @Event eachPlayer
    @Condition eventPlayer.gold > eventPlayer.goldtarget
    
    chaseAtRate(eventPlayer.gold, 0, 200, ChaseRateReeval.NONE)
    if not "Sticky Fingers" in eventPlayer.CorruptItems:
        waitUntil(eventPlayer.gold <= evalOnce(eventPlayer.goldtarget * 0.08 * \
        len([player for player in eventPlayer.Items if strContains(player, "Sticky Fingers")])), 99999)
    else:
        waitUntil(eventPlayer.gold <= 0, 99999)
    stopChasingVariable(eventPlayer.gold)
    #Spellbinder
    if any([strContains(player, "Spellbinder") for player in eventPlayer.Items]):
        eventPlayer.setUltCharge(100)
        bigMessage(eventPlayer, \
        " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\n{0}Reclamation!\r{1} 
        +Ultimate\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d"
        .format("{0}fgfff000ff>".format(txbypass), "{0}fgffffffff>".format(txbypass)))
    else:
        eventPlayer.addToScore(1 + len([player for player in eventPlayer.Items if strContains(player, "Compression Event")]))
        bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\n{0}Reclamation!\r{1} +{2} Score\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}fgfff000ff>".format(txbypass), "{0}fgffffffff>".format(txbypass), 1 + len([player for player in eventPlayer.Items if strContains(player, "Compression Event")])))
    #Raise Gold Target
    eventPlayer.goldtarget *= 1.12
    #onReclamation
    async(onReclamation, AsyncBehavior.RESTART)
    wait(0.2)
    if ruleCondition:
        loop()


rule "Generate Pickups":
    @Condition getSpawnPoints(Team.ALL) != []
    @Condition getTotalTimeElapsed() > 10
    
    waitUntil(len(pickuparray) < 75, 99999)
    wait(1.5)
    pickuparray.append(nearestWalkablePosition((random.choice([i for i in getSpawnPoints(Team.ALL) if len(getPlayersInRadius(i, 10, Team.ALL)) == 0])) + vect(random.randint(10, 150) / 10, 0, random.randint(10, 150) / 10)))
    pickupvalue.append(random.randint(Goldrates[0], Goldrates[1]))
    createEffect(getAllPlayers(), Effect.ORB, Color.YELLOW, pickuparray.last() + vect(0, random.uniform(0.2, 1), 0), 1, EffectReeval.NONE)
    pickupeffects.append(getLastCreatedEntity())
    loop()


rule "Remove Orb":
    @Condition len(removeorb) == true
    
    destroyEffect(pickupeffects[removeorb[0]])
    playEffect(getAllPlayers(), DynamicEffect.GOOD_EXPLOSION, Color.YELLOW, pickuparray[removeorb[0]], 1)
    playEffect(getAllPlayers(), DynamicEffect.BUFF_IMPACT_SOUND, Color.YELLOW, pickuparray[removeorb[0]], 18)
    del pickuparray[removeorb[0]]
    del pickupeffects[removeorb[0]]
    del pickupvalue[removeorb[0]]
    del removeorb[0]
    wait(0.1)
    if ruleCondition:
        loop()


rule "On Pickup [General]":
    @Event eachPlayer
    @Condition getTotalTimeElapsed() > 5
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.inSelection == false
    @Condition any([distance(player, eventPlayer) <= eventPlayer.pickuprange for player in pickuparray]) == true
    
    #Note the pickup's position and value
    eventPlayer.pickup = pickuparray.index(sorted(pickuparray, lambda player: distance(eventPlayer, player)))[0]
    eventPlayer.pickup.append(pickupvalue[eventPlayer.pickup])
    eventPlayer.pickuproutine = pickuparray[eventPlayer.pickup]
    #activate On-Pickup effects
    onPickup()
    #Append the pickup to a global array that deletes them
    removeorb.append(eventPlayer.pickup[0])
    wait(0.2)
    if ruleCondition:
        loop()


def onPickup():
    @Name "On Pickup [Item Effects]"
    
    #[Corrupt] Greed
    for eventPlayer.CollectLoop in range(-1, eventPlayer.C_Greed):
        if eventPlayer.CollectLoop != -1:
            for eventPlayer.cloverloop in range(-1, eventPlayer.clover):
                if random.randint(0, 1) == 1:
                    goto lbl_0
            return
            lbl_0:
        #Treasure Hunter
        if len([player for player in eventPlayer.Items if strContains(player.split(";"), "Treasure Hunter")]):
            for eventPlayer.cloverloop in range(-1, eventPlayer.clover):
                if (random.randint(1, 100 if "Treasure Hunter" in eventPlayer.CorruptItems else 10)) > 1:
                    goto lbl_1
                eventPlayer.gold += (eventPlayer.pickup[1] * (100 if "Treasure Hunter" in eventPlayer.CorruptItems else 10)) * len([player for player in eventPlayer.Items if strContains(player.split(";"), "Treasure Hunter")])
                smallMessage(eventPlayer, "   {0}TX C00000000044b59>{0}fgfff000FF>TREASURE! +{1} Gold".format(txbypass, (eventPlayer.pickup[1] * (100 if "Treasure Hunter" in eventPlayer.CorruptItems else 10)) * len([player for player in eventPlayer.Items if strContains(player.split(";"), "Treasure Hunter")])))
                goto lbl_2
                lbl_1:
            goto lbl_3
            lbl_2:
        else:
            lbl_3:
            eventPlayer.gold += eventPlayer.pickup[1]
            smallMessage(eventPlayer, "   {0}TX C00000000044b59>{0}fgfff000FF>+{1} Gold".format(txbypass, eventPlayer.pickup[1]))
        #Energy Cell
        if any([strContains(player, "Energy Cell") for player in eventPlayer.Items]):
            if "Energy Cell" in eventPlayer.CorruptItems:
                goto lbl_4
            eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE, eventPlayer.getAbilityCooldown(Button.PRIMARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            eventPlayer.setAbilityCooldown(Button.ABILITY_1, eventPlayer.getAbilityCooldown(Button.ABILITY_1) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            eventPlayer.setAbilityCooldown(Button.ABILITY_2, eventPlayer.getAbilityCooldown(Button.ABILITY_2) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            eventPlayer.setAbilityCooldown(Button.CROUCH, eventPlayer.getAbilityCooldown(Button.CROUCH) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            eventPlayer.setAbilityCooldown(Button.JUMP, eventPlayer.getAbilityCooldown(Button.JUMP) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
            lbl_4:
        #Storm Cell
        if any([strContains(player, "Storm Cell") for player in eventPlayer.Items]):
            if "Storm Cell" in eventPlayer.CorruptItems and random.randint(1, 6) != 6:
                goto lbl_5
            eventPlayer.setUltCharge(eventPlayer.getUltCharge() + (len([player for player in eventPlayer.Items if strContains(player, "Storm Cell")]) * (18 if "Storm Cell" in eventPlayer.CorruptItems else 3)))
            lbl_5:
        #Gluttony
        if any([strContains(player, "Gluttony") for player in eventPlayer.Items]):
            heal(eventPlayer, eventPlayer, len([player for player in eventPlayer.Items if strContains(player, "Gluttony")]) * 20)
        #Fireworks
        if any([strContains(player, "Fireworks") for player in eventPlayer.Items]) and not "Fireworks" in CorruptItems:
            for duplicateloop in range(-1, eventPlayer.diplopia):
                createHomingProjectile(Projectile.PHARAH_ROCKET, eventPlayer, eventPlayer.pickuproutine, directionFromAngles(random.randint(0, 360), -88), Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, len([player for player in eventPlayer.Items if strContains(player, "Fireworks")]) * 60, 1, 4 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.PHARAH_ROCKET_LAUNCHER_EXPLOSION_SOUND, 0, 20, 1, 6 * (eventPlayer.knockback / 100 + 1), sorted(getLivingPlayers(Team.ALL).exclude(eventPlayer), lambda i: distance(i, eventPlayer))[0])
            playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.pickuproutine, 130)
        #Wormhole
        if any([strContains(player, "Wormhole") for player in eventPlayer.Items]):
            eventPlayer.teleport(nearestWalkablePosition(eventPlayer.getPosition() + (((directionFromAngles(eventPlayer.getHorizontalFacingAngle(), 0) if "Wormhole" in eventPlayer.CorruptItems else directionFromAngles(random.randint(0, 360), 0)) * len([player for player in eventPlayer.Items if strContains(player, "Wormhole")])) * 10)))
            playEffect(getAllPlayers(), DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 70)
        #Seanut Brittle
        if any([strContains(player, "Seanut Brittle") for player in eventPlayer.Items]):
            createProjectile(Projectile.BASTION_TACTICAL_GRENADE, eventPlayer, eventPlayer.pickuproutine + vect(0, 0.25, 0), Vector.UP, Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, 140, 0.5, 10 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION_SOUND, 0, 0.1, 0.1, 6 * (eventPlayer.knockback / 100 + 1))
            playEffect(getAllPlayers(), DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 90)


rule "BURN":
    @Event eachPlayer
    @Condition eventPlayer.burn[0] == true
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.setStatusEffect(eventPlayer.burn[1], Status.BURNING, 9999)
    while eventPlayer.burn[0] and eventPlayer.isAlive():
        waitUntil(eventPlayer.isDead(), 0.5)
        eventPlayer.setHealth(eventPlayer.getHealth() * 0.925)
        eventPlayer.burn[0] -= 0.5
    eventPlayer.clearStatusEffect(Status.BURNING)
    eventPlayer.burn = null


rule "CDR [Ability 1]":
    @Event eachPlayer
    @Condition (eventPlayer.CDRflat or eventPlayer.CDRpercentage != 1) == true
    @Condition eventPlayer.getAbilityCooldown(Button.ABILITY_1) > 0
    
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, eventPlayer.getAbilityCooldown(Button.ABILITY_1) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.ABILITY_1) * (abs(eventPlayer.CDRpercentage - 1)))))
    wait(0.25)


rule "CDR [Ability 2]":
    @Event eachPlayer
    @Condition (eventPlayer.CDRflat or eventPlayer.CDRpercentage != 1) == true
    @Condition eventPlayer.getAbilityCooldown(Button.ABILITY_2) > 0
    
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, eventPlayer.getAbilityCooldown(Button.ABILITY_2) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.ABILITY_2) * (abs(eventPlayer.CDRpercentage - 1)))))
    wait(0.25)


rule "CDR [Secondary]":
    @Event eachPlayer
    @Condition (eventPlayer.CDRflat or eventPlayer.CDRpercentage != 1) == true
    @Condition eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) > 0
    
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) * (abs(eventPlayer.CDRpercentage - 1)))))
    wait(0.25)


def cdrother():
    @Name "CDR [Other]"
    
    waitUntil(any([eventPlayer.getAbilityCooldown(i) > 0 for i in [Button.PRIMARY_FIRE, Button.JUMP, Button.CROUCH, Button.RELOAD]]), 99999)
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE, eventPlayer.getAbilityCooldown(Button.PRIMARY_FIRE) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.PRIMARY_FIRE) * (abs(eventPlayer.CDRpercentage - 1)))))
    eventPlayer.setAbilityCooldown(Button.CROUCH, eventPlayer.getAbilityCooldown(Button.CROUCH) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.CROUCH) * (abs(eventPlayer.CDRpercentage - 1)))))
    eventPlayer.setAbilityCooldown(Button.JUMP, eventPlayer.getAbilityCooldown(Button.JUMP) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.JUMP) * (abs(eventPlayer.CDRpercentage - 1)))))
    eventPlayer.setAbilityCooldown(Button.RELOAD, eventPlayer.getAbilityCooldown(Button.RELOAD) - (eventPlayer.CDRflat + (eventPlayer.getAbilityCooldown(Button.RELOAD) * (abs(eventPlayer.CDRpercentage - 1)))))
    waitUntil(all([eventPlayer.getAbilityCooldown(i) == 0 for i in [Button.PRIMARY_FIRE, Button.JUMP, Button.CROUCH, Button.RELOAD]]), 99999)
    wait(0.25)
    if eventPlayer.isAlive():
        loop()


rule "Environment Kill Credit Hack":
    @Event playerDealtKnockback
    @Condition eventAbility == null
    
    victim.setEnvironmentalKillCreditor(eventPlayer)


def wiredfunds():
    @Name "# Wired Funds"
    
    waitUntil(not eventPlayer.inSelection, 99999)
    wait(2)
    if eventPlayer.isDead():
        return
    while eventPlayer.isAlive():
        if not eventPlayer.inSelection:
            eventPlayer.gold += len([player for player in eventPlayer.Items if strContains(player, "Wired Funds")]) * 2
        wait(2)


def ukulele():
    @Name "# And his music was electric"
    
    if not "Ukulele" in eventPlayer.CorruptItems:
        eventPlayer.electricboogaloo = []
        destroyEffect(eventPlayer.itemeffs[0])
        createBeam(getAllPlayers(), Beam.BAD, eventPlayer.electricboogaloo[0], eventPlayer.electricboogaloo[1], eventPlayer.getTeam(), EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        eventPlayer.itemeffs[0] = getLastCreatedEntity()
        #For Loop
        for eventPlayer.ukulele in range(len([player for player in eventPlayer.Items if strContains(player, "Ukulele")])):
            eventPlayer.electricboogaloo[0] = victim
            if len(getPlayersInRadius(eventPlayer.electricboogaloo[0], 20, Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS).exclude([getDeadPlayers(Team.ALL), eventPlayer.electricboogaloo[0], eventPlayer])) == 0:
                goto lbl_0
            eventPlayer.electricboogaloo[1] = random.choice(getPlayersInRadius(eventPlayer.electricboogaloo[0], 20, Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS).exclude([getDeadPlayers(Team.ALL), eventPlayer.electricboogaloo[0], eventPlayer]))
            damage(eventPlayer.electricboogaloo[1], eventPlayer, 65)
            playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, eventPlayer.getTeam(), eventPlayer.electricboogaloo[1], 1)
            playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, eventPlayer.getTeam(), eventPlayer.electricboogaloo[1], 40)
            wait(0.25)
        lbl_0:
        destroyEffect(eventPlayer.itemeffs[0])
    else:
        #[Corrupt] Ukulele
        damage((getPlayersInRadius(victim, len([player for player in eventPlayer.Items if strContains(player, "Ukulele")]) * 8 + eventPlayer.EXPLOOSION, Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS)).exclude([eventPlayer, victim]), eventPlayer, 65 + eventDamage + eventPlayer.meleedamage)
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.BLUE, victim, len([player for player in eventPlayer.Items if strContains(player, "Ukulele")]) * 14 + eventPlayer.EXPLOOSION)
        playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Team.ALL, victim.getPosition(), 100)
    wait(4)


def armamentify():
    @Name "# Armamentify"
    
    #C_Armamentify
    if any([strContains(player, "Armamentify") for player in eventPlayer.CorruptItems]):
        startDamageModification(eventPlayer, getAllPlayers(), 100 - len([player for player in eventPlayer.Items if strContains(player, "Armamentify")]) * 5, DamageReeval.NONE)
        eventPlayer.C_Armamentify = getLastDamageModification()
        waitUntil(eventPlayer.isDead(), 99999)
        stopDamageModification(eventPlayer.C_Armamentify)
        return
    eventPlayer.addHealthPool(Health.ARMOR, len([player for player in eventPlayer.Items if strContains(player, "Armamentify")]) * 50, true, false)
    waitUntil(eventPlayer.isDead(), 99999)
    eventPlayer.removeAllHealthPools()


def xray():
    @Name "# X-Ray Goggles"
    
    if not "X-Ray Goggles" in eventPlayer.CorruptItems:
        eventPlayer.Reveal1 = (getPlayersInRadius(eventPlayer, 10 * len([player for player in eventPlayer.Items if strContains(player, "X-Ray Goggles")]), Team.ALL)).exclude([getDeadPlayers(Team.ALL), eventPlayer])
    else:
        eventPlayer.Reveal1 = sorted(getLivingPlayers(Team.ALL).exclude(eventPlayer), lambda i: distance(i, eventPlayer)).slice(0, len([player for player in eventPlayer.Items if strContains(player, "X-Ray Goggles")]))
    wait(0.25)
    if eventPlayer.isAlive():
        loop()
    eventPlayer.Reveal1 = []


def opportunist():
    @Name "# Opportunist"
    
    if not "Opportunist" in eventPlayer.CorruptItems:
        eventPlayer.Reveal2 = ([player for player in getLivingPlayers(Team.ALL) if player.getNormalizedHealth() <= 0.1 + 0.15 * eventPlayer.opportunist]).exclude(eventPlayer)
    else:
        eventPlayer.Reveal2 = ([player for player in getLivingPlayers(Team.ALL) if player.getNormalizedHealth() >= 0.95 - 0.15 * eventPlayer.opportunist]).exclude(eventPlayer)
    wait(0.25)
    if eventPlayer.isAlive():
        loop()
    eventPlayer.Reveal2 = []


def gungeon():
    @Name "# Gungeon Pepper"
    
    destroyEffect(eventPlayer.itemeffs[1])
    createEffect(getAllPlayers(), Effect.RING, Color.RED, updateEveryFrame(eventPlayer.getPosition()), 12, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.itemeffs[1] = getLastCreatedEntity()
    while eventPlayer.isAlive():
        if not "Gungeon Pepper" in eventPlayer.CorruptItems:
            damage(getPlayersInRadius(eventPlayer, 12, Team.ALL, LosCheck.SURFACES).exclude(eventPlayer), eventPlayer, len([player for player in eventPlayer.Items if strContains(player, "Gungeon Pepper")]) * 1.5)
        else:
            getPlayersInRadius(eventPlayer, 12, Team.ALL, LosCheck.SURFACES).exclude(eventPlayer).burn = [len([player for player in eventPlayer.Items if strContains(player, "Gungeon Pepper")]) * 2, eventPlayer]
            damage(getPlayersInRadius(eventPlayer, 12, Team.ALL, LosCheck.SURFACES).exclude(eventPlayer), eventPlayer, 1)
        wait(0.125)
    destroyEffect(eventPlayer.itemeffs[1])


def crouchitems():
    @Name "# Crouch Items"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.isCrouching(), 99999)
    eventPlayer.urbanevasion[0] = eventPlayer.size
    eventPlayer.urbanevasion[1] = eventPlayer.speed
    #Minimize
    if any([strContains(player, "Minimize") for player in eventPlayer.Items]) and not "Minimize" in eventPlayer.CorruptItems:
        eventPlayer.size -= 0.15 * len([player for player in eventPlayer.Items if strContains(player, "Minimize")])
    #Urban Evasion
    if any([strContains(player, "Urban Evasion") for player in eventPlayer.Items]):
        #[Corrupt] Urban Evasion
        if "Urban Evasion" in eventPlayer.CorruptItems:
            eventPlayer.setJumpVerticalSpeed(100 * (len([player for player in eventPlayer.Items if strContains(player, "Urban Evasion")]) * 0.8 + 1))
        else:
            eventPlayer.speed = eventPlayer.speed + (100 * (len([player for player in eventPlayer.Items if strContains(player, "Urban Evasion")]) * 0.35 + 1)) - 100
        eventPlayer.setMoveSpeed(max(eventPlayer.speed + 100, 20))
    waitUntil(eventPlayer.isDead() or not eventPlayer.isCrouching(), 99999)
    eventPlayer.speed = eventPlayer.urbanevasion[1]
    eventPlayer.size = eventPlayer.urbanevasion[0]
    eventPlayer.setJumpVerticalSpeed(100)
    wait(0.25)
    if eventPlayer.isAlive():
        loop()


def payingdividends():
    @Name "# Paying Dividends"
    
    waitUntil(not eventPlayer.inSelection, 99999)
    wait(3)
    if eventPlayer.isDead():
        return
    while eventPlayer.isAlive():
        if not eventPlayer.inSelection:
            eventPlayer.gold *= len([player for player in eventPlayer.Items if strContains(player, "Paying Dividends")]) * 0.05 + 1
        wait(3)


def alchemy():
    @Name "# Alchemy Machine"
    
    waitUntil(not eventPlayer.inSelection, 99999)
    wait(3)
    if eventPlayer.isDead():
        return
    eventPlayer.alchemy = 0
    if not "Alchemy Machine" in eventPlayer.CorruptItems:
        #Alchemy Machine
        while eventPlayer.isAlive():
            if eventPlayer.getUltCharge() <= eventPlayer.alchemy:
                goto lbl_0
            eventPlayer.gold += len([player for player in eventPlayer.Items if strContains(player, "Alchemy Machine")]) * (eventPlayer.getUltCharge() - eventPlayer.alchemy)
            lbl_0:
            eventPlayer.alchemy = eventPlayer.getUltCharge()
            wait(2)
    else:
        eventPlayer.alchemy = eventPlayer.gold
        #[Corrupt] Alchemy Machine
        while eventPlayer.isAlive():
            if eventPlayer.gold <= eventPlayer.alchemy:
                goto lbl_1
            eventPlayer.setUltCharge(eventPlayer.getUltCharge() + ((len([player for player in eventPlayer.Items if strContains(player, "Alchemy Machine")]) * (eventPlayer.gold - eventPlayer.alchemy)) * 0.5))
            lbl_1:
            eventPlayer.alchemy = eventPlayer.gold
            wait(2)


def hopoo():
    @Name "# Hopoo Feather"
    
    for eventPlayer.hopoo in range(evalOnce(len([player for player in eventPlayer.Items if strContains(player, "Hopoo Feather")]))):
        waitUntil(eventPlayer.isDead() or eventPlayer.isInAir() and not eventPlayer.isHoldingButton(Button.JUMP), 99999)
        wait(0.1)
        waitUntil(eventPlayer.isOnGround() or eventPlayer.isDead() or eventPlayer.isInAir() and eventPlayer.isHoldingButton(Button.JUMP), 99999)
        if eventPlayer.isDead():
            return
        if eventPlayer.isOnGround():
            goto lbl_0
        if not "Hopoo Feather" in eventPlayer.CorruptItems:
            #Hopoo Feather
            eventPlayer.applyImpulse(Vector.UP, 11, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        else:
            #[Corrupt] Hopoo Feather
            eventPlayer.applyImpulse((Vector.FORWARD if eventPlayer.getThrottle() == vect(0, 0, 0) else eventPlayer.getThrottle()) + vect(0, 0.3, 0), 16, Relativity.TO_PLAYER, Impulse.CANCEL_CONTRARY_MOTION)
            lbl_0:
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, eventPlayer.getPosition(), 6)
        playEffect(getAllPlayers(), DynamicEffect.WINSTON_JUMP_PACK_LANDING_SOUND, Color.WHITE, eventPlayer.getPosition(), 30)
    wait(0.2)
    waitUntil(eventPlayer.isOnGround() or eventPlayer.isDead(), 99999)
    if eventPlayer.isAlive():
        loop()


def blast():
    @Name "# Gotta Blast"
    
    damage((getPlayersInRadius(victim, 3 + len([player for player in eventPlayer.Items if strContains(player, "Blasting Staff")]) * 3 + eventPlayer.EXPLOOSION, Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS)).exclude([eventPlayer, victim]), eventPlayer, 30 + eventDamage + eventPlayer.meleedamage)
    playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.ORANGE, victim, 3 + len([player for player in eventPlayer.Items if strContains(player, "Blasting Staff")]) * 3 + eventPlayer.EXPLOOSION)
    playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Team.ALL, victim.getPosition(), 100)
    wait(0.5)


def waxquail():
    @Name "# Wax Quail"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.isJumping(), 99999)
    if eventPlayer.isDead():
        return
    eventPlayer.applyImpulse(Vector.FORWARD if eventPlayer.getThrottle() == vect(0, 0, 0) else eventPlayer.getThrottle(), 5 * len([player for player in eventPlayer.Items if strContains(player, "Wax Quail")]), Relativity.TO_PLAYER, Impulse.INCORPORATE_CONTRARY_MOTION)
    waitUntil(eventPlayer.isDead() or eventPlayer.isOnGround(), 99999)
    if eventPlayer.isAlive():
        loop()


def trollbomb():
    @Name "# Troll Bomb"
    
    if not "Troll Bomb" in eventPlayer.CorruptItems:
        #Troll Bomb
        for eventPlayer.cloverloop in range(-1, eventPlayer.clover):
            if random.randint(1, 10) > len([player for player in eventPlayer.Items if strContains(player, "Troll Bomb")]):
                goto lbl_0
            for duplicateloop in range(-1, eventPlayer.diplopia):
                createProjectile(Projectile.LUCIO_SONIC_AMPLIFIER, eventPlayer, null, null, Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, 5, 1, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT_SOUND, 0.3, 25, 2, 30 * (eventPlayer.knockback / 100 + 1))
            playEffect(getAllPlayers(), DynamicEffect.ORISA_HALT_IMPLOSION_SOUND, Color.WHITE, eventPlayer, 60)
            goto lbl_1
            lbl_0:
        lbl_1:
    else:
        #[Corrupt] Troll Bomb
        for duplicateloop in range(-1, eventPlayer.diplopia, 1 / len([player for player in eventPlayer.Items if strContains(player, "Troll Bomb")])):
            createProjectile(Projectile.LUCIO_SONIC_AMPLIFIER, eventPlayer, null, null, Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, 5, 1, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT_SOUND, 0.3, 25, 2, 30 * (eventPlayer.knockback / 100 + 1))
        playEffect(getAllPlayers(), DynamicEffect.ORISA_HALT_IMPLOSION_SOUND, Color.WHITE, eventPlayer, 60)
        goto lbl_2
    lbl_2:
    wait(0.5)
    if not "Troll Bomb" in eventPlayer.CorruptItems:
        goto lbl_3
    wait(3.5)
    lbl_3:


def critsomallos():
    @Name "# Critsomallos"
    
    if eventWasCriticalHit:
        return
    for eventPlayer.cloverloop in range(-1, eventPlayer.clover):
        if random.uniform(1, 6.6) > len([player for player in eventPlayer.Items if strContains(player, "Critsomallos")]):
            goto lbl_0
        async(crit, AsyncBehavior.RESTART)
        goto lbl_1
        lbl_0:
    lbl_1:
    wait(0.5)


def crit():
    @Name "# CRIT"
    
    #Using "Set Player Health" instead of "Damage Player" avoids applying damage buffs/resistances twice.
    victim.setHealth(victim.getHealth() - eventDamage)
    playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.RED, victim, 1)
    playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, victim, 200)
    #Since "Set Player Health" has a minimum of 1, the victim will die if their HP is at this value after Crit damage is applied.
    if victim.getHealth() > 1:
        goto lbl_0
    kill(victim, attacker)
    lbl_0:


def asbestos():
    @Name "# Asbestos"
    
    victim.startDamageOverTime(attacker, 6, len([player for player in eventPlayer.Items if strContains(player, "Asbestos")]) * 30 / 6)
    wait(1)


def supersucker():
    @Name "# Super Suction Device"
    
    if distance(victim, attacker) < max(5, 24 - len([player for player in eventPlayer.Items if strContains(player, "Super Sucker")]) * 4):
        return
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 0.5, 0), 1.5)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 0.8, 0), 1.7)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 1.1, 0), 2)
    playEffect(getAllPlayers(), DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.GRAY, victim, 60)
    victim.applyImpulse(directionFromAngles(horizontalAngleTowards(victim, attacker), -10), (eventPlayer.knockback / 100 + 1) * 30, Relativity.TO_PLAYER, Impulse.CANCEL_CONTRARY_MOTION)
    wait(4)


def uranium():
    @Name "# Uranium Rod"
    
    destroyEffect(eventPlayer.itemeffs[1])
    createEffect(getAllPlayers(), Effect.RING, Color.RED, updateEveryFrame(eventPlayer.getPosition()), 12, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.itemeffs[1] = getLastCreatedEntity()
    while eventPlayer.isAlive():
        damage(getPlayersInRadius(eventPlayer, 12, Team.ALL, LosCheck.SURFACES).exclude(eventPlayer), eventPlayer, eventPlayer.getUltCharge() + ((-1 + len([player for player in eventPlayer.Items if strContains(player, "Uranium Rod")])) * 10))
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.RED, eventPlayer, 20)
        playEffect(getAllPlayers(), DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION_SOUND, Color.RED, eventPlayer.getEyePosition(), 80)
        wait(3)
    destroyEffect(eventPlayer.itemeffs[1])


def victorysword():
    @Name "# Victory Sword"
    
    eventPlayer.victorysword.append(5)
    damage(victim, eventPlayer, len(eventPlayer.victorysword) * 20 * len([player for player in eventPlayer.Items if strContains(player, "Victory Sword")]))
    smallMessage(eventPlayer, "   {0}TX C00000000004e94>{0}fg6efdfdFF>X{1}".format(txbypass, len(eventPlayer.victorysword)))
    while eventPlayer.isAlive() and eventPlayer.victorysword > 0:
        wait(1)
        eventPlayer.victorysword = ([player - 1 for player in eventPlayer.victorysword]).exclude(0)
    eventPlayer.victorysword = []


def lightningbug():
    @Name "# Lightning Bug"
    
    eventPlayer.statchangehud = true
    waitUntil(buggies or eventPlayer.isDead(), 99999)
    if eventPlayer.isDead():
        return
    if not eventPlayer.inSelection:
        eventPlayer.setStatusEffect(null, Status.BURNING, 1)
        playEffect(getAllPlayers(), DynamicEffect.GOOD_PICKUP_EFFECT, Color.PURPLE, eventPlayer, 1)
        playEffect(getAllPlayers(), DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR_SOUND, Team.ALL, eventPlayer.getEyePosition(), 200)
        eventPlayer.lightningbug = len([player for player in eventPlayer.Items if strContains(player, "Lightning Bug")])
        eventPlayer.damage += 100 * eventPlayer.lightningbug
        eventPlayer.setDamageDealt(max(eventPlayer.damage + 100, 20))
        wait(1)
        eventPlayer.damage -= 100 * eventPlayer.lightningbug
        playEffect(getAllPlayers(), DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR_SOUND, Team.ALL, eventPlayer.getEyePosition(), 100)
    if eventPlayer.isAlive():
        loop()


rule "buggies":
    buggies = false
    wait(random.randint(4, 15))
    buggies = true
    wait(0.1)
    loop()


def backupgenerator():
    @Name "# Backup Generator"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.getUltCharge() >= 80 - evalOnce(len([player for player in eventPlayer.Items if strContains(player, "Backup Generator")]) * 10), 99999)
    if eventPlayer.isDead():
        return
    while eventPlayer.isAlive() and eventPlayer.getUltCharge() >= 80 - evalOnce(len([player for player in eventPlayer.Items if strContains(player, "Backup Generator")]) * 10):
        wait(1)
        eventPlayer.setUltCharge(eventPlayer.getUltCharge() + 3)
    if eventPlayer.isAlive():
        loop()


def zoltanshield():
    @Name "# Zoltan Shield"
    
    eventPlayer.zoltan = 1
    for eventPlayer.multiplicativestack in range(len([player for player in eventPlayer.Items if strContains(player, "Zoltan Shield")])):
        eventPlayer.zoltan *= 0.75
    startDamageModification(eventPlayer, getAllPlayers(), 100 if eventPlayer.getNormalizedHealth() < 0.7 else eventPlayer.zoltan)
    eventPlayer.zoltan.append(getLastDamageModification())
    waitUntil(eventPlayer.isDead(), 99999)
    stopDamageModification(eventPlayer.zoltan[1])


def scepter():
    @Name "# Ancient Scepter"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.getUltCharge() == 100, 99999)
    for eventPlayer.scepter in range(evalOnce(len([player for player in eventPlayer.Items if strContains(player, "Ancient Scepter")]))):
        waitUntil(eventPlayer.isDead() or eventPlayer.getUltCharge() < 50, 99999)
        if eventPlayer.isDead():
            return
        eventPlayer.setUltCharge(100)
        bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\n{0}fgc6007cFF>AGAIN!\r\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format(txbypass))
    waitUntil(eventPlayer.getUltCharge() < 50, 99999)
    if eventPlayer.isAlive():
        loop()


def box():
    @Name "# box"
    
    eventPlayer.Items.append(random.shuffle(CommonItems.concat(UncommonItems).concat(RareItems).concat(LegendaryItems.exclude(LegendaryItems[11]))).slice(0, max(3 * eventPlayer.TIX, 3)))
    bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nObtained {0}\r\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}{1}{2} Random Items!".format(txbypass, RarityColors[3], max(3 * eventPlayer.TIX, 3))))
    wait(0.5)
    eventPlayer.TIX = 0


def IAMHERE():
    @Name "# I AM HERE!"
    
    wait(5)
    if eventPlayer.isDead():
        return
    while eventPlayer.isAlive():
        waitUntil(eventPlayer.isDead() or any([i.getNormalizedHealth() < 0.25 for i in getLivingPlayers(Team.ALL).exclude(getPlayersInRadius(eventPlayer, 20, Team.ALL))]), 99999)
        eventPlayer.teleport(nearestWalkablePosition(sorted(getLivingPlayers(Team.ALL).exclude(eventPlayer), lambda i: i.getNormalizedHealth())[0]))
        wait(0.1)
        playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT_SOUND, Color.PURPLE, eventPlayer.getEyePosition(), 200)
        playEffect(getAllPlayers(), DynamicEffect.GOOD_EXPLOSION, Color.YELLOW, eventPlayer.getPosition(), 10)
        bigMessage(getPlayersInRadius(eventPlayer, 20, Team.ALL), " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\n{0}:{1}fgd8d12dFF> I AM HERE!\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format(heroIcon(eventPlayer.getHero()), txbypass))
        heal(eventPlayer, eventPlayer, 75)
        waitUntil(eventPlayer.isDead(), 24 - len([player for player in eventPlayer.Items if strContains(player, "I AM HERE")]) * 4)
        if eventPlayer.isDead():
            goto lbl_0
    lbl_0:


def bioticinversion():
    @Name "# Biotic Inversion"
    
    destroyEffect(eventPlayer.itemeffs[1])
    createEffect(getAllPlayers(), Effect.RING, Color.RED, updateEveryFrame(eventPlayer.getPosition()), 12, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.itemeffs[1] = getLastCreatedEntity()
    eventPlayer.binversion = eventPlayer.getStatistic(Stat.HEALING_DEALT)
    while eventPlayer.isAlive():
        damage(getPlayersInRadius(eventPlayer, 12, Team.ALL, LosCheck.SURFACES).exclude(eventPlayer), eventPlayer, ((eventPlayer.getStatistic(Stat.HEALING_DEALT) - eventPlayer.binversion) * len([player for player in eventPlayer.Items if strContains(player, "Biotic Inversion")])) * 0.5)
        eventPlayer.binversion = eventPlayer.getStatistic(Stat.HEALING_DEALT)
        wait(0.5)
    destroyEffect(eventPlayer.itemeffs[1])


def party():
    @Name "# Party"
    
    victim.setEnvironmentalKillCreditor(eventPlayer)
    #Pick your poison
    goto loc+random.choice([1, 4, 7, 13, 16, 23, 26, 31, 37, 42, 47])
    #1
    if false:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Ukulele!".format(txbypass))
        async(ukulele, AsyncBehavior.NOOP)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Burny Stuff!".format(txbypass))
        victim.burn = [1, attacker]
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Troll Bomb!".format(txbypass))
        for duplicateloop in range(-1, eventPlayer.diplopia):
            createProjectile(Projectile.LUCIO_SONIC_AMPLIFIER, eventPlayer, null, null, Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, 5, 1, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT_SOUND, 0.3, 25, 2, 30 * (eventPlayer.knockback / 100 + 1))
        playEffect(getAllPlayers(), DynamicEffect.ORISA_HALT_IMPLOSION_SOUND, Color.WHITE, eventPlayer, 60)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Critsomallos!".format(txbypass))
        async(crit, AsyncBehavior.NOOP)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Super Sucker!".format(txbypass))
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 0.5, 0), 1.5)
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 0.8, 0), 1.7)
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, victim.getPosition() + vect(0, 1.1, 0), 2)
        playEffect(getAllPlayers(), DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.GRAY, victim, 60)
        victim.applyImpulse(directionFromAngles(horizontalAngleTowards(victim, attacker), -10), (eventPlayer.knockback / 100 + 1) * 30, Relativity.TO_PLAYER, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Asbestos!".format(txbypass))
        victim.startDamageOverTime(attacker, 6, 5)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Kinetic Converter!".format(txbypass))
        playEffect(getAllPlayers(), DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, victim.getPosition(), 90)
        eventPlayer.applyImpulse(directionFromAngles(horizontalAngleOfDirection(directionTowards(victim, eventPlayer)), -25), 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        victim.applyImpulse(directionFromAngles(horizontalAngleOfDirection(directionTowards(eventPlayer, victim)), -25), 15 * (eventPlayer.knockback / 100 + 1), Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Pickpocket!".format(txbypass))
        smallMessage(eventPlayer, "   {0}TX C00000000044b59>{1}".format(txbypass, "{0}fg000000FF>-{1} Gold".format(txbypass, attacker.CurrentOdds) if localPlayer == victim else "{0}fgfff000FF>+{1} Gold".format(txbypass, attacker.pickpocket)))
        attacker.pickpocket = min(victim.gold, 10)
        victim.gold -= attacker.pickpocket
        attacker.gold += attacker.pickpocket
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>EXILED!".format(txbypass))
        smallMessage(victim, "   {0}fg000000FF>EXILED".format(txbypass))
        playEffect(getAllPlayers(), DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR_SOUND, Color.WHITE, victim.getPosition(), 90)
        victim.teleport(nearestWalkablePosition(victim.getPosition() + directionFromAngles(random.randint(0, 360), 0) * 15))
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Blasting Staff!".format(txbypass))
        damage((getPlayersInRadius(victim, 6 + eventPlayer.EXPLOOSION, Team.ALL, LosCheck.SURFACES_AND_ENEMY_BARRIERS)).exclude([eventPlayer, victim]), eventPlayer, 30 + eventDamage + eventPlayer.meleedamage)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.ORANGE, victim, 6 + eventPlayer.EXPLOOSION)
        playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Team.ALL, victim.getPosition(), 100)
    else:
        smallMessage([victim, attacker], "   {0}fgffd4efFF>Victory Sword!".format(txbypass))
        async(victorysword, AsyncBehavior.RESTART)
    wait(2)


def godrim():
    @Name "# Godrim Nerf"
    
    eventPlayer.setAimSpeed(100 + random.randint(-2, 2) * 17)
    wait(random.randint(10, 15))
    if any(["Godrim Nerf" in player for player in eventPlayer.Items]):
        loop()
    eventPlayer.setAimSpeed(100)


rule "# Item On Game Start":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition createWorkshopSettingBool("Config", "Start game with Rare item selection\u0001", true) == true
    
    eventPlayer.queuedselections = 1
    eventPlayer.Guarantee = 2
    Start_Selection()
    wait(9999)


def CorruptSelection():
    @Name "Corrupted Item Selection [Start]"
    
    eventPlayer.CorruptionEffs = true
    if eventPlayer.queuedselections == 0:
        return
    eventPlayer.SelectionVisibility = [false, false, false]
    waitUntil(eventPlayer.getEyePosition() != null, 99999)
    wait(0.05)
    async(disableinputs, AsyncBehavior.RESTART)
    #Skip if continuing selection.
    if not eventPlayer.inSelection:
        placebuttons()
        #Stop Player From Existing
        eventPlayer.setStatusEffect(null, Status.ROOTED, 9999)
        eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
        eventPlayer.setInvisibility(Invis.ALL)
        eventPlayer.disableHeroHud()
        wait(0.2)
    eventPlayer.inSelection = true
    #Generate Options
    CorruptRandomizer()
    async(CorruptFinish, AsyncBehavior.RESTART)
    while eventPlayer.inSelection:
        eventPlayer.canSelect = true if any([angleBetweenVectors(player, eventPlayer.getFacingDirection()) < 15 for player in eventPlayer.buttonangles]) else false
        eventPlayer.selector = eventPlayer.buttonangles.index(sorted(eventPlayer.buttonangles, lambda player: angleBetweenVectors(player, eventPlayer.getFacingDirection()))[0])
        if abs(eventPlayer.getVerticalFacingAngle()) > 35:
            eventPlayer.setFacing(directionFromAngles(eventPlayer.getHorizontalFacingAngle(), 35 if eventPlayer.getVerticalFacingAngle() > 0 else -35), Relativity.TO_WORLD)
        if abs(eventPlayer.getHorizontalFacingAngle()) > 50:
            eventPlayer.setFacing(directionFromAngles(50 if eventPlayer.getHorizontalFacingAngle() > 0 else -50, eventPlayer.getVerticalFacingAngle()), Relativity.TO_WORLD)
        wait(0.1)
    eventPlayer.enableHeroHud()
    eventPlayer.stopCamera()
    eventPlayer.canSelect = false
    eventPlayer.selector = null
    eventPlayer.clearStatusEffect(Status.ROOTED)
    eventPlayer.clearStatusEffect(Status.PHASED_OUT)
    eventPlayer.setInvisibility(Invis.NONE)
    eventPlayer.CorruptionEffs = false


def CorruptFinish():
    @Name "Corruption Item Selection [Finish]"
    
    if eventPlayer.queuedselections != 0:
        wait(0.1)
        waitUntil(all([entityExists(eventPlayer), not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE), eventPlayer.canSelect]), 99999)
        waitUntil(any([eventPlayer.isHoldingButton(Button.PRIMARY_FIRE), not entityExists(eventPlayer), not eventPlayer.canSelect]), 99999)
        if not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
            loop()
        #Reroll
        if "Reroll" in eventPlayer.options[eventPlayer.selector].split(";"):
            if eventPlayer.rerolls == 0:
                loop()
            eventPlayer.rerolls--
            async(CorruptSelection, AsyncBehavior.RESTART)
            playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 200)
            playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 140)
            return
        eventPlayer.Guarantee = null
        #Apply Item(s)
        for eventPlayer.multiplicativestack in range(-1, max(0, eventPlayer.TIX - 1), 1 / (1 + len([player for player in eventPlayer.Items if strContains(player, "Primary Expertise")])) if eventPlayer.options[eventPlayer.selector].split(";")[3] == "0" else 1):
            eventPlayer.Items.append(eventPlayer.options[eventPlayer.selector])
            if eventPlayer.options[eventPlayer.selector].split(";")[0] in eventPlayer.CorruptItems:
                goto lbl_0
            eventPlayer.CorruptItems.append(eventPlayer.options[eventPlayer.selector].split(";")[0])
            lbl_0:
        eventPlayer.Items = [eventPlayer.options[eventPlayer.selector] if strContains(player, eventPlayer.options[eventPlayer.selector].split(";")[0]) else player for player in eventPlayer.Items]
        #Process TIX
        if eventPlayer.TIX > 0:
            bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nCorrupted {0}\r (X{1})\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}fgff0000FF>{1}".format(txbypass, eventPlayer.options[eventPlayer.selector].split(";")[0]), abs(eventPlayer.TIX)))
            eventPlayer.TIX *= -1
        else:
            bigMessage(eventPlayer, " \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\r\n\r\n\r\n\r\n\r\n\r\n\nCorrupted {0}\r\n\r\n\r\n\n\r\n\r\n\r\n \u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d\u200d".format("{0}fgff0000FF>{1}".format(txbypass, eventPlayer.options[eventPlayer.selector].split(";")[0])))
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 200)
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 140)
        eventPlayer.queuedselections--
        if eventPlayer.queuedselections > 0:
            async(Start_Selection, AsyncBehavior.RESTART)
            return
    eventPlayer.inSelection = false
    eventPlayer.CorruptionEffs = false


def CorruptRandomizer():
    @Name "Corruption Item Randomizer"
    
    #SET UP OPTIONS
    eventPlayer.options = []
    eventPlayer.options.append(random.shuffle(CorruptItems).slice(0, 3))
    #Set Option Colors
    eventPlayer.buttoncolors = [5, 5, 5]
    eventPlayer.options[3] = rerollstring
    eventPlayer.buttoncolors[3] = 7
    for eventPlayer.AnimLoop in range(2, -1, -1):
        eventPlayer.SelectionVisibility[eventPlayer.AnimLoop] = true
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 100)
        wait(0.25)


def C_CurlyFries():
    @Name "[Corrupted] Curly Fries"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.getNormalizedHealth() <= 0.5, 99999)
    if eventPlayer.isDead():
        return
    eventPlayer.addHealthPool(Health.NORMAL, 75 * len([player for player in eventPlayer.Items if strContains(player, "Curly Fries")]), false, false)
    playEffect(getAllPlayers(), DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 80)


def C_EnergyCell():
    @Name "[Corrupted] Energy Cell"
    
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE, eventPlayer.getAbilityCooldown(Button.PRIMARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, eventPlayer.getAbilityCooldown(Button.ABILITY_1) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, eventPlayer.getAbilityCooldown(Button.ABILITY_2) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    eventPlayer.setAbilityCooldown(Button.CROUCH, eventPlayer.getAbilityCooldown(Button.CROUCH) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    eventPlayer.setAbilityCooldown(Button.JUMP, eventPlayer.getAbilityCooldown(Button.JUMP) - len([player for player in eventPlayer.Items if strContains(player, "Energy Cell")]))
    wait(2)


def C_MoonShoes():
    @Name "[Corrupted] Moon Shoes"
    
    waitUntil(eventPlayer.isJumping() or eventPlayer.isDead(), 9999)
    if eventPlayer.isDead():
        return
    eventPlayer.setGravity(0)
    wait(max(len([player for player in eventPlayer.Items if "Moon Shoes" in player]), 1))
    eventPlayer.setGravity(eventPlayer.gravity)
    waitUntil(not eventPlayer.isJumping(), 99999)
    wait(0.25)
    if eventPlayer.isAlive():
        loop()


def C_Martyrdom():
    @Name "[Corrupted] Martyrdom"
    
    eventPlayer.C_Martyrdom[0] = eventPlayer.getStatistic(Stat.DAMAGE_TAKEN)
    eventPlayer.C_Martyrdom[1] = 0
    while eventPlayer.C_Martyrdom[1] < 100 and eventPlayer.isAlive():
        wait(0.5)
        eventPlayer.C_Martyrdom[1] += eventPlayer.getStatistic(Stat.DAMAGE_TAKEN) - eventPlayer.C_Martyrdom[0]
    if eventPlayer.isDead():
        return
    for duplicateloop in range(-1, eventPlayer.diplopia):
        createProjectile(Projectile.SIGMA_HYPERSPHERE, eventPlayer, null, directionFromAngles(random.randint(0, 360), 88), Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, len([player for player in eventPlayer.Items if strContains(player, "Martyrdom")]) * 80, 0.5, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.EXPLOSION_SOUND, 0.1, 7, 1, 8 * (eventPlayer.knockback / 100 + 1), 1, 50)
    wait(0.25)
    if eventPlayer.isAlive():
        loop()


def C_Minimize():
    @Name "[Corrupted] Minimize"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.getNormalizedHealth() <= 0.5, 99999)
    eventPlayer.urbanevasion[0] = eventPlayer.size
    eventPlayer.size -= 0.15 * len([player for player in eventPlayer.Items if strContains(player, "Minimize")])
    waitUntil(eventPlayer.isDead() or eventPlayer.getNormalizedHealth() > 0.5, 99999)
    eventPlayer.size = eventPlayer.urbanevasion[0]
    wait(0.25)
    if eventPlayer.isAlive():
        loop()


def C_blast():
    @Name "[Corrupted] Blasting Staff"
    
    waitUntil(eventPlayer.isDead() or eventPlayer.isMeleeing(), 99999)
    if eventPlayer.isDead():
        return
    for duplicateloop in range(-1, eventPlayer.diplopia):
        createProjectile(Projectile.REINHARDT_FIRE_STRIKE, eventPlayer, null, null, Relativity.TO_WORLD, ModifyHealth.DAMAGE, Team.ALL, len([player for player in eventPlayer.Items if strContains(player, "Blasting Staff")]) * 15 + eventPlayer.meleedamage, 0.5, 6 * (eventPlayer.EXPLOOSION + 1), DynamicEffect.BAD_EXPLOSION, DynamicEffect.REINHARDT_FIRE_STRIKE_TARGET_IMPACT_SOUND, 0, 30, 1, 4 * (eventPlayer.knockback / 100 + 1))
    playEffect(getAllPlayers(), DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 60)
    waitUntil(not eventPlayer.isMeleeing(), 99999)
    loop()


rule "Rule 78":
    @Condition isGameInProgress() == true
    
    pauseMatchTime()


