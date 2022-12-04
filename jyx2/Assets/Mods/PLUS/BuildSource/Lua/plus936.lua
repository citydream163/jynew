ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ScenceFromTo(33, 26, 21, 26);
jyx2_CameraFollow("Level/NPC/battleNPC/岳不群");
Talkplus(3499);--19, "承蒙各位看得起我华山派，每年都选择在我华山齐聚，举办这武林大会。今年岳某特别邀请到少林寺住持玄慈大师，前来此处主持今年的“华山论剑”。"
Talkplus(3500);--70, "阿弥陀佛！承蒙大家看得起我玄慈，今年就由我来为各位服务。今年还是和往年一样，受到邀请前来华山的各位英雄，都有机会成为新一任的武林盟主，获得保管“神杖”的资格。现在，我宣布大会开始，只要愿意，谁都可出来比试，直到无人挑战为止。"
Talkplus(3501);--19, "不知哪位英雄要先出来接受挑战？……似乎没有人愿意先出来？……"
ScenceFromTo(21, 26, 33, 26);
jyx2_CameraFollowPlayer();
Talkplus(3502);--0, "好，那就我先来！"
WalkFromTo(33, 26, 25, 26);
jyx2_WalkFromTo(-1,2526);
SetRoleFace(2);
Talkplus(3503);--0, "不知哪位英雄愿下场赐教？"
--FightForTop();--以下用lua实现
--构造数组
Dict_arr = {};
Dict_arr[1] = {8,"唐文亮来领教阁下的高招。"};
Dict_arr[2] = {21,"贫尼定闲愿领教阁下高招。"};
Dict_arr[3] = {23,"贫道天门领教阁下高招。"};
Dict_arr[4] = {31,"小兄弟，我们再来玩玩。"};
Dict_arr[5] = {32,"小兄弟，秃笔翁陪你玩玩。"};
Dict_arr[6] = {43,"白某愿领教阁下高招。"};
Dict_arr[7] = {7,"何太冲来领教阁下的高招。"};
Dict_arr[8] = {11,"杨逍技痒，和少侠玩玩。"};
Dict_arr[9] = {14,"韦一笑技痒，和少侠玩玩。"};
Dict_arr[10] = {20,"莫某再次领教阁下高招。"};
Dict_arr[11] = {33,"小兄弟，黑白子向你讨教。"};
Dict_arr[12] = {34,"小兄弟，黄钟公向你讨教。"};
Dict_arr[13] = {10,"范某技痒，和少侠玩玩。"};
Dict_arr[14] = {12,"老朽技痒，和少侠玩玩。"};
Dict_arr[15] = {19,"岳某不才，向少侠挑战。"};
Dict_arr[16] = {22,"左冷禅愿领教阁下高招。"};
Dict_arr[17] = {56,"黄蓉愿领教阁下高招。"};
Dict_arr[18] = {68,"丘处机领教阁下高招。"};
Dict_arr[19] = {13,"谢某技痒，和少侠玩玩。"};
Dict_arr[20] = {55,"郭靖愿领教阁下高招。"};
Dict_arr[21] = {62,"老夫领教少侠高招！"};
Dict_arr[22] = {67,"裘千仞来领教阁下的高招。"};
Dict_arr[23] = {70,"阿弥陀佛，贫僧愿向少侠挑战。"};
Dict_arr[24] = {71,"洪某拜教！"};
Dict_arr[25] = {26,"任某来领教阁下的高招。"};
Dict_arr[26] = {57,"少侠的确武功高强，我黄老邪来领教领教。"};
Dict_arr[27] = {60,"让我老毒物来会会你。"};
Dict_arr[28] = {64,"哇！你又学了这么多新奇的功夫。来，来，老顽童陪你玩玩。"};
Dict_arr[29] = {3,"苗某向少侠讨教。"};
Dict_arr[30] = {69,"不错不错，七公我来领教领教。"};
--生成一个从1~(数组字长)的数据表
numberTable = {};
for i = 1, #Dict_arr do
	table.insert(numberTable,i);
end
--首先算出表的长度count，然后在1~count取一个随机数作为表self.numberTable的下标，获得一个数self.numberTable[index]，然后从表self.numberTable中移除掉避免重复
local function getRandom()
	local count = #numberTable;
	local index = math.random(1,count);
	local random = numberTable[index];
	for i = #numberTable, 1, -1 do
		if random == numberTable[i] then
			table.remove(numberTable, i);
			break;
		end
	end
	return random;
end
--经过(数组字长)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {};
for i = 1, #Dict_arr do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--把随机数组打印出来
for j = 1, #Dict_arr do
	l = randomNumList[j]+101;
	p = Dict_arr[randomNumList[j]][1];
	s = Dict_arr[randomNumList[j]][2];
	Talkplus(randomNumList[j]+3503);--Talk(p,s,"",0);
	if TryBattle(l) == false then
		Dead();
		return;
	end
	if j%3 == 0 and j<28 then
		Talkplus(3534);--70,"少侠已连战三场，可先休息再战。"
		RestFight();
		DarkScence();
		LightScence();
	end
end
Talkplus(3535);--0,"接下来换谁？"
Talkplus(3536);--Talk(0,"…………"
Talkplus(3537);--0,"没有人了吗？"
Talkplus(3538);--70,"如果还没有人要出来向这位少侠挑战，那么这武功天下第一之名，武林盟主之位，就由这位少侠夺得。"
Talkplus(3539);--70,"………………"
Talkplus(3540);--70,"好，恭喜少侠，这武林盟主之位就由少侠获得，而这把“武林神杖”也由你保管。"
Talkplus(3541);--12,"恭喜少侠！"
Talkplus(3542);--64,"小兄弟，恭喜你！"
Talkplus(3543);--19,"好，今年的武林大会到此已圆满结束，希望明年各位武林同道能再到我华山一游。"
DarkScence();
jyx2_ReplaceSceneObject("","NPC/华山弟子","");
jyx2_ReplaceSceneObject("","NPC/battleNPC","");
LightScence();
Talkplus(3544);--0,"历经千辛万苦，我终于打败群雄，得到这武林盟主之位及神杖。但是“圣堂”在哪呢？为什么没人告诉我，难道大家都不知道。这会儿又有的找了。"
AddItem(143,1);
ModifyEvent(70, 10, 0, 0, -1, -1, 2200, -1, -1, -1, -2, -2, -2);--激活70主角居10触发器的2200事件
do return end;