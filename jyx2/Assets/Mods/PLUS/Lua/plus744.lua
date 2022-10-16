if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "<color=Yellow>胡青牛</color>夫妇知道紫衫龙王的下落。你救出<color=Yellow>王难姑</color>后，记得去拜访他们。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
