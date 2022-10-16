if HaveItem(160) then goto label2 end;
SetOneMagic(36, 0, 31, 100);
goto label2
    do return end;
::label2::
Talk(0, "林兄剑法不知练的怎样了？", "", 1);
Talk(36, "我迫不及待想上四川青城，诛灭他全派为我双亲报仇。可是以我现在的功力，恐怕无法办到。", "", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "林兄别急，凡事慢慢来。", "", 1);
    do return end;
::label0::
    Talk(0, "不然这样好了，我和林兄一起去，杀光他<color=Red>青城派</color>。", "", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(36, "你的队伍已满，我无法加入。", "", 0);
        do return end;
::label1::
        Talk(36, "真的？我们走吧。", "", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/林平之", "");--加入队伍
        ModifyEvent(36, 0, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
		ModifyEvent(36, 1, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
		ModifyEvent(36, 2, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
		ModifyEvent(36, 3, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
        LightScence();
        Join(36);
        --AddEthics(-4);
do return end;
