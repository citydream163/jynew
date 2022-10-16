arr = {};
arr[1] = 71;
arr[2] = 72;
arr[3] = 73;
arr[4] = 74;
arr[5] = 75;
arr[6] = 76;
arr[7] = 77;
arr[8] = 78;
arr[9] = 79;
tTaget = ShowSelectPanelPro(0,"去哪里？", "取消","神龙教", "冰火岛", "灵蛇岛", "侠客岛", "桃花岛", "霹雳堂", "万鳄岛", "渤泥岛", "鸳鸯山洞");
if not(tTaget == 0) then 
jyx2_MovePlayer(""..arr[tTaget].."","Level/NavigateObjs");
end;
do return end;