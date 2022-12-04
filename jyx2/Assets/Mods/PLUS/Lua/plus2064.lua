--生成一个从1~10的数据表
numberTable = {};
for i = 1, 10 do
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
--经过(10)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {};
for i = 1, 10 do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--10选3
	l1 = randomNumList[1] + 10;
	l2 = randomNumList[2] + 10;
	l3 = randomNumList[3] + 10;
ModifyEvent(-2, l1, 0, 0, -1, -1, 2063, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, l2, 0, 0, -1, -1, 2063, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, l3, 0, 0, -1, -1, 2063, -1, -1, -1, -2, -2, -2);
do return end;