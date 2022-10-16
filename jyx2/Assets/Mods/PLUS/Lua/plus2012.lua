Talk(0, "这里有张桌子。", "", 1);

if JudgeEthics(0, 75, 100) == true then goto label0 end;
do return end;
::label0::
    Talk(75, "小兄弟若饿了，稍侯片刻，我来炒几个菜。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢林师父，我还忙着赶路，下次再来品尝你做的美味。", "", 1);
    do return end;
::label1::
	Talk(0, "多谢林师父，我要大快朵颐。", "", 1);
    DarkScence();
    RestFight();
    SetRoleFace(3);
    LightScence();
	Talk(0, "好饱。", "", 1);
do return end;

