Talk(0, "这张床好大。", "", 1);
if InTeam(29) == true then goto label0 end;
do return end;
::label0::
    Talk(29, "兄弟，要不要试试我的大床呀。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "还是赶路要紧。", "", 1);
    do return end;
::label1::
    Talk(0, "我还真没睡过这么大的床，田兄盛情难却，我们就在此地休息一晚。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	if JudgeFemaleInTeam() == true then goto label2 end;
	Talk(0, "啊，大床好梦。", "", 1);
do return end;
::label2::
	if InTeam(61) == false then goto label3 end;
	AddEthics(-2);
	Talk(61, "美人在怀，胜却人间无数。", "", 0);
do return end;
::label3::
	AddEthics(-1);
	Talk(0, "大床好办事。", "", 1);
do return end;