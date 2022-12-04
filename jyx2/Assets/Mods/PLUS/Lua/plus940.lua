Talkplus(3551);--37, "谢谢兄台救了我。"
if AskJoin() == true then goto label0 end;
do return end;
::label0::
Talkplus(3552);--0, "这样好了，你要不要和我一起走，路上也有个照应。"
if JudgeEthics(0, 60, 100) == true then goto label1 end;
Talkplus(3553);--37, "不了！我这个不幸之人还是别害人的好。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(3554);--37, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(3555);--37, "好吧！如果你不怕被我这个不幸之人连累的话。"
DarkScence();
ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/狄云","");
LightScence();
Join(37);
AddEthics(3);
do return end;