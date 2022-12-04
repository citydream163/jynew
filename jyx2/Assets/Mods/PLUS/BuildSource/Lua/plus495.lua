Talkplus(2321);--109, "公子有什么事吗？"
if AskJoin() == true then goto label0 end;
Talkplus(2322);--0, "没事，姑娘真是美丽。"
do return end;
::label0::
Talkplus(2323);--0, "听说姑娘武学渊博，不知是否能于在下旅程中，给予一些指导。"
if InTeam(51) == true then goto label1 end;
Talkplus(2324);--109, "我要留下来陪我表哥。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(2325);--109, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(2326);--109, "既然我表哥都加入了，我当然要伴着他。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/王语嫣", "");--王语嫣
LightScence();
Join(76);
AddEthics(1);
do return end;