Talkplus(3909);--0, "可以在这里休息了吧。"
if math.random(1,100) > 50 then goto label1 end;
DarkScence();
RestFight();
SetRoleFace(3);
LightScence();
Talkplus(3910);--0, "略胜于无吧。"
do return end;
::label1::
if JudgeEthics(0, 0, 64) == true then goto label2 end;
Talkplus(3911);--80, "大侠，我们陪你练练功。"--明教弟子
if TryBattle(238) == true then goto label6 end;--明教分舵战明教弟子300
--Dead();
do return end;
::label2::
SetRoleFace(3);
Talkplus(3912);--0, "这里不太舒服。"
do return end;
::label6::
SetRoleFace(3);
Talkplus(3913);--0, "凑合着赚点经验。"
do return end;