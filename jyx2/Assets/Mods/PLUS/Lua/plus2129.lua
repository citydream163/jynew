math.randomseed(tostring(os.time()):reverse():sub(1, 7));
local rand = math.random(1,2)
PlayWave(101);--stonedoor.wav
--DarkScence();
if rand == 1 then goto label1
jyx2_ReplaceSceneObject("","FX/ExitLight2","1");
jyx2_ReplaceSceneObject("","Triggers/Leave2","1");
jyx2_ReplaceSceneObject("","FX/ExitLight","");
jyx2_ReplaceSceneObject("","Triggers/Leave","");
goto label7
end;
do return end;
::label1::
jyx2_ReplaceSceneObject("","FX/ExitLight2","");
jyx2_ReplaceSceneObject("","Triggers/Leave2","");
jyx2_ReplaceSceneObject("","FX/ExitLight","1");
jyx2_ReplaceSceneObject("","Triggers/Leave","1");
goto label7
do return end;
::label7::
--LightScence();
Talk(0, "好像触发机关了，去看看。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;