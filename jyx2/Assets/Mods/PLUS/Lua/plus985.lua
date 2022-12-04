Talkplus(3660);--51, "怎么？想通了。"
if AskJoin() == true then goto label0 end;
Talkplus(3661);--0, "不行，我不能这么做。"
do return end;
::label0::
Talkplus(3662);--0, "好，就听你的。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3663);--51, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3664);--51, "走。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/慕容复","");
LightScence();
Join(51);
do return end;