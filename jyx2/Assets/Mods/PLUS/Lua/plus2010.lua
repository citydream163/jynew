Talk(0, "想不到此处遍布奇门五行。", "", 1);
if InTeam(63) == true then goto label0 end;
do return end;
::label0::
	if InTeam(58) == false then goto label4 end;
	ModifyEvent(-2, -2, 0, -1, 2102, -1, -1, -1, -1, -1, -1, -2, -2);
	Talk(63, "杨大哥可在此小歇，恢复一下状态。", "", 0);
		if InTeam(59) == false then goto label6 end;
		Talk(59, "过儿不累，你一个姑娘家的矜持一点。", "", 0);
		Talk(63, "即见君子，云胡不喜？", "", 0);
		Talk(0, "各位别吵了，我们还是赶路要紧。", "", 1);
		do return end;
		::label6::
		Talk(58, "多谢姑娘，我不累，兄弟要不要休息一下？", "", 0);
	goto label5
	do return end;
	::label4::
    Talk(63, "公子若在此小歇，可恢复状态。", "", 0);
	::label5::
	if AskRest() == true then goto  label1 end;
	Talk(0, "程姑娘真是有心之人，我们还是先赶路吧。", "", 1);
    do return end;
::label1::
	Talk(0, "程姑娘有心了，给程姑娘添麻烦了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	if InTeam(29) == false then goto label2 end;
	AddEthics(-1);
	Talk(29, "五行八卦，奇门遁甲。", "", 0);
::label2::
	if InTeam(61) == false then goto label3 end;
	AddEthics(-1);
	Talk(61, "美人如斯，后会有期。", "", 0);
::label3::	
	Talk(0, "真是神清气爽呢。", "", 1);
do return end;
