Talkplus(2940);--109, "公子近来可好？"
if AskJoin() == true then goto label0 end;
Talkplus(2941);--0, "一切还好，谢谢王姑娘的关心。"
do return end;
::label0::
Talkplus(2942);--0, "说来惭愧，在下此次来是想麻烦王姑娘出马帮忙的。"
if TeamIsFull() == false then goto label1 end;
Talkplus(2943);--109, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(2944);--109, "小女子愿尽绵薄之力。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("","NPC/王语嫣","");
LightScence();
Join(76);
AddEthics(2);
do return end;