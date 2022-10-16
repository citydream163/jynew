if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "《<color=#A564DB>天龙八部</color>》一书是在<color=Yellow>乔峰</color>手上。我希望你是用正当手段得到的。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
