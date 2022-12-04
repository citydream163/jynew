Talkplus(2383);--96, "施主若要进入寺内，还请将兵刃留下，待离寺时再归还予你。"
Talkplus(2384);--0, "抱歉，恕难从命。"
if TryBattle(80) == true then goto label0 end;
LightScence();
Talkplus(2385);--96, "请施主下山。"
Talkplus(2386);--0, "可是我还是想进去看看，对不住了。"
do return end;
::label0::
ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-7
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-8
ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-9
jyx2_ReplaceSceneObject("", "NPC/少林弟子7", "");
jyx2_ReplaceSceneObject("", "NPC/少林弟子8", "");
jyx2_ReplaceSceneObject("", "NPC/少林弟子9", "");
LightScence();
AddRepute(2);
do return end;