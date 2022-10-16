if HaveItem(143) == true then goto label0 end;
    do return end;
::label0::
Talk(0, "这是第几届华山论剑了？", "", 1);
jyx2_CameraFollow("Level/NPC/battleNPC/玄慈");
if JudgeAttack(0,100,150) == true then goto label1 end;
    Talk(70, "为了这次比试，各帮各派都积极备战，苦练阵型，实力不同以往。少侠似乎武力不足。", "", 0);
    do return end;
::label1::
Talk(70, "为了本次比试，各帮各派都积极备战，苦练阵型，实力不同以往。自恃武功高强的武林同道将独自挑战各大门派，少侠准备好参加本届华山论剑了吗？", "", 0);
if AskBattle() == true then goto label2 end;
jyx2_CameraFollowPlayer();
    Talk(0, "我还没准备好。", "", 1);
	SetRoleFace(1);	
	jyx2_WalkFromTo(-1,1342);
    do return end;
::label2::
AllLeave();
jyx2_CameraFollow("Level/NPC/battleNPC/岳不群");
Talk(19, "各位武林同道，本届“华山论剑”与往届不同。今年将由自恃武功高强的高手单人向各大门派发起挑战。接受挑战的各大门派请各自组成方阵。下面仍然请少林寺住持玄慈大师主持本届“华山论剑”。", "", 0);
Talk(70, "阿弥陀佛！承蒙大家看得起我玄慈，今年还是由我来为各位服务。今年还是和往年一样，受到邀请前来华山的各位英雄，都有机会获得武功天下第一的称号。现在，我宣布大会开始，只要愿意，谁都可出来比试，直到无人挑战为止。", "", 0);
Talk(19, "不知哪位英雄要先出来发起挑战？……似乎没有人愿意先出来？……", "", 0);
jyx2_CameraFollowPlayer();
Talk(0, "好，还是我先来！", "", 1);
jyx2_WalkFromTo(-1,2526);
SetRoleFace(2);
Talk(0, "不知哪派英雄愿接受挑战？", "", 1);
--构造数组
Dict_arr = {}
Dict_arr[1] = {8,"唐某率崆峒派来领教阁下的高招。","阁下功夫不过如此，似乎需要再磨练。"};
Dict_arr[2] = {21,"贫尼率恒山派愿领教阁下高招。","阁下功夫还欠火候，似乎需要再磨练。"};
Dict_arr[3] = {23,"贫道天门率泰山派来应战。","阁下功夫稀松平常。"};
Dict_arr[4] = {26,"日月神教和小兄弟玩玩。","小兄弟还需历练历练。"};
Dict_arr[5] = {38,"昔日旧友来比试比试。","兄弟还需多闯荡闯荡。"};
Dict_arr[6] = {43,"雪山派再战少侠。","少侠武功不济呀。"};
Dict_arr[7] = {7,"昆仑派与阁下一战。","阁下手上功夫不济。"};
Dict_arr[8] = {13,"明教再次与少侠以武会友。","少侠最近是不是疏于练功了？"};
Dict_arr[9] = {39,"侠客岛众人向少侠挑战。","少侠有空来侠客岛喝碗腊八粥。"};
Dict_arr[10] = {20,"莫某率衡山派出战。","少侠有空来侠客岛喝碗腊八粥。"};
Dict_arr[11] = {59,"古墓派和兄弟切磋一下。","兄弟还需多磨练。"};
Dict_arr[12] = {72,"四大天王来应战。","少侠实战经验不足。"};
Dict_arr[13] = {141,"峨嵋派来领教阁下的高招。","阁下功夫不过如此，再回去练练。"};
Dict_arr[14] = {47,"星宿派来给大侠暖身。","大侠肯定没有拿出真本事。"};
Dict_arr[15] = {19,"岳某率全体华山弟子与少侠一战。","少侠可在华山暂歇。"};
Dict_arr[16] = {22,"左某率嵩山弟子与少侠一战。","领导武林，任重道远。"};
Dict_arr[17] = {57,"桃花岛来向少侠挑战！","少侠有空来桃花岛玩玩。"};
Dict_arr[18] = {68,"全真派领教阁下高招。","阁下武功平常，就不要争这天下第一的名分了。"};
Dict_arr[19] = {25,"五仙教与公子交流一下。","公子快来苗寨休养休养。"};
Dict_arr[20] = {51,"燕子坞愿领教阁下高招。","阁下武功退步了。"};
Dict_arr[21] = {62,"金轮寺众与阁下一较短长！","中原武林人才稀缺。"};
Dict_arr[22] = {67,"铁掌帮来领教领教。","铁掌帮威名满天下。"};
Dict_arr[23] = {70,"阿弥陀佛，少林寺来切磋一下武功。","阿弥陀佛，神杖暂由老僧代为保管。"};
Dict_arr[24] = {71,"神龙教向少侠讨教。","神龙教主“仙福永享，寿与天齐”。"};
Dict_arr[25] = {49,"逍遥派也来凑个热闹。","大哥随我去飘渺峰修习吧。"};
Dict_arr[26] = {9,"武当派与少侠切磋。","承让了，大哥。"};
Dict_arr[27] = {60,"白驼山庄向少侠挑战。","小兄弟还是随我去白驼山练习一番罢。"};
Dict_arr[28] = {64,"百花岛闲人来陪小兄弟玩玩。","小兄弟得空来百花岛对掌。"};
Dict_arr[29] = {1,"雪山飞狐与兄弟一战。","兄弟多来塞外历练历练。"};
Dict_arr[30] = {50,"丐帮众叫花来和少侠玩玩。","少侠有空再来丐帮，咱们一醉方休。"};
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
--生成一个从1~(数组字长)的数据表
numberTable = {}
for i = 1, #Dict_arr do
    table.insert(numberTable,i)
end
--首先算出表的长度count，然后在1~count取一个随机数作为表self.numberTable的下标，获得一个数self.numberTable[index]，然后从表self.numberTable中移除掉避免重复
local function getRandom()
    local count = #numberTable
    local index = math.random(1,count)
    local random = numberTable[index]
    for i = #numberTable, 1, -1 do
        if random == numberTable[i] then
            table.remove(numberTable, i)
            break
        end
    end
    return random
end
--经过(数组字长)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {}
for i = 1, #Dict_arr do
	local random = getRandom()
	table.insert(randomNumList,random)
end
--把随机数组打印出来
for j = 1, #Dict_arr do

	l = randomNumList[j]+201
	p = Dict_arr[randomNumList[j]][1]
	q = p
		if q == 71 then 
			q = q + 26;--97神龙教徒
		end
	s = Dict_arr[randomNumList[j]][2]
	d = Dict_arr[randomNumList[j]][3]
	Talk(p,s,"",0);
    if TryBattle(l) == false then
		DarkScence();
		AddItemWithoutHint(143,-1);
		LightScence();
		Talk(q,d,"",0);
		if q ~= 70 then
		Talk(70, "阿弥陀佛，各位武林同道以武会友，不可伤及性命！败方留下神杖。", "", 0);
		end
        return;
	end
	if j%5 == 0 and j<28 then
	    Talk(70,"少侠已连战五场，可先休息再战。","", 0);
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
LightScence();
	Talk(0, "总算打完了。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件
ModifyEvent(70, 10, 0, 0, -1, -1, 2201, -1, -1, -1, -2, -2, -2);--激活70主角居10触发器的2201事件
do return end;
