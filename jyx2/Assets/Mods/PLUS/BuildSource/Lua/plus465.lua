Talkplus(2125);--0, "还好瑛姑告诉了我桃花岛的入口以及走法，否则要进这桃花岛可真不容易。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
if not(JudgePointEventNum(7,2,2143)) and not(JudgePointEventNum(7,2,-1)) then 
	ModifyEvent(-2, 7, 0, -1, -1, -1, 2144, -1, -1, -1, -1, -2, -2);--程英入桃花岛（瑛姑指路后）
end;
Add3EventNum(75,0,0,0,465);--瑛姑指路
SetFlag("ShowLocationName.桃花岛",1);--大地图显示当前地图名
do return end;