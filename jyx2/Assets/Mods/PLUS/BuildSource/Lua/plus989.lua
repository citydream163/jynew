Talkplus(3672);--54, "小兄弟，最近还好吗？"
if AskJoin() == true then goto label0 end;
Talkplus(3673);--0, "托袁兄的福，一切还好。"
do return end;
::label0::
Talkplus(3674);--0, "不瞒袁兄，最近诸事不顺……"
if TeamIsFull() == false then goto label1 end;
Talkplus(3675);--54, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3676);--54, "别说了，我们走吧。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/袁承志","");
LightScence();
Join(54);
do return end;