Talkplus(2344);--0, "小和尚，还没回少林呀？"
Talkplus(2345);--49, "施主是你。是啊，小僧还没找到回少林的路。"
if AskJoin() == true then goto label0 end;
Talkplus(2346);--0, "小和尚，那改天我们少林寺再见。"
do return end;
::label0::
Talkplus(2347);--0, "既然如此，小和尚要不要和我一起走，我知道回少林的路。"
if JudgeEthics(0, 75, 100) == true then goto label1 end;
Talkplus(2348);--49, "不用了，小僧自己找路回少林即可。倒是施主眼神中充满戾气，恐入魔道，望施主能即时回头。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(2349);--49, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(2350);--49, "好啊。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--xuzhu加入队伍
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
Join(49);
AddEthics(3);
do return end;