# Thalantyr Item Upgrade Mod Extensions
Version: 0.9.0

Author: [Bardez](https://github.com/BardezAnAvatar)

Bugs reports to [repository's GitHub Issues](https://github.com/BardezAnAvatar/BGEE-Thalantyr-Ex/issues)



## Introduction
This mod is a collection of items that I want to expand or enhance using the Thalantyr Item Upgrade Mod.



## Remarks
I am using the `BZ` prefix for my items. It is registered at Black Wyrm Lair: http://www.blackwyrmlair.net/prefixes/



## Change Log
| Item Name                          | Version |
| ---------------------------------- | ------- |
| Shandalar's Cloak                  |  0.0.1  |
| Varscona +3                        |  0.0.2  |
| Koveras' Ring                      |  0.0.3  |
| Amulet of Protection +2            |  0.0.5  |
| Cloak of Protection +2             |  0.0.5  |
| Golden Axe +2                      |  0.0.6  |
| Axe +1 Wizard Slayer               |  0.0.6  |
| Axe +2 Wizard Slayer               |  0.0.6  |
| Mace +2: The Stupifier             |  0.0.7  |
| Hammer +2: The Hammer of Dawn      |  0.0.7  |
| Long Sword +2: Harrower            |  0.0.7  |
| Light Crossbow +2: The Army Scythe |  0.0.7  |
| Ankheg Plate + 1                   |  0.0.8  |
| Buckley's Buckler +2               |  0.0.8  |
| Kiel's Helmet +1                   |  0.0.8  |
| Kiel's Buckler +1                  |  0.0.8  |
| Werebane +2                        |  0.0.9  |
| Algernon's Cloak +2                |  0.0.10 |
| Extract recipes into variables     |  0.1.0  |
| Re-organize items' TPH files       |  0.2.0  |
| Bugfix Ankheg Plate +1 AC bonuses  |  0.2.1  |
| Add melee/ranged icons to dagger   |  0.2.2  |
| Refactor items into submodule      |  0.9.0  |



## Items
### Shandalar's Cloak
I wanted to use the lore from Shandalar and source books, and I thought that in the off chance that a PC manages to defeat Shandalar, it would be a fun reward to give the player a cloak that they can use that looks and behaves kind of like Shandalar. For References to Shandalar, see: [Shandalar on the Forgottem Realms wiki](https://forgottenrealms.fandom.com/wiki/Shandalar). Note: Shandalar has two publications according to the wiki: Baldur's Gate and [Volo's Guide to the Sword Coast](https://forgottenrealms.fandom.com/wiki/Volo%27s_Guide_to_the_Sword_Coast).

##### Statistics
Cloak is a +2 protection cloak (+2 AC, +2 saving throws) which also grants 50% electrical resistance and 25% fire resistance.

##### Creation
Consumes shandalar's cloak and wardstone; requires 3 protection scrolls from electricity, 2 protection scrolls from fire, and 10,000 gp.



### Varscona +3
Varscona is a _very_ decent sword in BG, probably _the_ capstone longsword for base BG1. That said, swords especially into SoD need to go into the +3 realm, and I want to allow the PC to take this beauty all the way to ToB. I'll have more mods for item import later.

##### Statistics
Varscona +3 deals 1d8+3 slashing, 2d3 cold; with a +3 enchantment and thac0 bonus. It grants 10% fire resistance and offers a 5% chance to drain 1 HP on hit.

##### Creation
Upgrades the +2 longsword to +3; requires 1 emerald, 1 Cone of Cold scroll, 1 Vampiric Touch scroll, and 6,000 gp.



### Koveras' Ring of Protection
Ever since I "authored" the BGT mod, I felt this pull towards Koveras' ring of protection. It felt like an item that should have a story to itself, not just a basic clone of a +1 Ring of Protection. It felt like an item that you should be able to keep as a trophy, a momento or other and I always felt it was bogus that this never had anything done with it, but the _golden pantaloons_ did have a C-plot. After checking Github for this item in the BGT repo (not there), and my HDDs from 20-ish years ago (still there), I wanted to put it back in.

This component has two sub-components; both will replace the Ring of Princes flavor text with a description matching in-game events. 
One will have Koveras offer you a cursed ring, the other will leave the interaction as-is. Both paths will have an upgrade to the +2 ring of protection.

#### +1 Ring
Both sub-components will update the flavor text to deviate from ring of the prices to reflect its history in-game.

##### Statistics
The +1 ring is updated to also grant +5 hp and 5% magic resistance.

#### Component: Koveras' Cursed Ring
Fairly simple: turn the ring Koveras gives you into a cursed ring. It makes sense from a story and RP perspective. If you then un-curse it, it becomes the ring of protection +1 described above. This component mentions on the +1 ring that Thalantyr un-cursed the item.

##### Restoration
Requires three scrolls of Remove Curse; 2 potions of fortitute; 3 garnets; and 3,000 gold

#### Component: No Cursed Ring
Also fairly simple: the ring that Koveras gives you is not cursed, and can be upgraded straight to a +2 version, with its own flavor text.

#### +2 Ring
Regardless of how you get the +1 ring, it can be boosted to +2.

##### Statistics
The +2 ring grants +2 AC and +2 to saving throws as well as +5 hp, 10% Magic Resistance, and immunity to instant death effects.

##### Creation
The +2 ring requires 1x pearl; 1 scroll of Protection from magic, 3x scroll of raise dead; 5,000 gp. Should be 4x Death ward scroll, but doesn't exist in BG1.

#### Versions
| Name                                 | Effects                                                                          |
| ------------------------------------ | -------------------------------------------------------------------------------- |
| Gorion's Gift                        | Saves -3<br>AC -3<br>Thac0 -3 |
| Ring of Protection +1: Koveras' Gift | Saves +1<br>AC +1<br>HP +5<br>+5% Magic Resistance |
| Ring of Protection +2: Koveras' Gift | Saves +2<br>AC +2<br>HP +5<br>+10% Magic Resistance<br>Immunity to instant death |
| Ring of Protection +3: Koveras' Gift | Saves +3<br>AC +3<br>HP +10<br>+15% Magic Resistance<br>Immunity to instant death<br>Immunity to backstab |
| Ring of Protection +4: Koveras' Gift | Saves +4<br>AC +4<br>HP +15<br>+20% Magic Resistance<br>Immunity to instant death<br>Immunity to backstab<br>Immunity to level drain |
| Ring of Protection +5: Koveras' Gift | Saves +5<br>AC +5<br>HP +30<br>+33% Magic Resistance<br>Immunity to instant death<br>Immunity to backstab<br>Immunity to level drain<br>Immunity to poison |


### Amulet of Protection +2
Similar to the merging of two rings of protection, this will take two amulets of protection and merge them into a +2 amulet.

##### Creation
The amulet will require two amulets of protection +1 (or an amulet and a ring of protection; or an amulet and a cloak of protection); four moonbar gems; plus 5,000 gold.


### Cloak of Protection +2
Similar to the merging of two rings of protection, this will take two cloaks of protection and merge them into a +2 cloak.

##### Creation
The amulet will require two cloaks of protection +1 (or a cloak and a ring of protection; or a cloak and an amulet of protection); 4 iol gems; a black opal; plus 5,000 gold.


### Golden Axe +2
If you decide to kill Fenten for whatever reason, you get a nice +1 axe. It'd be nicer as a +2.
+5% more chance of casting Dispel Magic, and +2 more vs elves, half-elves, and drow.

##### Creation
The amulet will require the golden axe +1; a diamond; a scroll of Dispel Magic; plus 3,000 gold.


### Axe +1 Wizard Slayer
Found in Durlag's Tower, this axe is non-magical and fun. I feel like it should be improvable.

##### Creation
The upgrade will require the Wizard Slayer axe; a pearl; plus 3,000 gold.


### Axe +2 Wizard Slayer
Found in Durlag's Tower, this axe would be further improvable.
+2 basic stats, +3 vs mages (mages, sorcerers, and elminster).

##### Creation
The upgrade will require the Wizard Slayer +1 axe; a water opal; plus 6,000 gold.

##### Notes/Plans
Future versions get more: +3 vs bards, +4 vs paladins/rangers, +5 vs all spellcasters


### ~~Axe +2 Beruel's Retort~~
~~Improve the axe from the Thunderhammer Smithy~~

##### ~~Statistics~~
~~Retains properties from +1 version, incremented to a +2 weapon. Gains +2 more vs orcs, goblins, and giants.~~

##### ~~Creation~~
~~The upgrade will require the Beruel's Retort +1 axe; three Chrysoberyl Gem; plus 6,000 gold.~~
NOTE: I was running a mod that made this returning, so I made bad plans.


### Mace +2: The Stupifier
Improve the mace to +2, increase the % chance to 15%

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon.

##### Creation
The upgrade will require the Mace +1: The Stupifier mace; two aquamarine; plus 4,000 gold.


### Hammer +2: The Hammer of Dawn
Improve the hammer to +2

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon.

##### Creation
The upgrade will require the Hammer +1: The Hammer of Dawn; six andar Gem; plus 4,000 gold.


### Longsword +2: Harrower
Improve the longsword to +2/+4

##### Statistics
Retains properties from +1 version, incremented to a +2/+4 weapon.

##### Creation
The upgrade will require the Longsword +1: Harrower; six lynx eye gem; plus 6,000 gold.


### Light Crossbow +2: The Army Scythe
Improve the Scythe to +2

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon.

##### Creation
The upgrade will require the Light Crossbow +1: The Army Scythe; six fire agate gem; plus 8,000 gold.


### Ankheg Plate +1
Improve the armor to a +1 enchantment

##### Statistics
Pretty much the same as base, just one extra AC bonus

##### Creation
The upgrate will require one Angkheg plate, 2 diamonds, and 8,000 gold.


### Kiel's Buckler +1
Improve the buckler to a +1 enchantment

##### Statistics
Pretty much the same as base, just one extra AC bonus

##### Creation
The upgrate will require Kiel's Buckler, 4 moonbar gems, and 3,000 gold.


### Kiel's Helmet +1
Improve the helmet to a +1 enchantment for AC

##### Statistics
Pretty much the same as base, just one extra AC bonus

##### Creation
The upgrate will require Kiel's Helmet, Kiel's Helmet; two scrolls of Armor; two skydrop gems; and 4,000 gold


### Buckley's Buckler +1
Improve the buckler to a +1 enchantment

##### Statistics
Pretty much the same as base, just one extra AC bonus

##### Creation
The upgrate will require Buckley's Buckler; 6 jasper gems; and 2,000 gold.


### Werebane +2
Improve the dagger to something useful longer-term

##### Statistics
Improve the dagger to a +2 enchantment; make throwing/returning

##### Creation
The upgrate will require Werebane; 2 gold necklaces; 2 oils of speed; and 5,000 gold.



## Dedication
This mod is dedicated to Elliana. I was mid-playthrough of BG:EE when she was born. I started this
mod right after she was born, in the few wee hours when I had precious few moments not rocking her
to sleep, feeding her, or when her mom wasn't asking me to wash bottles. Mostly between the hours
of 10 PM and 2 AM, my solo watch as kiddo slept. I love you, pumpkin.



## Legal
tl;dr: Creative Commons Attribution 4.0 International Public License

See [the license file](https://github.com/BardezAnAvatar/BGEE-Thalantyr-Ex/blob/main/LICENSE.md).

tl;dr: do what you will with it, credit me (Bardez) for starting the mod.
