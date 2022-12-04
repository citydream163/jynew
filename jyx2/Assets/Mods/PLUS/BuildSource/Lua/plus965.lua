Talkplus(3600);--29, "兄弟，一路上还爽吧？又搞了几个女人呀？"
if AskJoin() == true then goto label0 end;
Talkplus(3601);--0, "田兄真爱开玩笑。"
do return end;
::label0::
Talkplus(3602);--0, "没有你同行，小弟一人怎么玩得起来。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3603);--29, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3604);--29, "那就走吧。我一个人玩也没什么意思，团体的比较好玩。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/田伯光","");
LightScence();
Join(29);
do return end;