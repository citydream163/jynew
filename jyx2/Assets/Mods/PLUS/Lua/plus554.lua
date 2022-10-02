Talk(0, "请问是<color=Yellow>薛慕华</color>薛前辈吗？", "", 1);
Talk(45, "这位小兄弟今天来不知是……", "", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "没什么事，在下途经这柳宗镇，听说神医住在附近，特来拜见。", "", 1);
    do return end;
::label0::
    Talk(0, "是这样的，我听说薛先生医术高明，今日来是想请先生加入我的队伍，日后能帮我同伴们治病疗伤。", "", 1);
    Talk(45, "对不起，在下技艺有限，阁下还是另请高明吧。", "", 0);
do return end;
