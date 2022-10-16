if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "有些东西你服用后就可百毒不侵，非常的好用。如<color=Red>白驼山</color>的<color=#FD726F>通犀地龙丸</color>。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
