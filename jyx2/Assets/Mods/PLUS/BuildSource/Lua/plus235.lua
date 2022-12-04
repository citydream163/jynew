Talkplus(1086);--105, "客倌，看你一身打扮，不像是本地人，大老远赶来，想必旅途一定劳累了。要不要在这住上一宿，让你的体力，元气恢复恢复。"
if AskRest() == true then goto  label0 end;
do return end;
::label0::
if JudgeMoney(100) == true then goto label1 end;
Talkplus(1087);--105, "走，走，走，没钱就不要妨碍我做生意！"
do return end;
::label1::
Talkplus(1088);--0, "好，我就试试看你们悦来客栈的服务好不好。"
DarkScence();
Rest();
AddItemWithoutHint(174, -100);
SetScencePosition2(14, 14);
jyx2_MovePlayer("休息后","Level/Dynamic");
SetRoleFace(3);
LightScence();
do return end;