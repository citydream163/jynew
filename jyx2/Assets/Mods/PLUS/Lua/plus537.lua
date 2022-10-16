Talk(0, "前辈，还在研究棋弈啊？", "", 1);
Talk(52, "唉！老朽就是容易沉迷于棋弈，武功才不如<color=Yellow>丁春秋</color>，而被他打得武功全失。", "", 0);
if InTeam(45) == true then goto label0 end;
    Talk(0, "前辈别担心，我们一定会替你报仇的。", "", 1);
    do return end;
::label0::
    jyx2_ReplaceSceneObject("", "NPC/xumuhua", "1");--薛慕华
    Talk(45, "师父，你老人家安好。", "", 1);
    Talk(52, "慕华，你要尽力帮助他们。知道吗。", "", 0);
    Talk(45, "师父，我知道。", "", 1);
    Talk(0, "前辈别担心，我们一定会替你报仇的。", "", 1);
do return end;
