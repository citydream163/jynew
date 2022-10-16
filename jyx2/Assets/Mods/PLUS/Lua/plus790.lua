if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "我知道有个山洞，里面藏有很多<color=#FD726F>硝石</color>。地点在（７９，７９）。", "", 0);--两个坐标都是x坐标
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
