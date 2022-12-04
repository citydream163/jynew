Talkplus(3802);--0, "如此西湖美景。"
if InTeam(51) == true then goto label2 end;
	if InTeam(76) == false then goto label3 end;
	Talkplus(3803);--109, "少侠若想在此休息，待我禀过表哥，请各位在燕子坞休息一晚再走。"
	Talkplus(3804);--0, "怎好劳烦王姑娘，我们就不叨扰了。"
	do return end;
::label3::
do return end;
::label2::
	Talkplus(3805);--51, "若阁下舟车劳顿，可在燕子坞小住。"
	if AskRest() == true then goto  label1 end;
	Talkplus(3806);--0, "怎好打扰慕容公子清净。"
	do return end;
::label1::
	Talkplus(3807);--0, "慕容公子真是客气，那我们就在此欣赏一下西湖美景吧。"
	DarkScence();
	Rest();
	SetRoleFace(1);
	LightScence();
	if InTeam(76) == true then goto label0 end;
	Talkplus(3808);--0, "啊，大梦初醒。"
	do return end;
	::label0::
	if InTeam(53) == true then goto label4 end;
	Talkplus(3809);--0, "啊，美梦如斯。"
do return end;
::label4::
Talkplus(3810);--53, "波渺渺，柳依依，孤村芳草远，斜日杏花飞。"
do return end;