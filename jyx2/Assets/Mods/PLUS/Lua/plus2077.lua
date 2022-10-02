if HaveItem(201) == true then goto label0 end;
    do return end;
::label0::
Talk(0,"快拿出<color=Yellow>程英</color>给我的地图看看。","", 1);
AddItemWithoutHint(201, -1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
jyx2_WalkFromTo(-1,math.random(1,5));
Talk(0,"怪不得<color=Yellow>程英</color>说只能在<color=Red>黑龙潭</color>才能打开呢，原来一打开就坏了。","", 1);
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;