Talkplus(60);--38,"我要去找妈妈跟小黄。"
if AskJoin() == true then goto label0 end;
do return end;
::label0::
Talkplus(61);--0,"你要找你妈妈？我正好在四处旅行，不妨我们结伴一起走，好吗？"
if TeamIsFull() == false then goto label1 end;
Talkplus(62);--38,"你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(63);--38,"好啊！"
DarkScence();
ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/石破天", "");--石破天加入队伍
LightScence();
Join(38);
AddEthics(1);
do return end;