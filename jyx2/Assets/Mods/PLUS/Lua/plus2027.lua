Talk(0, "听说寺庙道观是可以借宿的。", "", 1);
if JudgeMoney(300) == true then goto label2 end;
Talk(81, "可不是免费的哦。", "", 0);
do return end;
::label2::
if InTeam(35) == true then goto label0 end;
    DarkScence();
    RestFight();
	AddItemWithoutHint(174, -300);
    SetRoleFace(1);
    LightScence();
	Talk(0, "这钱花的不值啊。", "", 1);
do return end;
::label0::
    Talk(35, "我让师弟们帮忙打扫一下。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "下次再来麻烦令狐兄。", "", 1);
    do return end;
::label1::
    DarkScence();
    Rest();
	AddItemWithoutHint(174, -30);
    SetRoleFace(1);
    LightScence();
	Talk(0, "多谢令狐兄盛情，咱们喝完这杯就继续闯荡江湖去。", "", 1);
do return end;