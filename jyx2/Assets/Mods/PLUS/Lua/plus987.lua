Talkplus(3666);--53, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3667);--0, "一切还好。"
do return end;
::label0::
Talkplus(3668);--0, "段兄弟愿再陪我一游吗？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3669);--53, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3670);--53, "好啊。"
DarkScence();
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/段誉","");
LightScence();
Join(53);
do return end;