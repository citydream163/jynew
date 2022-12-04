local rand = math.random(1,6);
PlayWave(101);--stonedoor.wav
--DarkScence();
if rand == 1 then goto label1
elseif rand == 2 then goto label2
elseif rand == 3 then goto label3
elseif rand == 4 then goto label4
elseif rand == 5 then goto label5
else
	jyx2_ReplaceSceneObject("", "Dynamic/Wall_3/1_1", ""); 
	jyx2_ReplaceSceneObject("", "Dynamic/Wall_3/1_2", "1"); 
	goto label7
end;
do return end;
::label1::
jyx2_ReplaceSceneObject("", "Dynamic/Wall_1/1_1", "1"); 
jyx2_ReplaceSceneObject("", "Dynamic/Wall_1/1_2", ""); 
goto label7
do return end;
::label2::
jyx2_ReplaceSceneObject("", "Dynamic/Wall_1/1_1", ""); 
jyx2_ReplaceSceneObject("", "Dynamic/Wall_1/1_2", "1"); 
goto label7
do return end;
::label3::
jyx2_ReplaceSceneObject("", "Dynamic/Wall_2/1_1", "1"); 
jyx2_ReplaceSceneObject("", "Dynamic/Wall_2/1_2", ""); 
goto label7
do return end;
::label4::
jyx2_ReplaceSceneObject("", "Dynamic/Wall_2/1_1", ""); 
jyx2_ReplaceSceneObject("", "Dynamic/Wall_2/1_2", "1"); 
goto label7
do return end;
::label5::
jyx2_ReplaceSceneObject("", "Dynamic/Wall_3/1_1", "1"); 
jyx2_ReplaceSceneObject("", "Dynamic/Wall_3/1_2", ""); 
goto label7
do return end;
::label7::
--LightScence();
Talkplus(4020);--0, "好像触发机关了，去看看。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;