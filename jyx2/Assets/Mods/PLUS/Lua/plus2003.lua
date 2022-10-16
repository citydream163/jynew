Talk(0, "如此西湖美景。", "", 1);
if InTeam(51) == true then goto label2 end;
	if InTeam(76) == false then goto label3 end;
	Talk(109, "少侠若想在此休息，待我禀过表哥，请各位在<color=Red>燕子坞</color>休息一晚再走。", "", 0);
	Talk(0, "怎好劳烦王姑娘，我们就不叨扰了。", "", 1);
	do return end;
::label3::
	do return end;
do return end;
::label2::
    Talk(51, "若阁下舟车劳顿，可在<color=Red>燕子坞</color>小住。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "怎好打扰慕容公子清净。", "", 1);
	do return end;
::label1::
    Talk(0, "慕容公子真是客气，那我们就在此欣赏一下西湖美景吧。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	if InTeam(76) == true then goto label0 end;
	Talk(0, "啊，大梦初醒。", "", 1);
	do return end;
	::label0::
	if InTeam(53) == true then goto label4 end;
	Talk(0, "啊，美梦如斯。", "", 1);
do return end;
::label4::
Talk(53, "波渺渺，柳依依，孤村芳草远，斜日杏花飞。", "", 0);
do return end;



