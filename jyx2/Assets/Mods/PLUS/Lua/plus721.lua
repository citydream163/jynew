if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "<color=#FD726F>硝石</color>是制造<color=green>霹雳弹</color>的的重要材料，通常在一些山洞中都可取得。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
