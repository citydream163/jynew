if AskRest() == true then goto  label0 end;
do return end;
::label0::
Talkplus(3493);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
Rest();
SetRoleFace(1);
LightScence();
Talkplus(3494);--0, "一觉起来，精神十足。走吧，继续冒险去了！"
do return end;