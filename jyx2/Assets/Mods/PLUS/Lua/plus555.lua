if UseItem(128) == true then goto label0 end;
    do return end;
::label0::
    Talk(45, "这……这是我逍遥派掌门之信物，怎会在阁下手中。", "", 0);
    Talk(0, "你师祖已将逍遥派掌门传给我兄弟了……事情是这样的……你师父跟我们说，如果有需要医术高明的人加入的话，可以来这边找你。", "", 1);
    Talk(45, "是，少侠有什么需要，弟子将全力配合。", "", 0);
    ModifyEvent(-2, -2, -2, -2, 556, -1, -1, -2, -2, -2, -2, -2, -2);
	SetFlag("ShowLocationName.薛慕华居",1);--大地图显示当前地图名
	if jyx2_CheckEventCount(45,333,0) == 0 then Add3EventNum(45,333,1,0,0) end;--初识薛慕华计数器
do return end;
