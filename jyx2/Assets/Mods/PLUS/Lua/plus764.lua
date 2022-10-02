if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "<color=Red>梅庄</color>四庄主<color=Yellow>丹青生</color>钟情于丹青，图画。如果你能找到珍贵的图画，或许……", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
