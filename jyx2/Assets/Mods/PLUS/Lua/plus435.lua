Talkplus(1951);--0, "想不到竟有这么一条路通往这<color=Red>绝情谷底</color>。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
SetFlag("ShowLocationName.绝情谷底",1);--大地图显示当前地图名
if Calendar(2) - jyx2_CheckEventCount(58,333,0) < 16*360 then
	Add3EventNum(70,999,0,0,((jyx2_CheckEventCount(58,333,0)+16*360)-Calendar(2))//90);--16年后
end;
do return end;