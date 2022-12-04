Talkplus(3679);--58, "兄弟近来如何？"
if AskJoin() == true then goto label0 end;
Talkplus(3680);--0, "托杨兄的福，一切还好。"
do return end;
::label0::
Talkplus(3681);--0, "近日旅途有些不顺，此次前来是想请杨兄加入，助我一臂之力。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3682);--58, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3683);--58, "那有什么问题，别的没有，就是有“一臂”。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/杨过","");
LightScence();
Join(58);
do return end;