Talkplus(883);--0,"今天嵩山顶上似乎很热闹？"
Talkplus(884);--84,"今日是我五岳剑派并派的大日子。闲杂人等，还请离去。"
Talkplus(885);--0,"这样大的盛会，怎能少得了大爷我。快让让。"
Talkplus(886);--84,"阁下再不离去，休怪我们不客气了。"
Talkplus(887);--0,"我正有此意。"
if TryBattle(29) == true then goto label0 end;
Dead();
do return end;
::label0::
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("","NPC/嵩山弟子1","");
ModifyEvent(-2, 2, -2, -2, 205, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 3, -2, -2, 205, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
AddRepute(2);
SetFlag("ShowLocationName.嵩山派",1);--大地图显示当前地图名
do return end;