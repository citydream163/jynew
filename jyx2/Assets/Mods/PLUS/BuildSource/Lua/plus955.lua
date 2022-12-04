Talkplus(3570);--9, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3571);--0, "一切还好。"
do return end;
::label0::
Talkplus(3572);--0, "少了张兄的九阳神功，一路上颇多凶险，是否可以再请张兄出马？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3573);--9, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3574);--9, "好的。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/张无忌","");
LightScence();
Join(9);
do return end;