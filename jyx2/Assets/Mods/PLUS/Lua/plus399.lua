ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除断肠草 场景22-编号0
jyx2_ReplaceSceneObject("", "Dynamic/断肠草", "");
AddItem(134, 1);
if jyx2_CheckEventCount(58,333,0) > 0 then
	SetFlag("ShowLocationName.绝情谷",1);--大地图显示当前地图名
end;
do return end;