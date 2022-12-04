if HaveItem(153) == true then goto label0 end;
SetFlag("ShowLocationName.古墓",1);--大地图显示当前地图名
do return end;
::label0::	
--古墓动态开关启动器开启
local maxnum2 = 4;--开关个数
--生成一个从1~(maxnum2)的数据表
numberTable2 = {};
for l2 = 1, maxnum2 do
    table.insert(numberTable2,l2);
end
--首先算出表的长度count，然后在1~count取一个随机数作为表self.numberTable的下标，获得一个数self.numberTable2[index]，然后从表self.numberTable中移除掉避免重复
local function getRandom2()
    local count2 = #numberTable2;
    local index2 = math.random(1,count2);
    local random3 = numberTable2[index2];
    for i = #numberTable2, 1, -1 do
        if random3 == numberTable2[i] then
            table.remove(numberTable2, i);
            break;
        end
    end
    return random3;
end
--经过(maxnum2)次循环，按照数据生成的先后顺序插入新表self.randomNumList2，这样就可以获得一个随机不重复的数组了
randomNumList2 = {};
for k = 1, maxnum2 do
	local random = getRandom2();
	table.insert(randomNumList2,random);
end
--4个随机排序
k1 = randomNumList2[1] + 1;
k2 = randomNumList2[2] + 1;
k3 = randomNumList2[3] + 1;
k4 = randomNumList2[4] + 1;
ModifyEvent(-2, k1, 0, 0, 2084, -1, -1, -1, -1, -1, -2, -2, -2);--石棺触发器
ModifyEvent(-2, k2, 0, 0, 2084, -1, -1, -1, -1, -1, -2, -2, -2);--石棺触发器
ModifyEvent(-2, k3, 0, 0, 2082, -1, -1, -1, -1, -1, -2, -2, -2);--石棺触发器
ModifyEvent(-2, k4, 0, 0, 2082, -1, -1, -1, -1, -1, -2, -2, -2);--石棺触发器
--古墓动态开关启动器结束
do return end;