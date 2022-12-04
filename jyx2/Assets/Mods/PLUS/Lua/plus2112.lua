Talkplus(4193);--0, "这里有张床。"
if AskRest() == true then goto  label0 end;
Talkplus(4194);--0, "荒山野岭比较危险。"
do return end;
::label0::
if math.random(1,100) > 50 then goto label1 end;
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(4195);--0, "还是赶快离开这里吧。"
do return end;
::label1::
DarkScence();
SetRoleFace(1);
LightScence();
Talkplus(4196);--27, "莲弟，你来了。"--东方不败
if TryBattle(233) == true then goto label6 end;--云鹤崖战东方不败5000
Dead();
do return end;
::label6::
if TeamIsFull() == false then goto label2 end;
Talkplus(4197);--27, "莲弟，我比他们强多了，你带那么多无用的人在身边干嘛？"
do return end;
::label2::
Talkplus(4198);--27, "莲弟武功愈发高强，本人深感钦佩，我是你的白莲花。"--东方不败
Join(27);
ModifyEvent(-2, -2, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;