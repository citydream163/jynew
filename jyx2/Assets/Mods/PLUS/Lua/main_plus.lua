function Rest()
	-- local teammates={};
	-- for y = 1,GetTeamMembersCount() do
		-- teammates[y] = GetTeammates(y);
	-- end
	-- local teammatesAttack={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesAttack[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Attack;
	-- end
	-- local teammatesDefence={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesDefence[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Defence;
	-- end
	luaBridge.Rest();
	-- for n = 1,GetTeamMembersCount() do
		-- runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[n]);
		-- runtime.Attack = teammatesAttack[n];
		-- runtime.Defence = teammatesDefence[n];
	-- end
	Add3EventNum(70,997,1,0,0);--休息计数器
	CleanMap();
end
function RestTeam()
	-- local teammates={};
	-- for y = 1,GetTeamMembersCount() do
		-- teammates[y] = GetTeammates(y);
	-- end
	-- local teammatesAttack={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesAttack[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Attack;
	-- end
	-- local teammatesDefence={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesDefence[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Defence;
	-- end
	luaBridge.RestTeam();
	-- for n = 1,GetTeamMembersCount() do
		-- runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[n]);
		-- runtime.Attack = teammatesAttack[n];
		-- runtime.Defence = teammatesDefence[n];
	-- end
	Add3EventNum(70,997,0,1,0);--团休计数器
end
function RestFight()
	-- local teammates={};
	-- for y = 1,GetTeamMembersCount() do
		-- teammates[y] = GetTeammates(y);
	-- end
	-- local teammatesAttack={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesAttack[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Attack;
	-- end
	-- local teammatesDefence={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesDefence[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Defence;
	-- end
	luaBridge.RestFight();
	-- for n = 1,GetTeamMembersCount() do
		-- runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[n]);
		-- runtime.Attack = teammatesAttack[n];
		-- runtime.Defence = teammatesDefence[n];
	-- end
	Add3EventNum(70,997,0,0,1);--战休计数器
end
function MiniMapOn()
	jyx2_ReplaceSceneObject("1000", "MiniMap/Display","1");
end
function MiniMapOff()
	jyx2_ReplaceSceneObject("1000", "MiniMap/Display","");
end
function RunTo(m)--奔跑
	util.async_to_sync(luaBridge.jyx2_WalkFromTo)(-1,m);
end
function GetTeammates(a)
	teammatesarr = {};
	t = 1;
	for i = 0,#CSDb do
		if InTeam(i) and CSDb[i][27] > 3 then
			teammatesarr[t] = i;
			t = t + 1;
		end
	end
	if (teammatesarr[a] == nil) then
		return 0;
	else
		return	teammatesarr[a];
	end
end
function GetEnemies(a,b)
	enemiesarr = {};
	for i, v in pairs(ConfigBattle[b][7]) do
		enemiesarr[i] = v;
	end
	if (enemiesarr[a] == nil) then
		return enemiesarr[1];
	else
		return	enemiesarr[a];
	end
end
function GetCurrentEventID()
	return tonumber(luaBridge.GetCurrentEventID());
end
function OpenAllScene()
	 luaBridge.OpenAllScene();--打开所有场景
	 if (difficulty == 2) then
		CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(46, 1); --金蛇山洞
		CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(11, 1); --光明顶
		CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(81, 1); --思过崖
		CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(22, 1); --绝情谷
		if jyx2_CheckEventCount(42,777,0) == 0 then
			CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(42, 1); --无量山洞
		end
		if jyx2_CheckEventCount(6,777,0) == 0 then
			CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(6, 1); --北丑居
		end
		if jyx2_CheckEventCount(0,777,0) == 0 then
			CS.Jyx2.GameRuntimeData.Instance:SetSceneEntraceCondition(0, 1); --胡斐居
		end
	 end
end
function TryBattle(m)
	local teammates={};
	local TeamMemberslevel1={};
	for y = 1,GetTeamMembersCount() do
		teammates[y] = GetTeammates(y);
		TeamMemberslevel1[y] = GetRoleLevel(teammates[y]);
	end
	local teammateslevel1={};
	for k = 1,GetTeamMembersCount() do
		teammateslevel1[k] = GetRoleLevel(GetTeammates(k));
	end
	local MaxTeamMemberslevel1 = 0;
	for k = 1,GetTeamMembersCount() do
		if  MaxTeamMemberslevel1 < teammateslevel1[k] then
			MaxTeamMemberslevel1 = teammateslevel1[k];
			TeamMaxLevelRole = teammates[k];
		end
	end
	-- local teammatesAttack={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesAttack[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Attack;
	-- end
	-- local teammatesDefence={};
	-- for k = 1,GetTeamMembersCount() do
		-- teammatesDefence[k] = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[k]).Defence;
	-- end
	if ((jyx2_CheckEventCount(999,m,0) == 0) and ((ConfigBattle[m][10] == 1) or (ConfigBattle[m][10] == 3))) then --只在第一次进入战斗时且战斗类型为非练功则敌人升级
		if ((difficulty == 1) and (ConfigBattle[m][8] ~= nil) and (ConfigBattle[m][8] ~= m)) then--难度2的配置
			m = ConfigBattle[m][8];
		elseif ((difficulty == 2) and (ConfigBattle[m][9] ~= nil) and (ConfigBattle[m][9] ~= m)) then--难度3的配置
			m = ConfigBattle[m][9];
		end
		local enemies={};
		for y = 1,#ConfigBattle[m][7] do
			enemies[y] = ConfigBattle[m][7][y];
		end
		if (difficulty ~= nil) then--难度能够正常获取则敌人自动升级
			local Done={};
			for i, v in pairs(ConfigBattle[m][7]) do
				Done[v] = 0;
			end
			for i, v in pairs(ConfigBattle[m][7]) do
				if (CSDb[v][27] == 1 or CSDb[v][27] == 4) and Done[v] == 0 then --喽啰
					if (GetTeamMembersCount() == 1) then
						for j = 1,math.random(0, 1) + difficulty do
							Levelup(v);
						end
						Done[v] = 1;
					else
						local avgflevel = (GetTeamTotalLevel()-GetRoleLevel(0))//(GetTeamMembersCount()-1);--不含主角的队伍平均等级
						if (CSDb[v][4] < avgflevel) then
							tlv = avgflevel - CSDb[v][4] + difficulty + math.random(0, 1) - 1;--实际升几级
						else 
							tlv = math.random(0, 1);
						end	
						for j = 1,tlv do
							Levelup(v);
						end
						Done[v] = 1;
					end
				end
			end
			local enemieslevel1={};
			for k = 1,#ConfigBattle[m][7] do
				enemieslevel1[k] = GetRoleLevel(enemies[k]);
			end
			local Maxenemieslevel1 = 0;
			for k = 1,#ConfigBattle[m][7] do
				if (CSDb[ConfigBattle[m][7][k]][27] == 1 or CSDb[ConfigBattle[m][7][k]][27] == 4) and Maxenemieslevel1 < enemieslevel1[k] then
					Maxenemieslevel1 = enemieslevel1[k];
					EnemyMaxLevelRole = ConfigBattle[m][7][k];
				else
					EnemyMaxLevelRole = ConfigBattle[m][7][k];
				end
			end
			for i, v in pairs(ConfigBattle[m][7]) do
				if  (CSDb[v][27] == 2 or CSDb[v][27] == 5) and Done[v] == 0 then --小boss
					if (CSDb[v][4] < GetTeamMaxLevel()) then
						tlv = GetTeamMaxLevel() - CSDb[v][4] + difficulty * math.random(1, 3) - 1;--实际升几级
						for j = 1,tlv do
							Levelup(v);
						end
						Done[v] = 1;
					else
						for j = 1,GetRoleLevel(EnemyMaxLevelRole)-CSDb[EnemyMaxLevelRole][5] + difficulty * math.random(0, 2) - 1 do
							Levelup(v);
						end
						Done[v] = 1;
					end
				end
			end
			local Maxenemieslevel2 = 0;
			for k = 1,#ConfigBattle[m][7] do
				if (CSDb[ConfigBattle[m][7][k]][27] ~= 3 or CSDb[ConfigBattle[m][7][k]][27] ~= 7) and Maxenemieslevel2 < enemieslevel1[k] then
					Maxenemieslevel2 = enemieslevel1[k];
					EnemyMaxLevelRole2 = ConfigBattle[m][7][k];
				else
					Maxenemieslevel2 = GetRoleLevel(ConfigBattle[m][7][k]);
				end
			end
			if Maxenemieslevel2 < GetTeamMaxLevel() then
				Maxenemieslevel2 = GetTeamMaxLevel();
				EnemyMaxLevelRole2 = TeamMaxLevelRole;
			end
			for i, v in pairs(ConfigBattle[m][7]) do
				if GetRoleLevel(v) < Maxenemieslevel2 then
					bossuplv = Maxenemieslevel2 - GetRoleLevel(v);
				else
					bossuplv = GetRoleLevel(EnemyMaxLevelRole2)-CSDb[EnemyMaxLevelRole2][5];
				end	
			end
			for i, v in pairs(ConfigBattle[m][7]) do
				if  (CSDb[v][27] == 3 or CSDb[v][27] == 7) and Done[v] == 0 then --大boss
					if (CSDb[v][4] <= GetRoleLevel(0)) then
						tlv = GetRoleLevel(0) - CSDb[v][4] + difficulty * math.random(2, 5) + bossuplv - 1;--实际升几级
						if GetRoleLevel(v) == GameConst("MAX_ROLE_LEVEL")[moRenshuzhi] then
							for j = 1,tlv do
								Levelup(v,2);
							end
							Done[v] = 1;
						elseif tlv + GetRoleLevel(v) > GameConst("MAX_ROLE_LEVEL")[moRenshuzhi] then
							tplv = GameConst("MAX_ROLE_LEVEL")[moRenshuzhi] - GetRoleLevel(v);
							tmlv = tlv + GetRoleLevel(v) - GameConst("MAX_ROLE_LEVEL")[moRenshuzhi];
							for j = 1,tplv do
								Levelup(v);
							end
							for j = 1,tmlv do
								Levelup(v,2);
							end
							Done[v] = 1;
						else
							for j = 1,tlv do
								Levelup(v);
							end
							Done[v] = 1;
						end
					else
						for j = 1, difficulty * math.random(0, 2) + bossuplv do
							Levelup(v);
						end
						Done[v] = 1;
					end
				end
			end
		end
	end
	Add3EventNum(70,998,1,0,0);--总战斗统计计数器
	Add3EventNum(999,m,1,0,0);--战斗计数器
	local battleResult = util.async_to_sync(luaBridge.TryBattle)(m);
	local teammateslevel2={};
	for l = 1,GetTeamMembersCount() do
		teammateslevel2[l] = GetRoleLevel(GetTeammates(l));
	end
	for n = 1,GetTeamMembersCount() do
		if teammateslevel2[n] > teammateslevel1[n] then
			runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[n]);
			for x = 1,teammateslevel2[n] - teammateslevel1[n] do
				if (runtime.IQ > 39 + difficulty*15) then
					runtime.Qimen = ToolsLimit(checkUp(runtime.Qimen, 0, 1),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
					if (difficulty == 2) and (runtime.Wuxuechangshi < 30) then
						runtime.Wuxuechangshi = runtime.Wuxuechangshi + math.random(0, 1);
					elseif (difficulty == 1) and (runtime.Wuxuechangshi < 15) then
						runtime.Wuxuechangshi = runtime.Wuxuechangshi + math.random(0, 1);
					end
					if runtime.Heal < 20 then
						runtime.Heal = ToolsLimit(checkUp(runtime.Heal, 0, 3-difficulty),0,GameConst("MAX_HEAL"));
					end
					if runtime.DePoison < 20 then
						runtime.DePoison = ToolsLimit(checkUp(runtime.DePoison, 0, 3-difficulty),0,GameConst("MAX_DEPOISON"));
					end
					if runtime.UsePoison < 20 then
						runtime.UsePoison = ToolsLimit(checkUp(runtime.UsePoison, 0, 3-difficulty),0,GameConst("MAX_USE_POISON"));
					end
					if runtime.Quanzhang < 20 then
						runtime.Quanzhang = ToolsLimit(checkUp(runtime.Quanzhang, 0, 3-difficulty),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
					end
					if runtime.Yujian < 20 then
						runtime.Yujian = ToolsLimit(checkUp(runtime.Yujian, 0, 3-difficulty),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
					end
					if runtime.Shuadao < 20 then
						runtime.Shuadao = ToolsLimit(checkUp(runtime.Shuadao, 0, 3-difficulty),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
					end
					if runtime.Anqi < 20 then
						runtime.Anqi = ToolsLimit(checkUp(runtime.Anqi, 0, 3-difficulty),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
					end
				end	
				-- if teammatesAttack[n] > 119 then
					-- runtime.Attack = ToolsLimit(checkUp(teammatesAttack[n], 0, 3-difficulty),0,GameConst("MAX_ROLE_ATTACK")[moRenshuzhi]);
				-- end
				-- if teammatesDefence[n] > 119 then
					-- runtime.Defence = ToolsLimit(checkUp(teammatesDefence[n], 0, 3-difficulty),0,GameConst("MAX_ROLE_DEFENCE")[moRenshuzhi]);
				-- end
			end
		end
	end
	return battleResult;
end
function JudgeItem(Itemid,num)--判断物品数量
	return (CS.Jyx2.GameRuntimeData.Instance:GetItemCount(Itemid) >= num);
end
function Fight(m)--战斗测试
	AddHp(0,9999);
	AddMp(0,9999);
	SetOneMagic(0,0,1,900);
	AddWuchang(0,99);
	AddSpeed(0,99);
	AddAttack(0,99);
	if m ~= nil and m >= 0 and m <= #ConfigBattle then TryBattle(m) end;
end
function AddLevelWithoutLimit(roleId,v0)--谨慎使用，超过最大等级后打开用户面板会报错
	CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId).Level = CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId).Level + v0;
end
function GetRoleMaxHp(roleId)--获取角色最大生命值
	return CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId).MaxHp;
end
function GetRoleMaxMp(roleId)--获取角色最大内力值
	return CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId).MaxMp;
end
function GetRoleExp(roleId)--获取角色当前经验值
	return CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId).Exp;
end
function Exit()--脱离迷宫
	jyx2_MovePlayer("0","Level/NavigateObjs");
end
function Tips(m)--提示
	CS.StoryEngine.DisplayPopInfo(m);
end
function Flyto(a)--飞到指定位置
	jyx2_MovePlayer(a,"Level/NavigateObjs");
end
function AllLeave()--全体离队
	luaBridge.AllLeave();
	if (difficulty == 2) then
		ModifyEvent(0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("0","NPC/胡斐","");
		ModifyEvent(49, 2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("49","NPC/chenglingsu","");
		ModifyEvent(4, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("4","NPC/张无忌","");
		ModifyEvent(44, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("44","NPC/胡青牛","");
		ModifyEvent(44, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("44","NPC/王难姑","");
		ModifyEvent(37, 5, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("37","NPC/lanfenghuang","");
		if jyx2_CheckEventCount(28,995,0) == 0 then
			ModifyEvent(30, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
			jyx2_ReplaceSceneObject("30","NPC/平一指","");
		end
		if jyx2_CheckEventCount(29,995,0) == 0 then
			ModifyEvent(59, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
			jyx2_ReplaceSceneObject("59","NPC/田伯光","");
		end
		ModifyEvent(40, 3, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("40","NPC/令狐冲","");
		ModifyEvent(56, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("56","NPC/林平之","");
		ModifyEvent(1, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		ModifyEvent(1, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("1","NPC/狄云","");
		ModifyEvent(40, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		ModifyEvent(40, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("40","NPC/石破天","");
		ModifyEvent(77, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("77","NPC/NanHaiEShen","");
		ModifyEvent(54, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("54","NPC/xuemuhua","");
		ModifyEvent(62, 3, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("62","NPC/azi","");
		ModifyEvent(62, 4, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("62","NPC/youtanzhi","");
		ModifyEvent(60, 15, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("60","NPC/xuzhu","");
		ModifyEvent(52, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("52","NPC/慕容复","");
		ModifyEvent(61, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("61","NPC/段誉","");
		ModifyEvent(78, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("78","NPC/袁承志","");
		ModifyEvent(18, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("18","NPC/杨过","");
		ModifyEvent(18, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("18","NPC/小龙女","");
		ModifyEvent(69, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		ModifyEvent(69, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("69", "NPC/欧阳克", "");
		jyx2_ReplaceSceneObject("69", "NPC/欧阳克婢女", "");
		ModifyEvent(45, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("45","NPC/程英","");
		ModifyEvent(52, 2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("52","NPC/王语嫣","");
		ModifyEvent(42, 6, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("42","NPC/王语嫣","");
		ModifyEvent(42, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("42","NPC/段誉","");
	end
end
--CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.LuaFilePatten="ka{0}";--修改lua前缀

--以下为lua全局函数
function AddHp(roleId,v0)
	local HpLimit = GameConst("MAX_ROLE_HP")[moRenshuzhi]-GetRoleMaxHp(roleId);
	v0 = ToolsLimit(v0, 0, HpLimit);
	luaBridge.AddHp(roleId,v0);
end
function AddMp(roleId,v0)
	local MpLimit = GameConst("MAX_ROLE_MP")[moRenshuzhi]-GetRoleMaxMp(roleId);
	v0 = ToolsLimit(v0, 0, MpLimit);
	luaBridge.AddMp(roleId,v0);
end
function AddHpWithoutHint(roleId,v0)
	local HpLimit = GameConst("MAX_ROLE_HP")[moRenshuzhi]-GetRoleMaxHp(roleId);
	v0 = ToolsLimit(v0, 0, HpLimit);
	luaBridge.AddHpWithoutHint(roleId,v0);
end
function AddMpWithoutHint(roleId,v0)
	local MpLimit = GameConst("MAX_ROLE_MP")[moRenshuzhi]-GetRoleMaxMp(roleId);
	v0 = ToolsLimit(v0, 0, MpLimit);
	luaBridge.AddMpWithoutHint(roleId,v0);
end

function Levelup(roleid,uper,team)
	if (roleid == nil) then
		roleid = 0;
	end
	if (uper == nil) then
		uper = 1;
	end
	if (team == nil) then
		team = 2;
	end
	runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(roleid);	
	tExp = runtime.Exp;
	tlevel = GetRoleLevel(roleid);
	if ((uper == 1) and (AddLevelreturnUper(roleid,uper) == uper)) or (uper > 1) then

		runtime.Tili = GameConst("MAX_ROLE_TILI");
		runtime.Exp = tExp + GameConst("LEVEL_UP_EXP")[GetRoleLevel(roleid)] - GameConst("LEVEL_UP_EXP")[tlevel];
		runtime.MaxHp = ToolsLimit(runtime.MaxHp + (CSDb[roleid][2] + math.random(0, 3)) * 3,0,GameConst("MAX_ROLE_HP")[moRenshuzhi]);
		runtime.Hp = runtime.MaxHp;
		--CS.Jyx2.GameRuntimeData.Instance:SetHPAndRefreshHudBar(runtime.MaxHp);
		--当0 <= 资质 < 30, a = 2;
		--当30 <= 资质 < 50, a = 3;
		--当50 <= 资质 < 70, a = 4;
		--当70 <= 资质 < 90, a = 5;
		--当90 <= 资质 <= 100, a = 6;
		--a = random(a) + 1;
		a = math.random(0, ((CSDb[roleid][24] - 10) // 20) + 2) + 1;
		runtime.MaxMp = ToolsLimit(runtime.MaxMp + (9 - a) * 4,0,GameConst("MAX_ROLE_MP")[moRenshuzhi]);
		runtime.Mp = runtime.MaxMp;

		runtime.Hurt = 0;
		runtime.Poison = 0;
		if team ~= 2 or CSDb[roleid][27] > 3 then --队友，且默认其他角色不升级以下属性
			-- local equipAttack = CS.Jyx2.RoleInstance.GetWeaponProperty("Attack") + CS.Jyx2.RoleInstance.GetArmorProperty("Attack");
			-- local equipDefence = CS.Jyx2.RoleInstance.GetWeaponProperty("Defence") + CS.Jyx2.RoleInstance.GetArmorProperty("Defence");
			-- local equipQinggong = CS.Jyx2.RoleInstance.GetWeaponProperty("Qinggong") + CS.Jyx2.RoleInstance.GetArmorProperty("Qinggong");
			local ATTACKLimit = GameConst("MAX_ROLE_ATTACK")[moRenshuzhi];
			local DEFENCELimit = GameConst("MAX_ROLE_DEFENCE")[moRenshuzhi];
			--Todo 带装备以后的数据调整
			runtime.Attack = ToolsLimit(runtime.Attack + a,0,ATTACKLimit);
			runtime.Qinggong = ToolsLimit(runtime.Qinggong + a,0,GameConst("MAX_ROLE_QINGGONG"));
			runtime.Defence = ToolsLimit(runtime.Defence + a,0,DEFENCELimit);

			runtime.Heal = ToolsLimit(checkUp(runtime.Heal, 20, 3),0,GameConst("MAX_HEAL"));
			runtime.DePoison = ToolsLimit(checkUp(runtime.DePoison, 20, 3),0,GameConst("MAX_DEPOISON"));
			runtime.UsePoison = ToolsLimit(checkUp(runtime.UsePoison, 20, 3),0,GameConst("MAX_USE_POISON"));

			runtime.Quanzhang = ToolsLimit(checkUp(runtime.Quanzhang, 20, 3),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
			runtime.Yujian = ToolsLimit(checkUp(runtime.Yujian, 20, 3),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
			runtime.Shuadao = ToolsLimit(checkUp(runtime.Shuadao, 20, 3),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
			runtime.Anqi = ToolsLimit(checkUp(runtime.Anqi, 20, 3),0,GameConst("MAX_ROLE_WEAPON_ATTR"));

			if (runtime.IQ > 50 ) then
				runtime.Qimen = ToolsLimit(checkUp(runtime.Qimen, 20, 1),0,GameConst("MAX_ROLE_WEAPON_ATTR"));
				if (difficulty == 2) and (runtime.Wuxuechangshi < 50) then
					runtime.Wuxuechangshi = runtime.Wuxuechangshi + math.random(0, 1);
				elseif (difficulty == 1) and (runtime.Wuxuechangshi < 30) then
					runtime.Wuxuechangshi = runtime.Wuxuechangshi + math.random(0, 1);
				end
			end
		end
	end
end
function HPUP(roleid)--简单加血函数
	local lv0 = 0;
	if (difficulty == 0) then
		lv0 = 0;
	elseif (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv1 = math.random(10, 15) + lv0;
		AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*lv1);
end
function HMPUP(roleid,smp)--简单加血加内力函数
	local lv0 = 0;
	if ((smp == nil) or (smp > 8) or (smp < 1)) then
		smp = 4;
	end
	if (difficulty == 0) then
		lv0 = math.random (3, 7);
	elseif (difficulty == 1) then
		lv0 = math.random (5, 10);
	elseif (difficulty == 2) then
		lv0 = math.random (7, 13);
	end;
	local lv1 = math.random(0, 1) + lv0;
	AddHpWithoutHint(roleid, (CSDb[roleid][2]+math.random (0, 3))*3*lv1);
	if smp == 8 then
		AddMpWithoutHint(roleid, math.random (smp, 9)*4*lv1);
	else
		AddMpWithoutHint(roleid, math.random (smp, 8)*4*lv1);
	end;
end
function SimUP(roleid,lv)--简单升级函数
	local lv0 = 0;
	if ((lv == nil) or (lv < 1)) then
		lv = 1;
	end
	if (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv2 = math.random(10, 15) + lv0 + 5;
	for i=1,lv2 do
		Levelup(roleid,lv);--lv=1,升到最高级停止,lv>1,升到最大值为止
	end
end
function AutoUP(roleid,lv)--自动简易升级函数
	local lv0 = 0;
	if ((lv == nil) or (lv < 1)) then
		lv = 1;
	end
	if (difficulty == 1) then
		lv0 = 1;
	elseif (difficulty == 2) then
		lv0 = 2;
	end;
	local lv1 = 1 + lv0;
	local lv2 = math.random(1, 2) + lv0;
	local lv3 = math.random(2, 5) + lv0;
	local tlv = 0;
	if lv == 1 then--喽啰
		tlv = lv1;
	elseif lv == 2 then--小boss
		tlv = lv2;
	elseif lv == 3 then--大boss
		tlv = lv3;
	elseif lv == 4 then--普通队友
		tlv = lv2;
	elseif lv == 5 then--boss队友
		tlv = lv3;
	elseif lv == 6 then--主角
		tlv = lv3;
	else
		tlv = 0;
	end;
	for i=1,tlv do
		Levelup(roleid,lv);--smp=1,升到最高级停止,smp>1,升到最大值为止
	end
end
function EndingUP(roleid,lv)--最终战自动升级函数
	local tlv = 0;
	if (lv == nil) then
		lv = 3;
	end
	if (difficulty == nil or difficulty == 0) then
		lv = 0;
	elseif (difficulty == 1) then
		if (GetRoleLevel(roleid) < GameConst("MAX_ROLE_LEVEL")[moRenshuzhi]) then
			tlv = GameConst("MAX_ROLE_LEVEL")[moRenshuzhi] - GetRoleLevel(roleid) + math.random(5, 10);
		else
			lv = 0;
		end;
	elseif (difficulty == 2) then
		if (GetRoleLevel(roleid) < GameConst("MAX_ROLE_LEVEL")[moRenshuzhi]) then
			tlv = GameConst("MAX_ROLE_LEVEL")[moRenshuzhi] - GetRoleLevel(roleid) + math.random(5, 10);
		else
			tlv = math.random(15, 20);
		end;
	end;
	for i=1,tlv do
		Levelup(roleid,lv);--smp=1,升到最高级停止,smp>1,升到最大值为止
	end
end
--日历开始
function Calendar(num)
	local xCountzj = jyx2_CheckEventCount(70,999,2);--季计数器取值
	local yCountzj = jyx2_CheckEventCount(70,999,1);--月计数器取值
	local zCountzj = jyx2_CheckEventCount(70,999,0);--日计数器取值
	local pCountzj = jyx2_CheckEventCount(70,998,0);--战计数器取值
	local r1Countzj = jyx2_CheckEventCount(70,997,0);--休计数器取值
	local r2Countzj = jyx2_CheckEventCount(70,997,1);--团休计数器取值
	local r3Countzj = jyx2_CheckEventCount(70,997,2);--战休计数器取值
	local rCountzj = r1Countzj + r2Countzj + r3Countzj;--休计数器取值
	local sipdays = zCountzj + pCountzj + rCountzj;--仅合计日数
	local yend = xCountzj * 90 + yCountzj * 30 + zCountzj + pCountzj + rCountzj;--合计游戏日
	yCountzj = yCountzj + (zCountzj + pCountzj + rCountzj) // 30;--//取商的整数部分
	xCountzj = xCountzj + yCountzj // 3;
	local D = (zCountzj + pCountzj + rCountzj) % 30 + 1;--%取商的余数部分
	local M = yCountzj % 3 + 1;
	local x = xCountzj // 4 + 1;
	local year = x;
	if x == 1 then
		x = "元";
	end;
	x = string.gsub(x,0,"〇");
	x = string.gsub(x,1,"一");
	x = string.gsub(x,2,"二");
	x = string.gsub(x,3,"三");
	x = string.gsub(x,4,"四");
	x = string.gsub(x,5,"五");
	x = string.gsub(x,6,"六");
	x = string.gsub(x,7,"七");
	x = string.gsub(x,8,"八");
	x = string.gsub(x,9,"九");
	M = string.gsub(M,1,"一");
	M = string.gsub(M,2,"二");
	M = string.gsub(M,3,"三");
	D = string.gsub(D,10,"初十");
	D = string.gsub(D,11,"十一");
	D = string.gsub(D,12,"十二");
	D = string.gsub(D,13,"十三");
	D = string.gsub(D,14,"十四");
	D = string.gsub(D,15,"十五");
	D = string.gsub(D,16,"十六");
	D = string.gsub(D,17,"十七");
	D = string.gsub(D,18,"十八");
	D = string.gsub(D,19,"十九");
	D = string.gsub(D,20,"二十");
	D = string.gsub(D,21,"二十一");
	D = string.gsub(D,22,"二十二");
	D = string.gsub(D,23,"二十三");
	D = string.gsub(D,24,"二十四");
	D = string.gsub(D,25,"二十五");
	D = string.gsub(D,26,"二十六");
	D = string.gsub(D,27,"二十七");
	D = string.gsub(D,28,"二十八");
	D = string.gsub(D,29,"二十九");
	D = string.gsub(D,30,"三十");
	D = string.gsub(D,1,"初一");
	D = string.gsub(D,2,"初二");
	D = string.gsub(D,3,"初三");
	D = string.gsub(D,4,"初四");
	D = string.gsub(D,5,"初五");
	D = string.gsub(D,6,"初六");
	D = string.gsub(D,7,"初七");
	D = string.gsub(D,8,"初八");
	D = string.gsub(D,9,"初九");
	if (xCountzj + 1) % 4 == 1 then--取余数
		S = "春";
	elseif (xCountzj + 1) % 4 == 2 then
		S = "夏";
	elseif (xCountzj + 1) % 4 == 3 then
		S = "秋";
	else
		S = "冬";
	end;
	if (num == 1) then--详历
		local text = "游戏历·" .. x .. "年" .. S .. M .. "月" .. D;
		text = string.gsub(text,"春一月初一","·元日");
		text = string.gsub(text,"春一月初七","·人日");
		text = string.gsub(text,"春一月十五","·上元");
		text = string.gsub(text,"春一月二十五","·填仓");
		text = string.gsub(text,"春二月初二","·社日");
		text = string.gsub(text,"春二月十二","·花朝");
		text = string.gsub(text,"春三月初三","·上巳");
		text = string.gsub(text,"春三月初四","·寒食");
		text = string.gsub(text,"春三月初五","·清明");
		text = string.gsub(text,"夏一月初八","·浴佛");
		text = string.gsub(text,"夏二月初五","·端午");
		text = string.gsub(text,"秋一月初七","·七夕");
		text = string.gsub(text,"秋一月十五","·中元");
		text = string.gsub(text,"秋二月十五","·中秋");
		text = string.gsub(text,"秋三月初九","·重阳");
		text = string.gsub(text,"冬一月初一","·寒衣");
		text = string.gsub(text,"冬一月十五","·下元");
		text = string.gsub(text,"冬三月初八","·腊日");
		text = string.gsub(text,"冬三月二十三","·祭灶");
		text = string.gsub(text,"冬三月三十","·除夕");
		text = string.gsub(text,"春一月","春正月");
		text = text .. "\n\n已经过" .. yend .. "日";	
		return text;
	elseif (num == 2) then--游戏总日数
		return yend;
	elseif (num == 3) then--胡混日数
		return zCountzj;
	elseif (num == 4) then--战斗总次数
		return pCountzj;
	elseif (num == 5) then--休息总次数
		return rCountzj;
	elseif (num == 6) then--仅合计日数
		return sipdays;
	elseif (num == 7) then--仅合计月数
		return yCountzj;
	elseif (num == 8) then--游戏年
		return year;
	else--简历
		local text = "游戏历·" .. x .. "年" .. S;
		return text;
	end;
end;
--日历结束

--光柱开始
function MapLight(mapid,switch)
	MLight={};
	MLight[0]="Triggers/胡斐居/00_胡斐居";
	MLight[1]="Triggers/河洛客栈/01_河洛客栈";
	MLight[2]="Triggers/云鹤崖/02_云鹤崖";
	MLight[3]="Triggers/有间客栈/03_有间客栈";
	MLight[5]="Triggers/闯王山洞/05_闯王山洞";
	MLight[6]="Triggers/北丑居/06_北丑居";
	MLight[7]="Triggers/神雕山洞/07_神雕山洞";
	MLight[8]="Triggers/大轮寺/08_大轮寺";
	MLight[9]="Triggers/成昆居/09_成昆居";
	MLight[10]="Triggers/蜘蛛山洞/10_蜘蛛山洞";
	MLight[11]="Triggers/光明顶/11_光明顶";
	MLight[12]="Triggers/明教分舵/12_明教分舵";
	MLight[15]="Triggers/沙漠废墟/15_沙漠废墟";
	MLight[16]="Triggers/金轮寺/16_金轮寺";
	MLight[17]="Triggers/回族部落/17_回族部落";
	MLight[18]="Triggers/古墓/18_古墓";
	MLight[19]="Triggers/重阳宫/19_重阳宫";
	MLight[20]="Triggers/百花谷/20_百花谷";
	MLight[21]="Triggers/黑龙潭/21_黑龙潭";
	MLight[22]="Triggers/绝情谷/22_绝情谷";
	MLight[23]="Triggers/洪七公居/23_洪七公居";
	MLight[24]="Triggers/苗人凤居/24_苗人凤居";
	MLight[25]="Triggers/武道大会/25_武道大会";
	MLight[26]="Triggers/黑木崖/26_黑木崖";
	MLight[27]="Triggers/嵩山派/27_嵩山派";
	MLight[28]="Triggers/少林寺/28_少林寺";
	MLight[29]="Triggers/泰山派/29_泰山派";
	MLight[30]="Triggers/平一指居/30_平一指居";
	MLight[31]="Triggers/恒山派/31_恒山派";
	MLight[32]="Triggers/海边小屋/32_海边小屋";
	MLight[33]="Triggers/峨嵋派/33_峨嵋派";
	MLight[34]="Triggers/崆峒派/34_崆峒派";
	MLight[35]="Triggers/星宿海/35_星宿海";
	MLight[36]="Triggers/青城派/36_青城派";
	MLight[37]="Triggers/五毒教/37_五毒教";
	MLight[38]="Triggers/摩天崖/38_摩天崖";
	MLight[39]="Triggers/凌霄城/39_凌霄城";
	MLight[40]="Triggers/悦来客栈/40_悦来客栈";
	MLight[41]="Triggers/神秘山洞/41_神秘山洞";
	MLight[42]="Triggers/无量山洞/42_无量山洞";
	MLight[43]="Triggers/武当派/43_武当派";
	MLight[44]="Triggers/蝴蝶谷/44_蝴蝶谷";
	MLight[45]="Triggers/程英居/45_程英居";
	MLight[46]="Triggers/金蛇山洞/46_金蛇山洞";
	MLight[47]="Triggers/一灯居/47_一灯居";
	MLight[48]="Triggers/铁掌山/48_铁掌山";
	MLight[49]="Triggers/药王庄/49_药王庄";
	MLight[50]="Triggers/阎基居/50_阎基居";
	MLight[51]="Triggers/丐帮/51_丐帮";
	MLight[52]="Triggers/燕子坞/52_燕子坞";
	MLight[53]="Triggers/擂鼓山/53_擂鼓山";
	MLight[54]="Triggers/薛慕华居/54_薛慕华居";
	MLight[55]="Triggers/梅庄/55_梅庄";
	MLight[56]="Triggers/福威镖局/56_福威镖局";
	MLight[57]="Triggers/华山派/57_华山派";
	MLight[58]="Triggers/衡山派/58_衡山派";
	MLight[59]="Triggers/田伯光居/59_田伯光居";
	MLight[60]="Triggers/龙门客栈/60_龙门客栈";
	MLight[61]="Triggers/高升客栈/61_高升客栈";
	MLight[62]="Triggers/破庙/62_破庙";
	MLight[63]="Triggers/天宁寺/63_天宁寺";
	MLight[64]="Triggers/南贤居/64_南贤居";
	MLight[65]="Triggers/唐诗山洞/65_唐诗山洞";
	MLight[66]="Triggers/冰蚕山洞/66_冰蚕山洞";
	MLight[67]="Triggers/昆仑山洞/67_昆仑山洞";
	MLight[68]="Triggers/昆仑派/68_昆仑派";
	MLight[69]="Triggers/白驼山/69_白驼山";
	MLight[70]="Triggers/小虾米居/70_小虾米居";
	MLight[71]="Triggers/神龙教/71_神龙教";
	MLight[72]="Triggers/冰火岛/72_冰火岛";
	MLight[73]="Triggers/灵蛇岛/73_灵蛇岛";
	MLight[74]="Triggers/侠客岛/74_侠客岛";
	MLight[75]="Triggers/桃花岛/75_桃花岛";
	MLight[76]="Triggers/霹雳堂/76_霹雳堂";
	MLight[77]="Triggers/万鳄岛/77_万鳄岛";
	MLight[78]="Triggers/渤泥岛/78_渤泥岛";
	MLight[79]="Triggers/鸳鸯山洞/79_鸳鸯山洞";
	MLight[80]="Triggers/绝情谷底/80_绝情谷底";
	MLight[81]="Triggers/思过崖/81_思过崖";
	MLight[102]="Triggers/香冢/102_香冢";
	if mapid == 1000 then
		if	switch == 1 then
			for i, v in pairs(MLight) do
				jyx2_ReplaceSceneObject("1000",v,"1");--显示光柱
			end;
		else
			for i, v in pairs(MLight) do
				jyx2_ReplaceSceneObject("1000",v,"");--关闭光柱
			end;
		end;
	elseif not(MLight[mapid] == nil) then
		if	switch == 1 then
			jyx2_ReplaceSceneObject("1000",MLight[mapid],"1");--显示光柱
		else
			jyx2_ReplaceSceneObject("1000",MLight[mapid],"");--关闭光柱
		end;
	end;
end;
--光柱结束

--建筑开关开始
function ShowBuilding(mapid,switch)
	Building={};
	Building[0]="Bake/Static/00_胡斐居";
	Building[1]="Bake/Static/01_河洛客栈";
	Building[2]="Bake/Static/02_云鹤崖";
	Building[3]="Bake/Static/03_有间客栈";
	Building[6]="Bake/Static/06_北丑居";
	Building[8]="Bake/Static/08_大轮寺";
	Building[9]="Bake/Static/09_成昆居";
	Building[11]="Bake/Static/11_光明顶";
	Building[12]="Bake/Static/12_明教分舵";
	Building[15]="Bake/Static/15_沙漠废墟";
	Building[16]="Bake/Static/16_金轮寺";
	Building[17]="Bake/Static/17_回族部落";
	Building[18]="Bake/Static/18_古墓";
	Building[19]="Bake/Static/19_重阳宫";
	Building[20]="Bake/Static/20_百花谷";
	Building[21]="Bake/Static/21_黑龙潭";
	Building[22]="Bake/Static/22_绝情谷";
	Building[23]="Bake/Static/23_洪七公居";
	Building[24]="Bake/Static/24_苗人凤居";
	Building[25]="Bake/Static/25_武道大会";
	Building[26]="Bake/Static/26_黑木崖";
	Building[27]="Bake/Static/27_嵩山派";
	Building[28]="Bake/Static/28_少林寺";
	Building[29]="Bake/Static/29_泰山派";
	Building[30]="Bake/Static/30_平一指居";
	Building[31]="Bake/Static/31_恒山派";
	Building[32]="Bake/Static/32_海边小屋";
	Building[33]="Bake/Static/33_峨嵋派";
	Building[34]="Bake/Static/34_崆峒派";
	Building[35]="Bake/Static/35_星宿海";
	Building[36]="Bake/Static/36_青城派";
	Building[37]="Bake/Static/37_五毒教";
	Building[38]="Bake/Static/38_摩天崖";
	Building[39]="Bake/Static/39_凌霄城";
	Building[40]="Bake/Static/40_悦来客栈";
	Building[43]="Bake/Static/43_武当派";
	Building[44]="Bake/Static/44_蝴蝶谷";
	Building[45]="Bake/Static/45_程英居";
	Building[47]="Bake/Static/47_一灯居";
	Building[48]="Bake/Static/48_铁掌山";
	Building[49]="Bake/Static/49_药王庄";
	Building[50]="Bake/Static/50_阎基居";
	Building[52]="Bake/Static/52_燕子坞";
	Building[53]="Bake/Static/53_擂鼓山";
	Building[54]="Bake/Static/54_薛慕华居";
	Building[55]="Bake/Static/55_梅庄";
	Building[56]="Bake/Static/56_福威镖局";
	Building[57]="Bake/Static/57_华山派";
	Building[58]="Bake/Static/58_衡山派";
	Building[59]="Bake/Static/59_田伯光居";
	Building[60]="Bake/Static/60_龙门客栈";
	Building[61]="Bake/Static/61_高升客栈";
	Building[62]="Bake/Static/62_破庙";
	Building[63]="Bake/Static/63_天宁寺";
	Building[64]="Bake/Static/64_南贤居";
	Building[68]="Bake/Static/68_昆仑派";
	Building[69]="Bake/Static/69_白驼山";
	Building[70]="Bake/Static/70_小虾米居";
	Building[71]="Bake/Static/71_神龙教";
	Building[73]="Bake/Static/73_灵蛇岛";
	Building[74]="Bake/Static/74_侠客岛";
	Building[75]="Bake/Static/75_桃花岛";
	Building[76]="Bake/Static/76_霹雳堂";
	Building[77]="Bake/Static/77_万鳄岛";
	Building[78]="Bake/Static/78_渤泥岛";
	if mapid == 1000 then
		if	switch == 1 then
			for i, v in pairs(Building) do
				jyx2_ReplaceSceneObject("1000",v,"1");--显示建筑
			end;
		else
			for i, v in pairs(Building) do
				jyx2_ReplaceSceneObject("1000",v,"");--不显示建筑
			end;
		end;
	elseif not(Building[mapid] == nil) then
		if	switch == 1 then
			jyx2_ReplaceSceneObject("1000",Building[mapid],"1");--显示建筑
		else
			jyx2_ReplaceSceneObject("1000",Building[mapid],"");--不显示建筑
		end;
	end;
end;
--建筑开关结束

--大地图交互按钮开关开始
function BigMapTrigger(mapid,switch)
	BMTrigger={};
	BMTrigger[0]="胡斐居";
	BMTrigger[1]="河洛客栈";
	BMTrigger[2]="云鹤崖";
	BMTrigger[3]="有间客栈";
	BMTrigger[5]="闯王山洞";
	BMTrigger[6]="北丑居";
	BMTrigger[7]="神雕山洞";
	BMTrigger[8]="大轮寺";
	BMTrigger[9]="成昆居";
	BMTrigger[10]="蜘蛛山洞";
	BMTrigger[11]="光明顶";
	BMTrigger[12]="明教分舵";
	BMTrigger[15]="沙漠废墟";
	BMTrigger[16]="金轮寺";
	BMTrigger[17]="回族部落";
	BMTrigger[18]="古墓";
	BMTrigger[19]="重阳宫";
	BMTrigger[20]="百花谷";
	BMTrigger[21]="黑龙潭";
	BMTrigger[22]="绝情谷";
	BMTrigger[23]="洪七公居";
	BMTrigger[24]="苗人凤居";
	BMTrigger[25]="武道大会";
	BMTrigger[26]="黑木崖";
	BMTrigger[27]="嵩山派";
	BMTrigger[28]="少林寺";
	BMTrigger[29]="泰山派";
	BMTrigger[30]="平一指居";
	BMTrigger[31]="恒山派";
	BMTrigger[32]="海边小屋";
	BMTrigger[33]="峨嵋派";
	BMTrigger[34]="崆峒派";
	BMTrigger[35]="星宿海";
	BMTrigger[36]="青城派";
	BMTrigger[37]="五毒教";
	BMTrigger[38]="摩天崖";
	BMTrigger[39]="凌霄城";
	BMTrigger[40]="悦来客栈";
	BMTrigger[41]="神秘山洞";
	BMTrigger[42]="无量山洞";
	BMTrigger[43]="武当派";
	BMTrigger[44]="蝴蝶谷";
	BMTrigger[45]="程英居";
	BMTrigger[46]="金蛇山洞";
	BMTrigger[47]="一灯居";
	BMTrigger[48]="铁掌山";
	BMTrigger[49]="药王庄";
	BMTrigger[50]="阎基居";
	BMTrigger[51]="丐帮";
	BMTrigger[52]="燕子坞";
	BMTrigger[53]="擂鼓山";
	BMTrigger[54]="薛慕华居";
	BMTrigger[55]="梅庄";
	BMTrigger[56]="福威镖局";
	BMTrigger[57]="华山派";
	BMTrigger[58]="衡山派";
	BMTrigger[59]="田伯光居";
	BMTrigger[60]="龙门客栈";
	BMTrigger[61]="高升客栈";
	BMTrigger[62]="破庙";
	BMTrigger[63]="天宁寺";
	BMTrigger[64]="南贤居";
	BMTrigger[65]="唐诗山洞";
	BMTrigger[66]="冰蚕山洞";
	BMTrigger[67]="昆仑山洞";
	BMTrigger[68]="昆仑派";
	BMTrigger[69]="白驼山";
	BMTrigger[70]="小虾米居";
	BMTrigger[71]="神龙教";
	BMTrigger[72]="冰火岛";
	BMTrigger[73]="灵蛇岛";
	BMTrigger[74]="侠客岛";
	BMTrigger[75]="桃花岛";
	BMTrigger[76]="霹雳堂";
	BMTrigger[77]="万鳄岛";
	BMTrigger[78]="浡泥岛";
	BMTrigger[79]="鸳鸯山洞";
	BMTrigger[80]="绝情谷底";
	BMTrigger[81]="思过崖";
	BMTrigger[102]="香冢";
	if mapid == 1000 then
		if	switch == 1 then
			for i, v in pairs(BMTrigger) do
				jyx2_ReplaceSceneObject("1000","Triggers/"..v,"1");--显示交互按钮
			end;
		else
			for i, v in pairs(BMTrigger) do
				jyx2_ReplaceSceneObject("1000","Triggers/"..v,"");--不显示交互按钮
			end;
		end;
	elseif not(BMTrigger[mapid] == nil) then
		if	switch == 1 then
			jyx2_ReplaceSceneObject("1000","Triggers/"..BMTrigger[mapid],"1");--显示交互按钮
		else
			jyx2_ReplaceSceneObject("1000","Triggers/"..BMTrigger[mapid],"");--不显示交互按钮
		end;
	end;
end;
--大地图交互按钮开关结束

--场景名称显示开关开始
function ShowLocationName(mapid,switch)
	LocationName={};
	LocationName[0]="胡斐居";
	LocationName[1]="河洛客栈";
	LocationName[2]="云鹤崖";
	LocationName[3]="有间客栈";
	LocationName[5]="闯王山洞";
	LocationName[6]="北丑居";
	LocationName[7]="神雕山洞";
	LocationName[8]="大轮寺";
	LocationName[9]="成昆居";
	LocationName[10]="蜘蛛山洞";
	LocationName[11]="光明顶";
	LocationName[12]="明教分舵";
	LocationName[15]="沙漠废墟";
	LocationName[16]="金轮寺";
	LocationName[17]="回族部落";
	LocationName[18]="古墓";
	LocationName[19]="重阳宫";
	LocationName[20]="百花谷";
	LocationName[21]="黑龙潭";
	LocationName[22]="绝情谷";
	LocationName[23]="洪七公居";
	LocationName[24]="苗人凤居";
	LocationName[25]="武道大会";
	LocationName[26]="黑木崖";
	LocationName[27]="嵩山派";
	LocationName[28]="少林寺";
	LocationName[29]="泰山派";
	LocationName[30]="平一指居";
	LocationName[31]="恒山派";
	LocationName[32]="海边小屋";
	LocationName[33]="峨嵋派";
	LocationName[34]="崆峒派";
	LocationName[35]="星宿海";
	LocationName[36]="青城派";
	LocationName[37]="五毒教";
	LocationName[38]="摩天崖";
	LocationName[39]="凌霄城";
	LocationName[40]="悦来客栈";
	LocationName[41]="神秘山洞";
	LocationName[42]="无量山洞";
	LocationName[43]="武当派";
	LocationName[44]="蝴蝶谷";
	LocationName[45]="程英居";
	LocationName[46]="金蛇山洞";
	LocationName[47]="一灯居";
	LocationName[48]="铁掌山";
	LocationName[49]="药王庄";
	LocationName[50]="阎基居";
	LocationName[51]="丐帮";
	LocationName[52]="燕子坞";
	LocationName[53]="擂鼓山";
	LocationName[54]="薛慕华居";
	LocationName[55]="梅庄";
	LocationName[56]="福威镖局";
	LocationName[57]="华山派";
	LocationName[58]="衡山派";
	LocationName[59]="田伯光居";
	LocationName[60]="龙门客栈";
	LocationName[61]="高升客栈";
	LocationName[62]="破庙";
	LocationName[63]="天宁寺";
	LocationName[64]="南贤居";
	LocationName[65]="唐诗山洞";
	LocationName[66]="冰蚕山洞";
	LocationName[67]="昆仑山洞";
	LocationName[68]="昆仑派";
	LocationName[69]="白驼山";
	LocationName[70]="小虾米居";
	LocationName[71]="神龙教";
	LocationName[72]="冰火岛";
	LocationName[73]="灵蛇岛";
	LocationName[74]="侠客岛";
	LocationName[75]="桃花岛";
	LocationName[76]="霹雳堂";
	LocationName[77]="万鳄岛";
	LocationName[78]="浡泥岛";
	LocationName[79]="鸳鸯山洞";
	LocationName[80]="绝情谷底";
	LocationName[81]="思过崖";
	LocationName[102]="香冢";
	if mapid == 1000 then
		if	switch == 1 then
			SetFlag("BanLocationName.All",0)--显示所有场景名称
		else
			SetFlag("BanLocationName.All",1);--不显示场景名称
		end;
	elseif not(LocationName[mapid] == nil) then
		if	switch == 1 then
			SetFlag("ShowLocationName."..LocationName[mapid],1)--显示场景名称
		else
			SetFlag("BanLocationName."..LocationName[mapid],1);--不显示场景名称
		end;
	end;
end;
--场景名称显示开关结束

--大地图场景开关开始
function BigMapSwitch(mapid,switch)
	--MapLight(mapid,switch);--关闭光柱
	BigMapTrigger(mapid,switch);--关闭交互按钮
	ShowLocationName(mapid,switch);--大地图不显示地图名
	ShowBuilding(mapid,switch);--不显示建筑
end
--大地图场景开关结束

--青城四秀开始
function qcsxName(n,m)
	qcsxname = {};
	qcsxname[0] = "侯人英";
	qcsxname[1] = "罗人杰";
	qcsxname[2] = "于人豪";
	qcsxname[3] = "侯人雄";
	callqcsxname = {};
	callqcsxname[0] = "侯兄";
	callqcsxname[1] = "罗兄";
	callqcsxname[2] = "于兄";
	callqcsxname[3] = "侯兄";
	if n == 1 and m == 0 then
		return qcsxname[0];
	elseif n == 1 and m == 1 then
		return callqcsxname[0];
	elseif n == 2 and m == 0 then
		return qcsxname[1];
	elseif n == 2 and m == 1 then
		return callqcsxname[1];	
	elseif n == 3 and m == 0 then
		return qcsxname[2];
	elseif n == 3 and m == 1 then
		return callqcsxname[2];	
	elseif n == 4 and m == 0 then
		return qcsxname[3];
	elseif n == 4 and m == 1 then
		return callqcsxname[3];
	else
		return "";
	end;
end
--青城四秀结束

--秘笈数组开始
function PaperScroll(id,col)
Scroll={};
Scroll[39]={80,"紫霞秘籍"};
Scroll[40]={560,"小无相功"};
Scroll[41]={521,"十八泥偶"};
Scroll[42]={200,"神照经"};
Scroll[43]={1020,"易筋经"};
Scroll[44]={700,"洗髓经"};
Scroll[45]={200,"梯云纵心法"};
Scroll[46]={250,"神行百变"};
Scroll[47]={310,"凌波微步"};
Scroll[48]={70,"子午针灸经"};
Scroll[49]={95,"华陀内昭图"};
Scroll[50]={150,"胡青牛医书"};
Scroll[51]={90,"五毒秘传"};
Scroll[52]={140,"毒经"};
Scroll[53]={180,"药王神篇"};
Scroll[54]={90,"铁掌拳谱"};
Scroll[55]={130,"七伤拳谱"};
Scroll[56]={250,"天山六阳掌"};
Scroll[57]={390,"玄冥神掌"};
Scroll[58]={200,"太极拳经"};
Scroll[59]={500,"龙象般若功"};
Scroll[60]={70,"太玄经"};
Scroll[61]={510,"黯然销魂掌"};
Scroll[62]={530,"降龙十八掌"};
Scroll[63]={180,"北冥神功"};
Scroll[64]={170,"吸星大法"};
Scroll[65]={178,"神木王鼎"};
Scroll[66]={120,"六脉神剑谱"};
Scroll[67]={50,"松风剑谱"};
Scroll[68]={70,"泰山十八盘"};
Scroll[69]={70,"回峰落雁剑法"};
Scroll[70]={230,"七星剑谱"};
Scroll[71]={190,"两仪剑法"};
Scroll[72]={180,"金蛇秘籍"};
Scroll[73]={160,"玉女素心剑法"};
Scroll[74]={160,"苗家剑法"};
Scroll[75]={190,"太极剑法"};
Scroll[76]={290,"达摩剑谱"};
Scroll[77]={380,"玄铁剑法"};
Scroll[78]={170,"辟邪剑谱"};
Scroll[79]={220,"独孤九剑"};
Scroll[80]={60,"血刀经"};
Scroll[81]={90,"火焰刀法"};
Scroll[82]={160,"反两仪刀法"};
Scroll[83]={150,"狂风刀法"};
Scroll[84]={120,"胡家刀法"};
Scroll[85]={200,"霹雳刀法"};
Scroll[86]={80,"毒龙鞭法"};
Scroll[87]={100,"黄沙万里鞭法"};
Scroll[88]={50,"满天花雨"};
Scroll[89]={140,"霹雳秘籍"};
Scroll[90]={105,"含沙射影"};
Scroll[91]={5,"左右互搏之术"};
Scroll[92]={275,"乾坤大挪移"};
Scroll[93]={500,"葵花宝典"};
Scroll[94]={570,"九阴真经"};
Scroll[95]={350,"九阳真经"};
Scroll[129]={666,"神仙美女图"};
Scroll[183]={999,"带头大哥书信"};
Scroll[185]={1200,"林震南遗言"};
Scroll[193]={12,"金盆洗手请帖"};
	if col==0 then
		if Scroll[id][1] == nil then
			return "";
		else
			return Scroll[id][1];
		end
	elseif col==1 then
		if Scroll[id][2] == nil then
			return "";
		else
			return Scroll[id][2];
		end
	end
end
--秘笈数组结束

--地图清理开始
function CleanMap()
	if jyx2_CheckEventCount(4,995,2) == 0 and jyx2_CheckEventCount(4,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(4,995,0) > 360 then--阎基击杀（无痕）
		BigMapSwitch(50,0);--大地图场景开关
		Add3EventNum(4,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(6,995,2) == 0 and jyx2_CheckEventCount(6,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(6,995,0) > 0 then--灭绝击杀（收尸）
		jyx2_ReplaceSceneObject("33","NPC/miejueshitai","");
		ModifyEvent(33, 2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
		Add3EventNum(6,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(18,995,2) == 0 and jyx2_CheckEventCount(18,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(18,995,0) > 360 then--成昆击杀（无痕）
		BigMapSwitch(9,0);--大地图场景开关
		Add3EventNum(18,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(24,995,2) == 0 and jyx2_CheckEventCount(24,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(24,995,0) > 720 then--余沧海击杀（无痕）
		BigMapSwitch(36,0);--大地图场景开关
		Add3EventNum(24,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(28,995,2) == 0 and jyx2_CheckEventCount(28,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(28,995,0) > 360 then--平一指击杀（无痕）
		BigMapSwitch(30,0);--大地图场景开关
		Add3EventNum(28,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(29,995,2) == 0 and jyx2_CheckEventCount(29,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(29,995,0) > 360 then--田伯光击杀（无痕）
		BigMapSwitch(59,0);--大地图场景开关
		Add3EventNum(29,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(46,995,2) == 0 and jyx2_CheckEventCount(46,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(46,995,0) > 0 then--丁春秋击杀（收尸）
	ModifyEvent(35, 1, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
		jyx2_ReplaceSceneObject("35","NPC/dingchunqiu","");
		Add3EventNum(46,995,0,0,1);--已处理
	end;
	if jyx2_CheckEventCount(65,995,2) == 0 and jyx2_CheckEventCount(65,995,0) > 0 and Calendar(2)-jyx2_CheckEventCount(65,995,0) > 360 then--一灯击杀（无痕）
		BigMapSwitch(47,0);--大地图场景开关
		Add3EventNum(65,995,0,0,1);--已处理
	end;
end
--地图清理结束