if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "<color=Yellow>老顽童</color>喜欢养蜜蜂，所以送他一瓶<color=blue>玉蜂浆</color>好招蜂来。你会有好报的。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
