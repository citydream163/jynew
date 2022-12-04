Talkplus(2709);--0, "请问是薛慕华薛前辈吗？"
Talkplus(2710);--45, "正是，不知阁下……"
Talkplus(2711);--0, "久闻薛先生医道天下无双，江湖上人称“阎王敌”。"
Talkplus(2712);--45, "哪里，这是江湖朋友抬爱在下了。"
Talkplus(2713);--0, "如果连阎罗王都怕了薛先生你，想必医术定是非常高明了。"
Talkplus(2714);--45, "这位小兄弟今天来不知是……"
SetFlag("ShowLocationName.薛慕华居",1);--大地图显示当前地图名
if jyx2_CheckEventCount(45,333,0) == 0 then Add3EventNum(45,333,Calendar(2),0,0) end;--初识薛慕华计数器
if AskJoin() == true then goto label0 end;
Talkplus(2715);--0, "没什么事，在下途经这柳宗镇，听说神医住在附近，特来拜见。"
do return end;
::label0::
Talkplus(2716);--0, "是这样的，我听说薛先生医术高明，今日来是想请先生加入我的队伍，日后能帮我同伴们治病疗伤。"
Talkplus(2717);--45, "对不起，在下技艺有限，阁下还是另请高明吧。"
ModifyEvent(-2, -2, -2, -2, 554, 555, -1, -2, -2, -2, -2, -2, -2);
do return end;