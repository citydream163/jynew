if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "神算子<color=Yellow>瑛姑</color>住的<color=Red>黑龙潭</color>，经过她巧妙的布置后，常人难以进入。给你个提示：带某个女人去就解决了。", "", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
