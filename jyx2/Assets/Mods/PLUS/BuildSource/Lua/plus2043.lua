local radnum = math.random(1,100);
if radnum < 34 then goto label0
elseif radnum > 66 then goto label1
else
	jyx2_ReplaceSceneObject("", "Dynamic/Leave2", "1"); --通迷宫2
	jyx2_ReplaceSceneObject("", "Dynamic/Leave3", ""); --关迷宫3
	jyx2_ReplaceSceneObject("", "Dynamic/Leave4", ""); --关迷宫4
end;
do return end;
::label0::
jyx2_ReplaceSceneObject("", "Dynamic/Leave2", ""); --关迷宫2
jyx2_ReplaceSceneObject("", "Dynamic/Leave3", "1"); --通迷宫3
jyx2_ReplaceSceneObject("", "Dynamic/Leave4", ""); --关迷宫4
do return end;
::label1::
jyx2_ReplaceSceneObject("", "Dynamic/Leave2", ""); --关迷宫2
jyx2_ReplaceSceneObject("", "Dynamic/Leave3", ""); --关迷宫3
jyx2_ReplaceSceneObject("", "Dynamic/Leave4", "1"); --通迷宫4
do return end;