if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "江湖中有些地方，像<color=Red>摩天崖</color>及<color=Red>云鹤崖</color>这两地，若是队伍中没有轻功高强者是上不去的。还有些地方则是要找到它的入口后才进得去。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
