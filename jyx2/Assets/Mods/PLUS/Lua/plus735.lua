if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "星宿派掌门<color=Yellow>丁春秋</color>原属逍遥派，后来出来自立门户，成立了星宿派。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
