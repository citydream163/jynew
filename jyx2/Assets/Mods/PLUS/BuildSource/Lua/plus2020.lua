Talkplus(3914);--0, "这里有张床。"
if AskRest() == true then goto  label0 end;
Talkplus(3915);--0, "荒山野岭比较危险。"
do return end;
::label0::
if math.random(1,100) > 50 then goto label1 end;
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3916);--0, "还是赶快离开这里吧。"
do return end;
::label1::
if JudgeEthics(0, 70, 100) == true then
	goto label2
elseif JudgeEthics(0, 0, 29) == true then
	goto label4
end;
DarkScence();
SetRoleFace(1);
LightScence();
Talkplus(3917);--0, "还是不要在这里休息的好。"
do return end;
::label2::
if JudgeFemaleInTeam() == true then goto label3 end;
DarkScence();
SetRoleFace(1);
LightScence();
Talkplus(3918);--71, "这里可不是随便休息的地方。"--洪教主
if TryBattle(232) == true then goto label6 end;--云鹤崖战洪教主2700
Dead();
do return end;
::label3::
DarkScence();
SetRoleFace(1);
LightScence();
Talkplus(3919);--30, "这里不是你休息的地方。"--风清扬
if TryBattle(240) == true then goto label6 end;--云鹤崖战风清扬4800
Dead();
do return end;
::label4::
DarkScence();
SetOneMagic(14, 0, 8, 900);
AddHpWithoutHint(14, 200);
SetRoleFace(1);
LightScence();
Talkplus(3920);--14, "小子轻功不错。"--韦一笑
if TryBattle(234) == true then goto label5 end;--云鹤崖战韦一笑1500
Dead();
do return end;
::label5::	
AddHpWithoutHint(14, -200);
::label6::
Talkplus(3921);--0, "此地不宜久留。"
do return end;