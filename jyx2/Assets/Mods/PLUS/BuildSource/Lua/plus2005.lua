Talkplus(3818);--0, "可以在这里休息吗？"
if InTeam(29) == false then goto label0 end;
Talkplus(3819);--29, "兄弟，此地不宜久留！"
do return end;
::label0::
if InTeam(28) == true then goto label2 end;
do return end;
::label2::
Talkplus(3820);--28, "休息也是必要的。"
if AskRest() == true then goto  label1 end;
Talkplus(3821);--0, "有平大夫在，就不用休息了。"
do return end;
::label1::
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
Talkplus(3822);--0, "精神饱满。"
do return end;