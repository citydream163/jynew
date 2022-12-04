Talkplus(55);--0,"胡大哥，我知道苗人凤的下落，而关于你们之间的恩怨是如此如此……这般这般……"
if AskJoin() == true then goto label0 end;
do return end;
::label0::
Talkplus(56);--0,"胡大哥是否肯随我一走？"
if TeamIsFull() == false then goto label1 end;
Talkplus(57);--1,"你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(58);--1,"好！我就随你一走。"
Talkplus(59);--0,"胡大哥肯随我一走，那再好也不过了。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/胡斐","");
LightScence();
Join(1);
AddEthics(1);
ModifyEvent(-2, 4, -2, -2, -1, -1, 2001, -2, -2, -2, -2, -2, -2);--by citydream启动脚本-2001。场景00-4
do return end;