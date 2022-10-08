MapLightSwitch = ShowYesOrNoSelectPanel("是否打开大地图光柱？");
if (MapLightSwitch) then
	MapLight(1000,1);
else
	MapLight(1000,0);
end;
do return end;