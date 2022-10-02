xCount = jyx2_CheckEventCount(70,999,2);--计数器取值
yCount = jyx2_CheckEventCount(70,999,1);--计数器取值
zCount = jyx2_CheckEventCount(70,999,0);--计数器取值
pCount = jyx2_CheckEventCount(70,998,0);--战斗计数器取值
rCount = jyx2_CheckEventCount(70,997,0);--休息计数器取值
yCount = yCount + (zCount + pCount + rCount) // 30;
xCount = xCount + yCount // 3;
Add3EventNum(70,999,0,1,0);
x = xCount // 4 + 1;--取商的整数部分
if x == 1 then
x = "元";
end;
x = string.gsub(x,0,"〇");
x = string.gsub(x,1,"一");
x = string.gsub(x,2,"二");
x = string.gsub(x,3,"三");
x = string.gsub(x,4,"四");
x = string.gsub(x,5,"五");
x = string.gsub(x,6,"六");
x = string.gsub(x,7,"七");
x = string.gsub(x,8,"八");
x = string.gsub(x,9,"九");
if (xCount + 1) % 4 == 1 then--取余数
S = "春";
elseif (xCount + 1) % 4 == 2 then
S = "夏";
elseif (xCount + 1) % 4 == 3 then
S = "秋";
else
S = "冬";
end;
local text = "游戏历·" .. x .. "年" .. S;
ShowMessage(text);
arr = {1,3,40,60,61};
for i = 1, #arr do
	if (GetCurrentEventID() == arr[i]) then
	ModifyEvent(-2, -2, 0, 0, -2, -2, 2130, -1, -1, -1, -2, -2, -2);--本客栈树林触发器
	else
	ModifyEvent(-2, arr[i], -2, -2, -2, -2, 2086, -2, -2, -2, -2, -2, -2);--其他客栈树林触发器
	end;	
end;
do return end;