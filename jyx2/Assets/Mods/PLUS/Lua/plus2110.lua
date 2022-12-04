Talkplus(4183);--330, "公子，你回来了？"
if AskJoin() == true then goto label0 end;
Talkplus(4184);--0, "嗯，你在家还好吧。"
do return end;
::label0::
Talkplus(4185);--0, "小翠，我搞不定，还是需要你的帮忙，一起走吧。"
if TeamIsFull() == false then goto label1 end;
Talkplus(4186);--330, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(4187);--330, "嗯。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/翡冷翠","");
LightScence();
Join(329);
do return end;