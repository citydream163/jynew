Talkplus(3867);--0, "这里有张桌子。"
if JudgeEthics(0, 75, 100) == true then goto label0 end;
do return end;
::label0::
Talkplus(3868);--75, "小兄弟若饿了，稍侯片刻，我来炒几个菜。"
if AskRest() == true then goto  label1 end;
Talkplus(3869);--0, "多谢林师父，我还忙着赶路，下次再来品尝你做的美味。"
do return end;
::label1::
Talkplus(3870);--0, "多谢林师父，我要大快朵颐。"
DarkScence();
RestFight();
SetRoleFace(3);
LightScence();
Talkplus(3871);--0, "好饱。"
do return end;