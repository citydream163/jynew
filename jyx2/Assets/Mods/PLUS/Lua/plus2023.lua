Talk(0, "听说寺庙道观是可以借宿的。", "", 1);
if InTeam(9) == true then goto label0 end;
if JudgeMoney(30) == true then goto label2 end;
Talk(76, "可不是免费的哦。", "", 0);
do return end;
::label0::
    Talk(9, "公子若需休息，我来安排。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "下次再来麻烦张兄。", "", 1);
    do return end;
::label1::
    DarkScence();
    RestFight();
    SetRoleFace(3);
    LightScence();
	Talk(0, "多谢张兄盛情，我们闯荡江湖去。", "", 1);
do return end;
::label2::
    DarkScence();
    Rest();
	AddItemWithoutHint(174, -30);
    SetRoleFace(3);
    LightScence();
	Talk(0, "花钱也值得。", "", 1);
do return end;