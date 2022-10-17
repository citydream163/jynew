difficulty = CS.GameSettingManager.settings[CS.GameSettingManager.Catalog.Difficulty]--当前难度
if (difficulty == nil) then
	difficulty == 1;
end;
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
function GetCurrentEventID()
	return tonumber(luaBridge.GetCurrentEventID());
end
function TryBattle(m)
	Add3EventNum(70,998,1,0,0);--战斗计数器
	return util.async_to_sync(luaBridge.TryBattle)(m);
end
function JudgeItem(Itemid,num)--判断物品数量
	return (CS.Jyx2.GameRuntimeData.Instance:GetItemCount(Itemid) >= num);
end
CurrentModId=CS.Jyx2.RuntimeEnvSetup.CurrentModId;--获取当前模组
LuaFilePatten=CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.LuaFilePatten;--获取lua前缀原始设定
ModRootDir=CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.ModRootDir;--获取模组运行目录
--CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.LuaFilePatten="ka{0}";--修改lua前缀

--以下为lua全局函数
math.randomseed(tostring(os.time()):reverse():sub(1, 7));--随机数种子
tempTeamarr = {0,1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
Exp = { 50, 150, 300, 500, 750, 1050, 1400, 1800, 2250, 2750, 3850, 5050, 6350, 7750, 9250, 10850, 12550, 14350, 16750, 18250, 21400, 24700, 28150, 31750, 35500, 39400, 43450, 47650, 52000, 60000, 68250, 76750, 85500, 94500, 105000, 117000, 130000, 145000, 163000, 183000, 205000,	230000,	258000,	288000,	320000,	355000,	393000,	433000,	478000,	528000 };--升级所需经验

Innid = {1,3,40,60,61};--客栈编号

function HPUP(roleid)--简单加血函数
	local lv0 = 0;
	if (difficulty == 0) then
		lv0 = 0;
	elseif (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv1 = math.random(10, 15) + lv0;
	local lv2 = lv1 + 5;
		AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*lv1);

end
function SimUP(roleid,smp)--简单升级函数
	local lv0 = 0;
	if (difficulty == nil or difficulty == 0) then
		lv0 = 0;
	elseif (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv1 = math.random(10, 15) + lv0;
	local lv2 = lv1 + 5;
	AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*lv2);
	if smp == 8 then
		AddMpWithoutHint(roleid, math.random (smp, 9)*4*lv2);
	else
		AddMpWithoutHint(roleid, math.random (smp, 8)*4*lv2);
	end;
end
function AutoUP(roleid,lv,smp)--自动简易升级函数
	local lv0 = 0;
	if (difficulty == nil or difficulty == 0) then
		lv0 = 0;
	elseif (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv1 = 1 + lv0;
	local lv2 = math.random(1, 2) + lv0;
	local lv3 = math.random(2, 5) + lv0;
	local tlv = 0;
	if lv == 1 then
		tlv = lv1;
	elseif lv == 2 then
		tlv = lv2;
	elseif lv == 3 then
		tlv = lv3;
	elseif lv == 4 then
		tlv = lv2;
	elseif lv == 5 then
		tlv = lv3;
	end;
	if lv > 3 then
		AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*tlv);
		if smp == 8 then
			AddMpWithoutHint(roleid, math.random (smp, 9)*4*tlv);
		else
			AddMpWithoutHint(roleid, math.random (smp, 8)*4*tlv);
		end;
	else
		a = AddLevelreturnUper(roleid,tlv); 
		if  a > 0 then
			AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*a);
			if smp == 8 then
				AddMpWithoutHint(roleid, math.random (smp, 9)*4*a);
			else
				AddMpWithoutHint(roleid, math.random (smp, 8)*4*a);
			end;
		end;
	end;
end
--日历开始
function Calendar(num)
	local xCountzj = jyx2_CheckEventCount(70,999,2);--季计数器取值
	local yCountzj = jyx2_CheckEventCount(70,999,1);--月计数器取值
	local zCountzj = jyx2_CheckEventCount(70,999,0);--日计数器取值
	local pCountzj = jyx2_CheckEventCount(70,998,0);--战计数器取值
	local r1Countzj = jyx2_CheckEventCount(70,997,0);--休计数器取值
	local r2Countzj = jyx2_CheckEventCount(70,997,1);--团休计数器取值
	local r3Countzj = jyx2_CheckEventCount(70,997,2);--战休计数器取值
	local rCountzj = r1Countzj + r2Countzj + r3Countzj;--休计数器取值
	local sipdays = zCountzj + pCountzj + rCountzj;--仅合计日数
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
	elseif (num == 6) then--仅合计日数
		return sipdays;
	elseif (num == 7) then--仅合计月数
		return yCountzj;
	else--简历
		local text = "游戏历·" .. x .. "年" .. S;
		return text;
	end;
end;
--日历结束

--光柱开始
function MapLight(mapid,switch)
	MLight={};
	MLight[0]="Triggers/胡斐居/00_胡斐居";
	MLight[1]="Triggers/河洛客栈/01_河洛客栈";
	MLight[2]="Triggers/云鹤崖/02_云鹤崖";
	MLight[3]="Triggers/有间客栈/03_有间客栈";
	MLight[5]="Triggers/闯王山洞/05_闯王山洞";
	MLight[6]="Triggers/北丑居/06_北丑居";
	MLight[7]="Triggers/神雕山洞/07_神雕山洞";
	MLight[8]="Triggers/大轮寺/08_大轮寺";
	MLight[9]="Triggers/成昆居/09_成昆居";
	MLight[10]="Triggers/蜘蛛山洞/10_蜘蛛山洞";
	MLight[11]="Triggers/光明顶/11_光明顶";
	MLight[12]="Triggers/明教分舵/12_明教分舵";
	MLight[15]="Triggers/沙漠废墟/15_沙漠废墟";
	MLight[16]="Triggers/金轮寺/16_金轮寺";
	MLight[17]="Triggers/回族部落/17_回族部落";
	MLight[18]="Triggers/古墓/18_古墓";
	MLight[19]="Triggers/重阳宫/19_重阳宫";
	MLight[20]="Triggers/百花谷/20_百花谷";
	MLight[21]="Triggers/黑龙潭/21_黑龙潭";
	MLight[22]="Triggers/绝情谷/22_绝情谷";
	MLight[23]="Triggers/洪七公居/23_洪七公居";
	MLight[24]="Triggers/苗人凤居/24_苗人凤居";
	MLight[25]="Triggers/武道大会/25_武道大会";
	MLight[26]="Triggers/黑木崖/26_黑木崖";
	MLight[27]="Triggers/嵩山派/27_嵩山派";
	MLight[28]="Triggers/少林寺/28_少林寺";
	MLight[29]="Triggers/泰山派/29_泰山派";
	MLight[30]="Triggers/平一指居/30_平一指居";
	MLight[31]="Triggers/恒山派/31_恒山派";
	MLight[32]="Triggers/海边小屋/32_海边小屋";
	MLight[33]="Triggers/峨嵋派/33_峨嵋派";
	MLight[34]="Triggers/崆峒派/34_崆峒派";
	MLight[35]="Triggers/星宿海/35_星宿海";
	MLight[36]="Triggers/青城派/36_青城派";
	MLight[37]="Triggers/五毒教/37_五毒教";
	MLight[38]="Triggers/摩天崖/38_摩天崖";
	MLight[39]="Triggers/凌霄城/39_凌霄城";
	MLight[40]="Triggers/悦来客栈/40_悦来客栈";
	MLight[41]="Triggers/神秘山洞/41_神秘山洞";
	MLight[42]="Triggers/无量山洞/42_无量山洞";
	MLight[43]="Triggers/武当派/43_武当派";
	MLight[44]="Triggers/蝴蝶谷/44_蝴蝶谷";
	MLight[45]="Triggers/程英居/45_程英居";
	MLight[46]="Triggers/金蛇山洞/46_金蛇山洞";
	MLight[47]="Triggers/一灯居/47_一灯居";
	MLight[48]="Triggers/铁掌山/48_铁掌山";
	MLight[49]="Triggers/药王庄/49_药王庄";
	MLight[50]="Triggers/阎基居/50_阎基居";
	MLight[51]="Triggers/丐帮/51_丐帮";
	MLight[52]="Triggers/燕子坞/52_燕子坞";
	MLight[53]="Triggers/擂鼓山/53_擂鼓山";
	MLight[54]="Triggers/薛慕华居/54_薛慕华居";
	MLight[55]="Triggers/梅庄/55_梅庄";
	MLight[56]="Triggers/福威镖局/56_福威镖局";
	MLight[57]="Triggers/华山派/57_华山派";
	MLight[58]="Triggers/衡山派/58_衡山派";
	MLight[59]="Triggers/田伯光居/59_田伯光居";
	MLight[60]="Triggers/龙门客栈/60_龙门客栈";
	MLight[61]="Triggers/高升客栈/61_高升客栈";
	MLight[62]="Triggers/破庙/62_破庙";
	MLight[63]="Triggers/天宁寺/63_天宁寺";
	MLight[64]="Triggers/南贤居/64_南贤居";
	MLight[65]="Triggers/唐诗山洞/65_唐诗山洞";
	MLight[66]="Triggers/冰蚕山洞/66_冰蚕山洞";
	MLight[67]="Triggers/昆仑山洞/67_昆仑山洞";
	MLight[68]="Triggers/昆仑派/68_昆仑派";
	MLight[69]="Triggers/白驼山/69_白驼山";
	MLight[70]="Triggers/小虾米居/70_小虾米居";
	MLight[71]="Triggers/神龙教/71_神龙教";
	MLight[72]="Triggers/冰火岛/72_冰火岛";
	MLight[73]="Triggers/灵蛇岛/73_灵蛇岛";
	MLight[74]="Triggers/侠客岛/74_侠客岛";
	MLight[75]="Triggers/桃花岛/75_桃花岛";
	MLight[76]="Triggers/霹雳堂/76_霹雳堂";
	MLight[77]="Triggers/万鳄岛/77_万鳄岛";
	MLight[78]="Triggers/渤泥岛/78_渤泥岛";
	MLight[79]="Triggers/鸳鸯山洞/79_鸳鸯山洞";
	MLight[80]="Triggers/绝情谷底/80_绝情谷底";
	MLight[81]="Triggers/思过崖/81_思过崖";
	MLight[102]="Triggers/香冢/102_香冢";
	if mapid == 1000 then
		if	switch == 1 then
			for i, v in pairs(MLight) do
				jyx2_ReplaceSceneObject("1000",v,"1");--显示光柱
			end;
		else
			for i, v in pairs(MLight) do
				jyx2_ReplaceSceneObject("1000",v,"");--关闭光柱
			end;
		end;
	elseif not(MLight[mapid] == nil) then
		if	switch == 1 then
			jyx2_ReplaceSceneObject("1000",MLight[mapid],"1");--显示光柱
		else
			jyx2_ReplaceSceneObject("1000",MLight[mapid],"");--关闭光柱
		end;
	end;
end;
--光柱结束

--青城四秀开始
function qcsxName(n,m)
qcsxname = {};
qcsxname[0] = "侯人英";
qcsxname[1] = "罗人杰";
qcsxname[2] = "于人豪";
qcsxname[3] = "侯人雄";
callqcsxname = {};
callqcsxname[0] = "侯兄";
callqcsxname[1] = "罗兄";
callqcsxname[2] = "于兄";
callqcsxname[3] = "侯兄";
	if n == 1 and m == 0 then
		return qcsxname[0];
	elseif n == 1 and m == 1 then
		return callqcsxname[0];
	elseif n == 2 and m == 0 then
		return qcsxname[1];
	elseif n == 2 and m == 1 then
		return callqcsxname[1];	
	elseif n == 3 and m == 0 then
		return qcsxname[2];
	elseif n == 3 and m == 1 then
		return callqcsxname[2];	
	elseif n == 4 and m == 0 then
		return qcsxname[3];
	elseif n == 4 and m == 1 then
		return callqcsxname[3];
	end;
end
--青城四秀结束

--秘笈数组开始
function PaperScroll(id,col)
Scroll={};
Scroll[39]={80,"紫霞秘籍"};
Scroll[40]={560,"小无相功"};
Scroll[41]={521,"十八泥偶"};
Scroll[42]={200,"神照经"};
Scroll[43]={1020,"易筋经"};
Scroll[44]={700,"洗髓经"};
Scroll[45]={200,"梯云纵心法"};
Scroll[46]={250,"神行百变"};
Scroll[47]={310,"凌波微步"};
Scroll[48]={70,"子午针灸经"};
Scroll[49]={95,"华陀内昭图"};
Scroll[50]={150,"胡青牛医书"};
Scroll[51]={90,"五毒秘传"};
Scroll[52]={140,"毒经"};
Scroll[53]={180,"药王神篇"};
Scroll[54]={90,"铁掌拳谱"};
Scroll[55]={130,"七伤拳谱"};
Scroll[56]={250,"天山六阳掌"};
Scroll[57]={390,"玄冥神掌"};
Scroll[58]={200,"太极拳经"};
Scroll[59]={500,"龙象般若功"};
Scroll[60]={70,"太玄经"};
Scroll[61]={510,"黯然销魂掌"};
Scroll[62]={530,"降龙十八掌"};
Scroll[63]={180,"北冥神功"};
Scroll[64]={170,"吸星大法"};
Scroll[65]={178,"神木王鼎"};
Scroll[66]={120,"六脉神剑谱"};
Scroll[67]={50,"松风剑谱"};
Scroll[68]={70,"泰山十八盘"};
Scroll[69]={70,"回峰落雁剑法"};
Scroll[70]={230,"七星剑谱"};
Scroll[71]={190,"两仪剑法"};
Scroll[72]={180,"金蛇秘籍"};
Scroll[73]={160,"玉女素心剑法"};
Scroll[74]={160,"苗家剑法"};
Scroll[75]={190,"太极剑法"};
Scroll[76]={290,"达摩剑谱"};
Scroll[77]={380,"玄铁剑法"};
Scroll[78]={170,"辟邪剑谱"};
Scroll[79]={220,"独孤九剑"};
Scroll[80]={60,"血刀经"};
Scroll[81]={90,"火焰刀法"};
Scroll[82]={160,"反两仪刀法"};
Scroll[83]={150,"狂风刀法"};
Scroll[84]={120,"胡家刀法"};
Scroll[85]={200,"霹雳刀法"};
Scroll[86]={80,"毒龙鞭法"};
Scroll[87]={100,"黄沙万里鞭法"};
Scroll[88]={50,"满天花雨"};
Scroll[89]={140,"霹雳秘籍"};
Scroll[90]={105,"含沙射影"};
Scroll[91]={5,"左右互搏之术"};
Scroll[92]={275,"乾坤大挪移"};
Scroll[93]={500,"葵花宝典"};
Scroll[94]={570,"九阴真经"};
Scroll[95]={350,"九阳真经"};
Scroll[129]={666,"神仙美女图"};
Scroll[183]={999,"带头大哥书信"};
Scroll[185]={1200,"林震南遗言"};
Scroll[193]={12,"金盆洗手请帖"};
	if col==0 then
		if Scroll[id][1] == nil then
			return "";
		else
			return Scroll[id][1];
		end
	elseif col==1 then
		if Scroll[id][2] == nil then
			return "";
		else
			return Scroll[id][2];
		end
	end
end
--秘笈数组结束