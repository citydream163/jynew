Talkplus(3949);--0, "听说寺庙道观是可以借宿的。"
if JudgeMoney(300) == true then goto label2 end;
Talkplus(3950);--81, "可不是免费的哦。"
do return end;
::label2::
if InTeam(35) == true then goto label0 end;
DarkScence();
RestFight();
AddItemWithoutHint(174, -300);
SetRoleFace(1);
LightScence();
Talkplus(3951);--0, "这钱花的不值啊。"
do return end;
::label0::
Talkplus(3952);--35, "我去找人来帮忙打扫一下。"
if AskRest() == true then goto  label1 end;
Talkplus(3953);--0, "下次再来麻烦令狐兄。"
do return end;
::label1::
DarkScence();
Rest();
AddItemWithoutHint(174, -30);
SetRoleFace(1);
LightScence();
Talkplus(3954);--0, "多谢令狐兄盛情，咱们喝完这杯就继续闯荡江湖去。"
do return end;