Talkplus(3703);--109, "公子近来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3704);--0, "托王姑娘的福，一切还好。"
do return end;
::label0::
Talkplus(3705);--0, "还好，不过若有王姑娘在队中指导我们攻击与防御，我们会更好。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3706);--109, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3707);--109, "好吧，我加入你们。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/王语嫣","");
LightScence();
Join(76);
do return end;