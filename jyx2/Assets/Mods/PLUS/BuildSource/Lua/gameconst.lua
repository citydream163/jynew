math.randomseed(tostring(os.time()):reverse():sub(1, 7));--随机数种子
difficulty = CS.GameSettingManager.settings[CS.GameSettingManager.Catalog.Difficulty];--当前难度
if (difficulty == nil) then
	difficulty = 1;
end
moRenshuzhi = difficulty + 1;

CurrentModId = CS.Jyx2.RuntimeEnvSetup.CurrentModId;--获取当前模组
if (CurrentModId == nil) then
	CurrentModId = "plus";
end
function ToolsLimit(a,b,c)
	if a < b then
		a = b;
	end
	if a > c then
		a = c;
	end
	return a;
end
function checkUp(value,limit,max_inc)
	if (value >= limit) then
		value = value + math.random(0, max_inc);
	else
		value = value + math.random(0, 2);
	end
	return value;
end
function GameConst(a)
	gameconst={
	{"MAX_ROLE_LEVEL", {30,45,60}},--角色最大等级
	{"MAX_ROLE_TILI", 100},--角色最大体力值
	{"MAX_POISON", 100},--最大中毒
	{"MAX_USE_POISON", 100},--最大用毒
	{"MAX_HEAL", 100},--最大医疗
	{"MAX_DEPOISON", 100},--最大解毒
	{"MAX_ANTIPOISON", 100},--最大抗毒
	{"MAX_HURT", 100},--最大受伤程度
	{"GAME_START_MUSIC_ID", 16},--游戏开场音乐
	{"MAX_ROLE_WEAPON_ATTR", 100},--最大武器熟练度
	{"MAX_ROLE_HP", {999,3999,9999}},--生命上限
	{"MAX_ROLE_MP", {999,3999,9999}},--内力上限
	{"MAX_ROLE_ATTACK", {100,150,200}},--最大攻击
	{"MAX_ROLE_DEFENCE", {100,150,200}},--最大防御
	{"MAX_ROLE_QINGGONG", 100},--最大轻功
	{"MAX_ROLE_ATK_POISON", 100},--最大攻击带毒
	{"MAX_ROLE_SHENGWANG", 200},--最大声望
	{"MAX_ROLE_PINDE", 100},--最大品德值
	{"MAX_ROLE_ZIZHI", 100},--最大资质
	{"MAX_WUGONG_LEVEL", 10},--最大技能等级
	{"MONEY_ID", 174},--银两道具ID
	{"MAX_TEAMCOUNT", 10},--最大队伍人数
	{"MAX_SKILL_COUNT", 10},--角色最大技能数量
	{"MAX_ROLE_ATTRIBUTE", 100},--角色最大属性值
	{"MAX_BATTLE_TEAMMATE_COUNT", 6},--最大战斗上场人数
	{"WORLD_MAP_ID", 1000},--世界地图ID
	{"LEVEL_UP_EXP", {50,150,300,500,750,1050,1400,1800,2250,2750,3850,5050,6350,7750,9250,10850,12550,14350,16750,19250,22000,24900,28150,31750,35500,39400,43450,47650,52000,60000,68250,76750,85500,94500,105000,117000,130000,145000,163000,183000,205000,230000,258000,288000,320000,355000,393000,433000,478000,528000,588000,658000,738000,838000,958000,1103000,1268000,1448000,1648000,1888000}},--升级经验，英文逗号分割
	{"PLAYER_MOVE_SPEED", 8},--主角移动速度
	{"PLAYER_MOVE_SPEED_WORLD_MAP", 25}--大地图移动速度
};
	local tnum = 0;
	for i = 1, #gameconst do
		if (gameconst[i][1] == a) then
			tnum = gameconst[i][2];
		end
	end
	return tnum;
end
-- function Limit(attackTime, defenceTime, qinggongTime)
		-- local HpLimit = GameConst("MAX_ROLE_HP")[moRenshuzhi];
		-- local MpLimit = GameConst("MAX_ROLE_MP")[moRenshuzhi];
		-- runtime.Exp = ToolsLimit(runtime.Exp, 0, GameConst("MAX_EXP"));
		-- runtime.ExpForItem = ToolsLimit(runtime.ExpForItem, 0, GameConst("MAX_EXP"));
		-- runtime.ExpForMakeItem = ToolsLimit(runtime.ExpForMakeItem, 0, GameConst("MAX_EXP"));
		-- runtime.Poison = ToolsLimit(runtime.Poison, 0, GameConst("MAX_POISON"));
		-- runtime.MaxHp = ToolsLimit(runtime.MaxHp, 0, HpLimit);
		-- runtime.MaxMp = ToolsLimit(runtime.MaxMp, 0, MpLimit);
		-- runtime.Hp = ToolsLimit(runtime.Hp, 0, runtime.MaxHp);
		-- runtime.Mp = ToolsLimit(runtime.Mp, 0, runtime.MaxMp);
		-- runtime.Tili = ToolsLimit(runtime.Tili, 0, GameConst("MAX_ROLE_TILI"));

		-- local equipAttack = CS.Jyx2.RoleInstance.GetWeaponProperty("Attack") + CS.Jyx2.RoleInstance.GetArmorProperty("Attack");
		-- local equipDefence = CS.Jyx2.RoleInstance.GetWeaponProperty("Defence") + CS.Jyx2.RoleInstance.GetArmorProperty("Defence");
		-- local equipQinggong = CS.Jyx2.RoleInstance.GetWeaponProperty("Qinggong") + CS.Jyx2.RoleInstance.GetArmorProperty("Qinggong");
		-- local ATTACKLimit = GameConst("MAX_ROLE_ATTACK")[moRenshuzhi];
		-- local DEFENCELimit = GameConst("MAX_ROLE_DEFENCE")[moRenshuzhi];
		-- runtime.Attack = ToolsLimit(runtime.Attack, 0, ATTACKLimit + equipAttack * attackTime);
		-- runtime.Defence = ToolsLimit(runtime.Defence, 0, DEFENCELimit + equipDefence * defenceTime);
		-- runtime.Qinggong = ToolsLimit(runtime.Qinggong, 0, GameConst("MAX_ROLE_QINGGONG") + equipQinggong * qinggongTime);
		
		-- runtime.UsePoison = ToolsLimit(runtime.UsePoison, 0, GameConst("MAX_USE_POISON"));
		-- runtime.DePoison = ToolsLimit(runtime.DePoison, 0, GameConst("MAX_DEPOISON"));
		-- runtime.Heal = ToolsLimit(runtime.Heal, 0, GameConst("MAX_HEAL"));
		-- runtime.AntiPoison = ToolsLimit(runtime.AntiPoison, 0, GameConst("MAX_ANTIPOISON"));

		-- runtime.Quanzhang = ToolsLimit(runtime.Quanzhang, 0, GameConst("MAX_ROLE_WEAPON_ATTR"));
		-- runtime.Yujian = ToolsLimit(runtime.Yujian, 0, GameConst("MAX_ROLE_WEAPON_ATTR"));
		-- runtime.Shuadao = ToolsLimit(runtime.Shuadao, 0, GameConst("MAX_ROLE_WEAPON_ATTR"));
		-- runtime.Qimen = ToolsLimit(runtime.Qimen, 0, GameConst("MAX_ROLE_WEAPON_ATTR"));
		-- runtime.Anqi =ToolsLimit(runtime.Anqi, 0, GameConst("MAX_ROLE_WEAPON_ATTR"));

		-- runtime.IQ = ToolsLimit(runtime.IQ, 0, GameConst("MAX_ROLE_ZIZHI"));
		-- runtime.Pinde = ToolsLimit(runtime.Pinde, 0, GameConst("MAX_ROLE_PINDE"));
		-- runtime.Shengwang = ToolsLimit(runtime.Shengwang, 0, GameConst("MAX_ROLE_SHENGWANG"));
		-- runtime.AttackPoison = ToolsLimit(runtime.AttackPoison, 0, GameConst("MAX_ROLE_ATK_POISON"));
		-- runtime.Hurt = ToolsLimit(runtime.Hurt, 0, GameConst("MAX_HURT"));

		-- for runtime.wugong,value in pairs(runtime.Wugongs) do
			-- value.Level = ToolsLimit(value.Level, 0, GameConst("MAX_WUGONG_LEVEL"));
		-- end

-- end
LuaFilePatten=CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.LuaFilePatten;--获取lua前缀原始设定
ModRootDir=CS.Jyx2.RuntimeEnvSetup.CurrentModConfig.ModRootDir;--获取模组运行目录

tempTeamarr = {0,1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
Exp = { 50,150,300,500,750,1050,1400,1800,2250,2750,3850,5050,6350,7750,9250,10850,12550,14350,16750,19250,22000,24900,28150,31750,35500,39400,43450,47650,52000,60000,68250,76750,85500,94500,105000,117000,130000,145000,163000,183000,205000,230000,258000,288000,320000,355000,393000,433000,478000,528000,588000,658000,738000,838000,958000,1103000,1268000,1448000,1648000,1888000 };--升级所需经验

Innid = {1,3,40,60,61};--客栈编号
InnId = {};
InnId[1] = {1, "河洛客栈",{8,7,5,4}};
InnId[2] = {3, "有间客栈",{8,5,3,4}};
InnId[3] = {40, "悦来客栈",{7,5,2,3}};
InnId[4] = {60, "龙门客栈",{5,3,2,1}};
InnId[5] = {61, "高升客栈",{4,4,3,1}};