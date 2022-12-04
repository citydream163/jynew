ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 1, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
if HaveItem(149) == false then goto label20 end;
ModifyEvent(-2, 0, 0, 0, 2060, -1, -1, -1, -1, -1, -2, -2, -2);
--ModifyEvent(-2, 1, 0, 0, 844, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label20::
--生成一个从1~(数组字长)的数据表
numberTable = {};
for i = 1, 5 do
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
for i = 1, 5 do
	local random = getRandom();
	table.insert(randomNumList,random);
end
	k1 = randomNumList[1] + 20;
	k2 = randomNumList[2] + 20;
	k3 = randomNumList[3] + 20;
	k4 = randomNumList[4] + 20;
	k5 = randomNumList[5] + 20;
ModifyEvent(101, k1, 0, 0, 2055, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k2, 0, 0, 2056, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k3, 0, 0, 2057, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k4, 0, 0, 2058, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(101, k5, 0, 0, 2059, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "Dynamic/ExitLight1", "1"); 
jyx2_ReplaceSceneObject("", "Bake/Static/Box_3", ""); 
jyx2_ReplaceSceneObject("", "Bake/Static/Light/Light_5", ""); 
jyx2_ReplaceSceneObject("", "Bake/Static/Wall/hide", ""); 
jyx2_ReplaceSceneObject("", "Triggers/0", ""); 
jyx2_ReplaceSceneObject("", "Triggers/Leave2", "1"); 
OpenScene(101);
do return end;