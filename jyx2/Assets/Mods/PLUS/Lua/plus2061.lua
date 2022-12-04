ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
--构造数组
Dict_arr = {}
Dict_arr[1] = {101,1};
Dict_arr[2] = {102,1};
Dict_arr[3] = {103,1};
Dict_arr[4] = {104,1};
Dict_arr[5] = {101,2};
Dict_arr[6] = {102,2};
Dict_arr[7] = {103,2};
Dict_arr[8] = {104,2};
Dict_arr[9] = {101,3};
Dict_arr[10] = {102,3};
Dict_arr[11] = {103,3};
Dict_arr[12] = {104,3};
Dict_arr[13] = {101,4};
Dict_arr[14] = {101,5};
Dict_arr[15] = {102,4};
Dict_arr[16] = {102,5};
Dict_arr[17] = {103,4};
Dict_arr[18] = {103,5};
Dict_arr[19] = {104,4};
Dict_arr[20] = {104,5};
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
	k1 = Dict_arr[randomNumList[1]][1];
	l1 = Dict_arr[randomNumList[1]][2];
	k2 = Dict_arr[randomNumList[2]][1];
	l2 = Dict_arr[randomNumList[2]][2];
	k3 = Dict_arr[randomNumList[3]][1];
	l3 = Dict_arr[randomNumList[3]][2];
	k4 = Dict_arr[randomNumList[4]][1];
	l4 = Dict_arr[randomNumList[4]][2];
	k5 = Dict_arr[randomNumList[5]][1];
	l5 = Dict_arr[randomNumList[5]][2];
	k6 = Dict_arr[randomNumList[6]][1];
	l6 = Dict_arr[randomNumList[6]][2];
	k7 = Dict_arr[randomNumList[7]][1];
	l7 = Dict_arr[randomNumList[7]][2];
	k8 = Dict_arr[randomNumList[8]][1];
	l8 = Dict_arr[randomNumList[8]][2];
	k9 = Dict_arr[randomNumList[9]][1];
	l9 = Dict_arr[randomNumList[9]][2];
	k10 = Dict_arr[randomNumList[10]][1];
	l10 = Dict_arr[randomNumList[10]][2];
	k11 = Dict_arr[randomNumList[11]][1];
	l11 = Dict_arr[randomNumList[11]][2];
	k12 = Dict_arr[randomNumList[12]][1];
	l12 = Dict_arr[randomNumList[12]][2];
ModifyEvent(k1, l1, 0, 0, 2055, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k2, l2, 0, 0, 2056, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k3, l3, 0, 0, 2057, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k4, l4, 0, 0, 2058, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k5, l5, 0, 0, 2059, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k6, l6, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k7, l7, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k8, l8, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k9, l9, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k10, l10, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k11, l11, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(k12, l12, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;