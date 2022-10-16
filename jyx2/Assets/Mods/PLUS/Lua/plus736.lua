if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "<color=Red>桃花岛</color>的主人一向懂得奇门五行，所以一般人通常连入口在哪都找不到。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
