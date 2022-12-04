Talkplus(3624);--38, "好兄弟，你还好吧？我到现在还没找到我妈妈及小黄呢？"
if AskJoin() == true then goto label0 end;
Talkplus(3625);--0, "这样子啊！那你可得努力找哦。"
do return end;
::label0::
Talkplus(3626);--0, "那不然我们再一起找好了，路上也有个照应。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3627);--38, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3628);--38, "好啊。"
DarkScence();
ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/石破天","");
LightScence();
Join(38);
do return end;