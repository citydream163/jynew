-- 这里是热修复C#逻辑代码的地方
 -- local util = require 'xlua.util';

--这里是展示给大家如何通过lua的热更新进行函数逻辑重写

-- util.hotfix_ex(CS.Jyx2.RoleInstance, "InitData", function(self)
    -- print("lua hot fix called!") --打印调试信息
    -- self:InitData()  --先执行原函数++++

    --再补执行mod中的附加逻辑

  --      self.MaxHp = self.MaxHp + 100


-- end)

-- util.hotfix_ex(CS.Jyx2.LevelMaster, "OnManuelSave", function(self)
	-- print("lua hot fix called!") --打印调试信息
	-- local curMap = GetCurrentGameMapid();
	-- if (curMap == nil or curMap ~= GameConst("WORLD_MAP_ID")) then
		-- ShowMessage("本场景无法保存，请到大地图保存游戏。");
	-- else
		-- self:OnManuelSave()  --执行原函数
	-- end
-- end)

-- util.hotfix_ex(CS.Jyx2.RoleInstance, "Limit", function(self)
	-- print("lua hot fix called!") --打印调试信息
	-- if string.lower(CurrentModId) == "plus" then
		-- runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(roleid);
		-- Limit();
	-- else
		-- self:Limit();  --执行原函数
	-- end
-- end)

-- util.hotfix_ex(CS.Jyx2.RoleInstance, "checkUp", function(self, value, limit, max_inc)
	-- print("lua hot fix called!") --打印调试信息
	-- --self:checkUp();  --先执行原函数++++

	-- --再补执行mod中的附加逻辑
	-- if (value >= limit) then
		-- value = value + CS.UnityEngine.Random.Range(0, max_inc)
	-- else
		-- value = value + CS.UnityEngine.Random.Range(0, 2)
	-- end
	-- return value
-- end)
-- util.hotfix_ex(CS.Jyx2.RoleInstance, "CanLevelUp", function(self)
	-- print("lua hot fix called!") --打印调试信息
	-- if	string.lower(CurrentModId) == "plus" then
		-- self.GameConst.MAX_ROLE_LEVEL = GameConst("MAX_ROLE_LEVEL")[moRenshuzhi];
	-- end
	-- self:CanLevelUp();  --先执行原函数++++
-- end)
-- util.hotfix_ex(CS.Jyx2.BattleManager, "OnBattleEnd", function(self, result)
	-- self:OnBattleEnd()  --先执行原函数++++
	-- print("lua hot fix called!") --打印调试信息
	-- if (result == CS.Jyx2.BattleResult.Lose) then

	-- end

-- end)