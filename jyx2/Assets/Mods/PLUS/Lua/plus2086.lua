ShowMessage(Calendar(0));
arr = {1,3,40,60,61};
for i = 1, #arr do
	if (GetCurrentEventID() == arr[i]) then
	ModifyEvent(1000, -2, 0, 0, 2130, 2085, -2, -1, -1, -1, -2, -2, -2);--本客栈树林触发器
	else
	ModifyEvent(1000, arr[i], -2, -2, 2086, 2085, -2, -2, -2, -2, -2, -2, -2);--其他客栈树林触发器
	end;	
end;
do return end;