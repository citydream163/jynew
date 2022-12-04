Talkplus(871);--19,"下月十五的嵩山大会上，岳某将尽力而为。"
Talkplus(872);--0,"到时我一定去帮你。"
if HaveItem(185) then goto label2 end;
if InTeam(35) == false then goto label0 end;
--jyx2_ReplaceSceneObject("", "NPC/令狐冲", "1");--原作不需要显示令狐冲，是否有必要？
Talkplus(873);--35,"是啊，师父，到时我们一定会去帮你。"
--jyx2_ReplaceSceneObject("", "NPC/令狐冲", "");-- 
::label0::
do return end;
::label2::
Talkplus(874);--19,"上次岳某让了你一招，这次我再来试试你的身手。"
HMPUP(19,3);
if TryBattle(334) == true then goto label3 end;
AddItemWithoutHint(185,-1);
SetOneMagic(19, 0, 60, 900);
SetSexual(19, 2);
Talkplus(875);--19,"少侠还需加强武学造诣。"
AddWuchang(19, 20);
do return end;
::label3::
Talkplus(876);--19,"少侠功夫见长，岳某下次再领教。"
do return end;