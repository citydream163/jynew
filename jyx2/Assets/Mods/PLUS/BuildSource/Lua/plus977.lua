Talkplus(3636);--45, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3637);--0, "一切还好。"
do return end;
::label0::
Talkplus(3638);--0, "少了薛先生的奇妙医术，一路上难免病痛烦身，是否可以再请薛先生帮忙呢？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3639);--45, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3640);--45, "公子有需，薛某自当效力。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/xuemuhua","");
LightScence();
Join(45);
do return end;