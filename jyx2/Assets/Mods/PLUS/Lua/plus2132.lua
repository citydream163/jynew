math.randomseed(tostring(os.time()):reverse():sub(1, 7));
txt = {};
txt[1] = "这种好看！";
txt[2] = "这种好好看！";
txt[3] = "这种最艳！";
txt[4] = "哎呀，都好看！";
txt[5] = "我喜欢这种花。";
txt[6] = "哎呀，抱不动了。";
txt[7] = "嗯，这么多应该够了吧。";
arr = {1,2,3,4,5,6};
for j = 1, #arr do	
ModifyEvent(-2, j+9, -2, -2, 2132, -2, -2, -2, -2, -2, -2, -2, -2);
end;
if (Caihua == nil) then Caihua = 0; end;
for i = 1, #txt do
	if (i + 9 == GetCurrentEventID()) then
		m = math.random(1,#txt);
		Talk(0,txt[m]);	
		Caihua = Caihua + 5;
	end;
	ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
end;
if (m == #txt) then
	for j = 1, #txt do	
	ModifyEvent(-2, j+9, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	end;
	AddItem(203,1);
end;
do return end;