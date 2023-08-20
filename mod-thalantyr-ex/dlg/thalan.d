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
END

EXTEND_TOP ~THALAN~ 
  %ThalantyrCraftingState% //state number(s)
  #15 //transition number; inject between 15 and 16
    IF ~PartyHasItem("CLCK22")~ 
      THEN 
          REPLY @1001 /* ~I have a benign cloak belonging to Shandalar. Certainly you can restore its magic, yes?~ */ 
          GOTO bardez_thalantyr_shandalar_cloak
    IF ~PartyHasItem("SW1H06")~ 
      THEN 
          REPLY @1100 /* ~I have a longsword, attuned to cold. Can you do anything with this?~ */ 
          GOTO bardez_thalantyr_varscona3
    IF ~PartyHasItem("BZRNG1")~ 
      THEN 
          REPLY @1200 /* ~I have this cursed ring given to me in Candlekeep. Can you remove the curse?~ */ 
          GOTO bardez_thalantyr_koveras_uncurse
    IF ~PartyHasItem("RING25")~ 
      THEN 
          REPLY @1204 /* ~I have this ring given to me by one who seeks my death. Is there anything you can do with this?~ */ 
          GOTO bardez_thalantyr_koveras_ring_2
END