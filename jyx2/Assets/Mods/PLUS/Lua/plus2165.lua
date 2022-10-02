xCountzj = jyx2_CheckEventCount(70,999,2);--季计数器取值
yCountzj = jyx2_CheckEventCount(70,999,1);--月计数器取值
zCountzj = jyx2_CheckEventCount(70,999,0);--日计数器取值
pCountzj = jyx2_CheckEventCount(70,998,0);--战计数器取值
rCountzj = jyx2_CheckEventCount(70,997,0);--休计数器取值
y = xCountzj * 90 + yCountzj * 30 + zCountzj + pCountzj + rCountzj;--合计游戏日
yCountzj = yCountzj + (zCountzj + pCountzj + rCountzj) // 30;
xCountzj = xCountzj + yCountzj // 3;
D = (zCountzj + pCountzj + rCountzj) % 30 + 1;--%取商的余数部分
M = yCountzj % 3 + 1;
x = xCountzj // 4 + 1;
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
text = text .. "\n\n已经过" .. y .. "日";
ShowMessage(text);
ModifyEvent(1000, 3, -2, -2, -2, -2, 2131, -2, -2, -2, -2, -2, -2);--有间客栈树林触发器
ModifyEvent(1000, 40, -2, -2, -2, -2, 2132, -2, -2, -2, -2, -2, -2);--悦来客栈树林触发器
ModifyEvent(1000, 60, -2, -2, -2, -2, 2133, -2, -2, -2, -2, -2, -2);--龙门客栈树林触发器
ModifyEvent(1000, 61, -2, -2, -2, -2, 2134, -2, -2, -2, -2, -2, -2);--高升客栈树林触发器
do return end;