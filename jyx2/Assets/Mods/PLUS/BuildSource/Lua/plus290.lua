if HaveItem(160) then goto label2 end;
SetOneMagic(36, 0, 31, 100);
goto label2
do return end;
::label2::
Talkplus(1326);--0, "林兄剑法不知练的怎样了？"
Talkplus(1327);--36, "我迫不及待想上四川青城，诛灭他全派为我双亲报仇。可是以我现在的功力，恐怕无法办到。"
if AskJoin() == true then goto label0 end;
Talkplus(1328);--0, "林兄别急，凡事慢慢来。"
do return end;
::label0::
Talkplus(1329);--0, "不然这样好了，我和林兄一起去，杀光他青城派。"
if TeamIsFull() == false then goto label1 end;
Talkplus(1330);--36, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(1331);--36, "真的？我们走吧。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/林平之", "");--加入队伍
ModifyEvent(36, 0, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(36, 1, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(36, 2, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(36, 3, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
Join(36);
--AddEthics(-4);
do return end;