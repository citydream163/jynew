Talkplus(3594);--28, "有什么事吗？"
if AskJoin() == true then goto label0 end;
Talkplus(3595);--0, "没事没事。"
do return end;
::label0::
Talkplus(3596);--0, "这次来是要您再随我一走，队伍中需要大夫。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3597);--28, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3598);--28, "走吧。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/平一指","");
LightScence();
Join(28);
do return end;