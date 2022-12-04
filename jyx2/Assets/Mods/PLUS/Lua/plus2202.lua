if HaveItem(143) == true then goto label0 end;
do return end;
::label0::
Talkplus(4683);--0, "这是第几届华山论剑了？"
jyx2_CameraFollow("Level/NPC/battleNPC/玄慈");
if JudgeAttack(0,100,200) == true then goto label1 end;
Talkplus(4684);--70, "为了这次比试，各帮各派都积极备战，苦练阵型，实力不同以往。少侠似乎武力不足。"
do return end;
::label1::
Talkplus(4685);--70, "为了本次比试，各帮各派都积极备战，苦练阵型，实力不同以往。自恃武功高强的武林同道将独自挑战各大门派，少侠准备好参加本届华山论剑了吗？"
if AskBattle() == true then goto label2 end;
jyx2_CameraFollowPlayer();
Talkplus(4686);--0, "我还没准备好。"
SetRoleFace(1);	
jyx2_WalkFromTo(-1,1342);
do return end;
::label2::
AllLeave();
jyx2_CameraFollow("Level/NPC/battleNPC/岳不群");
Talkplus(4687);--19, "各位武林同道，本届“华山论剑”与往届不同。今年将由自恃武功高强的高手单人向各大门派发起挑战。接受挑战的各大门派请各自组成方阵。下面仍然请少林寺住持玄慈大师主持本届“华山论剑”。"
Talkplus(4688);--70, "阿弥陀佛！承蒙大家看得起我玄慈，今年还是由我来为各位服务。今年还是和往年一样，受到邀请前来华山的各位英雄，都有机会获得武功天下第一的称号。现在，我宣布大会开始，只要愿意，谁都可出来比试，直到无人挑战为止。"
Talkplus(4689);--19, "不知哪位英雄要先出来发起挑战？……似乎没有人愿意先出来？……"
jyx2_CameraFollowPlayer();
Talkplus(4690);--0, "好，还是我先来！"
jyx2_WalkFromTo(-1,2526);
SetRoleFace(2);
Talkplus(4691);--0, "不知哪派英雄愿接受挑战？"
--构造数组
Dict_arr = {}
Dict_arr[1] = {8,4692,4693};
Dict_arr[2] = {21,4694,4695};
Dict_arr[3] = {23,4696,4697};
Dict_arr[4] = {26,4698,4699};
Dict_arr[5] = {38,4700,4701};
Dict_arr[6] = {43,4702,4703};
Dict_arr[7] = {7,4704,4705};
Dict_arr[8] = {13,4706,4707};
Dict_arr[9] = {39,4708,4709};
Dict_arr[10] = {20,4710,4711};
Dict_arr[11] = {59,4712,4713};
Dict_arr[12] = {72,4714,4715};
Dict_arr[13] = {141,4716,4717};
Dict_arr[14] = {47,4718,4719};
Dict_arr[15] = {19,4720,4721};
Dict_arr[16] = {22,4722,4723};
Dict_arr[17] = {57,4724,4725};
Dict_arr[18] = {68,4726,4727};
Dict_arr[19] = {25,4728,4729};
Dict_arr[20] = {51,4730,4731};
Dict_arr[21] = {62,4732,4733};
Dict_arr[22] = {67,4734,4735};
Dict_arr[23] = {70,4736,4737};
Dict_arr[24] = {71,4738,4739};
Dict_arr[25] = {49,4740,4741};
Dict_arr[26] = {9,4742,4743};
Dict_arr[27] = {60,4744,4745};
Dict_arr[28] = {64,4746,4747};
Dict_arr[29] = {1,4748,4749};
Dict_arr[30] = {50,4750,4751};
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
	l = randomNumList[j]+201;
	p = Dict_arr[randomNumList[j]][1];
	q = p;
		if q == 71 then 
			q = q + 26;--97神龙教徒
		end
	s = Dict_arr[randomNumList[j]][2];
	d = Dict_arr[randomNumList[j]][3];
	Talkplus(s);
    if TryBattle(l) == false then
		DarkScence();
		AddItemWithoutHint(143,-1);
		LightScence();
		Talkplus(d);
		if q ~= 70 then
		Talkplus(4752);--70, "阿弥陀佛，各位武林同道以武会友，不可伤及性命！败方留下神杖。"
		end
        return;
	end
	if j%5 == 0 and j<28 then
	    Talkplus(4753);--70,"少侠已连战五场，可先休息再战。"
        DarkScence();
		RestFight();
        LightScence();
	end
end
if HaveItem(143) == true then goto label3 end;
AddItem(143,1);
::label3::
DarkScence();
jyx2_ReplaceSceneObject("","NPC/华山弟子24","");
jyx2_ReplaceSceneObject("","NPC/华山弟子","");
jyx2_ReplaceSceneObject("","NPC/battleNPC","");
jyx2_ReplaceSceneObject("","NPC/各派弟子","");
jyx2_ReplaceSceneObject("","NPC/昔日队友","");
Add3EventNum(70,999,0,0,4);--季计数器
LightScence();
Talkplus(4754);--0, "总算打完了。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件
ModifyEvent(70, 10, 0, 0, -1, -1, 2201, -1, -1, -1, -2, -2, -2);--激活70主角居10触发器的2201事件
do return end;