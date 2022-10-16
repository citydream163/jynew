Talk(0, "先在这里休息一下吧。", "", 1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 33 then goto label0 end;
    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(0, "聊胜于无吧，继续战斗去。", "", 1);
    do return end;
::label0::
Talk(15, "野小子，你问过我吗。", "", 0);
    if TryBattle(132) == false then goto label1 end;
		SetRoleFace(1);
        LightScence();
        Talk(15, "小子，过些时候，老婆婆我再向你讨教。", "", 0);
        Talk(0, "我会等您的。", "", 1);
        do return end;
::label1::
		SetRoleFace(1);
        LightScence();
        Talk(15, "看你资质挺好的，老婆婆我不想杀你，你走吧。", "", 0);
do return end;