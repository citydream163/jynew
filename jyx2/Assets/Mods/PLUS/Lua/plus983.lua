Talkplus(3654);--49, "施主别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3655);--0, "一切还好。"
do return end;
::label0::
Talkplus(3656);--0, "小师父，我有麻烦了，快帮帮我。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3657);--49, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3658);--49, "阿弥陀佛！施主有难，小僧自当效力。"
DarkScence();
ModifyEvent(-2, 2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 15, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/xuzhu","");
LightScence();
Join(49);
do return end;