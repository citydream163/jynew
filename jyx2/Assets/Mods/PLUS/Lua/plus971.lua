Talkplus(3618);--37, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3619);--0, "一切还好。"
do return end;
::label0::
Talkplus(3620);--0, "我这次来是找狄兄帮忙的。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3621);--37, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3622);--37, "狄某欠公子一个人情，公子需要帮忙，狄某自当义不容辞。"
DarkScence();
ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/狄云","");
LightScence();
Join(37);
do return end;