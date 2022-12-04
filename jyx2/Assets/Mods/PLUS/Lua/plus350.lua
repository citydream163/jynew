if UseItem(132) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(132, -1);
Talkplus(1603);--41, "公子请往里面走，岛主已恭候多时了。"
DarkScence();
ModifyEvent(-2, -2, -2, -2, 351, -1, -1, 5146, 5146, 5146, -2, 30, 50);
jyx2_FixMapObject("侠客岛弟子让路",1);
LightScence();
t = 0;
if Calendar(6) < 7 then
	t = 7 - Calendar(6);
elseif Calendar(6) > 7 then
	t = 37 - Calendar(6) % 30;
end;
Add3EventNum(70,999,t,0,0);
m = 0;
if Calendar(7) < 11 then
	m = 11 - Calendar(7);
elseif Calendar(7) > 11 then
	m = 11 - Calendar(7) % 12;
end;
Add3EventNum(70,999,0,m,0);--腊八上岛
SetFlag("ShowLocationName.侠客岛",1);--大地图显示当前地图名
do return end;