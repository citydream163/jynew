Talk(47, "有什么事吗？", "", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "我看<color=Yellow>阿紫</color>姑娘聪明伶利，又会毒术，所以想请<color=Yellow>阿紫</color>姑娘加入我。", "", 1);
    if JudgeEthics(0, 0, 40) == true then goto label1 end;
        Talk(47, "你这人这么正直，跟你在一起一定挺无趣的，我才不要呢。", "", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(47, "你的队伍已满，我无法加入。", "", 0);
            do return end;
::label2::
            Talk(47, "我看你这人也不是什么呆头鹅，跟你一起走走也挺好玩的。", "", 0);
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/azi", "");--阿紫加入
            ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(47);
            AddEthics(-2);
            Talk(48, "<color=Yellow>阿紫</color>姑娘，你别丢下我一个人。求求少侠让我加入，好让我跟在<color=Yellow>阿紫</color>姑娘身旁服侍她。", "", 0);
            if AskJoin () == true then goto label3 end;
                do return end;
::label3::
                Talk(0, "也好。", "", 1);
                if TeamIsFull() == false then goto label4 end;
                    Talk(48, "你的队伍已满，我无法加入。", "", 0);
                    do return end;
::label4::
                    DarkScence();
                    jyx2_ReplaceSceneObject("", "NPC/youtanzhi", "");--游坦之加入
                    ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                    LightScence();
                    Join(48);
                    AddEthics(-2);
do return end;
