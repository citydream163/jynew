Talkplus(3642);--47, "愣小子，要干嘛？"
if AskJoin() == true then goto label0 end;
Talkplus(3643);--0, "没事。"
do return end;
::label0::
Talkplus(3644);--0, "<color=Yellow>阿紫</color>姑娘，再加入我好吗？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3645);--47, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3646);--47, "你不怕我的话就走吧。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/azi","");
LightScence();
Join(47);
do return end;