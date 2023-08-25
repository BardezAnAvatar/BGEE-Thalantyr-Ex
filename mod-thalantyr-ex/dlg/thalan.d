/* Thalantyr Dialog File */

APPEND ~THALAN~
  IF ~~ THEN BEGIN bardez_thalantyr_shandalar_cloak // from: ThalantyrCraftingState
    SAY @1002 /* ~Oh, that's rich [...]~ */
      =
      @1003 /* [...] I'll offer you this: [...]*/
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("CLCK22")
PartyHasItem("MISC2H")
NumItemsPartyGT("SCRL05",1)
NumItemsPartyGT("SCRL06",1)
PartyGoldGT(9999)~
      THEN
          REPLY @1004 /* ~Yes, restore it for me.~ */
          DO
~TakePartyGold(10000)
DestroyGold(10000)
TakePartyItemNum("CLCK22",1)
DestroyItem("CLCK22")
TakePartyItemNum("MISC2H",1)
DestroyItem("MISC2H")
TakePartyItemNum("SCRL05",2)
DestroyItem("SCRL05")
TakePartyItemNum("SCRL06",2)
DestroyItem("SCRL06")
GiveItemCreate("BZCLK1",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_varscona3 // from: ThalantyrCraftingState
    SAY @1101 /* ~Ah, Varscona [...]~ */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("SW1H06")
PartyHasItem("MISC43")
PartyHasItem("SCRL06")
PartyHasItem("SCRL1Q")
PartyHasItem("SCRL2F")
PartyGoldGT(5999)~
      THEN
          REPLY @1102 /* ~Yes, restore it for me.~ */
          DO
~TakePartyGold(6000)
DestroyGold(6000)
TakePartyItemNum("SW1H06",1)
DestroyItem("SW1H06")
TakePartyItemNum("MISC43",1)
DestroyItem("MISC43")
TakePartyItemNum("SCRL06",1)
DestroyItem("SCRL06")
TakePartyItemNum("SCRL1Q",1)
DestroyItem("SCRL1Q")
TakePartyItemNum("SCRL2F",1)
DestroyItem("SCRL2F")
GiveItemCreate("BZS1H1C",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_koveras_uncurse // from: ThalantyrCraftingState
    SAY @1201 /* ~Let me see~ */
    = @1202 /* Ah. This is a particularly nasty curse. Potent, too. [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("BZRNG1")
NumItemsPartyGT("SCRL5G",2)
NumItemsPartyGT("POTN28",1)
NumItemsPartyGT("MISC34",2)
PartyGoldGT(2999)~
      THEN
          REPLY @1203 /* ~Yes, please remove the curse for me.~ */
          DO
~TakePartyGold(3000)
DestroyGold(3000)
TakePartyItemNum("MISC34",3)
DestroyItem("MISC34")
TakePartyItemNum("POTN28",2)
DestroyItem("POTN28")
TakePartyItemNum("SCRL5G",3)
DestroyItem("SCRL5G")
TakePartyItemNum("BZRNG1",1)
DestroyItem("BZRNG1")
GiveItemCreate("RING25",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_koveras_ring_2 // from: ThalantyrCraftingState
    SAY @1205 /* ~Fascinating. This ring bears some murderous taint, as if calling for revenge, vengeance and bloodshed. [...]~ */
    = @1206 /* I could pry at the connection between the two of you, perhaps to guard you from that taint? [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~PartyHasItem("RING25")
PartyHasItem("MISC36")
PartyHasItem("SCRL07")
NumItemsPartyGT("SCRL63",2)
PartyGoldGT(4999)~
      THEN
          REPLY @1207 /* ~Yes, please make it for me.~ */
          DO
~TakePartyItemNum("RING25",1)
DestroyItem("RING25")
TakePartyItemNum("MISC36",1)
DestroyItem("MISC36")
TakePartyItemNum("SCRL07",1)
DestroyItem("SCRL07")
TakePartyItemNum("SCRL63",3)
DestroyItem("SCRL63")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("BZRNG1B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_amulet_protection_2 // from: ThalantyrCraftingState
    SAY @1301 /* Yes, I can make you one Amulet of Protection +2 from [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~NumItemsPartyGT("AMUL14",1)
NumItemsPartyGT("MISC27",3)
PartyGoldGT(4999)~
      THEN
          REPLY @1302 /* ~[2 amulets] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("AMUL14",2)
DestroyItem("AMUL14")
TakePartyItemNum("MISC27",4)
DestroyItem("MISC27")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("BZAML1B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF
~PartyHasItem("AMUL14")
PartyHasItem("CLCK01")
NumItemsPartyGT("MISC27",3)
PartyGoldGT(4999)~
      THEN
          REPLY @1303 /* ~[amulet, cloak] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("AMUL14",1)
DestroyItem("AMUL14")
TakePartyItemNum("CLCK01",1)
DestroyItem("CLCK01")
TakePartyItemNum("MISC27",4)
DestroyItem("MISC27")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("BZAML1B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF
~PartyHasItem("AMUL14")
PartyHasItem("RING06")
NumItemsPartyGT("MISC27",3)
PartyGoldGT(4999)~
      THEN
          REPLY @1304 /* ~[amulet, ring] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("AMUL14",1)
DestroyItem("AMUL14")
TakePartyItemNum("RING06",1)
DestroyItem("RING06")
TakePartyItemNum("MISC27",4)
DestroyItem("MISC27")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("BZAML1B",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
  END
  IF ~~ THEN BEGIN bardez_thalantyr_cloak_protection_2 // from: ThalantyrCraftingState
    SAY @1306 /* Yes, I can make you one Cloak of Protection +2 from [...] */
    IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
      GOTO %ThalantyrCraftingState%
    IF 
~NumItemsPartyGT("CLCK01",1)
NumItemsPartyGT("MISC26",3)
PartyHasItem("MISC38")
PartyGoldGT(4999)~
      THEN
          REPLY @1307 /* ~[2 cloaks] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("CLCK01",2)
DestroyItem("CLCK01")
TakePartyItemNum("MISC26",4)
DestroyItem("MISC26")
TakePartyItemNum("MISC38",1)
DestroyItem("MISC38")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("CLCK02",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF
~PartyHasItem("CLCK01")
PartyHasItem("AMUL14")
NumItemsPartyGT("MISC26",3)
PartyHasItem("MISC38")
PartyGoldGT(4999)~
      THEN
          REPLY @1308 /* ~[1 cloak, 1 amulet] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("CLCK01",1)
DestroyItem("CLCK01")
TakePartyItemNum("AMUL14",1)
DestroyItem("AMUL14")
TakePartyItemNum("MISC26",4)
DestroyItem("MISC26")
TakePartyItemNum("MISC38",1)
DestroyItem("MISC38")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("CLCK02",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
          EXIT
    IF
~PartyHasItem("CLCK01")
PartyHasItem("RING06")
NumItemsPartyGT("MISC26",3)
PartyHasItem("MISC38")
PartyGoldGT(4999)~
      THEN
          REPLY @1309 /* ~[1 cloak, 1 ring] Yes, please make it for me.~ */
          DO
~TakePartyItemNum("CLCK01",1)
DestroyItem("CLCK01")
TakePartyItemNum("RING06",1)
DestroyItem("RING06")
TakePartyItemNum("MISC26",4)
DestroyItem("MISC26")
TakePartyItemNum("MISC38",1)
DestroyItem("MISC38")
TakePartyGold(5000)
DestroyGold(5000)
GiveItemCreate("CLCK02",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[330.230])~
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
    IF ~PartyHasItem("BZRNG1")~
      THEN 
          REPLY @1200 /* ~I have this cursed ring given to me in Candlekeep. Can you remove the curse?~ */
          GOTO bardez_thalantyr_koveras_uncurse
    IF ~PartyHasItem("RING25")~
      THEN 
          REPLY @1204 /* ~I have this ring given to me by one who seeks my death. Is there anything you can do with this?~ */
          GOTO bardez_thalantyr_koveras_ring_2
END