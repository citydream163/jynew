Talk(19, "下月十五的嵩山大会上，岳某将尽力而为。", "", 0);
Talk(0, "到时我一定去帮你。", "", 1);
if HaveItem(185) then goto label2 end;
if InTeam(35) == false then goto label0 end;
    --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "1");--原作不需要显示令狐冲，是否有必要？
    Talk(35, "是啊，师父，到时我们一定会去帮你。", "", 1); 
    --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "");-- 
::label0::
    do return end;
::label2::
Talk(19, "上次岳某让了你一招，这次我再来试试你的身手。");
ybquplv = 10;
AddHpWithoutHint(19, (9+math.random (0, 3))*3*ybquplv);
AddMpWithoutHint(19, math.random (3, 8)*4*ybquplv);
if TryBattle(334) == true then goto label3 end;
AddItemWithoutHint(185,-1);
SetOneMagic(19, 0, 60, 900);
SetSexual(19, 2);
Talk(19, "少侠还需加强武学造诣。");
AddWuchang(19, 20);
    do return end;
::label3::
Talk(19, "少侠功夫见长，岳某下次再领教。");
do return end;