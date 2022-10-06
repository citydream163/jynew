MiniMapSwitch = ShowYesOrNoSelectPanel("是否打开小地图？");
if (MiniMapSwitch) then
	MiniMapOn();
else
	MiniMapOff();
end;
do return end;