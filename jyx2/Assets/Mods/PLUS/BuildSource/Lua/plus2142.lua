if (BaguaPoint == nil) then BaguaPoint = 0; end;
if (BaguaTimes == nil) then BaguaTimes = 0; end;
txt = {1,2,3,4,5,6,7,8,9};
if (BaguaTimes > 0 and BaguaTimes % 2 == 0) then
	if (GetCurrentEventID() == 15) and (BaguaPoint == 30) then
	DarkScence();
	jyx2_ReplaceSceneObject("", "Dynamic/Gate", "");--开大门
	ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	ModifyEvent(-2, 7, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "Dynamic/5", "");--隐藏入口光柱
	LightScence();
	Talkplus(4462);--0,"大门打开了。"
	elseif (GetCurrentEventID() == 15) and not(BaguaPoint == 30) then	
		if not(jyx2_CheckEventCount(75,0,2) == 465) then
		DarkScence();
		jyx2_ReplaceSceneObject("", "Dynamic/Gate", "1");--瑛姑没指路就关大门
		LightScence();
			if InTeam(63) == true then 
			ModifyEvent(-2, 7, 0, -1, 2143, -1, -1, -1, -1, -1, -1, -2, -2);
			end;
		end;	
	Talkplus(4463);--0,"好像走错方位了。"
	ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);--屏蔽当前脚本
	jyx2_ReplaceSceneObject("", "Dynamic/"..GetCurrentEventID()-10, "");--隐藏当前光柱
		for i = 1, #txt do
			if not(i == 5) then
			jyx2_ReplaceSceneObject("", "Dynamic/"..i, "1");--显示非入口光柱
			ModifyEvent(-2, i + 10, -2, -2, -1, -1, 2142, -2, -2, -2, -2, -2, -2);--激活非入口脚本
			end;
		end;
		BaguaPoint = 0;
		BaguaTimes = 0;
	end;
else
	for i = 1, #txt do
		if (not(i == 5) and (i + 10 == GetCurrentEventID())) then
			BaguaPoint = BaguaPoint + GetCurrentEventID();
			BaguaTimes = BaguaTimes + 1;
			if (BaguaTimes > 0 and BaguaTimes % 2 == 0) then
			Talkplus(4464);--0,"好像可以了，回去看看。"
			else
			Talkplus(4465);--0,"激活了第一个机关。"
			end;
			ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);--屏蔽当前脚本
			jyx2_ReplaceSceneObject("", "Dynamic/"..i, "");--隐藏当前光柱
		end;
	end;
	if (BaguaTimes > 0 and BaguaTimes % 2 == 0) then
		for i = 1, #txt do
		ModifyEvent(-2, i + 10, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);--屏蔽所有脚本
		jyx2_ReplaceSceneObject("", "Dynamic/"..i, "");--隐藏所有光柱
		end;
		jyx2_ReplaceSceneObject("", "Dynamic/5", "1");--显示入口光柱
		ModifyEvent(-2, 15, -2, -2, -1, -1, 2142, -2, -2, -2, -2, -2, -2);--激活入口脚本
	end;
end;
do return end;