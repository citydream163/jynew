Talkplus(3697);--63, "公子近来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3698);--0, "托程姑娘的福，一切还好。"
do return end;
::label0::
Talkplus(3699);--0, "还好，不过有程姑娘在队中会更好。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3700);--63, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3701);--63, "好吧，我就再陪你走一遭。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/程英","");
LightScence();
Join(63);
do return end;