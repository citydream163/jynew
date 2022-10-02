if GetTeamMembersCount() > 1 then goto  label0 end;
Talk(0,"找几个人来一起练功吧。");
    do return end;
::label0::
arr = {1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
Exp = { 50, 150, 300, 500, 750, 1050, 1400, 1800, 2250, 2750, 3850, 5050, 6350, 7750, 9250, 10850, 12550, 14350, 16750, 18250, 21400, 24700, 28150, 31750, 35500, 39400, 43450, 47650, 52000, 60000, 68250, 76750, 85500, 94500, 105000, 117000, 130000, 145000, 163000, 183000, 205000,	230000,	258000,	288000,	320000,	355000,	393000,	433000,	478000,	528000 };
if ShowYesOrNoSelectPanel("是否开始练功？") == false then goto label1 end;
isBattle = 1;
for k = 1, #arr do
roleid = arr[k];
	if (InTeam(arr[k])) then
	evt1 = k + 254;--战斗编号（=触发器编号）
	jyx2_ReplaceSceneObject("","NPC/"..arr[k],"1");--显示人物
	jyx2_ReplaceSceneObject("","Triggers/"..evt1,"1");--显示触发器
	end;
end;
do return end;
::label1::
for j = 1, #arr do
	if (InTeam(arr[j])) then
	jyx2_ReplaceSceneObject("","NPC/"..arr[j],"");--隐藏人物
	end;
	evt2 = j + 254;--战斗编号（=触发器编号）
	jyx2_ReplaceSceneObject("","Triggers/"..evt2,"");--隐藏触发器	
end;
isBattle = 0;
do return end;
