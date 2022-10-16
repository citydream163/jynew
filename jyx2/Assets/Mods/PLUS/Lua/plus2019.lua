Talk(0, "可以在这里休息了吧。", "", 1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 50 then goto label1 end;
    DarkScence();
	RestFight();
    SetRoleFace(3);
    LightScence();
	Talk(0, "略胜于无吧。", "", 1);
do return end;
::label1::
if JudgeEthics(0, 0, 64) == true then goto label2 end;
Talk(80, "大侠，我们陪你练练功。", "", 0);--明教弟子
    if TryBattle(238) == true then goto label6 end;--明教分舵战明教弟子300
	Dead();
do return end;
::label2::
SetRoleFace(3);
Talk(0, "这里不太舒服。", "", 1);
do return end;
::label6::
SetRoleFace(3);
Talk(0, "凑合着赚点经验。", "", 1);
do return end;