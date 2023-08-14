# Thalantyr Item Upgrade Mod Extensions
Version: 0.0.1
Author: [Bardez](https://github.com/BardezAnAvatar)
Bugs reports to [repository's GitHub Issues](https://github.com/BardezAnAvatar/BGEE-Thalantyr-Ex/issues)

## Introduction
This mod is a collection of items that I want to expand or enhance using the Thalantyr Item Upgrade Mod.

## Remarks
I am using the `BZ` prefix for my items, as I have not seen it used or referenced prior.


## Status
| Item Name                          | Implemented? | Version |
| ---------------------------------- | ------------ | ------- |
| Shandalar's Cloak                  | ✔️ | 0.0.1 |
| Varscona +3                        | ✔️ | 0.0.2 |
| Koveras' Ring                      | ❌ | n/a |
| Amulet of Protection +2            | ❌ | n/a |
| Cloak of Protection +2             | ❌ | n/a |
| Golden Axe +2                      | ❌ | n/a |
| Axe +1 Wizard Slayer               | ❌ | n/a |
| Axe +2 Wizard Slayer               | ❌ | n/a |
| Axe +2 Beruel's Retort             | ❌ | n/a |
| Mace +2: The Stupifier             | ❌ | n/a |
| Hammer +2: The Hammer of Dawn      | ❌ | n/a |
| Longsword +2: Harrower             | ❌ | n/a |
| Light Crossbow +2: The Army Scythe | ❌ | n/a |

## Items
### Shandalar's Cloak
I wanted to use the lore from Shandalar and source books, and I thought that inthe off chance that a PC manages to defeat Shandalar, it would be a fun reward to give the player a cloak that they can use that looks and behaves kind of like Shandalar. For References to Shandalar, see: [Shandalar on the Forgottem Realms wiki](https://forgottenrealms.fandom.com/wiki/Shandalar). Note: Shandalar has two publications according to the wiki: Baldur's Gate and [Volo's Guide to the Sword Coast](https://forgottenrealms.fandom.com/wiki/Volo%27s_Guide_to_the_Sword_Coast).

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
Ever since I "authored" the BGT mod, I felt this pull towards Koveras' ring of protection. It felt like an item that should have a story to itself, not just a basic clone of a +1 Ring of Protection. It felt like an item that you should be able to keep as a trophy, a momento or other and I always felt it was bogus that this never had anything done with it, but the _golden pantaloons_ were. After checking Github for this item in the BGT repo (not there), and my HDDs from 20-ish years ago, I wanted to put it back in.

This component has two sub-components; both will replace the Ring of Princes flavor text with a description matching in-game events. One will 
have Koveras offer you a cursed ring, the other will leave the interaction as-is. Both paths will have an upgrade to the +2 ring of protection.

##### Statistics
The +1 ring is updated to also grant +5 hp.

The +2 ring grants +2 AC and +2 to saving throws as well as +5 hp and immunity to instant death effects.

##### Creation
The +2 ring requires 4x Horn Coral Gem; 3x scroll of raise dead; 5,000 gp. Should be 4x Death ward scroll, but doesn't exist in BG1.


#### Component: Koveras' Cursed Ring
Fairly simple: turn the ring Koveras gives you into a cursed ring. It makes sense from a story and RP perspective. If you then un-curse it, it becomes the regular ring of protection.

##### Restoration
Requires three scrolls of Remove Curse; 2 garnets; and 3,000 gold


#### Component: No Cursed Ring
Also fairly simple: the ring that Koveras gives you is not cursed, and can be upgraded straight to a +2 version, with its own flavor text. This component will update the flavor text to deviate from ring of the prices to reflect its history in-game.

#### Versions
| Name                                 | Effects                                                                          |
| ------------------------------------ | -------------------------------------------------------------------------------- |
| Gorion's Gift                        | Saves -3<br>AC -3<br>Thac0 -3                                                    |
| Ring of Protection +1: Koveras' Gift | Saves +1<br>AC +1<br>HP +5                                                       |
| Ring of Protection +2: Koveras' Gift | Saves +2<br>AC +2<br>HP +5<br>Immunity to instant death                          |
| Ring of Protection +3: Koveras' Gift | Saves +3<br>AC +3<br>HP +10<br>Immunity to instant death<br>Immunity to backstab |
| Ring of Protection +4: Koveras' Gift | Saves +4<br>AC +4<br>HP +10<br>Immunity to instant death<br>Immunity to backstab<br>Immunity to level drain |
| Ring of Protection +5: Koveras' Gift | Saves +5<br>AC +5<br>HP +20<br>Immunity to instant death<br>Immunity to backstab<br>Immunity to level drain<br>Immunity to poison |


### Amulet of Protection +2
Similar to the merging of two rings of protection, this will take two amulets of protection and merge them into a +2 amulet.

##### Creation
The amulet will require two amulets of protection +1 (or an amulet and a ring of protection); two moonbar gems; a diamond; plus 5,000 gold.


### Cloak of Protection +2
Similar to the merging of two rings of protection, this will take two cloaks of protection and merge them into a +2 cloak.

##### Creation
The amulet will require two cloaks of protection +1 (or a cloak and a ring of protection); 4 iol gems; a black opal; plus 5,000 gold.


### Golden Axe +2
If you decide to kill Fenten for whatever reason, you get a nice +1 axe. It'd be nicer as a +2.

##### Creation
The amulet will require the golden axe +1; a diamond; plus 6,000 gold.


### Axe +1 Wizard Slayer
Found in Durlag's Tower, this axe is non-magical and fun. I feel like it should be improvable.

##### Creation
The upgrade will require the Wizard Slayer axe; a pearl; plus 3,000 gold.


### Axe +2 Wizard Slayer
Found in Durlag's Tower, this axe would be further improvable.

##### Creation
The upgrade will require the Wizard Slayer +1 axe; a diamond; plus 6,000 gold.


### Axe +2 Beruel's Retort
Improve the axe from the Thunderhammer Smithy

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon. Gains +2 more vs orcs, goblins, and giants.

##### Creation
The upgrade will require the Beruel's Retort +1 axe; three Chrysoberyl Gem; plus 6,000 gold.


### Mace +2: The Stupifier
Improve the mace to +2

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon.

##### Creation
The upgrade will require the Mace +1: The Stupifier mace; five bloodstone Gem; plus 6,000 gold.


### Hammer +2: The Hammer of Dawn
Improve the hammer to +2

##### Statistics
Retains properties from +1 version, incremented to a +2 weapon.

##### Creation
The upgrade will require the Hammer +1: The Hammer of Dawn; six andar Gem; plus 6,000 gold.


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
The upgrade will require the Longsword +1: Harrower; six fire agate gem; plus 6,000 gold.



## Future Plans

### Scroll of Death Ward
This would make way more sense for the Koveras Ring of Protection, so add it in at a later date. Add to temple stores, etc.


### SoD Parallel Mod Plans
AX1H03 from +2-> +3 [SoD]
AX1h06 +2-> +3 [SoD]
BDBLUN05 +2-> +3 [SoD]
BDBLUN08 (glimmer of hope) 2-> 3 [SoD]
BDDAGG01 (elements' fury) [SoD] 2-> 3
BDHALB01 (storm pike +2)  [SoD] 2-> 3
BDHALB03 (cold fury +2) [SoD] 2-> 3
BDSW1H22 (Severance +2) [SoD] 2-> 3
BLUN11/42 (Skullcrusher +2) [SoD] 2-> 3
BLUN39 (Thresher +2) [SoD] 2-> 3
BDAX1h05 (Grubdoubler's Axe +1) 1-> 2 [SoD]
BDBLUN02 (Cudgel of Montonger +1) 1-> 2 [SoD]
BDSW1H08 (Dervish Crescent +2) 2-> 3 [SoD]
BDSW1H20 (Ophyllis' Short Sword +2) 2-> 3 [SoD]
BDSW1H21 (Vexaction +2) 2-> 3 [SoD]
BDSW1H25 (Spell Breaker +2) 2-> 3 [SoD]
BLUN41 (Stupifier +1) 2-> 3 [SoD]


### SoA Parallel Mod Plans
BLUN09 (Kiel's Morning Star +3) [Remove Curse, something] [SoA]
SHLD19 (Pellan's Shield +2) 2-> 3 [SoA]