if jyx2_CheckEventCount(36,443,0) == 0 then
	Add3EventNum(36,444,1,0,0);--青城四秀计数器
	Add3EventNum(36,443,jyx2_CheckEventCount(36,444,0),0,0);--青城四秀点击顺序计数器
end;
Talkplus(1444);
--Talk(86, "我是“青城四秀”中的"..qcsxName(jyx2_CheckEventCount(36,443,0),0).."。师父常说五岳剑派算什么，等到我们拿到“<color=orange>辟邪剑谱</color>”后，就要他们好看。");
SetFlag("ShowLocationName.青城派",1);--大地图显示当前地图名
do return end;