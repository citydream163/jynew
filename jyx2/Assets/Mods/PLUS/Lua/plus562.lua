if InTeam(47) == true then goto label0 end;
    Talk(48, "你别在这惹<color=Yellow>阿紫</color>姑娘生气。", "", 0);
    do return end;
::label0::
    Talk(48, "<color=Yellow>阿紫</color>姑娘，你别丢下我一个人。求求少侠让我加入，好让我跟在<color=Yellow>阿紫</color>姑娘身旁服侍她。", "", 0);
    if AskJoin () == true then goto label1 end;
        do return end;
::label1::
        Talk(0, "也好。", "", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(48, "你的队伍已满，我无法加入。", "", 0);
            do return end;
::label2::
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/youtanzhi", "");--游坦之加入
            ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(48);
            AddEthics(-2);
do return end;
