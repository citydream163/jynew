Talkplus(2792);--0, "徒儿，师父来看你了。"
Talkplus(2793);--44, "……"
Talkplus(2794);--0, "叫师父啊。"
Talkplus(2795);--44, "……师……师父。"
if AskJoin() == true then goto label0 end;
Talkplus(2796);--0, "记得要乖哦！"
do return end;
::label0::
Talkplus(2797);--0, "徒儿，你就跟为师的走吧。"
if TeamIsFull() == false then goto label1 end;
Talkplus(2798);--44, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(2799);--44, "是。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/NanHaiEShen",""); 
LightScence();
Join(44);
do return end;