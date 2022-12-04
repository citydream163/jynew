Talkplus(2006);--0, "兄弟近来如何？"
if AskJoin() == true then goto label0 end;
Talkplus(2007);--0, "一切顺利，你夫妇俩可还好吧。"
Talkplus(2008);--58, "托你的福，一切还好。"
do return end;
::label0::
Talkplus(2009);--0, "近日旅途有些不顺，此次前来是想请杨兄加入，助我一臂之力。"
Talkplus(2010);--58, "那有什么问题，别的没有，就是有“一臂”。"
Talkplus(2011);--0, "杨兄说笑了。"
Talkplus(2012);--58, "此次重出江湖，正好试试新练成的“黯然销魂掌”。"
Talkplus(2013);--0, "那就走吧。"
if TeamIsFull() == false then goto label1 end;
Talkplus(2014);--58, "你的队伍已满，我无法加入。"
do return end;
::label1::
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/杨过", "");--杨过加入队伍    
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2); 
LightScence();
Join(58);
do return end;