if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "<color=Red>梅庄</color>三庄主<color=Yellow>秃笔翁</color>钟情于书法，如果你能找到名家的书法帖子，或许……", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
