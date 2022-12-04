txt = {};
txt[1] = 4287;--"这种好看！"
txt[2] = 4288;--"这种好好看！"
txt[3] = 4289;--"这种最艳！"
txt[4] = 4290;--"哎呀，都好看！"
txt[5] = 4291;--"我喜欢这种花。"
txt[6] = 4292;--"哎呀，抱不动了。"
txt[7] = 4293;--"嗯，这么多应该够了吧。"
arr = {1,2,3,4,5,6};
for j = 1, #arr do	
	ModifyEvent(-2, j+9, -2, -2, 2132, -2, -2, -2, -2, -2, -2, -2, -2);
end;
if (Caihua == nil) then Caihua = 0; end;
for i = 1, #txt do
	if (i + 9 == GetCurrentEventID()) then
		m = math.random(1,#txt);
		Talkplus(txt[m]);	
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