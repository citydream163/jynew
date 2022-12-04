Talkplus(3929);--0, "听说寺庙道观是可以借宿的。"
if InTeam(9) == true then goto label0 end;
if JudgeMoney(30) == true then goto label2 end;
Talkplus(3930);--76, "可不是免费的哦。"
do return end;
::label0::
Talkplus(3931);--9, "公子若需休息，我来安排。"
if AskRest() == true then goto  label1 end;
Talkplus(3932);--0, "下次再来麻烦张兄。"
do return end;
::label1::
DarkScence();
RestFight();
SetRoleFace(3);
LightScence();
Talkplus(3933);--0, "多谢张兄盛情，我们闯荡江湖去。"
do return end;
::label2::
DarkScence();
Rest();
AddItemWithoutHint(174, -30);
SetRoleFace(3);
LightScence();
Talkplus(3934);--0, "花钱也值得。"
do return end;