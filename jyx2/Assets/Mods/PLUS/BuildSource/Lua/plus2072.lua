ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
local loopnum = 8;--总数量
local maxnum = 2;--开关个数
for j = 1,loopnum do
	--生成一个从1~(maxnum)的数据表
	numberTable = {};
	for l = 1, maxnum do
		table.insert(numberTable,l);
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
	--maxnum个随机数选4个
	p = j + 6;
	k1 = randomNumList[1];
	k2 = randomNumList[2];
	Text1 = "GasWalls/Wall/Wall" .. p .. "_" .. k1;
	Text2 = "GasWalls/Wall/Wall" .. p .. "_" .. k2;
	jyx2_ReplaceSceneObject("",Text1,"");
	jyx2_ReplaceSceneObject("",Text2,"1");
end
Talkplus(4029);--0, "踩到机关了。"
jyx2_Wait(0.5);
do return end;