Talkplus(3564);--2, "公子别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3565);--0, "一切还好。"
do return end;
::label0::
Talkplus(3566);--0, "没有灵姑娘这个大毒枭在，一路上都挺麻烦的，是否可请灵姑娘再出马呢？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3567);--2, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3568);--2, "那有什么问题。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/chenglingsu","");
LightScence();
Join(2);
do return end;