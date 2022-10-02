Talk(55, "保持良好的身体状态才能惩恶扬善。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "郭大侠说的是。", "", 1);
    do return end;
::label1::
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	Talk(0, "郭大侠告辞，我要去惩恶扬善了。", "", 1);
do return end;
