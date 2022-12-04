arr = {0,1,2,9,16,17,25,28,29,35,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
for i = 1, #arr do
local j = i + 304;
	jyx2_ReplaceSceneObject("104","NPC/"..arr[i],"");--隐藏所有人物
	jyx2_ReplaceSceneObject("104","Triggers/"..j,"");--隐藏所有触发器
	jyx2_ReplaceSceneObject("","Triggers/Leave2","");
end;
jyx2_ReplaceSceneObject("","Triggers/Leave2","1");
	for l = 1, #arr do
		if (InTeam(arr[l])) then
		local k = l + 304;
		jyx2_ReplaceSceneObject("104","NPC/"..arr[l],"1");--显示人物
		jyx2_ReplaceSceneObject("104","Triggers/"..k,"1");--显示触发器
		end;
	end;
Talkplus(4673);--36,"咱们一起来练功吧。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;