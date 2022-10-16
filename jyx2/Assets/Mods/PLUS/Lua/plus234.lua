if UseItem(174) == true then goto label0 end;
    do return end;
::label0::
    if JudgeMoney(10) == true then goto label1 end;
        Talk(106, "客倌，你别开玩笑了，<color=blue>烧刀子</color>一壶可是要１０两银子的！", "", 0);
        do return end;
::label1::
        AddItemWithoutHint(174, -10);
        Talk(106, "客倌，你慢用。", "", 0);
        AddItem(194, 1);
        ModifyEvent(-2, -2, -2, -2, 246, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
