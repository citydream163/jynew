if (isBattle == 1) then
arr = {1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
	for i = 1, #arr do
		jyx2_ReplaceSceneObject("","NPC/"..arr[i],"");
		evt2 = i + 254;--战斗编号（=触发器编号）
		jyx2_ReplaceSceneObject("","Triggers/"..evt2,"");--隐藏触发器	
	end;
	isBattle = 0;
end;
--ModifyEvent(-2, -2, -2, -2, -1, -1, 1018, -1, -1, -1, -2, -2, -2);
if GetTeamMembersCount() == 1 and jyx2_CheckEventCount(70,333,0) == 0 and jyx2_CheckEventCount(70,330,0) == 0 and jyx2_CheckEventCount(38,333,0) == 1 then--初遇小白
	ModifyEvent(-2, 10, 0, 0, -1, -1, 2088, -1, -1, -1, -2, -2, -2);
	Talkplus(4675);--0, "又回家了，去睡一觉。"
	jyx2_WalkFromTo(-1,1);
elseif (GetTeamMembersCount() == 1 or (GetTeamMembersCount() == 2 and InTeam(27))) and jyx2_CheckEventCount(70,333,0) >= 2 + difficulty and jyx2_CheckEventCount(70,330,0) == 0 and out == 0 then--初识翡冷翠
	ModifyEvent(-2, 17, 0, 0, -1, -1, 2105, -1, -1, -1, -2, -2, -2);
end;
do return end;