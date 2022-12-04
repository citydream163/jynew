Talkplus(2093);--95, "很抱歉，敝教丘掌门现正闭关中，重阳宫恕不接客。"
SetFlag("ShowLocationName.重阳宫",1);--大地图显示当前地图名
if AskBattle() == true then goto label0 end;
Talkplus(2094);--0, "真是不巧，那只好改天再登门拜访了。"
do return end;
::label0::
Talkplus(2095);--0, "那只好得罪了，因为里面搞不好有我要的东西。"
if TryBattle(73) == true then goto label1 end;
Dead();
do return end;
::label1::
ModifyEvent(-2, 1, -2, -2, 456, -1, -1, 6114, 6114, 6114, -2, 31, 48);--by fanyu|改变贴图，改变坐标，启动456脚本。场景19-编号01
jyx2_FixMapObject("重阳宫大门弟子让路", 1);
ModifyEvent(-2, 2, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号02
ModifyEvent(-2, 3, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号03
ModifyEvent(-2, 4, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号04
ModifyEvent(-2, 5, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号05
ModifyEvent(-2, 6, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号06
LightScence();
AddRepute(1);
do return end;