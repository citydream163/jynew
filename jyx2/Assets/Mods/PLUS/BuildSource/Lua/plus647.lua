if UseItem(187) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(187, -1);
Add3EventNum(-2, 1, 0, 1, 0);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
Talkplus(3148);--0, "哈！这刀孔大小正适合放这把鸳刀。"
SetFlag("ShowLocationName.鸳鸯山洞",1);--大地图显示当前地图名
do return end;