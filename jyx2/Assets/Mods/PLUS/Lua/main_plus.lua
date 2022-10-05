math.randomseed(tostring(os.time()):reverse():sub(1, 7));
tempTeamarr = {0,1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
Exp = { 50, 150, 300, 500, 750, 1050, 1400, 1800, 2250, 2750, 3850, 5050, 6350, 7750, 9250, 10850, 12550, 14350, 16750, 18250, 21400, 24700, 28150, 31750, 35500, 39400, 43450, 47650, 52000, 60000, 68250, 76750, 85500, 94500, 105000, 117000, 130000, 145000, 163000, 183000, 205000,	230000,	258000,	288000,	320000,	355000,	393000,	433000,	478000,	528000 };
function Rest()
	luaBridge.Rest();
	Add3EventNum(70,997,1,0,0);--休息计数器
end
function RestTeam()
	luaBridge.RestTeam();
	Add3EventNum(70,997,0,1,0);--团休计数器
end
function RestFight()
	luaBridge.RestFight();
	Add3EventNum(70,997,0,0,1);--战休计数器
end
function MiniMapOn()
	jyx2_ReplaceSceneObject("1000", "MiniMap/Display","1");
end
function MiniMapOff()
	jyx2_ReplaceSceneObject("1000", "MiniMap/Display","");
end
RunTo = luaBridge.RunTo--跑路
--以下为lua全局函数

--日历
function Calendar(num)
local xCountzj = jyx2_CheckEventCount(70,999,2);--季计数器取值
local yCountzj = jyx2_CheckEventCount(70,999,1);--月计数器取值
local zCountzj = jyx2_CheckEventCount(70,999,0);--日计数器取值
local pCountzj = jyx2_CheckEventCount(70,998,0);--战计数器取值
local r1Countzj = jyx2_CheckEventCount(70,997,0);--休计数器取值
local r2Countzj = jyx2_CheckEventCount(70,997,1);--团休计数器取值
local r3Countzj = jyx2_CheckEventCount(70,997,2);--战休计数器取值
local rCountzj = r1Countzj + r2Countzj + r3Countzj;--休计数器取值
local yend = xCountzj * 90 + yCountzj * 30 + zCountzj + pCountzj + rCountzj;--合计游戏日
yCountzj = yCountzj + (zCountzj + pCountzj + rCountzj) // 30;--//取商的整数部分
xCountzj = xCountzj + yCountzj // 3;
local D = (zCountzj + pCountzj + rCountzj) % 30 + 1;--%取商的余数部分
local M = yCountzj % 3 + 1;
local x = xCountzj // 4 + 1;
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
M = string.gsub(M,1,"一");
M = string.gsub(M,2,"二");
M = string.gsub(M,3,"三");
D = string.gsub(D,10,"初十");
D = string.gsub(D,11,"十一");
D = string.gsub(D,12,"十二");
D = string.gsub(D,13,"十三");
D = string.gsub(D,14,"十四");
D = string.gsub(D,15,"十五");
D = string.gsub(D,16,"十六");
D = string.gsub(D,17,"十七");
D = string.gsub(D,18,"十八");
D = string.gsub(D,19,"十九");
D = string.gsub(D,20,"二十");
D = string.gsub(D,21,"二十一");
D = string.gsub(D,22,"二十二");
D = string.gsub(D,23,"二十三");
D = string.gsub(D,24,"二十四");
D = string.gsub(D,25,"二十五");
D = string.gsub(D,26,"二十六");
D = string.gsub(D,27,"二十七");
D = string.gsub(D,28,"二十八");
D = string.gsub(D,29,"二十九");
D = string.gsub(D,30,"三十");
D = string.gsub(D,1,"初一");
D = string.gsub(D,2,"初二");
D = string.gsub(D,3,"初三");
D = string.gsub(D,4,"初四");
D = string.gsub(D,5,"初五");
D = string.gsub(D,6,"初六");
D = string.gsub(D,7,"初七");
D = string.gsub(D,8,"初八");
D = string.gsub(D,9,"初九");
if (xCountzj + 1) % 4 == 1 then--取余数
S = "春";
elseif (xCountzj + 1) % 4 == 2 then
S = "夏";
elseif (xCountzj + 1) % 4 == 3 then
S = "秋";
else
S = "冬";
end;
	if (num == 1) then--详历
		local text = "游戏历·" .. x .. "年" .. S .. M .. "月" .. D;
		text = string.gsub(text,"春一月初一","·元日");
		text = string.gsub(text,"春一月初七","·人日");
		text = string.gsub(text,"春一月十五","·上元");
		text = string.gsub(text,"春一月二十五","·填仓");
		text = string.gsub(text,"春二月初二","·社日");
		text = string.gsub(text,"春二月十二","·花朝");
		text = string.gsub(text,"春三月初三","·上巳");
		text = string.gsub(text,"春三月初四","·寒食");
		text = string.gsub(text,"春三月初五","·清明");
		text = string.gsub(text,"夏一月初八","·浴佛");
		text = string.gsub(text,"夏二月初五","·端午");
		text = string.gsub(text,"秋一月初七","·七夕");
		text = string.gsub(text,"秋一月十五","·中元");
		text = string.gsub(text,"秋二月十五","·中秋");
		text = string.gsub(text,"秋三月初九","·重阳");
		text = string.gsub(text,"冬一月初一","·寒衣");
		text = string.gsub(text,"冬一月十五","·下元");
		text = string.gsub(text,"冬三月初八","·腊日");
		text = string.gsub(text,"冬三月二十三","·祭灶");
		text = string.gsub(text,"冬三月三十","·除夕");
		text = string.gsub(text,"春一月","春正月");
		text = text .. "\n\n已经过" .. yend .. "日";	
		return text;
	elseif (num == 2) then--游戏总日数
		return yend;
	elseif (num == 3) then--胡混日数
		return zCountzj;	
	elseif (num == 4) then--战斗总次数
		return pCountzj;
	elseif (num == 5) then--休息总次数
		return rCountzj;
	else--简历
		local text = "游戏历·" .. x .. "年" .. S;
		return text;
	end;
end;