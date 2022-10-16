Talk(0, "这里好冷清。", "", 1);

if InTeam(36) == true then goto label0 end;
do return end;
::label0::
    Talk(36, "少侠若觉劳累，可在此休息片刻。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "不劳烦公子了，我们还是赶路要紧。", "", 1);
    do return end;
::label1::
	Talk(0, "多谢公子，叨扰了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	Talk(0, "出发吧。", "", 1);
do return end;

