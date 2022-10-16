Talk(0, "这里好像有人睡过。", "", 1);
if InTeam(58) == true then goto label0 end;
do return end;
::label0::
    Talk(58, "我以前经常在这里睡呀。我睡给你看。", "", 0);
	Leave(58);
ModifyEvent(-2, 1, 1, 1, 2083, -1, -1, 1, 1, 1, 0, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/杨过", "1");--杨过离队
    DarkScence();
    LightScence();
Talk(0, "一眨眼人怎么不见了？", "", 1);	
	if InTeam(59) == true then goto label2 end;
do return end;
	::label2::
	Talk(59, "过儿还是小孩子脾性。", "", 0);
do return end;

