Talkplus(1425);--29, "怎么？兄台回心转意了吗？"
if AskJoin() == false then goto label0 end;
Talkplus(1426);--0, "原来兄台有此雅好，与在下不谋而合。不妨咱俩一起结伴，在这江湖中好好的爽他一爽。"
if TeamIsFull() == false then goto label1 end;
Talkplus(1427);--29, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(1428);--29, "好！你这兄弟一点也不做作。不像其他假正经的家伙，只会以名门正派自居。要知“做那档事”是人心本能的欲望，何必刻意去掩饰呢？我喜欢你，我们就一起去游戏人间。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/田伯光", "");  
SetScenceMap(-2, 1, 17, 15, 2674);
LightScence();
Join(29);
AddEthics(-6);
do return end;
::label0::
if AskBattle() == true then goto label2 end;
Talkplus(1429);--0, "兄台自己玩好了，小弟没这份兴致。"
Talkplus(1430);--29, "少装了，难不成你有“断袖之癖”。"
ModifyEvent(-2, -2, -2, -2, 306, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label2::
Talkplus(1431);--0, "什么！你这采花淫贼，尽做这些伤天害理的勾当，今天让我撞见，算你倒霉。小侠我要为江湖除害。"
if TryBattle(53) == true then goto label3 end;
Dead();
do return end;
::label3::
LightScence();
Talkplus(1432);--0, "今天先饶你不死，希望你改过向善。否则日后再叫我撞见，就“去你的势”，让你去做太监。"
ModifyEvent(-2, -2, -2, -2, 305, -1, -1, -2, -2, -2, -2, -2, -2);
AddRepute(1);
do return end;