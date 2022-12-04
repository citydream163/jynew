MiniMapSwitch = ShowYesOrNoSelectPanel("是否打开全部场景名称？");
if (MiniMapSwitch) then
	--MiniMapOn();--打开小地图
	SetFlag("BanLocationName.All",0);
else
	--MiniMapOff();--关闭小地图
	SetFlag("BanLocationName.All",1);
end;
do return end;