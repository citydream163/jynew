Talkplus(1762);--58, "少侠别来无恙，旅程一切还好吧。"
if AskJoin() == true then goto label0 end;
Talkplus(1763);--0, "一切还好。"
do return end;
::label0::
Talkplus(1764);--0, "不知杨兄是否有意与我为伴云游各地，一览这五岳三川的风貌。"
if TeamIsFull() == false then goto label1 end;
Talkplus(1765);--58, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(1766);--58, "好啊！或许旅途中会有龙儿的下落也说不定。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杨过加入队伍。场景07-编号06
jyx2_ReplaceSceneObject("", "NPC/杨过", ""); 
LightScence();
Join(58);
AddEthics(3);
OpenScene(75);
do return end;