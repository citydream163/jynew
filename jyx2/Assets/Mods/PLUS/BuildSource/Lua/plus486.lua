PlayWave(21);
Talkplus(2243);--0, "哇！这是什么怪物。"
Talkplus(2244);--53, "难道…………难道竟是传说中的万毒之王“莽牯朱蛤”，小心点！"
if TryBattle(78) == true then goto label0 end;
Dead();
do return end;
::label0::
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/蟒牯朱蛤", "");
ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
Talkplus(2245);--0, "真是好险，差点就变成了这“癞蛤蟆”的晚餐了。这会换我来顿“三杯田鸡”。"
AddItem(38, 1);
AddRepute(3);
do return end;