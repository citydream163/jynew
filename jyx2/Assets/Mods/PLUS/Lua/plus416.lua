SetFlag("ShowLocationName.黑龙潭",1);--大地图显示当前地图名
if InTeam(63) == true then goto label0 end;
ModifyEvent(-2, 3, 0, 0, -1, -1, 2069, -1, -1, -1, -2, -2, -2);
do return end;
::label0::
Talkplus(1879);--63, "这黑水潭似乎是有人特别布局过，但却也难不倒我。"
DarkScence();
jyx2_ReplaceSceneObject("","GasWalls/Wall","");
jyx2_ReplaceSceneObject("","GasWalls1/Wall","1");
ChangeScencePic(-2, 0, 994, 990);
jyx2_ReplaceSceneObject("", "Bake/Static/stone", "1");
LightScence();
ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 5, -2, -2, -1, -1, 434, -1, -1, -1, -2, -2, -2);--by fanyu 启动脚本434 场景21-编号5
jyx2_Wait(0.5);
do return end;