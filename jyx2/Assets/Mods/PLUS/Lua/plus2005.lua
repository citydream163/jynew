Talk(0, "可以在这里休息吗？", "", 1);

if InTeam(29) == false then goto label0 end;
Talk(29, "兄弟，此地不宜久留！", "", 0);
do return end;
::label0::
if InTeam(28) == true then goto label2 end;
do return end;
::label2::
    Talk(28, "休息也是必要的。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "有平大夫在，就不用休息了。", "", 1);
    do return end;
::label1::
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	Talk(0, "精神饱满。", "", 1);
do return end;

