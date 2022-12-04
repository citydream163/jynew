if HaveItem(201) == true then goto label0 end;
    do return end;
::label0::
Talkplus(4098);--0,"快拿出程姑娘给我的地图看看。"
AddItemWithoutHint(201, -1);
jyx2_WalkFromTo(-1,math.random(1,5));
Talkplus(4099);--0,"怪不得程姑娘说只能在黑龙潭才能打开呢，原来一打开就坏了。"
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;