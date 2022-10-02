Talk(0, "龙姑娘在此度过了一十六年的光景啊。", "", 1);
if InTeam(58) == true then goto label0 end;
do return end;
::label0::
    Talk(58, "我也想过过姑姑过过的生活。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "咱们还是赶路要紧。", "", 1);
    do return end;
::label1::
    DarkScence();
    RestFight();
    SetRoleFace(3);
    LightScence();
	if InTeam(59) == true then goto label2 end;
	Talk(58, "白驹过隙。", "", 0);
	do return end;
	::label2::
	Talk(59, "我的过儿长大了。", "", 0);
do return end;

