Talkplus(3944);--0, "先在这里凑合一夜吧。"
if math.random(1,100) > 33 then goto label0 end;
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3945);--0, "夜宿山寺，寒灯古佛。"
do return end;
::label0::
Talkplus(3946);--91, "就是这个小子放走的要犯。"
if TryBattle(242) == true then goto label1 end;
Dead();
do return end;
::label1::
SetRoleFace(1);
LightScence();
Talkplus(3947);--91, "小子有种别跑，我们去找帮手。"
Talkplus(3948);--0, "快溜。"
do return end;