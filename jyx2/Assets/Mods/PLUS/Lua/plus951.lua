Talk(1, "兄弟别来无恙？", "", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "一切还好。", "", 1);
    do return end;
::label0::
    Talk(0, "少了大哥<color=orange>胡家刀法</color>助威，小弟办起事来总觉得不顺，……", "", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(1, "你的队伍已满，我无法加入。", "", 0);
        do return end;
::label1::
        Talk(1, "别说了，我就再助你一臂之力。", "", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/胡斐","");
        LightScence();
        Join(1);
do return end;
