if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "目前江湖上有两组人马呈现敌对的状态，其中一组是<color=Red>黑木崖</color>上的日月神教与五岳剑派之间的对立。这两方仇视的状态已行之数十年之久。而是敌视的原因中，《<color=#A564DB>笑傲江湖</color>》一书占了很大的一环。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
