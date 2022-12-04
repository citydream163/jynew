Talkplus(3558);--1, "兄弟别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3559);--0, "一切还好。"
do return end;
::label0::
Talkplus(3560);--0, "少了大哥胡家刀法助威，小弟办起事来总觉得不顺，……"
if TeamIsFull() == false then goto label1 end;
Talkplus(3561);--1, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3562);--1, "别说了，我就再助你一臂之力。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/胡斐","");
LightScence();
Join(1);
do return end;