ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件,更新为正常睡觉
if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    Talk(0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！", "", 1);
	DarkScence();
	SetRoleFace(1);
	LightScence();
	Add3EventNum(70,333,1,0,0);--小白计数器
	PlayWave(104);--狗旺旺
	jyx2_Wait(0.5);
	Talk(0, "什么声音？");
    if TryBattle(333) == true then goto label1 end;
		Talk(0, "哎呀，好痛哦！");
		do return end;
::label1::
AddHpWithoutHint(0,math.random(10,30));
jyx2_ReplaceSceneObject("","NPC/小白","1");--显示小白
ModifyEvent(-2, 18, 0, 0, -1, -1, 2089, -1, -1, -1, -2, -2, -2);
LightScence();
jyx2_WalkFromTo(-1,3);
do return end;
