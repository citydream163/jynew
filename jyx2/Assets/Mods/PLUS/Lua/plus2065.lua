if HaveItem(149) == false then goto label20 end;
do return end;
::label20::
--(Wall1-Wall5)移动墙5选3
--生成一个从1~10的数据表
numberTable = {};
for k = 1, 5 do
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
--经过(5)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {};
for j = 1, 5 do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--5选3
	l1 = "Dynamic/Wall" .. randomNumList[1];
	l2 = "Dynamic/Wall" .. randomNumList[2];
	l3 = "Dynamic/Wall" .. randomNumList[3];
jyx2_ReplaceSceneObject("101", l1, ""); 
jyx2_ReplaceSceneObject("101", l2, ""); 
jyx2_ReplaceSceneObject("101", l3, ""); 
--（1-3）触发器随机事件
--生成一个从1~3的数据表
numberTable2 = {};
for l = 1, 3 do
    table.insert(numberTable2,l);
end
--首先算出表的长度count，然后在1~count取一个随机数作为表self.numberTable的下标，获得一个数self.numberTable2[index]，然后从表self.numberTable中移除掉避免重复
local function getRandom2()
    local count = #numberTable2;
    local index = math.random(1,count);
    local random = numberTable2[index];
    for m = #numberTable2, 1, -1 do
        if random == numberTable2[m] then
            table.remove(numberTable2, m);
            break;
        end
    end
    return random;
end
--经过(3)次循环，按照数据生成的先后顺序插入新表self.randomNumList2，这样就可以获得一个随机不重复的数组了
randomNumList2 = {};
for n = 1, 3 do
	local random = getRandom2();
	table.insert(randomNumList2,random);
end
k1 = randomNumList2[1];
k2 = randomNumList2[2];
k3 = randomNumList2[3];
ModifyEvent(101, k1, 0, 0, -1, -1, 2064, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k2, 0, 0, -1, -1, 2064, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k3, 0, 0, -1, -1, 2066, -1, -1, -1, -2, -2, -2);
--资质100奖励通道
if JudgeIQ(0,100,100) == true then goto label1 end;
do return end;
::label1::
jyx2_ReplaceSceneObject("101", "Dynamic/Wall_100", ""); 
do return end;