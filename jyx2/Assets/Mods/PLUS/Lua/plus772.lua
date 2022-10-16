if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "<color=Red>大轮寺</color>关着一个苦命之人，去杀了他吧。", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
