Talk(86, "这里是四川<color=Red>青城派</color>，闲杂人等不得进入。", "", 0);
Talk(0, "你们这些江湖的败类，不但占地为王，而且还血洗了<color=Red>福威镖局</color>，将人家总镖头给捉了来。你们眼中还有王法吗。", "", 1);
Talk(86, "让我们“青城四秀”来告诉你什么叫王法。", "", 0);
if TryBattle(49) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, -2, -2, 294, -1, -1, 6044, 6044, 6044, -2, 30, 26);
    jyx2_FixMapObject("青城弟子让路",1);
    ModifyEvent(-2, 1, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 3, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(0, "江湖上人说什么“英雄豪杰，青城四秀”，在我看来，叫“狗熊野猪，青城四兽”还差不多。", "", 1);
    Talk(86, "看我师父如何收拾你。", "", 0);
    AddEthics(2);
    AddRepute(1);
	SetFlag("ShowLocationName.青城派",1);--大地图显示当前地图名
do return end;
