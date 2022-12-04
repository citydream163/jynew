Talkplus(3904);--0, "先在这里休息片刻。"
if math.random(1,100) > 50 then goto label1 end;
DarkScence();
SetRoleFace(3);
LightScence();
Talkplus(3905);--0, "这里不太安全。"
do return end;
::label1::
if JudgeEthics(0, 65, 100) == true then goto label2 end;
Talkplus(3906);--80, "兄弟们，这里有六大派的打手。"--明教弟子
if TryBattle(238) == true then goto label6 end;--明教分舵战明教弟子300
Dead();
do return end;
::label2::
Talkplus(3907);--81, "各位英雄好汉，这里还有魔教的余孽。"--华山弟子
if TryBattle(239) == true then goto label6 end;--明教分舵战六派弟子700
Dead();
do return end;
::label6::
SetRoleFace(3);
Talkplus(3908);--0, "还是快去光明顶吧。"
do return end;