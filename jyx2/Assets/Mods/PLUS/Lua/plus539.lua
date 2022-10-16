if InTeam(47) == false then goto label0 end;
    Talk(92, "小师妹，你居然还敢回来，我劝你快进去向师父请罪。", "", 0);
    jyx2_ReplaceSceneObject("","GasWalls/Wall1","");
    jyx2_ReplaceSceneObject("","NPC/阿紫","1");
    jyx2_ReplaceSceneObject("","NPC/阿紫","");
::label0::
    Talk(92, "天下武林，都是源出于我星宿一派，只有星宿派的武功才是真正正统，此外尽是邪魔歪道。", "", 0);
	SetFlag("ShowLocationName.星宿海",1);--大地图显示当前地图名
do return end;
