Talk(0, "想不到此处遍布奇门五行。", "", 1);

if InTeam(63) == true then goto label0 end;
do return end;
::label0::
    Talk(63, "公子若在此小歇，可恢复状态。", "", 0);
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
	AddEthics(-2);
	Talk(61, "美人如斯，后会有期。", "", 0);
::label3::	
	Talk(0, "真是神清气爽呢。", "", 1);
do return end;
