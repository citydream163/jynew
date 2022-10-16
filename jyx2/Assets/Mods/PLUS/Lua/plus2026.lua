Talk(0, "先在这里凑合一夜吧。", "", 1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 33 then goto label0 end;
    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(0, "夜宿山寺，寒灯古佛。", "", 1);
    do return end;
::label0::
Talk(91, "就是这个小子放走的要犯。", "", 0);
    if TryBattle(242) == true then goto label1 end;
		Dead();
        do return end;
::label1::
		SetRoleFace(1);
        LightScence();
        Talk(91, "小子有种别跑，我们去找帮手。", "", 0);
        Talk(0, "快溜。", "", 1);
do return end;