--ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--刷新床为正常睡觉
--do return end;
ModifyEvent(-2, 12, 0, 0, -1, -1, 1018, -1, -1, -1, -2, -2, -2);--激活70主角居12触发器的1018事件
if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    Talk(0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！", "", 1);
DarkScence();
--构造数组
arr = {};
arr[1] = {320,247,"客栈住不下了，今晚在这里凑合一宿吧。","闯荡江湖要先去学一门武功。"};--320为原青城211，头像86陌生人甲
arr[2] = {321,248,"这里有户人家，把捉到的毒物先在这里暂放一下。","行走江湖要学会一门抗毒的技能。"};--321为原五毒221，头像87陌生人乙
arr[3] = {322,249,"去海外仙岛路途遥遥，先在这里歇歇脚吧。","可以去海外仙岛学习高深的武功。"};--322为原雪山241，头像90陌生人丙
arr[4] = {323,250,"师父说要去拉人加入咱们的帮派，现在人头难凑啊。","一定要先去找个能说会道的师父。"};--323为原星宿261，头像92陌生人丁
arr[5] = {324,251,"师父说学习武功首要的还是要住在山上，以便他面授机宜。今晚先在这里歇歇脚吧，明早再赶路。","可以去山上找个师父传授武功。"};--324为原泰山201，头像85陌生人戊
arr[6] = {325,252,"五岳剑派同气连枝，这么多人还不够吗？为什么还要找其他人加入呢？","行走江湖需要先去找一两个结拜兄弟。"};--325为原衡山171，头像82陌生人己
arr[7] = {327,253,"教主说帮派人手不足，来这里看看有没有人愿意加入的。","去岛上找个帮派加入，会受益无穷。"};--327为原神龙101，头像97陌生人庚
arr[8] = {328,254,"拉琴吹箫似乎不是武功啊，为什么师父以琴为剑呢？这里有一株上好的梓木。","最快的升级方法是去山里找株仙草服用。"};--328为原昆仑91，头像78陌生人辛
--arr[9] = {326,250,"内力不济，走路就容易累，先在这里休息一下吧。","学习高深的武功之前先修炼一下内力。"};--326为原崆峒151，头像79陌生人壬
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
--生成一个从1~(数组字长)的数据表
numberTable = {}
for k = 1, #arr do
    table.insert(numberTable,k)
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
for j = 1, #arr do
	local random = getRandom()
	table.insert(randomNumList,random)
end
--把随机数组取出来
	p = arr[randomNumList[1]][1]
	q = arr[randomNumList[1]][2]
	s = arr[randomNumList[1]][3]
	d = arr[randomNumList[1]][4]
SetRoleFace(1);
	LightScence();
	Talk(p,s,"",0);
	Talk(0, "什么人？", "", 1);
    if TryBattle(q) == true then goto label1 end;
		LightScence();
		Talk(0,d,"",1);
		do return end;
::label1::
Talk(0, "功夫这么烂也敢硬闯我家？", "", 1);
AddRepute(1);
ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件,更新为正常睡觉
do return end;
