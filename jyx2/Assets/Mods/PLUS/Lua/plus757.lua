if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "要进<color=Red>药王庄</color>很简单，只要在身上配朵“情花”即可克制四周的红树迷毒。", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
