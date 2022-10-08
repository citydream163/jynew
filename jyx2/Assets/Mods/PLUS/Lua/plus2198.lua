if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    Talk(0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
	jyx2_ReplaceSceneObject("","Dynamic/请帖","1");
    ModifyEvent(-2, 11, 0, 0, 932, -1, -1, 7968, -1, -1, -1, -1, -1);
    LightScence();
    Talk(0, "哎呀，好睡好睡！");
	ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--刷新床为正常睡觉
do return end;
