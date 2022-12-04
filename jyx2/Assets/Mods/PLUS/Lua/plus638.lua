Talkplus(3136);--54, "看到你的样子，我的心也整个活跃了起来。"
if AskJoin() == true then goto label0 end;
do return end;
::label0::
Talkplus(3137);--0, "不如这样，袁兄何不暂时离开这小岛，和在下一起到江湖上闯闯，再显当年威风。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3138);--54, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3139);--54, "好。离开武林这么多年，也不知变得怎么样了。袁某的功夫不知是否还管用。"
Talkplus(3140);--0, "我们走吧。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/袁承志", "");-- 袁承志加入队伍
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
Join(54);
AddEthics(5);
do return end;