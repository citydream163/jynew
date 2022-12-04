Talkplus(2515);--96, "施主若要进入寺内，还请将兵刃留下，待离寺时再归还予你。"
if AskBattle() == true then goto label0 end;
Talkplus(2516);--0, "好，好，我下回再来。"
do return end;
::label0::
Talkplus(2517);--0, "抱歉，恕难从命。"
if TryBattle(79) == true then goto label1 end;
LightScence();
Talkplus(2518);--96, "请施主下山。"
Talkplus(2519);--0, "可是我还是想进去看看，对不住了。"
do return end;
::label1::
ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-3
ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-4
ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-5
ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-6
jyx2_ReplaceSceneObject("", "NPC/少林弟子3", "");
jyx2_ReplaceSceneObject("", "NPC/少林弟子4", "");
jyx2_ReplaceSceneObject("", "NPC/少林弟子5", "");
jyx2_ReplaceSceneObject("", "NPC/少林弟子6", "");
LightScence();
AddRepute(1);
do return end;