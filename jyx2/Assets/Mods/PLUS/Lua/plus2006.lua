Talk(0, "苗家陈设确实与众不同。", "", 1);

if InTeam(25) == true then goto label0 end;
do return end;
::label0::
    Talk(25, "公子若不嫌弃，可在此小憩。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "蓝教主的好意在下心领了，我还急着赶路。", "", 1);
    do return end;
::label1::
	Talk(0, "多谢蓝教主招待。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	Talk(0, "神清气爽。", "", 1);
do return end;

