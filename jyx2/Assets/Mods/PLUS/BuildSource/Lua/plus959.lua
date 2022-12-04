Talkplus(3582);--17, "少侠别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3583);--0, "一切还好。"
do return end;
::label0::
Talkplus(3584);--0, "少了王前辈的神奇解毒术，中毒时都不知该怎么办，不知王前辈能再帮我忙吗？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3585);--17, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3586);--17, "少侠的救命之恩，王难姑一辈子都报答不完。所以这个忙是一定要帮的。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/王难姑","");
LightScence();
Join(17);
do return end;