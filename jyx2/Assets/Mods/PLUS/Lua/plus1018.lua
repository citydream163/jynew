if GetTeamMembersCount() < 2 then goto  label0
elseif (isBattle == 1) then
arr = {1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
	for i = 1, #arr do
		jyx2_ReplaceSceneObject("","NPC/"..arr[i],"");
		evt2 = i + 254;--战斗编号（=触发器编号）
		jyx2_ReplaceSceneObject("","Triggers/"..evt2,"");--隐藏触发器	
	end;
	isBattle = 0;
end;

do return end;
::label0::
if jyx2_CheckBookAndRepute() == true then goto label1 end;
    do return end;
::label1::
	jyx2_ReplaceSceneObject("","Dynamic/请帖","1");
    ModifyEvent(-2, 11, 0, 0, 932, -1, -1, 7968, -1, -1, -1, -1, -1);
    ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	do return end;