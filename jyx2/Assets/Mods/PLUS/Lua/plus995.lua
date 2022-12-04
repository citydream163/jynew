Talkplus(3691);--61, "你终于来了。快走吧，我们颠覆武林的计划还没完成呢。"
if AskJoin() == true then goto label0 end;
Talkplus(3692);--0, "嗯! 对不起，临时想到有事情，我先走一步，这事下次再说。"
do return end;
::label0::
Talkplus(3693);--0, "是啊，少了欧阳公子，这大事就办不成了。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3694);--61, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3695);--61, "走吧。"
DarkScence();
ModifyEvent(-2, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/欧阳克", "");
jyx2_ReplaceSceneObject("", "NPC/欧阳克婢女", "");
LightScence();
Join(61);
do return end;