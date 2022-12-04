Talkplus(3606);--35, "来来来，好久不见，我们喝一杯。"
if AskJoin() == true then goto label0 end;
Talkplus(3607);--0, "令狐兄还是这么潇洒。"
do return end;
::label0::
Talkplus(3608);--0, "提起喝酒，我就想起一路上少了令狐兄为伴，旅途中就好像少了点什么。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3609);--35, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3610);--35, "那我们就再一起结伴天涯，喝尽世间的美酒！"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/令狐冲","");
LightScence();
Join(35);
do return end;