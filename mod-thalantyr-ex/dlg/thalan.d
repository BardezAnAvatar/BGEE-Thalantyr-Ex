/* Thalantyr */
EXTEND_TOP ~THALAN~ %ThalantyrCraftingState% 16 
  IF ~PartyHasItem("CLCK22")~ 
    THEN 
        REPLY @1001 /* ~I have a benign cloak belonging to Shandalar. Certainly you can restore its magic, yes?~ */ 
        GOTO bardez_thalantyr_shandalar_cloak
END

IF ~~ THEN BEGIN bardez_thalantyr_shandalar_cloak // from: ThalantyrCraftingState
  SAY @1002 /* ~Oh, that's rich [...]~ */
  IF ~~ THEN REPLY @9000 /* ~I don't need it right now. Maybe I have something else you could alter?~ */ 
    GOTO %ThalantyrCraftingState%
  IF 
~PartyHasItem("CLCK22")
PartyHasItem("MISC2H")
NumItemsPartyGT("SCRL05",1)
NumItemsPartyGT("SCRL06",1)
PartyGoldGT(9999)~
    THEN
        REPLY @1003 /* ~Yes, restore it for me.~ */
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