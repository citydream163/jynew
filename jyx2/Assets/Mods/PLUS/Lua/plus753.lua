if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "告诉你一个极大的秘密：武林中有三大宝藏！第一个宝藏是在“<color=Red>悦来客栈</color>”中。", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
