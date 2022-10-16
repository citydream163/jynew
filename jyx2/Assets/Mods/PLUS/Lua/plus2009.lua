Talk(0, "此地好幽静。", "", 1);

if InTeam(45) == true then goto label0 end;
do return end;
::label0::
    Talk(45, "少侠若在此歇脚，弟子将不胜荣幸之至。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "今天就不劳烦先生了，我们还是赶路要紧。", "", 1);
    do return end;
::label1::
	Talk(0, "多谢先生，我们就在此处休息片刻。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	Talk(0, "恢复如初。", "", 1);
do return end;

