Talkplus(3685);--59, "公子近来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3686);--0, "托龙姑娘的福，一切还好。"
do return end;
::label0::
Talkplus(3687);--0, "还好，不过是否能再请龙姑娘出马帮忙呢？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3688);--59, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3689);--59, "好的。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/小龙女","");
LightScence();
Join(59);
do return end;