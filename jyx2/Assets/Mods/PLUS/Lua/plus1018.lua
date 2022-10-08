if (isBattle == 1) then
arr = {1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
	for i = 1, #arr do
		jyx2_ReplaceSceneObject("","NPC/"..arr[i],"");
		evt2 = i + 254;--战斗编号（=触发器编号）
		jyx2_ReplaceSceneObject("","Triggers/"..evt2,"");--隐藏触发器	
	end;
	isBattle = 0;
end;
if jyx2_CheckBookAndRepute() == true then goto label1 end;
    do return end;
::label1::
	Talk(0, "真累啊，好想大睡一觉。");
    ModifyEvent(-2, -2, -2, -2, -1, -1, 2199, -1, -1, -1, -2, -2, -2);
	ModifyEvent(-2, 10, 0, 0, -1,-1,2198, -1, -1, -1, -2, -2, -2);--刷请帖
	jyx2_WalkFromTo(-1,1);
	do return end;