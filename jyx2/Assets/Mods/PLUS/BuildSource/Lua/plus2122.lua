--ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--刷新床为正常睡觉
--do return end;
ModifyEvent(-2, 12, 0, 0, -1, -1, 1018, -1, -1, -1, -2, -2, -2);--激活70主角居12触发器的1018事件
if AskRest() == true then goto  label0 end;
do return end;
::label0::
Talkplus(4235);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
--构造数组
arr = {};
arr[1] = {320,247,4236,4237};--320为原青城211，头像86陌生人甲
arr[2] = {321,248,4238,4239};--321为原五毒221，头像87陌生人乙
arr[3] = {322,249,4240,4241};--322为原雪山241，头像90陌生人丙
arr[4] = {323,250,4242,4243};--323为原星宿261，头像92陌生人丁
arr[5] = {324,251,4244,4245};--324为原泰山201，头像85陌生人戊
arr[6] = {325,252,4246,4247};--325为原衡山171，头像82陌生人己
arr[7] = {327,253,4248,4249};--327为原神龙101，头像97陌生人庚
arr[8] = {328,254,4250,4251};--328为原昆仑91，头像78陌生人辛
--arr[9] = {326,250,4252,5253};--326为原崆峒151，头像79陌生人壬
--生成一个从1~(数组字长)的数据表
numberTable = {};
for k = 1, #arr do
    table.insert(numberTable,k);
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
for j = 1, #arr do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--把随机数组取出来
	p = arr[randomNumList[1]][1];
	q = arr[randomNumList[1]][2];
	s = arr[randomNumList[1]][3];
	d = arr[randomNumList[1]][4];
SetRoleFace(1);
	LightScence();
	Talkplus(s);
	Talkplus(4254);--0, "什么人？"
    if TryBattle(q) == true then goto label1 end;
		LightScence();
		Talkplus(d);
		do return end;
::label1::
Add3EventNum(70,q,1,0,0);--战胜陌生人p
t = math.random(1,4);
if t == 1 then
	Talkplus(4255);--0, "功夫这么烂也敢硬闯我家？"
elseif t == 2 then
	Talkplus(4755);--0, "功夫这么烂也敢来我家放肆？"
elseif t == 3 then
	Talkplus(4756);--0, "看来野球拳也是可以护身的。"
else
	Talkplus(4757);--0, "这年头什么人都有。"
end;
AddRepute(1);
ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件,更新为正常睡觉
do return end;