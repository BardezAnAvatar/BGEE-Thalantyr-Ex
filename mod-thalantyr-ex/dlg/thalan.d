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
PartyHasItem("MISC43)
NumItemsPartyGT("SCRL06",1)
NumItemsPartyGT("SCRL1Q",1)
NumItemsPartyGT("SCRL2F",1)
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
GiveItemCreate("BZS1H1",Player1,1,1,1)
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
END