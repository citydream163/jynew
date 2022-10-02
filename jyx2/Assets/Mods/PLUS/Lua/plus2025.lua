Talk(0, "先在这里休息一下吧。", "", 1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 66 then goto label0 end;
    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(0, "聊胜于无吧，继续战斗去。", "", 1);
    do return end;
::label0::
SetRoleFace(1);
Talk(0, "睡不安稳。", "", 1);
do return end;