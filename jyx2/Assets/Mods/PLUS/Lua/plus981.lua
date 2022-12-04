Talkplus(3648);--48, "你要干嘛？"
if AskJoin() == true then goto label0 end;
Talkplus(3649);--0, "没事。"
do return end;
::label0::
Talkplus(3650);--0, "铁面，我需要你的帮忙，走吧。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3651);--48, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3652);--48, "嗯。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/youtanzhi","");
LightScence();
Join(48);
do return end;