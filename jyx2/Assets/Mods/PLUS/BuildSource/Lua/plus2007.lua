Talkplus(3828);--0, "这里好冷清。"
if InTeam(36) == true then goto label0 end;
do return end;
::label0::
Talkplus(3829);--36, "少侠若觉劳累，可在此休息片刻。"
if AskRest() == true then goto  label1 end;
Talkplus(3830);--0, "不劳烦公子了，我们还是赶路要紧。"
do return end;
::label1::
Talkplus(3831);--0, "多谢公子，叨扰了。"
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3832);--0, "出发吧。"
do return end;