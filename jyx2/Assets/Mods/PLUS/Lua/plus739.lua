if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "有几个同伴是必需加入的。<color=Yellow>石破天</color>，<color=Yellow>段誉</color>，<color=Yellow>胡斐</color>。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
