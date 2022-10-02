Talk(47, "愣小子，要干嘛？", "", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "没事。", "", 1);
    do return end;
::label0::
    Talk(0, "<color=Yellow>阿紫</color>姑娘，再加入我好吗？", "", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(47, "你的队伍已满，我无法加入。", "", 0);
        do return end;
::label1::
        Talk(47, "你不怕我的话就走吧。", "", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/azi","");
        LightScence();
        Join(47);
do return end;
