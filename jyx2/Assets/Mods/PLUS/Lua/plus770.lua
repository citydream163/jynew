if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "<color=Red>梅庄</color>大庄主<color=Yellow>黄钟公</color>钟情于琴曲，音律。如果你能找到珍贵的曲谱，或许……", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
