Talk(0, "好累啊。", "", 1);

if InTeam(1) == true then goto label0 end;
Talk(3, "行走江湖，需要注意休息！", "", 0);
do return end;
::label0::

    Talk(3, "胡兄弟，你若是需要恢复体力，可以在此稍作调息。", "", 0);
	Talk(1, "多谢苗大侠。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "我们还是赶路要紧。", "", 1);
    do return end;
::label1::

    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(1, "可以出发了。", "", 0);
do return end;

