Talk(0, "先在这里休息片刻。", "", 1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 50 then goto label1 end;
    DarkScence();
    SetRoleFace(3);
    LightScence();
	Talk(0, "这里不太安全。", "", 1);
do return end;
::label1::
if JudgeEthics(0, 65, 100) == true then goto label2 end;
Talk(80, "兄弟们，这里有六大派的打手。", "", 0);--明教弟子
    if TryBattle(238) == true then goto label6 end;--明教分舵战明教弟子300
	Dead();
do return end;
::label2::
Talk(81, "各位英雄好汉，这里还有魔教的余孽。", "", 0);--华山弟子
    if TryBattle(239) == true then goto label6 end;--明教分舵战六派弟子700
	Dead();
    do return end;
::label6::
SetRoleFace(3);
	Talk(0, "还是快去<color=Red>光明顶</color>吧。", "", 1);
do return end;