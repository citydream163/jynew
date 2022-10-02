Talk(0, "这里挺简朴。", "", 1);

if InTeam(54) == true then goto label0 end;
do return end;
::label0::
    Talk(54, "小兄弟走累了吧，可以在这里休息一程。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢袁兄，我还急着赶路。", "", 1);
    do return end;
::label1::
    Talk(0, "多谢袁兄，我还真有点累，那就麻烦袁兄了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	Talk(0, "又可以出发了。", "", 1);
do return end;
