if UseItem(203) == true then goto label0 end;
do return end;
::label0::
if (Wonglike == nil) then Wonglike = 0; end;
AddItemWithoutHint(203,-1);
arr = {1,2,3,4,5,6};
if (Caihua == nil) then Caihua = 0; end;
if ( math.random(1, 100) + Caihua > 66 ) then
	Talkplus(4294);--109,"这些够了，谢谢你。"
	if CS.Jyx2.GameRuntimeData.Instance:GetRole(0).Wuxuechangshi >= 15 then
		AddItem(174,(Wonglike + math.random(5, 8) - difficulty)*20*GetTeamMembersCount());
	else
		local teammates={};
		for y = 1,GetTeamMembersCount() do
			teammates[y] = GetTeammates(y);
		end
		for x = 1,#teammates do
			local runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[x]);
			if runtime.Wuxuechangshi < 15 then
				t = Wonglike + math.random(1, 5);
				runtime.Wuxuechangshi = runtime.Wuxuechangshi + t;
				if teammates[x] == 0 then
					Tips(CS.Jyx2.GameRuntimeData.Instance.Player.Name .. "武学常识增加" .. tostring(t));
				else
					Tips(CSDb[teammates[x]][1] .. "武学常识增加" .. tostring(t));
				end
			end
		end
	end
	Wonglike = 0;
	ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	ModifyEvent(-2, 9, -2, -2, -1, -1, 2141, -2, -2, -2, -2, -2, -2);
	for j = 1, #arr do	
		ModifyEvent(-2, j+9, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	end;
else
	Talkplus(4295);--109,"嗯，这些我都喜欢，你真有眼光，不过还不够多，你再去帮我采一些来。"
	Talkplus(4296);--0,"好的，我再去多采些来。"
	Wonglike = Wonglike + 1;
	for j = 1, #arr do	
		ModifyEvent(-2, j+9, -2, -2, 2132, -2, -2, -2, -2, -2, -2, -2, -2);
	end;
end;
do return end;