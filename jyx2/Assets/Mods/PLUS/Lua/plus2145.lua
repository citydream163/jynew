arrt = {};
arrt[1] = {1, "河洛客栈"};
arrt[2] = {3, "有间客栈"};
arrt[3] = {40, "悦来客栈"};
arrt[4] = {60, "龙门客栈"};
arrt[5] = {61, "高升客栈"};
arrm = {};
taget = {};
j = 1;
for i = 1, #arrt do
	if not(arrt[i][1] == GetCurrentEventID()) then
	arrm[j] = arrt[i][1];
	taget[j] = arrt[i][2];
	j = j + 1;
	end;
end;
tTaget = ShowSelectPanel(0,"去哪里？", "取消",""..taget[1].."", ""..taget[2].."", ""..taget[3].."",""..taget[4].."");
if not(tTaget == 0) then
	AddItemWithoutHint(204, -1);
	jyx2_WalkFromTo(-1, arrm[tTaget]);--走
	--jyx2_MovePlayer(""..arr[tTaget].."","Level/NavigateObjs");--飞
end;
do return end;