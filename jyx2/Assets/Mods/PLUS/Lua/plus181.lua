if UseItem(193) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(193, -1);
Talkplus(809);--82,"这位少侠请进。"
DarkScence();
ModifyEvent(-2, 0, -2, -2, 183, -1, -1, 5192, 5192, 5192, -2, 30, 48);
ModifyEvent(-2, 20, -2, -2, 183, -1, -1, 5186, 5186, 5186, -2, 27, 48);
jyx2_FixMapObject("衡山守门弟子让路",1);
ModifyEvent(-2, 1, -2, -2, 183, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 2, -2, -2, 183, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
SetFlag("ShowLocationName.衡山派",1);--大地图显示当前地图名
do return end;