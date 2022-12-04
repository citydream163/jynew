Talkplus(450);--16,"你是谁，到我蝴蝶谷中做什么？若是要求医就快滚吧，我不会医治你的。"
Talkplus(451);--0,"你这么生气干什么，我好好的干嘛需要医疗，神经病！"
Talkplus(452);--16,"那就快滚吧。"
Talkplus(453);--0,"…………"
ModifyEvent(-2, -2, -2, -2, 93, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(73, 1, -2, -2, 103, -1, -1, -2, -2, -2, -2, -2, -2);
SetFlag("ShowLocationName.蝴蝶谷",1);--大地图显示当前地图名
if jyx2_CheckEventCount(16,333,0) == 0 then Add3EventNum(16,333,Calendar(2),0,0) end;--初识胡青牛计数器
do return end;