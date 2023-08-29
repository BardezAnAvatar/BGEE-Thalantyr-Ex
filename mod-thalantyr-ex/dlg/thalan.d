/* Thalantyr Dialog File */

APPEND ~THALAN~
  IF ~~ THEN BEGIN bardez_thalantyr_shandalar_cloak // from: ThalantyrCraftingState
    SAY @1002 /* ~Oh, that's rich [...]~ */
      =
      @1003 /* [...] I'll offer you this: [...]*/
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Shandalar_Cloak_Requirement%~ //requirement recipe
      THEN
          REPLY @1004 /* ~Yes, restore it for me.~ */
          DO ~%Shandalar_Cloak_Craft%~ //action
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_varscona3 // from: ThalantyrCraftingState
    SAY @1101 /* ~Ah, Varscona [...]~ */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Varscona_3_Recipe%~ //requirement
      THEN
          REPLY @1102 /* ~Yes, restore it for me.~ */
          DO ~%Varscona_3_Craft%~ //action
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_koveras_uncurse // from: ThalantyrCraftingState
    SAY @1201 /* ~Let me see~ */
    = @1202 /* Ah. This is a particularly nasty curse. Potent, too. [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Koveras_Uncurse_Ring_Recipe%~ //requirements
      THEN
          REPLY @1203 /* ~Yes, please remove the curse for me.~ */
          DO ~%Koveras_Uncurse_Ring_Craft%~ //action
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_koveras_ring_2 // from: ThalantyrCraftingState
    SAY @1205 /* ~Fascinating. This ring bears some murderous taint, as if calling for revenge, vengeance and bloodshed. [...]~ */
    = @1206 /* I could pry at the connection between the two of you, perhaps to guard you from that taint? [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Koveras_Ring_2_Recipe%~
      THEN
          REPLY @1207 /* ~Yes, please make it for me.~ */
          DO ~%Koveras_Ring_2_Craft%~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_amulet_protection_2 // from: ThalantyrCraftingState
    SAY @1301 /* Yes, I can make you one Amulet of Protection +2 from [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Amulet_Protection_2_Recipe_Amulets%~
      THEN
          REPLY @1302 /* ~[2 amulets] Yes, please make it for me.~ */
          DO ~%Amulet_Protection_2_Craft_Amulets%~
          EXIT
    IF ~%Amulet_Protection_2_Recipe_Cloak%~
      THEN
          REPLY @1303 /* ~[amulet, cloak] Yes, please make it for me.~ */
          DO ~%Amulet_Protection_2_Craft_Cloak%~
          EXIT
    IF ~%Amulet_Protection_2_Recipe_Ring%~
      THEN
          REPLY @1304 /* ~[amulet, ring] Yes, please make it for me.~ */
          DO ~%Amulet_Protection_2_Craft_Ring%~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_cloak_protection_2 // from: ThalantyrCraftingState
    SAY @1306 /* Yes, I can make you one Cloak of Protection +2 from [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF ~%Cloak_Protection_2_Recipe_Cloaks%~
      THEN
          REPLY @1307 /* ~[2 cloaks] Yes, please make it for me.~ */
          DO ~%Cloak_Protection_2_Craft_Cloaks%~
          EXIT
    IF ~%Cloak_Protection_2_Recipe_Amulet%~
      THEN
          REPLY @1308 /* ~[1 cloak, 1 amulet] Yes, please make it for me.~ */
          DO ~%Cloak_Protection_2_Craft_Amulet%~
          EXIT
    IF ~%Cloak_Protection_2_Recipe_Ring%~
      THEN
          REPLY @1309 /* ~[1 cloak, 1 ring] Yes, please make it for me.~ */
          DO ~%Cloak_Protection_2_Craft_Ring%~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_golden_axe_2 // from: ThalantyrCraftingState
    SAY @1401 /* ~Hrm. Dawrven axe, dispelling enchantment [...]~ */
      = @1402 // ~I can improve its dispelling chances, and make it deadlier for its expected enemies. [...] ~
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("AX1H19")
PartyHasItem("SCRL1E")
PartyHasItem("MISC42")
PartyGoldGT(2999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(3000)
DestroyGold(3000)
TakePartyItemNum("AX1H19",1)
DestroyItem("AX1H19")
TakePartyItemNum("MISC42",1)
DestroyItem("MISC42")
TakePartyItemNum("SCRL1E",1)
DestroyItem("SCRL1E")
GiveItemCreate("BZAX19B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_axe_wizardlayer_1 // from: ThalantyrCraftingState
    SAY @1405 /* ~This... "axe" is crude, why would you want to enchant it?~ */
      = @1406 // ~Ah, I feel the enchantment now. Interesting, as if enchanted with mage blood [...] ~
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("AX1H07")
PartyHasItem("MISC36")
PartyGoldGT(2999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(3000)
DestroyGold(3000)
TakePartyItemNum("AX1H07",1)
DestroyItem("AX1H07")
TakePartyItemNum("MISC36",1)
DestroyItem("MISC36")
GiveItemCreate("BZAX07A",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_axe_wizardlayer_2 // from: ThalantyrCraftingState
    SAY @1408 /* ~I suppose I could attune it against mages [...] ~ */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("BZAX07A")
PartyHasItem("MISC39")
PartyGoldGT(5999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(6000)
DestroyGold(6000)
TakePartyItemNum("BZAX07A",1)
DestroyItem("BZAX07A")
TakePartyItemNum("MISC39",1)
DestroyItem("MISC39")
GiveItemCreate("BZAX07B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_axe_stupefier_2 // from: ThalantyrCraftingState
    SAY @1501 /* ~Indeed. I can increase its martial effectiveness with relative ease. [...] ~ */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("BLUN41")
NumItemsPartyGT("MISC33",1)
PartyGoldGT(3999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(4000)
DestroyGold(4000)
TakePartyItemNum("MISC33",2)
DestroyItem("MISC33")
TakePartyItemNum("BLUN41",1)
DestroyItem("BLUN41")
GiveItemCreate("BZMA41B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_hammer_dawn_2 // from: ThalantyrCraftingState
    SAY @1601 /* ~I could increase its combat enchantment easily enough [...]~ */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("HAMM13")
NumItemsPartyGT("MISC22",5)
PartyGoldGT(3999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(4000)
DestroyGold(4000)
TakePartyItemNum("MISC22",6)
DestroyItem("MISC22")
TakePartyItemNum("HAMM13",1)
DestroyItem("HAMM13")
GiveItemCreate("BZHM13B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_harrower_2 // from: ThalantyrCraftingState
    SAY @1702 /* ~Ah, these runes identify this sword "Harrower" [...]~ */
      = @1703 /* I can enchant this sword further [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("SW1H79")
NumItemsPartyGT("MISC17",5)
PartyGoldGT(5999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(6000)
DestroyGold(6000)
TakePartyItemNum("MISC17",6)
DestroyItem("MISC17")
TakePartyItemNum("SW1H79",1)
DestroyItem("SW1H79")
GiveItemCreate("BZSW79B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_crossbow_speed_2 // from: ThalantyrCraftingState
    SAY @1801 /* Perhaps. Ah, yes, I believe I can. It will be costly [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("XBOW06")
NumItemsPartyGT("MISC16",5)
PartyGoldGT(7999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(8000)
DestroyGold(8000)
TakePartyItemNum("MISC16",6)
DestroyItem("MISC16")
TakePartyItemNum("XBOW06",1)
DestroyItem("XBOW06")
GiveItemCreate("BZXB06B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_ankheg_1 // from: ThalantyrCraftingState
    SAY @2002 /* Ankheg, eh? I can still smell its stench [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("PLAT06")
NumItemsPartyGT("MISC42",1)
PartyGoldGT(7999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(8000)
DestroyGold(8000)
TakePartyItemNum("MISC42",2)
DestroyItem("MISC42")
TakePartyItemNum("PLAT06",1)
DestroyItem("PLAT06")
GiveItemCreate("BZPM06A",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_kiel_buckler_1 // from: ThalantyrCraftingState
    SAY @2004 /* Kiel's Buckler surprisingly lacks basic enchantments, which I can add [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("SHLD20")
NumItemsPartyGT("MISC40",3)
PartyGoldGT(2999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(3000)
DestroyGold(3000)
TakePartyItemNum("MISC40",4)
DestroyItem("MISC40")
TakePartyItemNum("SHLD20",1)
DestroyItem("SHLD20")
GiveItemCreate("BZSH20A",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_buckley_buckler_1 // from: ThalantyrCraftingState
    SAY @2006 /* While crude, this buckler can be enchanted with basic protection runes [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("SHLD33")
NumItemsPartyGT("MISC23",5)
PartyGoldGT(1999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(2000)
DestroyGold(2000)
TakePartyItemNum("MISC23",6)
DestroyItem("MISC23")
TakePartyItemNum("SHLD33",1)
DestroyItem("SHLD33")
GiveItemCreate("BZSH33A",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_kiel_helm_1 // from: ThalantyrCraftingState
    SAY @2008 /* I could enchant Kiel's Helmet with armoring improvements [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("HELM14")
NumItemsPartyGT("MISC21",1)
NumItemsPartyGT("SCRL67",1)
PartyGoldGT(3999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(4000)
DestroyGold(4000)
TakePartyItemNum("MISC21",2)
DestroyItem("MISC21")
TakePartyItemNum("SCRL67",2)
DestroyItem("SCRL67")
TakePartyItemNum("HELM14",1)
DestroyItem("HELM14")
GiveItemCreate("BZHL14A",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_werebane_2 // from: ThalantyrCraftingState
    SAY @2101 /* This dagger's enchantment... it almost seems like one from Dradeel [...] */
    = @2102 /* Academia aside, I can improve this lycanthrope-hunting dagger for you [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("DAGG09")
NumItemsPartyGT("AMUL10",1)
NumItemsPartyGT("POTN14",1)
PartyGoldGT(4999)~
      THEN
          REPLY @1403  /* ~Yes, please make it for me.~ */
          DO
~TakePartyGold(4000)
DestroyGold(4000)
TakePartyItemNum("AMUL10",2)
DestroyItem("AMUL10")
TakePartyItemNum("POTN14",2)
DestroyItem("POTN14")
TakePartyItemNum("DAGG09",1)
DestroyItem("DAGG09")
GiveItemCreate("BZDG09B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_algernon_cloak_2 // from: ThalantyrCraftingState
    SAY @1312 /* A nymph's charming cloak, "more useful"? [...] */
    = @1313 /* Impertinence ignored, I could enhance it. I would need the cloak [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF //amulet
~PartyHasItem("CLCK08")
PartyHasItem("BZAML1B")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1314 /* ~[amulet] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("BZAML1B",1)
DestroyItem("BZAML1B")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK08",1)
DestroyItem("CLCK08")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF //cloak
~PartyHasItem("CLCK08")
PartyHasItem("CLCK02")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1315 /* ~[cloak] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("CLCK02",1)
DestroyItem("CLCK02")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK08",1)
DestroyItem("CLCK08")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF //ring
~PartyHasItem("CLCK08")
PartyHasItem("RING07")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1316 /* ~[ring] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("RING07",1)
DestroyItem("RING07")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK08",1)
DestroyItem("CLCK08")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_nymph_cloak_2 // from: ThalantyrCraftingState
    SAY @1312 /* A nymph's charming cloak, "more useful"? [...] */
    = @1313 /* Impertinence ignored, I could enhance it. I would need the cloak [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF //amulet
~PartyHasItem("CLCK07")
PartyHasItem("BZAML1B")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1314 /* ~[amulet] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("BZAML1B",1)
DestroyItem("BZAML1B")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK07",1)
DestroyItem("CLCK07")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF //cloak
~PartyHasItem("CLCK07")
PartyHasItem("CLCK02")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1315 /* ~[cloak] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("CLCK02",1)
DestroyItem("CLCK02")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK07",1)
DestroyItem("CLCK07")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF //ring
~PartyHasItem("CLCK07")
PartyHasItem("RING07")
NumItemsPartyGT("SCRL72",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1316 /* ~[ring] Yes, please make it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("RING07",1)
DestroyItem("RING07")
TakePartyItemNum("SCRL72",2)
DestroyItem("SCRL72")
TakePartyItemNum("CLCK07",1)
DestroyItem("CLCK07")
GiveItemCreate("BZCLK8B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
END

EXTEND_TOP ~THALAN~ 
  %ThalantyrCraftingState% //state number(s)
  #15 //transition number; inject between 15 and 16
    IF ~PartyHasItem("AMUL14")~
      THEN 
          REPLY @1300 /* Can you do anything with this Amulet of Protection +1? */
          GOTO bardez_thalantyr_amulet_protection_2
    IF ~PartyHasItem("CLCK01")~
      THEN 
          REPLY @1305 /* Can you do anything with this Amulet of Protection +1? */
          GOTO bardez_thalantyr_cloak_protection_2
    IF ~PartyHasItem("CLCK22")~
      THEN 
          REPLY @1001 /* ~I have a benign cloak belonging to Shandalar. Certainly you can restore its magic, yes?~ */
          GOTO bardez_thalantyr_shandalar_cloak
    IF ~PartyHasItem("SW1H06")~
      THEN 
          REPLY @1100 /* ~I have a longsword, attuned to cold. Can you do anything with this?~ */
          GOTO bardez_thalantyr_varscona3
    IF ~PartyHasItem("AX1H19")~
      THEN 
          REPLY @1400 /* ~I have this dwarven axe, golden. Can you enhance it?~ */
          GOTO bardez_thalantyr_golden_axe_2
    IF ~PartyHasItem("AX1H07")~
      THEN 
          REPLY @1404 /* ~I have this axe, mundane in combat except against spellcasters~ */
          GOTO bardez_thalantyr_axe_wizardlayer_1
    IF ~PartyHasItem("BZAX07A")~
      THEN 
          REPLY @1407 /* ~I still have the Wizard Slayer axe [...]~ */
          GOTO bardez_thalantyr_axe_wizardlayer_2
    IF ~PartyHasItem("BLUN41")~
      THEN 
          REPLY @1500 /* ~I have this +1 Mace, The Stupefier. [...]~ */
          GOTO bardez_thalantyr_axe_stupefier_2
    IF ~PartyHasItem("HAMM13")~
      THEN 
          REPLY @1600 /* ~I have the Hammer of Dawn +1. [...]~ */
          GOTO bardez_thalantyr_hammer_dawn_2
    IF ~PartyHasItem("SW1H79")~
      THEN 
          REPLY @1700 /* ~I have this longsword effective against undead [...]~ */
          GOTO bardez_thalantyr_harrower_2
    IF ~PartyHasItem("DAGG09")~
      THEN 
          REPLY @2100 /* ~I have this dagger for fighting lycanthropes; can you enhance it?~ */
          GOTO bardez_thalantyr_werebane_2
    IF ~PartyHasItem("XBOW06")~
      THEN 
          REPLY @1800 /* ~I have this light crossbow, faster at slinging bolts than most [...]~ */
          GOTO bardez_thalantyr_crossbow_speed_2
    IF ~PartyHasItem("PLAT06")~
      THEN 
          REPLY @2000 /* ~I have this lightweight armor made of ankheg chitin [...]~ */
          GOTO bardez_thalantyr_ankheg_1
    IF ~PartyHasItem("SHLD20")~
      THEN 
          REPLY @2003 /* ~I have Kiel's Buckler. Could you improve it?~ */
          GOTO bardez_thalantyr_kiel_buckler_1
    IF ~PartyHasItem("SHLD33")~
      THEN 
          REPLY @2005 /* ~I have this hide buckler, which has an existing enchantment of vigor. [...]~ */
          GOTO bardez_thalantyr_buckley_buckler_1
    IF ~PartyHasItem("HELM14")~
      THEN 
          REPLY @2007 /* ~I have this helmet worn by Kiel [...]~ */
          GOTO bardez_thalantyr_kiel_helm_1
    IF ~PartyHasItem("CLCK08")~
      THEN 
          REPLY @1310 /* ~I have Algernon's Cloak. Can you make it any more useful?~ */
          GOTO bardez_thalantyr_algernon_cloak_2
    IF ~PartyHasItem("CLCK07")~
      THEN 
          REPLY @1311 /* ~I have a nymph's cloak. Can you make it any more useful?~ */
          GOTO bardez_thalantyr_nymph_cloak_2
    IF ~PartyHasItem("BZRNG1")~
      THEN 
          REPLY @1200 /* ~I have this cursed ring given to me in Candlekeep. Can you remove the curse?~ */
          GOTO bardez_thalantyr_koveras_uncurse
    IF ~PartyHasItem("RING25")~
      THEN 
          REPLY @1204 /* ~I have this ring given to me by one who seeks my death. Is there anything you can do with this?~ */
          GOTO bardez_thalantyr_koveras_ring_2
END