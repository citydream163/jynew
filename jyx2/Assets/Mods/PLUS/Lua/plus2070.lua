ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
local maxnum = 19;
--生成一个从1~(maxnum)的数据表
numberTable = {};
for j = 1, maxnum do
    table.insert(numberTable,j);
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
--经过(maxnum)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {};
for k = 1, maxnum do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--maxnum个随机数选10个
	k1 = randomNumList[1] + 9;
	k2 = randomNumList[2] + 9;
	k3 = randomNumList[3] + 9;
	k4 = randomNumList[4] + 9;
	k5 = randomNumList[5] + 9;
	k6 = randomNumList[6] + 9;
	k7 = randomNumList[7] + 9;
	k8 = randomNumList[8] + 9;
	k9 = randomNumList[9] + 9;
	k10 = randomNumList[10] + 9;
--11个固定
	k12 = maxnum + 91;
	k13 = maxnum + 92;
	k14 = maxnum + 93;
	k15 = maxnum + 94;
	k16 = maxnum + 95;
	k17 = maxnum + 96;
	k18 = maxnum + 97;
	k19 = maxnum + 98;
	k20 = maxnum + 99;
	k21 = maxnum + 100;
	k22 = maxnum + 101;
local tatl1 = math.random(2071,2073);
ModifyEvent(-2, k1, 0, 0, -1, -1, tatl1, -1, -1, -1, -2, -2, -2);
local tatl2 = math.random(2071,2073);
ModifyEvent(-2, k2, 0, 0, -1, -1, tatl2, -1, -1, -1, -2, -2, -2);
local tatl3 = math.random(2071,2073);
ModifyEvent(-2, k3, 0, 0, -1, -1, tatl3, -1, -1, -1, -2, -2, -2);
local tatl4 = math.random(2071,2073);
ModifyEvent(-2, k4, 0, 0, -1, -1, tatl4, -1, -1, -1, -2, -2, -2);
local tatl5 = math.random(2071,2073);
ModifyEvent(-2, k5, 0, 0, -1, -1, tatl5, -1, -1, -1, -2, -2, -2);
local tatl6 = math.random(2071,2073);
ModifyEvent(-2, k6, 0, 0, -1, -1, tatl6, -1, -1, -1, -2, -2, -2);
local tatl7 = math.random(2071,2073);
ModifyEvent(-2, k7, 0, 0, -1, -1, tatl7, -1, -1, -1, -2, -2, -2);
local tatl8 = math.random(2071,2073);
ModifyEvent(-2, k8, 0, 0, -1, -1, tatl8, -1, -1, -1, -2, -2, -2);
local tatl9 = math.random(2071,2073);
ModifyEvent(-2, k9, 0, 0, -1, -1, tatl9, -1, -1, -1, -2, -2, -2);
local tatl10 = math.random(2071,2073);
ModifyEvent(-2, k10, 0, 0, -1, -1, tatl10, -1, -1, -1, -2, -2, -2);
local tatl11 = math.random(2071,2073);
ModifyEvent(-2, k12, 0, 0, -1, -1, tatl11, -1, -1, -1, -2, -2, -2);
local tatl12 = math.random(2071,2073);
ModifyEvent(-2, k13, 0, 0, -1, -1, tatl12, -1, -1, -1, -2, -2, -2);
local tatl13 = math.random(2071,2073);
ModifyEvent(-2, k14, 0, 0, -1, -1, tatl13, -1, -1, -1, -2, -2, -2);
local tatl14 = math.random(2071,2073);
ModifyEvent(-2, k15, 0, 0, -1, -1, tatl14, -1, -1, -1, -2, -2, -2);
local tatl15 = math.random(2071,2073);
ModifyEvent(-2, k16, 0, 0, -1, -1, tatl15, -1, -1, -1, -2, -2, -2);
local tatl16 = math.random(2071,2073);
ModifyEvent(-2, k17, 0, 0, -1, -1, tatl16, -1, -1, -1, -2, -2, -2);
local tatl17 = math.random(2071,2073);
ModifyEvent(-2, k18, 0, 0, -1, -1, tatl17, -1, -1, -1, -2, -2, -2);
local tatl18 = math.random(2071,2073);
ModifyEvent(-2, k19, 0, 0, -1, -1, tatl18, -1, -1, -1, -2, -2, -2);
local tatl19 = math.random(2071,2073);
ModifyEvent(-2, k20, 0, 0, -1, -1, tatl19, -1, -1, -1, -2, -2, -2);
local tatl20 = math.random(2071,2073);
ModifyEvent(-2, k21, 0, 0, -1, -1, tatl20, -1, -1, -1, -2, -2, -2);
local tatl21 = math.random(2071,2073);
ModifyEvent(-2, k22, 0, 0, -1, -1, tatl21, -1, -1, -1, -2, -2, -2);
do return end;