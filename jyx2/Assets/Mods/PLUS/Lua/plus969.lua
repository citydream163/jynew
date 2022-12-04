Talkplus(3612);--36, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3613);--0, "一切还好。", "", 1);
do return end;
::label0::
Talkplus(3614);--0, "不知林公子是否还有意与我为伴，一同行走江湖。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3615);--36, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3616);--36, "好啊。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/林平之","");
LightScence();
Join(36);
do return end;