Talkplus(3847);--0, "想不到此处遍布奇门五行。"
if InTeam(63) == true then goto label0 end;
do return end;
::label0::
if InTeam(58) == false then goto label4 end;
ModifyEvent(-2, -2, 0, -1, 2102, -1, -1, -1, -1, -1, -1, -2, -2);
Talkplus(3848);--63, "杨大哥可在此小歇，恢复一下状态。"
	if InTeam(59) == false then goto label6 end;
		Talkplus(3849);--59, "过儿不累，你一个姑娘家的矜持一点。"
		Talkplus(3850);--63, "即见君子，云胡不喜？"
		Talkplus(3851);--0, "两位别伤了和气，我们还是赶路要紧。"
		do return end;
		::label6::
		Talkplus(3852);--58, "多谢姑娘，我不累，兄弟要不要休息一下？"
	goto label5
	do return end;
	::label4::
	Talkplus(3853);--63, "公子若在此小歇，可恢复状态。"
	::label5::
	if AskRest() == true then goto  label1 end;
	Talkplus(3854);--0, "程姑娘真是有心之人，我们还是先赶路吧。"
	do return end;
::label1::
	Talkplus(3855);--0, "程姑娘有心了，给程姑娘添麻烦了。"
	DarkScence();
	SetRoleFace(3);
	LightScence();
	if InTeam(58) == true then
		Talkplus(3856);--63, "瞻彼淇奥，绿竹猗猗，有匪君子，如切如磋，如琢如磨。"
		DarkScence();
		RestFight();
		LightScence();
	else
		Rest();
	end;
	if InTeam(29) == false then goto label2 end;
	AddEthics(-1);
	Talkplus(3857);--29, "五行八卦，奇门遁甲。"
::label2::
	if InTeam(61) == false then goto label3 end;
	AddEthics(-1);
	Talkplus(3858);--61, "美人如斯，后会有期。"
::label3::	
	Talkplus(3859);--0, "真是神清气爽呢。"
do return end;