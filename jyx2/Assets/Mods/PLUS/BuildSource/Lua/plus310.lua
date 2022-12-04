if jyx2_CheckEventCount(36,441,0) == 0 then
	Add3EventNum(36,444,1,0,0);--青城四秀计数器
	Add3EventNum(36,441,jyx2_CheckEventCount(36,444,0),0,0);--青城二秀点击顺序计数器
end;
Talkplus(1445);
--Talk(86, "我是“青城四秀”中的"..qcsxName(jyx2_CheckEventCount(36,441,0),0).."。最近得赶快加紧练剑，下月要和师父到福州办件大事。");
SetFlag("ShowLocationName.青城派",1);--大地图显示当前地图名
do return end;