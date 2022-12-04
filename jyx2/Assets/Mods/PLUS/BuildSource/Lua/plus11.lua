Talkplus(50);--1,"有什么要我帮忙的，尽管说出来。"
if AskJoin() == true then goto label0 end;
do return end;
::label0::
Talkplus(51);--0,"胡大哥肯随我闯荡江湖否？"
if TeamIsFull() == false then goto label1 end;
Talkplus(52);--1,"你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(53);--1,"好！我就随你一走。"
Talkplus(54);--0,"胡大哥肯随我闯荡江湖帮这个忙，那再好也不过了。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/胡斐","");
LightScence();
Join(1);
AddEthics(1);
ModifyEvent(-2, 4, -2, -2, -1, -1, 2001, -2, -2, -2, -2, -2, -2);--by citydream启动脚本-2001。场景00-4
do return end;