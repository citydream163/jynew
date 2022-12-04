Talkplus(3935);--0, "先在这里休息一下吧。"
if math.random(1,100) > 33 then goto label0 end;
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3936);--0, "聊胜于无吧，继续战斗去。"
do return end;
::label0::
Talkplus(3937);--15, "野小子，你问过我吗。"
if TryBattle(132) == false then goto label1 end;
SetRoleFace(1);
LightScence();
Talkplus(3938);--15, "小子，过些时候，老婆婆我再向你讨教。"
Talkplus(3939);--0, "我会等您的。"
do return end;
::label1::
SetRoleFace(1);
LightScence();
Talkplus(3940);--15, "看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;