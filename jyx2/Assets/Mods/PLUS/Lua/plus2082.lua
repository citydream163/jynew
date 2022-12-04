Talkplus(4110);--0, "这里好像有人睡过。"
if InTeam(58) == true then goto label0 end;
do return end;
::label0::
Talkplus(4111);--58, "我以前经常在这里睡呀。我睡给你看。"
Leave(58);
ModifyEvent(-2, 1, 1, 1, 2083, -1, -1, 1, 1, 1, 0, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/杨过", "1");--杨过离队
DarkScence();
LightScence();
Talkplus(4112);--0, "一眨眼人怎么不见了？"
if InTeam(59) == true then goto label2 end;
do return end;
::label2::
Talkplus(4113);--59, "过儿还是小孩子脾性。"
do return end;