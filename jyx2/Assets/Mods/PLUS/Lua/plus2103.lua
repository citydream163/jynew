jyx2_ReplaceSceneObject("","NPC/算命先生","");
ModifyEvent(-2, 30, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
--Innid = {1,3,40,60,61};
tInn = {};
j = 1;
for i, v in pairs(Innid) do
	if not(v == GetCurrentGameMapid()) then
		tInn[j] = v;
		j = j+1;
	end;
end;
k = tInn[math.random(1,4)];
jyx2_ReplaceSceneObject(k,"NPC/算命先生","1");
ModifyEvent(k, 30, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;