Talk(0, "这里有张床。", "", 1);
if AskRest() == true then goto  label0 end;
Talk(0, "荒山野岭比较危险。", "", 1);
    do return end;
::label0::
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 50 then goto label1 end;
    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(0, "还是赶快离开这里吧。", "", 1);
do return end;
::label1::
if JudgeEthics(0, 70, 100) == true then goto label2 end;
if JudgeEthics(0, 0, 29) == true then goto label4 end;
DarkScence();
SetRoleFace(1);
LightScence();
Talk(0, "还是不要在这里休息的好。", "", 1);
do return end;
::label2::
if JudgeFemaleInTeam() == true then goto label3 end;
DarkScence();
SetRoleFace(1);
LightScence();
Talk(71, "这里可不是随便休息的地方。", "", 0);--洪教主
    if TryBattle(232) == true then goto label6 end;--云鹤崖战洪教主2700
	Dead();
    do return end;
::label3::
DarkScence();
SetRoleFace(1);
LightScence();
Talk(27, "这里不是你休息的地方。", "", 0);--东方不败
    if TryBattle(233) == true then goto label6 end;--云鹤崖战东方不败5000
	Dead();
    do return end;
::label4::
DarkScence();
SetOneMagic(14, 0, 8, 900);
AddHp(14, 200);
SetRoleFace(1);
LightScence();
Talk(14, "小子轻功不错。", "", 0);--韦一笑
    if TryBattle(234) == true then goto label5 end;--云鹤崖战韦一笑1500
	Dead();
    do return end;
::label5::	
	AddHp(14, -200);
::label6::
	Talk(0, "此地不宜久留。", "", 1);
do return end;