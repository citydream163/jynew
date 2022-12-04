if UseItem(204) == true then goto label0 end;
do return end;
::label0::
--生成一个从1~15的数据表
numberTable = {};
for i = 1, 15 do
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
--经过(15)次循环，按照数据生成的先后顺序插入新表self.randomNumList，这样就可以获得一个随机不重复的数组了
randomNumList = {};
for i = 1, 15 do
	local random = getRandom();
	table.insert(randomNumList,random);
end
--15选10
	l1 = randomNumList[1];
	l2 = randomNumList[2];
	l3 = randomNumList[3];
	l4 = randomNumList[4];
	l5 = randomNumList[5];
	l6 = randomNumList[6];
	l7 = randomNumList[7];
	l8 = randomNumList[8];
	l9 = randomNumList[9];
	l10 = randomNumList[10];
	l11 = randomNumList[11];
	l12 = randomNumList[12];
	l13 = randomNumList[13];
	l14 = randomNumList[14];
	l15 = randomNumList[15];
ModifyEvent(110, l1, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l2, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l3, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l4, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l5, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l6, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l7, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l8, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l9, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l10, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l11, 0, 0, -1, -1, 2129, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l12, 0, 0, -1, -1, 2129, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l13, 0, 0, -1, -1, 2129, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l14, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
ModifyEvent(110, l15, 0, 0, -1, -1, 2128, -1, -1, -1, -2, -2, -2);
PlayWave(101);
ModifyEvent(110, 0, 0, 0, -1, -1, 2127, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("","FX/ExitLight2","1");
jyx2_ReplaceSceneObject("","Triggers/Leave2","1");
Talkplus(4258);--0, "看看有什么变化。"
do return end;